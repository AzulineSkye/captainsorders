local sprite_loadout = Resources.sprite_load(NAMESPACE, "captainSelect", path.combine(PATH, "Sprites/select.png"), 20, 28, 0)
local sprite_portrait = Resources.sprite_load(NAMESPACE, "captainPortrait", path.combine(PATH, "Sprites/portrait.png"), 2)
local sprite_portrait_small	= Resources.sprite_load(NAMESPACE, "captainPortraitSmall", path.combine(PATH, "Sprites/portraitSmall.png"))
local sprite_skills = Resources.sprite_load(NAMESPACE, "captainSkills", path.combine(PATH, "Sprites/skills.png"), 12)
local sprite_idle = Resources.sprite_load(NAMESPACE, "captainIdle", path.combine(PATH, "Sprites/idle.png"), 1, 12, 20)
local sprite_idle_half = Resources.sprite_load(NAMESPACE, "captainIdleHalf", path.combine(PATH, "Sprites/idleHalf.png"), 1, 12, 20)
local sprite_walk = Resources.sprite_load(NAMESPACE, "captainWalk", path.combine(PATH, "Sprites/walk.png"), 8, 14, 20)
local sprite_walk_half = Resources.sprite_load(NAMESPACE, "captainWalkHalf", path.combine(PATH, "Sprites/walkHalf.png"), 8, 14, 20)
local sprite_walk_back = Resources.sprite_load(NAMESPACE, "captainWalkBack", path.combine(PATH, "Sprites/walkBack.png"), 8, 14, 20)
local sprite_jump = Resources.sprite_load(NAMESPACE, "captainJump", path.combine(PATH, "Sprites/jump.png"), 1, 12, 20)
local sprite_jump_half = Resources.sprite_load(NAMESPACE, "captainJumpHalf", path.combine(PATH, "Sprites/jumpHalf.png"), 1, 12, 20)
local sprite_jump_peak = Resources.sprite_load(NAMESPACE, "captainJumpPeak", path.combine(PATH, "Sprites/jumpPeak.png"), 1, 12, 20)
local sprite_jump_peak_half	= Resources.sprite_load(NAMESPACE, "captainJumpPeakHalf", path.combine(PATH, "Sprites/jumpPeakHalf.png"), 1, 12, 20)
local sprite_fall = Resources.sprite_load(NAMESPACE, "captainFall", path.combine(PATH, "Sprites/fall.png"), 1, 12, 20)
local sprite_fall_half = Resources.sprite_load(NAMESPACE, "captainFallHalf", path.combine(PATH, "Sprites/fallHalf.png"), 1, 12, 20)
local sprite_climb = Resources.sprite_load(NAMESPACE, "captainClimb", path.combine(PATH, "Sprites/climb.png"), 2, 6, 12)
local sprite_death = Resources.sprite_load(NAMESPACE, "captainDeath", path.combine(PATH, "Sprites/death.png"), 8, 14, 28)
local sprite_decoy = Resources.sprite_load(NAMESPACE, "captainDecoy", path.combine(PATH, "Sprites/decoy.png"), 1, 18, 24)
local sprite_shoot1 = Resources.sprite_load(NAMESPACE, "captainShoot1", path.combine(PATH, "Sprites/shoot1.png"), 20, 14, 20)
local sprite_shoot1_half = Resources.sprite_load(NAMESPACE, "captainShoot1Half", path.combine(PATH, "Sprites/shoot1Half.png"), 20, 14, 20)
local sprite_shoot2 = Resources.sprite_load(NAMESPACE, "captainShoot2", path.combine(PATH, "Sprites/shoot2.png"), 6, 14, 20)
local sprite_shoot3 = Resources.sprite_load(NAMESPACE, "captainShoot3", path.combine(PATH, "Sprites/shoot3.png"), 3, 14, 20)
local sprite_call = Resources.sprite_load(NAMESPACE, "captainCall", path.combine(PATH, "Sprites/call.png"), 1, 12, 20)
local sprite_shoot4	= Resources.sprite_load(NAMESPACE, "captainShoot4", path.combine(PATH, "Sprites/shoot4.png"), 8, 14, 20)

