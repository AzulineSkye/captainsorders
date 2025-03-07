local sprite_bots = Resources.sprite_load(NAMESPACE, "defensiveMicrobots", path.combine(PATH, "Sprites/microbots.png"), 1, 16, 18)
local sprite_bot = Resources.sprite_load(NAMESPACE, "defensiveMicrobotObject", path.combine(PATH, "Sprites/microbot.png"), 1, 3, 3)

local bots = Item.new(NAMESPACE, "defensiveMicrobots")
bots:set_sprite(sprite_bots)
bots:set_tier(Item.TIER.rare)
bots:set_loot_tags(Item.LOOT_TAG.category_utility)
bots:toggle_loot(false)
bots:clear_callbacks()

local bot = Object.new(NAMESPACE, "captainMicrobotObject")
bot:set_sprite(sprite_bot)
bot:clear_callbacks()

bot:onCreate(function(self)
	local data = self:get_data()
	
	self.persistent = true
	self.sprite_index = sprite_bot
	self.image_index = 0
	data.angle = math.random(0, 359)
	data.angle_speed = 72
	data.radius = 32
end)

bot:onStep(function(self)
	local data = self:get_data()
	
	if not data.parent:exists() then
        self:destroy()
        return
    end
	
	local speed = data.angle_speed / 60.0
    data.angle = data.angle - speed
    self.x = data.parent.x + (gm.dcos(data.angle) * data.radius)
    self.y = data.parent.y - (gm.dsin(data.angle) * data.radius)
	self.image_xscale = data.parent.image_xscale
end)

bots:onAcquire(function(actor, stack)
	if not actor.microbotscharge then
		actor.microbotscharge = 0
	end
    if not actor.instmicrobots then
        local instbot = bot:create(actor.x, actor.y)
        instbot:get_data().parent = actor
        actor.instmicrobots = instbot
    end
end)

bots:onRemove(function(actor, stack)
    if stack <= 1 then
        if actor.instmicrobots:exists() then 
			actor.instmicrobots:destroy() 
		end
        actor.instmicrobots = nil
    end
end)

bots:onPreStep(function(actor, stack)
	local radius = 125 + 125 * stack
	local deletedbullet = nil
	
    if actor.microbotscharge < math.min(30, 60 / (2 * (1 + 0.25 * actor.drone_count))) then
        actor.microbotscharge = actor.microbotscharge + 1
    else
		local bullets = Instance.find_all(Instance.projectiles)
		for _, bullet in ipairs(bullets) do
			local distance = gm.point_distance(actor.x, actor.y, bullet.x, bullet.y)
			if distance <= radius then
				radius = distance
				deletedbullet = bullet
			end
		end
		
		if deletedbullet ~= nil then
			actor:sound_play(gm.constants.wHANDShoot2_2, 1, 1.5)
			if actor.instmicrobots ~= nil then
				local objtracer = Object.find("ror", "efLineTracer")
				local tracer = objtracer:create(actor.instmicrobots.x, actor.instmicrobots.y)
				tracer.xend = deletedbullet.x
				tracer.yend = deletedbullet.y
				tracer.bm = 1
				tracer.rate = 0.1
				tracer.width = 2
				tracer.image_blend = Color.from_rgb(255, 222, 133)
				local objsparks = Object.find("ror", "efSparks")
				local sparks = objsparks:create(deletedbullet.x, deletedbullet.y)
				sparks.sprite_index = gm.constants.sSparksIce
				sparks.image_blend = Color.from_rgb(255, 222, 133)
			end
			deletedbullet:destroy()
			actor.microbotscharge = 0
		end
	end
end)