local cap = Survivor.new(NAMESPACE, "captain")
local cap_id = cap.value

cap:set_stats_base({
	maxhp = 110,
	damage = 11,
	regen = 0.01,
})
cap:set_stats_level({
	maxhp = 32,
	damage = 3,
	regen = 0.002,
	armor = 2,
})

cap:set_animations({
	idle = sprite_idle,
	walk = sprite_walk,
	jump = sprite_jump,
	jump_peak = sprite_jump_peak,
	fall = sprite_fall,
	climb = sprite_climb,
	death = sprite_death,
	decoy = sprite_decoy,
})

cap:set_cape_offset(0, -8, 0, -12)
cap:set_primary_color(Color.from_rgb(190, 186, 146))

cap.sprite_loadout = sprite_loadout
cap.sprite_portrait = sprite_portrait
cap.sprite_portrait_small = sprite_portrait_small
cap.sprite_title = sprite_walk

cap:clear_callbacks()

cap:onInit(function(actor)
	local idle_half = Array.new()
	local walk_half = Array.new()
	local jump_half = Array.new()
	local jump_peak_half = Array.new()
	local fall_half = Array.new()
	idle_half:push(sprite_idle, sprite_idle_half, 0)
	walk_half:push(sprite_walk, sprite_walk_half, 0, sprite_walk_back)
	jump_half:push(sprite_jump, sprite_jump_half, 0)
	jump_peak_half:push(sprite_jump_peak, sprite_jump_peak_half, 0)
	fall_half:push(sprite_fall, sprite_fall_half, 0)

	actor.sprite_idle_half = idle_half
	actor.sprite_walk_half = walk_half
	actor.sprite_jump_half = jump_half
	actor.sprite_jump_peak_half = jump_peak_half
	actor.sprite_fall_half = fall_half

	actor:survivor_util_init_half_sprites()
	
	actor.charging_shotgun = 0
	actor.callingprobe = 0
end)


--Particles
local parTazer = Particle.new(NAMESPACE, "particleCaptainTazer")
parTazer:set_colour3(Color.from_rgb(250, 255, 255), Color.from_rgb(142, 223, 229), Color.from_rgb(57, 118, 210))
parTazer:set_life(30, 30)
parTazer:set_shape(Particle.SHAPE.line)
parTazer:set_scale(1, 0.5)
parTazer:set_size(0.33, 0.1, 0, 0)
parTazer:set_alpha2(1, 0)

local parCall = Particle.new(NAMESPACE, "particleCaptainCall")
parCall:set_colour2(Color.from_rgb(221, 184, 49), Color.from_rgb(221, 49, 70))
parCall:set_life(8, 8)
parCall:set_shape(Particle.SHAPE.circle)
parCall:set_scale(0.2, 0.2)
parCall:set_size(0.2, 1, 0.1, 0)

local parProbeTrailCircle = Particle.new(NAMESPACE, "particleCaptainProbeTrailCircle")
parProbeTrailCircle:set_colour2(Color.from_rgb(255, 236, 215), Color.from_rgb(255, 174, 92))
parProbeTrailCircle:set_life(2, 2)
parProbeTrailCircle:set_speed(45, 45, 0, 0)
parProbeTrailCircle:set_shape(Particle.SHAPE.circle)
parProbeTrailCircle:set_scale(0.8, 0.8)
parProbeTrailCircle:set_size(1, 1, 0, 0)

local parProbeTrailLine = Particle.new(NAMESPACE, "particleCaptainProbeTrailLine")
parProbeTrailLine:set_colour2(Color.from_rgb(255, 236, 215), Color.from_rgb(255, 174, 92))
parProbeTrailLine:set_life(15, 15)
parProbeTrailLine:set_shape(Particle.SHAPE.line)
parProbeTrailLine:set_scale(0.75, 0.5)
parProbeTrailLine:set_size(1, 1, 0, 0)
parProbeTrailLine:set_alpha2(1, 0)
parProbeTrailLine:set_orientation(90, 90, 0, 0, true)

local parProbeTrail = Particle.new(NAMESPACE, "particleCaptainProbeTrail")
parProbeTrail:set_colour2(Color.from_rgb(255, 236, 215), Color.from_rgb(255, 174, 92))
parProbeTrail:set_orientation(50, 50, 0, 0, true)
parProbeTrail:set_scale(0.7, 0.7)
parProbeTrail:set_speed(45, 45, 0, 0)
parProbeTrail:set_sprite(gm.constants.sSparks8, false, false, false)
parProbeTrail:set_step(1, parProbeTrailLine)

local parProbeTrail2 = Particle.new(NAMESPACE, "particleCaptainProbeTrail2")
parProbeTrail2:set_speed(45, 45, 0, 0)
parProbeTrail2:set_step(1, parProbeTrailCircle)




--Buffs
local shock = Buff.new(NAMESPACE, "captainShock")
shock:clear_callbacks()
shock.is_debuff = true
shock.show_icon = false



--Objects
local efPreview1 = Object.new(NAMESPACE, "efCaptainShotgunPreview")
efPreview1:clear_callbacks()

local objTazer = Object.new(NAMESPACE, "captainTazer")
objTazer.obj_sprite = gm.constants.sSpiderBullet
objTazer:clear_callbacks()

local efPreview2 = Object.new(NAMESPACE, "efCaptainProbePreview")
efPreview2:clear_callbacks()

local objProbe = Object.new(NAMESPACE, "efCaptainProbe")
objProbe:clear_callbacks()



--Vulcan Shotgun
local vulcan = cap:get_primary()
vulcan:set_skill_icon(sprite_skills, 0)
vulcan.cooldown = 60
vulcan.damage = 0.75
vulcan.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any
vulcan.require_key_press = true
vulcan.allow_buffered_input = true
vulcan:clear_callbacks()

local stvulcan = State.new(NAMESPACE, "vulcanShotgun")
stvulcan:clear_callbacks()

vulcan:onActivate(function(actor)
	actor:enter_state(stvulcan)
end)

efPreview1:onDraw(function(self)
	local actor = self.parent
	
	if actor.charging_shotgun == 1 then
		local angle = gm.degtorad(90 + actor.spread_preview)
		local range = actor.range_preview
		local xx = math.sin(angle) * range
		local yy = math.cos(angle) * range
		
		actor:collision_line_advanced(actor.x + 24 * actor.image_xscale, actor.y - 9, actor.x + xx * actor.image_xscale, actor.y - 9 + yy, gm.constants.pBlock, true, true)
		local collision_x1 = gm.variable_global_get("collision_x")
		local collision_y1 = gm.variable_global_get("collision_y")
		gm.draw_set_colour(Color.from_hsv(0, 0, 100))
		gm.draw_line_width(actor.x + 24 * actor.image_xscale, actor.y - 9, collision_x1, collision_y1, 1)
		actor:collision_line_advanced(actor.x + 24 * actor.image_xscale, actor.y - 8, actor.x + xx * actor.image_xscale, actor.y - 8 - yy, gm.constants.pBlock, true, true)
		local collision_x2 = gm.variable_global_get("collision_x")
		local collision_y2 = gm.variable_global_get("collision_y")
		gm.draw_set_colour(Color.from_hsv(0, 0, 100))
		gm.draw_line_width(actor.x + 24 * actor.image_xscale, actor.y - 9, collision_x2, collision_y2, 1)
	else
		self:destroy()
	end
end)

stvulcan:onEnter(function(actor, data)
	actor:skill_util_strafe_init()
	actor:skill_util_strafe_turn_init()
	
	actor.image_index2 = 0
	actor.sprite_index2 = sprite_shoot1_half
	data.chargetimer = 72
	data.fired = 0
	data.flashed = 0
	data.reloaded = 0
	data.spread = 0
	data.vulcanspeed = actor.image_speed
	data.shotgun_charging_sound = -1
	actor.charging_shotgun = 1
	actor.spread_preview = math.max(0, math.floor(data.chargetimer / 4))
	actor.range_preview = 1000 - 500 * (data.chargetimer / 72)
	local preview = efPreview1:create(actor.x, actor.y)
	preview.parent = actor
end)

stvulcan:onStep(function(actor, data)
	actor:skill_util_step_strafe_sprites()
	actor:skill_util_strafe_turn_turn_if_direction_changed()
	
	if data.fired == 0 then
		
		actor:skill_util_strafe_turn_update(0.20 * actor.attack_speed, 0.60)
		actor:skill_util_strafe_update(0.20 * actor.attack_speed, 0.60)
		actor.charging_shotgun = 1
		actor.spread_preview = math.max(0, math.floor(data.chargetimer / 4))
		actor.range_preview = 1000 - 666 * (data.chargetimer / 72)
	
		if data.shotgun_charging_sound == -1 then
			data.shotgun_charging_sound = gm.sound_play_at(gm.constants.wLoader_BulletPunch_ChargeLoop, 1, 1.5, actor.x, actor.y)
		end
		
		if data.chargetimer > 0 then
			data.chargetimer = data.chargetimer - 1 * actor.attack_speed
		else
			if gm.audio_is_playing(data.shotgun_charging_sound) then
				gm.audio_stop_sound(data.shotgun_charging_sound)
			end
			
			if data.flashed == 0 then
				actor:sound_play(gm.constants.wPickupOLD, 0.7, 4)
				data.flashed = 1
			end
		end
		
		if actor.image_index2 >= 9 then
			actor.image_index2 = 9
		end
		
		local release = not actor:control("skill1", 0)
		if not actor:is_authority() then
			release = gm.bool(actor.activity_var2)
		end

		if release and data.fired == 0 then
			if gm._mod_net_isOnline() then
				if gm._mod_net_isHost() then
					gm.server_message_send(0, 43, actor:get_object_index_self(), actor.m_id, 1, gm.sign(actor.image_xscale))
				else
					gm.client_message_send(43, 1, gm.sign(actor.image_xscale))
				end
			end
			
			if gm.audio_is_playing(data.shotgun_charging_sound) then
				gm.audio_stop_sound(data.shotgun_charging_sound)
			end
			
			actor.image_index2 = 10
			actor.image_speed = data.vulcanspeed
			actor:sound_play(gm.constants.wBullet2, 1, 0.6 + math.random() * 0.2)
			data.fired = 1
			data.spread = math.max(0, math.floor(data.chargetimer / 4))
			data.range = 1000 - 666 * (data.chargetimer / 72)

			if actor:is_authority() then
				if not GM.skill_util_update_heaven_cracker(actor, damage, actor.image_xscale) then
					local buff_shadow_clone = Buff.find("ror", "shadowClone")
					for i=0, actor:buff_stack_count(buff_shadow_clone) do
						for s=0, 8 do
							local attack = actor:fire_bullet(actor.x, actor.y, data.range, actor:skill_util_facing_direction() + math.random(-data.spread, data.spread), actor:skill_get_damage(vulcan), nil, gm.constants.sSparks15r, Attack_Info.TRACER.bandit3_r)
							attack.attack_info.climb = (s + 1) * 8 + i * 8
						end
					end
				end
			end
		end
	else
		actor.charging_shotgun = 0
		actor:skill_util_strafe_update(0.20 * actor.attack_speed, 0.9)
		
		if actor.image_index2 >= 15 and data.reloaded == 0 then
			actor:sound_play(gm.constants.wSniperReload, 0.7, 1.5)
			data.reloaded = 1
		end 
		if actor.image_index2 >= 20 then
			actor:skill_util_reset_activity_state()
		end
	end
end)

stvulcan:onExit(function(actor, data)
	actor.charging_shotgun = 0
	actor:skill_util_strafe_exit()
end)

stvulcan:onGetInterruptPriority(function(actor, data)
	if actor.image_index2 >= 15 then
		return State.ACTOR_STATE_INTERRUPT_PRIORITY.skill_interrupt_period
	end
end)



--Power Tazer
local tazer = cap:get_secondary()
tazer:set_skill_icon(sprite_skills, 1)
tazer.cooldown = 6 * 60
tazer.damage = 0.6
tazer:clear_callbacks()

local sttazer = State.new(NAMESPACE, "powerTazer")
sttazer:clear_callbacks()

tazer:onActivate(function(actor)
	actor:enter_state(sttazer)
end)

shock:onApply(function(actor, stack)
	local data = actor:get_data()
	data.captainshocktimer = 5 * 60
end)

objTazer:onCreate(function(inst)
	inst.image_speed = 0.25
	inst.speed = 20
	inst.parent = -4
	inst.image_blend = 16777215

	local data = inst:get_data()
	data.lifetime = 60
end)

objTazer:onStep(function(inst)
	local data = inst:get_data()
	
	if not Instance.exists(inst.parent) or data.lifetime <= 0 then
		inst:sound_play(gm.constants.wChainLightning, 1, 0.8)
		if gm._mod_net_isHost() then
			local attack = inst.parent:fire_explosion(inst.x, inst.y, 100, 100, inst.parent:skill_get_damage(tazer), gm.constants.sEfArtiStarExplode2, gm.constants.sSparks24)
			attack.attack_info:set_stun(5, Attack_Info.KNOCKBACK_DIR.right, Attack_Info.KNOCKBACK_KIND.none)
		end
		inst:destroy()
		return
	end
	
	data.lifetime = data.lifetime - 1
	
	if inst:is_colliding(gm.constants.pBlock) then
		inst.direction = inst.direction + 180
		inst.image_xscale = -inst.image_xscale
	else
		parTazer:create(inst.x + 6 * inst.image_xscale, inst.y - 1, 1, Particle.SYSTEM.below)
		parTazer:create(inst.x + 6 * inst.image_xscale, inst.y + 3, 1, Particle.SYSTEM.below)
	end
	
	local actors = inst:get_collisions(gm.constants.pActorCollisionBase)

	for _, actor in ipairs(actors) do
		if inst:attack_collision_canhit(actor) then
			inst:sound_play(gm.constants.wChainLightning, 1, 0.8)
			if gm._mod_net_isHost() then
				local buff_shadow_clone = Buff.find("ror", "shadowClone")
				for i=0, inst.parent:buff_stack_count(buff_shadow_clone) do
					local attack = inst.parent:fire_explosion(inst.x, inst.y, 120, 120, inst.parent:skill_get_damage(tazer), gm.constants.sEfArtiStarExplode2, gm.constants.sEfGoldSparkleBig)
					attack.attack_info:set_stun(5, Attack_Info.KNOCKBACK_DIR.right, Attack_Info.KNOCKBACK_KIND.none)
					attack.attack_info.climb = i * 8
				end
			end
			inst:destroy()
		end
	end
end)

sttazer:onEnter(function(actor, data)
	data.fired = 0
	actor.image_index = 0
end)

sttazer:onStep(function(actor, data)
	actor:skill_util_fix_hspeed()
	actor:actor_animation_set(sprite_shoot2, 0.20)
	
	if actor.image_index >= 1 and data.fired == 0 then	
		local taser = objTazer:create(actor.x + 16 * actor.image_xscale, actor.y - 7)
		taser.parent = actor
		taser.team = actor.team
		taser.direction = actor:skill_util_facing_direction()
		taser.image_xscale = actor.image_xscale
		data.fired = 1
		actor:sound_play(gm.constants.wSpiderShoot1, 1, 0.9 + math.random() * 0.2)
	end
	
	actor:skill_util_exit_state_on_anim_end()
end)



--Orbital Probe
local priProbe = Skill.new(NAMESPACE, "captainC_1")
priProbe:set_skill_icon(sprite_skills, 4)
priProbe.require_key_press = true
priProbe.auto_restock = false
priProbe.start_with_stock = 3
priProbe.max_stock = 3
priProbe:clear_callbacks()

priProbe:onActivate(function(actor)
	actor.callingprobe = 1
	actor.image_index2 = 0
	actor.sprite_index2 = sprite_shoot3
	actor:sound_play(gm.constants.wHANDShoot2_1, 1, 0.9 + math.random() * 0.1)
	if actor:get_active_skill(Skill.SLOT.primary).skill_id == priProbe.value and actor:get_active_skill(Skill.SLOT.primary).stock == 0 then
		actor:remove_skill_override(Skill.SLOT.primary, priProbe, 10)
	end
	actor:collision_line_advanced(actor.x, actor.y + 10, actor.x + 200 * actor.image_xscale, actor.y + 10, gm.constants.pBlock, true, true)
	local collision_x1 = gm.variable_global_get("collision_x") - 2 * actor.image_xscale
	local collision_y1 = gm.variable_global_get("collision_y")
	actor:collision_line_advanced(collision_x1, collision_y1, collision_x1 - 10 * actor.image_xscale, actor.y + 400, gm.constants.pBlock, true, true)
	local collision_x2 = gm.variable_global_get("collision_x")
	local collision_y2 = gm.variable_global_get("collision_y")
	local oProbe = objProbe:create(collision_x2, collision_y2)
	oProbe.parent = actor
end)

local probe = cap:get_utility()
probe:set_skill_icon(sprite_skills, 3)
probe.cooldown = 11 * 60
probe.damage = 6.0
probe.is_utility = true
probe.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any
probe:clear_callbacks()

local stprobe = State.new(NAMESPACE, "orbitalProbe")
stprobe:clear_callbacks()

probe:onActivate(function(actor)
	actor:enter_state(stprobe)
end)

objProbe:onCreate(function(inst)
	local data = inst:get_data()
	data.lifetime_max = 120
	data.lifetime = 120
	inst.parent = -4
	local height = 5300
	local offset = math.random(-200, 200)
	local distance = GM.point_distance(inst.x + offset, inst.y - height, inst.x, inst.y)
	local angle = math.deg(GM.arctan2((inst.y - height) - inst.y, inst.x - (inst.x + offset)))
	parProbeTrailCircle:set_direction(angle, angle, 0, 0)
	parProbeTrailLine:set_orientation(angle, angle, 0, 0, true)
	parProbeTrail:set_direction(angle, angle, 0, 0)
	parProbeTrail:set_life(distance / 45 + 1, distance / 45 + 1, 0, 0)
	parProbeTrail:create(inst.x + offset, inst.y - height)
	parProbeTrail2:set_direction(angle, angle, 0, 0)
	parProbeTrail2:set_life(distance / 45 + 1, distance / 45 + 1, 0, 0)
	parProbeTrail2:create(inst.x + offset, inst.y - height)
end)

objProbe:onStep(function(inst)
	local data = inst:get_data()
	
	if data.lifetime > 0 then
		data.lifetime = data.lifetime - 1
	end
	
	if data.lifetime % 5 == 0 and data.lifetime > 0 then
		parCall:create(inst.x, inst.y, 1, Particle.SYSTEM.above)
	end
	
	if data.lifetime <= 0 then
		if gm._mod_net_isHost() then
			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, inst.parent:buff_stack_count(buff_shadow_clone) do
				local attack = inst.parent:fire_explosion(inst.x, inst.y - 10, 192, 192, inst.parent:skill_get_damage(probe), gm.constants.sPilotBombardDrop, gm.constants.sSparks1)
				attack.attack_info:set_stun(1.5, Attack_Info.KNOCKBACK_DIR.right, Attack_Info.KNOCKBACK_KIND.none)
				attack.attack_info.climb = i * 8
				inst.parent:sound_play(gm.constants.wTurtleExplosion, 1, 0.6)
				inst.parent:sound_play(gm.constants.wWormExplosion, 1, 0.8)
			end
			inst:screen_shake(5)
			inst:destroy()
		end
	end
end)

objProbe:onDraw(function(self)
	local data = self:get_data()
	
	
	
	local radius = (1 - (data.lifetime / data.lifetime_max)) * 96
	gm.draw_set_colour(Color.from_hsv(353, 78, 87))
	gm.draw_circle(self.x, self.y, radius, true)
end)

efPreview2:onDraw(function(self)
	local actor = self.parent
	
	if actor:get_active_skill(Skill.SLOT.primary).skill_id == priProbe.value then
		if actor.callingprobe == 0 then
			actor:collision_line_advanced(actor.x, actor.y + 10, actor.x + 200 * actor.image_xscale, actor.y + 10, gm.constants.pBlock, true, true)
			local collision_x1 = gm.variable_global_get("collision_x") - 2 * actor.image_xscale
			local collision_y1 = gm.variable_global_get("collision_y")
			actor:collision_line_advanced(collision_x1, collision_y1, collision_x1 - 10 * actor.image_xscale, actor.y + 400, gm.constants.pBlock, true, true)
			local collision_x2 = gm.variable_global_get("collision_x")
			local collision_y2 = gm.variable_global_get("collision_y")
			gm.draw_set_colour(Color.from_hsv(0, 0, 100))
			gm.draw_line_width(collision_x2, collision_y2, collision_x2, collision_y2 - 600, 1)
			gm.draw_circle(collision_x2, collision_y2, 96, true)
		end
	else
		self:destroy()
	end
end)

stprobe:onEnter(function(actor, data)
	actor:skill_util_strafe_init()
	actor:skill_util_strafe_turn_init()
	actor.sprite_index2 = sprite_call
	actor.image_index2 = 0
	data.timer = 0
	data.call_sound = -1
	actor:add_skill_override(Skill.SLOT.primary, priProbe, 10)
	local preview = efPreview2:create(actor.x, actor.y)
	preview.parent = actor
end)

stprobe:onStep(function(actor, data)
	actor:freeze_active_skill(Skill.SLOT.utility)
	actor:skill_util_step_strafe_sprites()
	actor:skill_util_strafe_turn_turn_if_direction_changed()
	
	actor:skill_util_strafe_turn_update(0.2 * actor.attack_speed, 0.9)
	actor:skill_util_strafe_update(0.2 * actor.attack_speed, 0.9)
	
	data.timer = data.timer + 1
	if data.timer > 4 and actor.callingprobe == 0 then
		parCall:create(actor.x - 9 * actor.image_xscale, actor.y - 15, 1, Particle.SYSTEM.above)
		data.timer = 0
	elseif data.timer > 4 and actor.callingprobe == 1 and actor.image_index2 >= 1 then
		parCall:create(actor.x - 11 * actor.image_xscale, actor.y - 13, 1, Particle.SYSTEM.above)
		data.timer = 0
	elseif data.timer > 4 and actor.callingprobe == 1 and actor.image_index2 >= 2 then
		parCall:create(actor.x - 11 * actor.image_xscale, actor.y - 9, 1, Particle.SYSTEM.above)
		data.timer = 0
	elseif data.timer > 4 and actor.callingprobe == 1 and actor.image_index2 >= 3 then
		parCall:create(actor.x - 9 * actor.image_xscale, actor.y - 7, 1, Particle.SYSTEM.above)
		data.timer = 0
	end
	
	if data.call_sound == -1 then
		data.call_sound = actor:sound_play(gm.constants.wTeleporter_AmbienceLoopable, 1, 1)
		gm.audio_sound_loop(data.call_sound, true)
	end
	
	if actor.callingprobe == 1 then
		if actor.sprite_index2 == sprite_shoot3 and actor.image_index2 >= 3 then
			actor.sprite_index2 = sprite_call
			actor.callingprobe = 0
			actor.image_index2 = 0
		end
	end
	
	if actor:get_active_skill(Skill.SLOT.primary).skill_id ~= priProbe.value and actor.callingprobe == 0 then
		actor:skill_util_reset_activity_state()
	end
end)

stprobe:onExit(function(actor, data)
	actor:remove_skill_override(Skill.SLOT.primary, priProbe, 10)
	if gm.audio_is_playing(data.call_sound) then
		gm.audio_stop_sound(data.call_sound)
	end
end)

stprobe:onGetInterruptPriority(function(actor, data)
	return State.ACTOR_STATE_INTERRUPT_PRIORITY.skill_interrupt_period
end)



--Beacon: Healing
local healing = cap:get_special()
healing:set_skill_icon(sprite_skills, 8)
healing.cooldown = 0
healing.damage = 12.0
healing.require_key_press = true
healing:clear_callbacks()

local sthealing = State.new(NAMESPACE, "beaconHealing")
sthealing:clear_callbacks()

healing:onActivate(function(actor)
	actor:enter_state(sthealing)
end)