local sprite_loadout = 			Resources.sprite_load(NAMESPACE, "captainSelect", path.combine(PATH, "Sprites/select.png"), 20, 28, 0)
local sprite_portrait = 		Resources.sprite_load(NAMESPACE, "captainPortrait", path.combine(PATH, "Sprites/portrait.png"), 4)
local sprite_portrait_small	= 	Resources.sprite_load(NAMESPACE, "captainPortraitSmall", path.combine(PATH, "Sprites/portraitSmall.png"))
local sprite_skills = 			Resources.sprite_load(NAMESPACE, "captainSkills", path.combine(PATH, "Sprites/skills.png"), 13)

local sprite_idle = 			Resources.sprite_load(NAMESPACE, "captainIdle", path.combine(PATH, "Sprites/idle.png"), 1, 11, 18)
local sprite_idle_half = 		Resources.sprite_load(NAMESPACE, "captainIdleHalf", path.combine(PATH, "Sprites/idleHalf.png"), 1, 8, 3)
local sprite_walk = 			Resources.sprite_load(NAMESPACE, "captainWalk", path.combine(PATH, "Sprites/walk.png"), 8, 12, 18, 0.8)
local sprite_walk_half = 		Resources.sprite_load(NAMESPACE, "captainWalkHalf", path.combine(PATH, "Sprites/walkHalf.png"), 8, 9, 3, 0.6)
local sprite_walk_back = 		Resources.sprite_load(NAMESPACE, "captainWalkBack", path.combine(PATH, "Sprites/walkBack.png"), 8, 12, 18, 0.8)
local sprite_jump = 			Resources.sprite_load(NAMESPACE, "captainJump", path.combine(PATH, "Sprites/jump.png"), 1, 10, 20)
local sprite_jump_half = 		Resources.sprite_load(NAMESPACE, "captainJumpHalf", path.combine(PATH, "Sprites/jumpHalf.png"), 1, 7, 3)
local sprite_jump_peak = 		Resources.sprite_load(NAMESPACE, "captainJumpPeak", path.combine(PATH, "Sprites/jumpPeak.png"), 1, 12, 20)
local sprite_jump_peak_half	= 	Resources.sprite_load(NAMESPACE, "captainJumpPeakHalf", path.combine(PATH, "Sprites/jumpPeakHalf.png"), 1, 9, 3)
local sprite_fall = 			Resources.sprite_load(NAMESPACE, "captainFall", path.combine(PATH, "Sprites/fall.png"), 1, 12, 20)
local sprite_fall_half = 		Resources.sprite_load(NAMESPACE, "captainFallHalf", path.combine(PATH, "Sprites/fallHalf.png"), 1, 11, 3)
local sprite_climb = 			Resources.sprite_load(NAMESPACE, "captainClimb", path.combine(PATH, "Sprites/climb.png"), 2, 6, 12)
local sprite_death = 			Resources.sprite_load(NAMESPACE, "captainDeath", path.combine(PATH, "Sprites/death.png"), 8, 14, 28)
local sprite_decoy = 			Resources.sprite_load(NAMESPACE, "captainDecoy", path.combine(PATH, "Sprites/decoy.png"), 1, 14, 20)

local sprite_shoot1 = 			Resources.sprite_load(NAMESPACE, "captainShoot1", path.combine(PATH, "Sprites/shoot1.png"), 24, 16, 36)
local sprite_shoot1_half = 		Resources.sprite_load(NAMESPACE, "captainShoot1Half", path.combine(PATH, "Sprites/shoot1Half.png"), 24, 16, 29)
local sprite_shoot2 = 			Resources.sprite_load(NAMESPACE, "captainShoot2", path.combine(PATH, "Sprites/shoot2.png"), 9, 14, 26, 1.3)
local sprite_shoot3 = 			Resources.sprite_load(NAMESPACE, "captainShoot3", path.combine(PATH, "Sprites/shoot3.png"), 4, 14, 20)
local sprite_call = 			Resources.sprite_load(NAMESPACE, "captainCall", path.combine(PATH, "Sprites/call.png"), 5, 12, 19)
local sprite_beaconCall = 			Resources.sprite_load(NAMESPACE, "captainBeaconCall", path.combine(PATH, "Sprites/beaconCall.png"), 5, 12, 22)
local sprite_shoot4	= 			Resources.sprite_load(NAMESPACE, "captainShoot4", path.combine(PATH, "Sprites/shoot4.png"), 8, 14, 20)
local sprite_healing = 			Resources.sprite_load(NAMESPACE, "captainBeaconHealing", path.combine(PATH, "Sprites/beaconHealing.png"), 22, 11, 44)
local sprite_shocking = 		Resources.sprite_load(NAMESPACE, "captainBeaconShocking", path.combine(PATH, "Sprites/beaconShocking.png"), 22, 11, 44)
local sprite_resupply = 		Resources.sprite_load(NAMESPACE, "captainBeaconResupply", path.combine(PATH, "Sprites/beaconResupply.png"), 22, 11, 44)
local sprite_hacking = 			Resources.sprite_load(NAMESPACE, "captainBeaconHacking", path.combine(PATH, "Sprites/beaconHacking.png"), 22, 11, 44)
local sprite_impact = 			Resources.sprite_load(NAMESPACE, "captainBeaconImpact", path.combine(PATH, "Sprites/beaconimpact.png"), 5, 117, 203)
local sprite_bar = 				Resources.sprite_load(NAMESPACE, "captainBeaconHackingBar", path.combine(PATH, "Sprites/beaconHackingBar.png"), 1, 23, 5)
local sprite_log = 				Resources.sprite_load(NAMESPACE, "captainLog", path.combine(PATH, "Sprites/captainLog.png"), 1, 180, 180)
local sprite_credits = 			Resources.sprite_load(NAMESPACE, "captainCredits", path.combine(PATH, "Sprites/credits.png"), 1, 10, 10)

local sprite_palette = Resources.sprite_load(NAMESPACE, "captainPallete", path.combine(PATH, "Sprites/pallete.png"))

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

cap:set_palettes(sprite_palette, sprite_pallete, sprite_pallete)
cap:add_skin("Militia", 1)
cap:add_skin("Showman", 2)
cap:add_skin("Admiral", 3)
cap:add_skin("Malice", 4)
cap:add_skin("Estranged", 5)


cap:set_cape_offset(0, -8, 1, -2)
cap:set_primary_color(Color.from_rgb(190, 186, 146))

cap.sprite_loadout = sprite_loadout
cap.sprite_portrait = sprite_portrait
cap.sprite_portrait_small = sprite_portrait_small
cap.sprite_title = sprite_walk
cap.sprite_idle = sprite_idle
cap.sprite_credits = sprite_credits

local cap_log = Survivor_Log.new(cap, sprite_log, sprite_walk)
cap_log.stat_regen_base = 0.01
cap_log.stat_regen_level = 0.002

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
	actor.proberetaindirection = 0
	actor.callingprobe = 0
	actor.probeallowcancel = 0
	actor.beaconallowcancel = 0
	actor.closebeaconmenu = 1
	actor.callcooldown = 0
	actor.beacon1charges = 0
	actor.beacon2charges = 0
	if not actor.microbotsrecieved then
		actor:item_give(Item.find(NAMESPACE, "defensiveMicrobots"))
		actor.microbotsrecieved = 1
	end
end)

cap:onStep(function(actor)
	if actor.callcooldown > 0 then
		actor.callcooldown = actor.callcooldown - 1
	end
end)



--Particles
local parTazer = Particle.new(NAMESPACE, "particleCaptainTazer")
parTazer:set_color3(Color.from_rgb(250, 255, 255), Color.from_rgb(142, 223, 229), Color.from_rgb(57, 118, 210))
parTazer:set_life(30, 30)
parTazer:set_shape(Particle.SHAPE.line)
parTazer:set_scale(1, 0.5)
parTazer:set_size(0.33, 0.1, 0, 0)
parTazer:set_alpha2(1, 0)

local parCall = Particle.new(NAMESPACE, "particleCaptainCall")
parCall:set_color2(Color.from_rgb(221, 184, 49), Color.from_rgb(221, 49, 70))
parCall:set_life(8, 8)
parCall:set_shape(Particle.SHAPE.circle)
parCall:set_scale(0.2, 0.2)
parCall:set_size(0.2, 1, 0.1, 0)

local parCallB = Particle.new(NAMESPACE, "particleCaptainCallBeacon")
parCallB:set_color2(Color.from_rgb(70, 184, 221), Color.from_rgb(70, 49, 221))
parCallB:set_life(8, 8)
parCallB:set_shape(Particle.SHAPE.circle)
parCallB:set_scale(0.2, 0.2)
parCallB:set_size(0.2, 1, 0.1, 0)

local parProbeTrailCircle = Particle.new(NAMESPACE, "particleCaptainProbeTrailCircle")
parProbeTrailCircle:set_color2(Color.from_rgb(255, 236, 215), Color.from_rgb(255, 174, 92))
parProbeTrailCircle:set_life(2, 2)
parProbeTrailCircle:set_speed(30, 30, 0, 0)
parProbeTrailCircle:set_shape(Particle.SHAPE.circle)
parProbeTrailCircle:set_scale(0.8, 0.8)
parProbeTrailCircle:set_size(1, 1, 0, 0)

local parProbeTrailLine = Particle.new(NAMESPACE, "particleCaptainProbeTrailLine")
parProbeTrailLine:set_color2(Color.from_rgb(255, 236, 215), Color.from_rgb(255, 174, 92))
parProbeTrailLine:set_life(15, 15)
parProbeTrailLine:set_shape(Particle.SHAPE.line)
parProbeTrailLine:set_scale(0.75, 0.5)
parProbeTrailLine:set_size(1, 1, 0, 0)
parProbeTrailLine:set_alpha2(1, 0)
parProbeTrailLine:set_orientation(90, 90, 0, 0, true)

local parProbeTrail = Particle.new(NAMESPACE, "particleCaptainProbeTrail")
parProbeTrail:set_color1(Color.from_rgb(241, 185, 96))
parProbeTrail:set_orientation(50, 50, 0, 0, true)
parProbeTrail:set_scale(0.9, 0.9)
parProbeTrail:set_speed(44.85, 44.85, 0, 0)
parProbeTrail:set_sprite(gm.constants.sSparks8, false, false, false)
parProbeTrail:set_step(1, parProbeTrailLine)

local parProbeTrail2 = Particle.new(NAMESPACE, "particleCaptainProbeTrail2")
parProbeTrail2:set_speed(45, 45, 0, 0)
parProbeTrail2:set_step(1, parProbeTrailCircle)

local parBeaconTrailLine = Particle.new(NAMESPACE, "particleCaptainBeaconTrailLine")
parBeaconTrailLine:set_color2(Color.from_rgb(215, 242, 255), Color.from_rgb(92, 206, 255))
parBeaconTrailLine:set_life(15, 15)
parBeaconTrailLine:set_shape(Particle.SHAPE.line)
parBeaconTrailLine:set_scale(0.75, 3)
parBeaconTrailLine:set_size(1, 1, 0, 0)
parBeaconTrailLine:set_alpha2(1, 0)
parBeaconTrailLine:set_orientation(90, 90, 0, 0, true)

local parBeaconTrail = Particle.new(NAMESPACE, "particleCaptainBeaconTrail")
parBeaconTrail:set_color1(Color.from_rgb(70, 184, 221))
parBeaconTrail:set_orientation(50, 50, 0, 0, true)
parBeaconTrail:set_scale(1.5, 1.5)
parBeaconTrail:set_speed(44.85, 44.85, 0, 0)
parBeaconTrail:set_sprite(gm.constants.sSparks8, false, false, false)
parBeaconTrail:set_step(1, parBeaconTrailLine)

local parHealing = Particle.new(NAMESPACE, "particleCaptainBeaconHealing")
parHealing:set_sprite(gm.constants.sEfHeal, true, true, false)
parHealing:set_speed(0.02, 0.05, 0, 0)
parHealing:set_direction(270, 270, 0, 0)
parHealing:set_life(120, 240)

local parShocking = Particle.new(NAMESPACE, "particleCaptainShock")
parShocking:set_sprite(gm.constants.sEfJewelSparkleSmall, false, false, false)
parShocking:set_color1(Color.from_rgb(76, 110, 239))
parShocking:set_speed(0.05, 0.1, 0, 0)
parShocking:set_orientation(0, 360, 0, 0, false)
parShocking:set_direction(0, 360, 0, 0)
parShocking:set_life(90, 180)
parShocking:set_scale(2, 2)
parShocking:set_alpha3(1, 1, 0)


--Buffs
local shock = Buff.new(NAMESPACE, "captainShock")
shock.is_debuff = true
shock.show_icon = false
shock:clear_callbacks()

shock:onApply(function(actor, stack)
	actor.activity_type = 50
	actor.__activity_handler_state = 50
	actor.captainshockthreshold = actor.maxhp * 0.1
	actor.captainshocklightningprevposx = actor.x
	actor.captainshocklightningprevposy = actor.y
end)

shock:onPostStep(function(actor, stack)
	actor.activity_type = 50
	actor.__activity_handler_state = 50
	actor.pHmax = 0
	actor.state = 0
	if actor.sprite_death ~= nil then
		actor.sprite_index = actor.sprite_death
		actor.image_index = 0
	end
end)

shock:onPostDraw(function(actor, stack)
	local height = gm.round(gm.sprite_get_height(actor.sprite_idle) / 2)
	local width = gm.round(gm.sprite_get_width(actor.sprite_idle) / 2)
	local randomx = actor.x + math.random(-width, width)
	local randomy = actor.y + math.random(-height, height)
	gm.draw_lightning(actor.captainshocklightningprevposx, actor.captainshocklightningprevposy, randomx, randomy, Color.from_rgb(150, 245, 239))
	actor.captainshocklightningprevposx = randomx
	actor.captainshocklightningprevposy = randomy
	if math.random() <= 0.015 then
		parShocking:create(actor.x + math.random(-width, width), actor.y + math.random(-height, height))
	end
end)

shock:onDamagedProc(function(actor, attacker, stack, hit_info)
	if hit_info.parent:exists() then
		if hit_info.proc == true and hit_info.attack_info.captaininflictshock == nil and hit_info.parent.object_index == gm.constants.oP then
			actor:buff_remove(shock)
		end
	end
end)

shock:onRemove(function(actor, stack)
	actor.activity_type = 0
	actor.__activity_handler_state = 0
end)



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

local efPreview3 = Object.new(NAMESPACE, "efCaptainBeaconPreview")
efPreview3:clear_callbacks()

local objHealing = Object.new(NAMESPACE, "objCaptainBeaconHealing")
objHealing.obj_sprite = sprite_healing
objHealing.obj_depth = 12
objHealing:clear_callbacks()

local objShocking = Object.new(NAMESPACE, "objCaptainBeaconShocking")
objShocking.obj_sprite = sprite_shocking
objShocking.obj_depth = 12
objShocking:clear_callbacks()

local objResupply = Object.new(NAMESPACE, "objCaptainBeaconResupply")
objResupply.obj_sprite = sprite_resupply
objResupply.obj_depth = 12
objResupply:clear_callbacks()

local objHacking = Object.new(NAMESPACE, "objCaptainBeaconHacking")
objHacking.obj_sprite = sprite_hacking
objHacking.obj_depth = 12
objHacking:clear_callbacks()



--Beacon: Healing
local healing = Skill.new(NAMESPACE, "captainBeaconHealing")
healing:set_skill_icon(sprite_skills, 9)
healing:clear_callbacks()

--create a skill slot that will show up in the misc slot selections
local unlockableHealing = gm["@@NewGMLObject@@"](gm.constants.SurvivorSkillLoadoutUnlockable)
unlockableHealing.skill_id = healing.value

--Beacon: Shocking
local shocking = Skill.new(NAMESPACE, "captainBeaconShocking")
shocking:set_skill_icon(sprite_skills, 10)
shocking:clear_callbacks()

local unlockableShocking = gm["@@NewGMLObject@@"](gm.constants.SurvivorSkillLoadoutUnlockable)
unlockableShocking.skill_id = shocking.value

--Beacon: Resupply
local resupply = Skill.new(NAMESPACE, "captainBeaconResupply")
resupply:set_skill_icon(sprite_skills, 11)
resupply:clear_callbacks()

local unlockableResupply = gm["@@NewGMLObject@@"](gm.constants.SurvivorSkillLoadoutUnlockable)
unlockableResupply.skill_id = resupply.value

--Beacon: Hacking
local hacking = Skill.new(NAMESPACE, "captainBeaconHacking")
hacking:set_skill_icon(sprite_skills, 12)
hacking:clear_callbacks()

local unlockableHacking = gm["@@NewGMLObject@@"](gm.constants.SurvivorSkillLoadoutUnlockable)
unlockableHacking.skill_id = hacking.value

--Unavailable
local unavailable = Skill.newEmpty(NAMESPACE, "captainUnavailable")
unavailable:set_skill_icon(sprite_skills, 8)
unavailable:clear_callbacks()



--create the first misc slot selection
local misc1 = gm["@@NewGMLObject@@"](gm.constants.SurvivorBaseLoadoutFamily)
misc1.family_name = "captainBeaconMisc1" --must be unique, used for multiplayer syncing
gm.array_resize(misc1.elements, 0) --clear the misc slot selection
--add the healing beacon skill slot to out misc slot selection, then the shocking, etc
gm.array_push(misc1.elements, unlockableHealing)
gm.array_push(misc1.elements, unlockableShocking)
gm.array_push(misc1.elements, unlockableResupply)
gm.array_push(misc1.elements, unlockableHacking)
cap.all_skill_families:resize(4) --limit the size so that it doesnt start duplicating itself
cap.all_skill_families:push(misc1)

local misc2 = gm["@@NewGMLObject@@"](gm.constants.SurvivorBaseLoadoutFamily)
misc2.family_name = "captainBeaconMisc2"
gm.array_resize(misc2.elements, 0)
gm.array_push(misc2.elements, unlockableHealing)
gm.array_push(misc2.elements, unlockableShocking)
gm.array_push(misc2.elements, unlockableResupply)
gm.array_push(misc2.elements, unlockableHacking)
cap.all_skill_families:resize(5)
cap.all_skill_families:push(misc2)



--Vulcan Shotgun
local vulcan = cap:get_primary()
vulcan:set_skill_icon(sprite_skills, 0)
vulcan.cooldown = 60
vulcan.damage = 0.6
vulcan.is_primary = true
vulcan.is_utility = false
vulcan.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any
vulcan.hold_facing_direction = true
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
		
		gm.draw_set_colour(Color.from_hsv(0, 0, 100))
		gm.draw_set_alpha(actor.alpha_preview)
		actor:collision_line_advanced(actor.x + 24 * actor.image_xscale, actor.y - 9, actor.x + xx * actor.image_xscale, actor.y - 9 + yy, gm.constants.pBlock, true, true)
		local collision_x1 = gm.variable_global_get("collision_x")
		local collision_y1 = gm.variable_global_get("collision_y")
		gm.draw_line_width(actor.x + 24 * actor.image_xscale, actor.y - 9, collision_x1, collision_y1, 1)
		actor:collision_line_advanced(actor.x + 24 * actor.image_xscale, actor.y - 9, actor.x + xx * actor.image_xscale, actor.y - 9 - yy, gm.constants.pBlock, true, true)
		local collision_x2 = gm.variable_global_get("collision_x")
		local collision_y2 = gm.variable_global_get("collision_y")
		gm.draw_line_width(actor.x + 24 * actor.image_xscale, actor.y - 9, collision_x2, collision_y2, 1)
		gm.draw_set_alpha(1)
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
	actor.alpha_preview = math.min(1, 2 * (1 - (data.chargetimer / 72)))
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
		actor.alpha_preview = math.min(1, 2 * (1 - (data.chargetimer / 72)))
	
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
		
		if actor.image_index2 >= 13 then
			actor.image_index2 = 13
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
			
			actor.image_index2 = 14
			actor.image_speed = data.vulcanspeed
			actor:sound_play(gm.constants.wBullet2, 1, 0.6 + math.random() * 0.2)
			data.fired = 1
			data.spread = math.max(0, math.floor(data.chargetimer / 4))
			data.range = 1000 - 666 * (data.chargetimer / 72)
			actor.z_count = actor.z_count + 1

			if gm._mod_net_isHost() then
				local heaven_cracker_count = actor:item_stack_count(Item.find("ror", "heavenCracker"))
				local cracker_shot = false

				if heaven_cracker_count > 0 and actor.z_count >= 5 - heaven_cracker_count then
					cracker_shot = true
					actor.z_count = 0
				end
				
				local buff_shadow_clone = Buff.find("ror", "shadowClone")
				for i=0, actor:buff_stack_count(buff_shadow_clone) do
					for s=0, 8 do
						if cracker_shot then
							local attack = actor:fire_bullet(actor.x, actor.y, data.range, actor:skill_util_facing_direction() + math.random(-data.spread, data.spread), actor:skill_get_damage(vulcan), 1, gm.constants.sSparks1, Attack_Info.TRACER.drill)
							attack.attack_info.climb = (s + 1) * 8 + i * 8
						else
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
		
		if actor.image_index2 >= 19 and data.reloaded == 0 then
			actor:sound_play(gm.constants.wSniperReload, 0.7, 1.5)
			data.reloaded = 1
		end 
		if actor.image_index2 >= 24 then
			actor:skill_util_reset_activity_state()
		end
	end
end)

stvulcan:onExit(function(actor, data)
	actor.charging_shotgun = 0
	actor:skill_util_strafe_exit()
end)

stvulcan:onGetInterruptPriority(function(actor, data)
	if actor.image_index2 >= 19 then
		return State.ACTOR_STATE_INTERRUPT_PRIORITY.skill_interrupt_period
	end
end)



--Power Tazer
local tazer = cap:get_secondary()
tazer:set_skill_icon(sprite_skills, 1)
tazer.cooldown = 6 * 60
tazer.damage = 0.6
tazer.is_primary = false
tazer.is_utility = false
tazer.hold_facing_direction = true
tazer.require_key_press = true
tazer.allow_buffered_input = true
tazer.does_change_activity_state = true
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

objTazer:onCreate(function(self)
	self.image_speed = 0.25
	self.speed = 20
	self.parent = -4
	self.image_blend = 16777215

	local data = self:get_data()
	data.lifetime = 60
end)

objTazer:onStep(function(self)
	local data = self:get_data()
	
	if not Instance.exists(self.parent) or data.lifetime <= 0 then
		self:sound_play(gm.constants.wChainLightning, 1, 0.8)
		if gm._mod_net_isHost() then
			local attack = self.parent:fire_explosion(self.x, self.y, 100, 100, self.parent:skill_get_damage(tazer), gm.constants.sEfArtiStarExplode2, gm.constants.sSparks24)
			attack.attack_info:set_stun(5, Attack_Info.KNOCKBACK_DIR.right, Attack_Info.KNOCKBACK_KIND.none)
		end
		self:destroy()
		return
	end
	
	data.lifetime = data.lifetime - 1
	
	if self:is_colliding(gm.constants.pBlock) then
		self.direction = self.direction + 180
		self.image_xscale = -self.image_xscale
	else
		parTazer:create(self.x + 6 * self.image_xscale, self.y - 1, 1, Particle.SYSTEM.below)
		parTazer:create(self.x + 6 * self.image_xscale, self.y + 3, 1, Particle.SYSTEM.below)
	end
	
	local actors = self:get_collisions(gm.constants.pActorCollisionBase)

	for _, actor in ipairs(actors) do
		if self:attack_collision_canhit(actor) then
			self:sound_play(gm.constants.wChainLightning, 1, 0.8)
			if gm._mod_net_isHost() then
				local buff_shadow_clone = Buff.find("ror", "shadowClone")
				for i=0, self.parent:buff_stack_count(buff_shadow_clone) do
					local attack = self.parent:fire_explosion(self.x, self.y, 120, 120, self.parent:skill_get_damage(tazer), gm.constants.sEfArtiStarExplode2, gm.constants.sEfGoldSparkleBig)
					attack.attack_info.climb = i * 8
					attack.attack_info.captaininflictshock = 1
				end
			end
			self:destroy()
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

Callback.add(Callback.TYPE.onAttackHit, "captainInflictShock", function(hit_info)
	if hit_info.attack_info.captaininflictshock == 1 then
		victim = hit_info.target
		if victim.team ~= hit_info.inflictor and victim.activity_type ~= 90 and not (victim.activity == 92 and victim.object_index == gm.constants.oTuber) and victim.__activity_handler_state ~= 90 and not GM.actor_is_boss(victim) and victim.object_index ~= gm.constants.oWormBody and victim.object_index ~= gm.constants.oWurmBody and victim.object_index ~= gm.constants.oBrambleBody then
			GM.apply_buff(victim, shock, 5 * 60, 1)
			GM.set_buff_time(victim, shock, 5 * 60)
		end
	end
end)


--Orbital Probe
local priProbe = Skill.new(NAMESPACE, "captainC_1")
priProbe:set_skill_icon(sprite_skills, 4)
priProbe.require_key_press = true
priProbe.is_primary = false
priProbe.is_utility = false
priProbe.does_change_activity_state = false
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
	actor:collision_line_advanced(actor.x, actor.y + 10, actor.x + 150 * actor.image_xscale, actor.y + 10, gm.constants.pBlock, true, true)
	local collision_x1 = gm.variable_global_get("collision_x") - 2 * actor.image_xscale
	local collision_y1 = gm.variable_global_get("collision_y")
	actor:collision_line_advanced(collision_x1, collision_y1, collision_x1 - 10 * actor.image_xscale, actor.y + 2000, gm.constants.pBlock, true, true)
	local collision_x2 = gm.variable_global_get("collision_x")
	local collision_y2 = gm.variable_global_get("collision_y")
	local oProbe = objProbe:create(collision_x2, collision_y2)
	oProbe.parent = actor
end)

local probe = cap:get_utility()
probe:set_skill_icon(sprite_skills, 3)
probe.cooldown = 11 * 60
probe.damage = 5.0
probe.is_primary = false
probe.is_utility = true
probe.does_change_activity_state = true
probe.hold_facing_direction = true
probe.override_strafe_direction = true
probe.ignore_aim_direction = true
probe.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any
probe.require_key_press = true
probe:clear_callbacks()

local stprobe = State.new(NAMESPACE, "orbitalProbe")
stprobe:clear_callbacks()

probe:onActivate(function(actor)
	if actor.callcooldown <= 0 then
		actor:enter_state(stprobe)
	elseif actor:get_active_skill(Skill.SLOT.utility).skill_id == probe.value then
		actor:refresh_skill(Skill.SLOT.utility)
	end
end)

objProbe:onCreate(function(self)
	local data = self:get_data()
	data.lifetime_max = 120
	data.lifetime = 120
	self.parent = -4
	local height = 5450
	local offset = math.random(-200, 200)
	local distance = GM.point_distance(self.x + offset, self.y - height, self.x, self.y)
	local angle = math.deg(GM.arctan2((self.y - height) - self.y, self.x - (self.x + offset)))
	parProbeTrailCircle:set_direction(angle, angle, 0, 0)
	parProbeTrailLine:set_direction(angle, angle, 0, 0)
	parProbeTrailLine:set_orientation(angle, angle, 0, 0, false)
	parProbeTrail:set_direction(angle, angle, 0, 0)
	parProbeTrail:set_life(distance / 45 + 1, distance / 45 + 1, 0, 0)
	parProbeTrail:create(self.x + offset, self.y - height)
	parProbeTrail2:set_direction(angle, angle, 0, 0)
	parProbeTrail2:set_life(distance / 45 + 1, distance / 45 + 1, 0, 0)
	parProbeTrail2:create(self.x + offset, self.y - height)
end)

objProbe:onStep(function(self)
	local data = self:get_data()
	
	if data.lifetime > 0 then
		data.lifetime = data.lifetime - 1
	end
	
	if data.lifetime % 5 == 0 and data.lifetime > 0 then
		parCall:create(self.x, self.y, 1, Particle.SYSTEM.above)
	end
	
	if data.lifetime <= 0 then
		if gm._mod_net_isHost() then
			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, self.parent:buff_stack_count(buff_shadow_clone) do
				local attack = self.parent:fire_explosion(self.x, self.y - 10, 192, 192, self.parent:skill_get_damage(probe), gm.constants.sEfSuperMissileExplosion, gm.constants.sSparks12)
				attack.attack_info:set_stun(1.5, Attack_Info.KNOCKBACK_DIR.right, Attack_Info.KNOCKBACK_KIND.none)
				attack.attack_info.climb = i * 8
				self.parent:sound_play(gm.constants.wTurtleExplosion, 1, 0.6)
				self.parent:sound_play(gm.constants.wWormExplosion, 1, 0.8)
			end
			self:screen_shake(5)
			self:destroy()
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
			actor:collision_line_advanced(actor.x, actor.y + 10, actor.x + 150 * actor.image_xscale, actor.y + 10, gm.constants.pBlock, true, true)
			local collision_x1 = gm.variable_global_get("collision_x") - 2 * actor.image_xscale
			local collision_y1 = gm.variable_global_get("collision_y")
			actor:collision_line_advanced(collision_x1, collision_y1, collision_x1 - 10 * actor.image_xscale, actor.y + 2000, gm.constants.pBlock, true, true)
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
	
	if gm.sign(gm.real(actor.moveRight) - gm.real(actor.moveLeft)) ~= 0 then
		actor.hold_facing_direction_xscale = gm.sign(gm.real(actor.moveRight) - gm.real(actor.moveLeft)) -- stupid dumb idiotic bullshit fuckery, apparently vanilla code also uses that lmao
	else
		actor.hold_facing_direction_xscale = actor.image_xscale
	end
	
	actor.sprite_index2 = sprite_call
	actor.image_index2 = 0
	data.timer = 0
	data.call_sound = -1
	actor.callingprobe = 0
	actor.probeallowcancel = 0
	actor:sound_play(gm.constants.wMercenary_EviscerateActivate, 1, 1)
	actor:add_skill_override(Skill.SLOT.primary, priProbe, 10)
	local preview = efPreview2:create(actor.x, actor.y)
	preview.parent = actor
end)

stprobe:onStep(function(actor, data)
	actor:freeze_active_skill(Skill.SLOT.utility)
	actor:skill_util_step_strafe_sprites()
	actor:skill_util_strafe_turn_turn_if_direction_changed()
	
	actor:skill_util_strafe_turn_update(0.2, 0.9)
	actor:skill_util_strafe_update(0.2, 0.9)
	
	if actor.c_skill == false and actor.probeallowcancel == 0 then
		actor.probeallowcancel = 1
	end
	
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
		if actor.sprite_index2 == sprite_shoot3 and actor.image_index2 >= 4 then
			actor.sprite_index2 = sprite_call
			actor.callingprobe = 0
			actor.image_index2 = 0
		end
	else
		if actor.image_index2 >=4 then
			actor.image_index2 = 4
		end
	end
	if (actor:get_active_skill(Skill.SLOT.primary).skill_id ~= priProbe.value and actor.callingprobe == 0) or (actor.probeallowcancel == 1 and actor.c_skill == true and actor.callingprobe == 0) then
		actor:skill_util_reset_activity_state()
	end
end)

stprobe:onExit(function(actor, data)
	actor:skill_util_strafe_exit()
	actor.probeallowcancel = 0
	actor.callcooldown = 10
	actor:remove_skill_override(Skill.SLOT.primary, priProbe, 10)
	if gm.audio_is_playing(data.call_sound) then
		gm.audio_stop_sound(data.call_sound)
	end
end)

stprobe:onGetInterruptPriority(function(actor, data)
	return State.ACTOR_STATE_INTERRUPT_PRIORITY.skill_interrupt_period
end)



--Orbital Supply Beacon
local priHealing = Skill.new(NAMESPACE, "captainBeaconHealing_1")
priHealing:set_skill_icon(sprite_skills, 9)
priHealing.require_key_press = true
priHealing:clear_callbacks()

local priShocking = Skill.new(NAMESPACE, "captainBeaconShocking_1")
priShocking:set_skill_icon(sprite_skills, 10)
priShocking.require_key_press = true
priShocking:clear_callbacks()

local priResupply = Skill.new(NAMESPACE, "captainBeaconResupply_1")
priResupply:set_skill_icon(sprite_skills, 11)
priResupply.require_key_press = true
priResupply:clear_callbacks()

local priHacking = Skill.new(NAMESPACE, "captainBeaconHacking_1")
priHacking:set_skill_icon(sprite_skills, 12)
priHacking.require_key_press = true
priHacking:clear_callbacks()

local function captain_remove_beacon_overrides(actor)
	actor:remove_skill_override(Skill.SLOT.primary, priHealing, 20)
	actor:remove_skill_override(Skill.SLOT.secondary, priHealing, 20)
	actor:remove_skill_override(Skill.SLOT.primary, priShocking, 20)
	actor:remove_skill_override(Skill.SLOT.secondary, priShocking, 20)
	actor:remove_skill_override(Skill.SLOT.primary, priResupply, 20)
	actor:remove_skill_override(Skill.SLOT.secondary, priResupply, 20)
	actor:remove_skill_override(Skill.SLOT.primary, priHacking, 20)
	actor:remove_skill_override(Skill.SLOT.secondary, priHacking, 20)
	actor:remove_skill_override(Skill.SLOT.primary, unavailable, 30)
	actor:remove_skill_override(Skill.SLOT.secondary, unavailable, 30)
end

local function captain_create_beacon(actor, object)
	captain_remove_beacon_overrides(actor)
	actor.closebeaconmenu = 1
	actor.image_index2 = 0
	actor.sprite_index2 = sprite_shoot4
	actor:sound_play(gm.constants.wHANDShoot2_1, 1, 0.9 + math.random() * 0.1)
	actor:collision_line_advanced(actor.x, actor.y + 10, actor.x + 175 * actor.image_xscale, actor.y + 10, gm.constants.pBlock, true, true)
	local collision_x1 = gm.variable_global_get("collision_x") - 2 * actor.image_xscale
	local collision_y1 = gm.variable_global_get("collision_y")
	actor:collision_line_advanced(collision_x1, collision_y1, collision_x1 - 10 * actor.image_xscale, actor.y + 2000, gm.constants.pBlock, true, true)
	local collision_x2 = gm.variable_global_get("collision_x")
	local collision_y2 = gm.variable_global_get("collision_y")
	local oBeacon = object:create(collision_x2, collision_y2 - 12)
	oBeacon.parent = actor
end

priHealing:onActivate(function(actor)
	captain_create_beacon(actor, objHealing)
end)

priShocking:onActivate(function(actor)
	captain_create_beacon(actor, objShocking)
end)

priResupply:onActivate(function(actor)
	captain_create_beacon(actor, objResupply)
end)

priHacking:onActivate(function(actor)
	captain_create_beacon(actor, objHacking)
end)

local beacon = cap:get_special()
beacon:set_skill_icon(sprite_skills, 6)
beacon.cooldown = 10
beacon.is_primary = true
beacon.is_utility = false
beacon.damage = 10
beacon.hold_facing_direction = true
beacon.override_strafe_direction = true
beacon.ignore_aim_direction = true
beacon.required_interrupt_priority = State.ACTOR_STATE_INTERRUPT_PRIORITY.any
beacon.require_key_press = true
beacon.allow_buffered_input = true
beacon:clear_callbacks()

local stbeacon = State.new(NAMESPACE, "orbitalSupplyBeacon")
stbeacon:clear_callbacks()

beacon:onActivate(function(actor)
	if actor.callcooldown <= 0 then
		actor:refresh_skill(Skill.SLOT.special)
		actor:enter_state(stbeacon)
	elseif actor:get_active_skill(Skill.SLOT.special).skill_id == beacon.value then
		actor:refresh_skill(Skill.SLOT.special)
	end
end)

efPreview3:onDraw(function(self)
	local actor = self.parent
	if actor.closebeaconmenu == 0 then
		actor:collision_line_advanced(actor.x, actor.y + 10, actor.x + 175 * actor.image_xscale, actor.y + 10, gm.constants.pBlock, true, true)
		local collision_x1 = gm.variable_global_get("collision_x") - 2 * actor.image_xscale
		local collision_y1 = gm.variable_global_get("collision_y")
		actor:collision_line_advanced(collision_x1, collision_y1, collision_x1 - 10 * actor.image_xscale, actor.y + 2000, gm.constants.pBlock, true, true)
		local collision_x2 = gm.variable_global_get("collision_x")
		local collision_y2 = gm.variable_global_get("collision_y")
		gm.draw_set_colour(Color.from_rgb(70, 184, 221))
		gm.draw_circle(collision_x2, collision_y2, 132, true)
		gm.draw_circle(collision_x2, collision_y2, 138, true)
		gm.draw_sprite(sprite_healing, 6, collision_x2, collision_y2 - 12)
	else
		self:destroy()
	end
end)

stbeacon:onEnter(function(actor, data)
	local loadout = Instance.find(gm.constants.oInit).player:get(actor.player_id).loadout_selection
	local beacon1 = loadout.get_family_choice_index(loadout, loadout, "captainBeaconMisc1")
	local beacon2 = loadout.get_family_choice_index(loadout, loadout, "captainBeaconMisc2")
	
	if gm.sign(gm.real(actor.moveRight) - gm.real(actor.moveLeft)) ~= 0 then
		actor.hold_facing_direction_xscale = gm.sign(gm.real(actor.moveRight) - gm.real(actor.moveLeft)) -- stupid dumb idiotic bullshit fuckery, apparently vanilla code also uses that lmao
	else
		actor.hold_facing_direction_xscale = actor.image_xscale
	end
	
	actor:skill_util_strafe_init()
	actor:skill_util_strafe_turn_init()
	actor.sprite_index2 = sprite_beaconCall
	actor.image_index2 = 0
	data.call_sound = -1
	data.beacon_removed = 0
	actor.closebeaconmenu = 0
	actor.beaconallowcancel = 0
	actor:sound_play(gm.constants.wMercenary_EviscerateActivate, 1, 1)
	
	if actor.beacon1charges > 0 then
		if beacon1 == 0 then
			actor:add_skill_override(Skill.SLOT.primary, priHealing, 20)
		elseif beacon1 == 1 then
			actor:add_skill_override(Skill.SLOT.primary, priShocking, 20)
		elseif beacon1 == 2 then
			actor:add_skill_override(Skill.SLOT.primary, priResupply, 20)
		elseif beacon1 == 3 then
			actor:add_skill_override(Skill.SLOT.primary, priHacking, 20)
		end
	else
		actor:add_skill_override(Skill.SLOT.primary, unavailable, 30)
	end
	
	if actor.beacon2charges > 0 then
		if beacon2 == 0 then
			actor:add_skill_override(Skill.SLOT.secondary, priHealing, 20)
		elseif beacon2 == 1 then
			actor:add_skill_override(Skill.SLOT.secondary, priShocking, 20)
		elseif beacon2 == 2 then
			actor:add_skill_override(Skill.SLOT.secondary, priResupply, 20)
		elseif beacon2 == 3 then
			actor:add_skill_override(Skill.SLOT.secondary, priHacking, 20)
		end
	else
		actor:add_skill_override(Skill.SLOT.secondary, unavailable, 30)
	end
	
	local preview = efPreview3:create(actor.x, actor.y)
	preview.parent = actor
end)

stbeacon:onStep(function(actor, data)
	actor:skill_util_step_strafe_sprites()
	actor:skill_util_strafe_turn_turn_if_direction_changed()
	
	if actor.v_skill == false and actor.beaconallowcancel == 0 then
		actor.beaconallowcancel = 1
		actor.sprite_index2 = sprite_beaconCall
		actor.image_index2 = 0
	end
	
	if actor.sprite_index2 == sprite_beaconCall and actor.image_index2 >=4 then
		actor.image_index2 = 4
	end
	
	if data.call_sound == -1 then
		data.call_sound = actor:sound_play(gm.constants.wTeleporter_AmbienceLoopable, 1, 1)
		gm.audio_sound_loop(data.call_sound, true)
	end
	
	if actor.closebeaconmenu == 1 then
		if actor.beacon1charges + actor.beacon2charges <= 0 and actor:get_active_skill(Skill.SLOT.special).skill_id ~= unavailable.value then
			actor:add_skill_override(Skill.SLOT.special, unavailable, 30)
		end
		actor:skill_util_strafe_turn_update(0.25, 1)
		actor:skill_util_strafe_update(0.25, 1)
		if data.beacon_removed == 0 then
			if actor.z_skill == true then
				actor.beacon1charges = actor.beacon1charges - 1
			elseif actor.x_skill == true then
				actor.beacon2charges = actor.beacon2charges - 1
			end
			data.beacon_removed = 1
		end
		if actor.sprite_index2 == sprite_shoot4 and actor.image_index2 >= 8 then
			captain_remove_beacon_overrides(actor)
			actor:skill_util_reset_activity_state()
		end
	else
		actor:freeze_active_skill(Skill.SLOT.special)
		actor:skill_util_strafe_turn_update(0.2, 0.9)
		actor:skill_util_strafe_update(0.2, 0.9)
	end
	
	if actor.beaconallowcancel == 1 and actor.v_skill == true and actor.sprite_index2 ~= sprite_shoot4 then
		captain_remove_beacon_overrides(actor)
		actor:skill_util_reset_activity_state()
	end
end)

stbeacon:onExit(function(actor, data)
	actor:skill_util_strafe_exit()
	captain_remove_beacon_overrides(actor)
	actor.callcooldown = 10
	actor.closebeaconmenu = 1
	actor.beaconallowcancel = 0
	if gm.audio_is_playing(data.call_sound) then
		gm.audio_stop_sound(data.call_sound)
	end
end)

stbeacon:onGetInterruptPriority(function(actor, data)
	return State.ACTOR_STATE_INTERRUPT_PRIORITY.skill_interrupt_period
end)



local function setupgenericbeacon(self, data)
	data.timemax = 180
	data.timeleft = 180
	data.activetimer = 0
	data.beingcalled = 1
	data.explosionfired = 0
	self.image_alpha = 0
	self.image_speed = 0
	self.parent = -4
	local height = 7500
	local offset = math.random(-200, 200)
	local distance = GM.point_distance(self.x + offset, self.y - height - 12, self.x, self.y - 12)
	local angle = math.deg(GM.arctan2((self.y - height - 12) - (self.y - 12), self.x - (self.x + offset)))
	parBeaconTrailLine:set_direction(angle, angle, 0, 0)
	parBeaconTrailLine:set_orientation(angle, angle, 0, 0, false)
	parBeaconTrail:set_direction(angle, angle, 0, 0)
	parBeaconTrail:set_life(distance / 45 + 2, distance / 45 + 2, 0, 0)
	parBeaconTrail:create(self.x + offset, self.y - 12 - height)
end

local function setupgenericbeaconlanding(self, data)
	if data.timeleft > 0 then
		data.timeleft = data.timeleft - 1
	end
	
	if data.timeleft % 5 == 0 and data.timeleft > 0 then
		parCallB:create(self.x, self.y + 12, 1, Particle.SYSTEM.above)
	end
	
	if data.timeleft <= 12 and data.explosionfired == 0 then
		if gm._mod_net_isHost() then
			local buff_shadow_clone = Buff.find("ror", "shadowClone")
			for i=0, self.parent:buff_stack_count(buff_shadow_clone) do
				local attack = self.parent:fire_explosion(self.x, self.y - 10, 270, 270, self.parent:skill_get_damage(beacon), sprite_impact, gm.constants.sSparks1S)
				attack.attack_info:set_stun(1.5, Attack_Info.KNOCKBACK_DIR.right, Attack_Info.KNOCKBACK_KIND.none)
				attack.attack_info.climb = i * 8
				self.parent:sound_play(gm.constants.wTurtleExplosion, 1, 0.8)
				self.parent:sound_play(gm.constants.wWormExplosion, 1, 0.6)
				self:screen_shake(5)
				data.explosionfired = 1
			end
		end
	end
		
	if data.timeleft <= 0 and data.explosionfired == 1 then
		self.image_alpha = 1
		self.image_index = 0
		data.beingcalled = 0
	end
end

local function setupgenericbeacondraw(self, data, color, drawarearadius)
	if data.timeleft > 12 and data.activetimer <= 0 then
		local radius = (1 - ((data.timeleft - 12) / (data.timemax - 12))) * 135
		gm.draw_set_colour(Color.from_rgb(70, 184, 221))
		gm.draw_circle(self.x, self.y + 12, radius, true)
	elseif data.beingcalled == 0 then
		self.image_speed = math.min(0.2, ((data.activetimer / 60) ^ 1.9) * 0.2)
		if data.activetimer > 30 and drawarearadius == true then
			local radius = math.min(135, (1 - (math.max(1, data.activetimer - 30) / (math.max(1, data.activetimer - 30) ^ 1.7))) * 150)
			gm.draw_set_colour(color)
			gm.draw_circle(self.x, self.y, radius - 3, true)
			gm.draw_circle(self.x, self.y, radius + 3, true)
		end
	end
end



objHealing:onCreate(function(self)
	local data = self:get_data()
	setupgenericbeacon(self, data)
end)

objHealing:onStep(function(self)
	local data = self:get_data()
	
	if data.beingcalled == 1 then
		setupgenericbeaconlanding(self, data)
	else
		data.activetimer = data.activetimer + 1
		if data.activetimer >= 72 then
			data.activetimer = 60
			local heallist = List.new()
			self:collision_ellipse_list(self.x - 135, self.y - 135, self.x + 135, self.y + 135, gm.constants.pActor, false, true, heallist, false)
			for _, actor in ipairs(heallist) do
				if actor.team == self.parent.team then
					actor:heal(gm.round(actor.maxhp * 0.02))
					
					local flash = GM.instance_create(actor.x, actor.y, gm.constants.oEfFlash)
					flash.parent = actor
					flash.image_blend = Color.from_rgb(189, 231, 90)
					flash.rate = 0.05
					flash.image_alpha = 0.5
				end
			end
			heallist:destroy()
			local particlex = self.x + math.random(-135, 135)
			local particley = self.y + math.random(-135, 135)
			if gm.point_distance(self.x, self.y, particlex, particley) <= 130 then
				parHealing:create(particlex, particley)
			end
		end
	end
end)

objHealing:onDraw(function(self)
	local data = self:get_data()
	setupgenericbeacondraw(self, data, Color.from_rgb(189, 231, 90), true)
end)



objShocking:onCreate(function(self)
	local data = self:get_data()
	data.allowlightning = 0
	setupgenericbeacon(self, data)
end)

objShocking:onStep(function(self)
	local data = self:get_data()
	
	if data.beingcalled == 1 then
		setupgenericbeaconlanding(self, data)
	else
		data.activetimer = data.activetimer + 1
		if data.activetimer >= 240 then
			data.activetimer = 60
			local shocklist = List.new()
			self:collision_ellipse_list(self.x - 135, self.y - 135, self.x + 135, self.y + 135, gm.constants.pActorCollisionBase, false, true, shocklist, false)
			for _, actor in ipairs(shocklist) do
				if actor.team ~= self.parent.team and actor.activity_type ~= 90 and actor.__activity_handler_state ~= 90 and not GM.actor_is_boss(actor) and actor.object_index ~= gm.constants.oWormBody and actor.object_index ~= gm.constants.oWurmBody and actor.object_index ~= gm.constants.oBrambleBody then
					GM.apply_buff(actor, shock, 5 * 60, 1)
					GM.set_buff_time(actor, shock, 5 * 60)
				end
			end
			shocklist:destroy()
			self:sound_play(gm.constants.wArtiShoot4_3, 0.4, 1)
			self:sound_play(gm.constants.wChainLightning, 0.6, 1)
			local objsparks = Object.find("ror", "efSparks")
			local sparks = objsparks:create(self.x, self.y)
			sparks.sprite_index = gm.constants.sEfSuperMissileExplosionS
			sparks.image_alpha = 0.75
			if data.allowlightning == 0 then
				data.allowlightning = 1
			end
		end
	end
end)

objShocking:onDraw(function(self)
	local data = self:get_data()
	setupgenericbeacondraw(self, data, Color.from_rgb(150, 245, 239), false)
	if data.activetimer >= 60 and data.activetimer <= 80 and data.allowlightning == 1 then
		local shocklist = List.new()
		self:collision_ellipse_list(self.x - 135, self.y - 135, self.x + 135, self.y + 135, gm.constants.pActorCollisionBase, false, true, shocklist, false)
		for _, actor in ipairs(shocklist) do
			if actor.team ~= self.parent.team and actor.activity_type ~= 90 and not (actor.activity == 92 and actor.object_index == gm.constants.oTuber) and actor.__activity_handler_state ~= 90 and not GM.actor_is_boss(actor) and actor.object_index ~= gm.constants.oWormBody and actor.object_index ~= gm.constants.oWurmBody and actor.object_index ~= gm.constants.oBrambleBody and actor:buff_stack_count(shock) > 0 then
				gm.draw_set_colour(Color.from_rgb(150, 245, 239))
				gm.draw_set_alpha(0.75)
				gm.draw_lightning(self.x, self.y, actor.x, actor.y, Color.from_rgb(150, 245, 239))
				gm.draw_set_alpha(1)
			end
		end
		shocklist:destroy()
		local radius = math.min(135, (1 - (math.max(1, data.activetimer - 60) / (math.max(1, data.activetimer - 60) ^ 1.7))) * 150)
		gm.draw_set_colour(Color.from_rgb(150, 245, 239))
		gm.draw_set_alpha(1 - (data.activetimer - 60) / 20)
		gm.draw_circle(self.x, self.y, radius, true)
		gm.draw_set_alpha(1)
	end
end)



objResupply:onCreate(function(self)
	local data = self:get_data()
	setupgenericbeacon(self, data)
end)

objResupply:onStep(function(self)
	local data = self:get_data()
	
	if data.beingcalled == 1 then
		setupgenericbeaconlanding(self, data)
	else
		data.activetimer = data.activetimer + 1
	end
end)

objResupply:onDraw(function(self)
	local data = self:get_data()
	setupgenericbeacondraw(self, data, Color.from_rgb(214, 174, 90), false)
end)



objHacking:onCreate(function(self)
	local data = self:get_data()
	setupgenericbeacon(self, data)
end)

objHacking:onStep(function(self)
	local data = self:get_data()
	
	if data.beingcalled == 1 then
		setupgenericbeaconlanding(self, data)
	else
		data.activetimer = data.activetimer + 1
		if data.activetimer >= 60 then
			local hacklist = List.new()
			self:collision_ellipse_list(self.x - 135, self.y - 135, self.x + 135, self.y + 135, gm.constants.pInteractable, false, true, hacklist, true)
			for _, chest in ipairs(hacklist) do
				if chest.object_index == gm.constants.oHiddenHand and chest.captainhacked == nil then
					if chest.captainhacktimer == nil then
						chest.captainhacktimer = 0
					end
					if chest.captainhacktimer >= 15 * 60 then
						local drone = Object.find("ror", "Drone1"):create(chest.x, chest.y)
						drone.sprite_idle = gm.constants.sDronePlayerHANDIdle
						drone.sprite_idle_broken = gm.constants.sDronePlayerHANDIdle
						drone.sprite_shoot1 = gm.constants.sDronePlayerHANDShoot
						drone.sprite_shoot1_broken = gm.constants.sDronePlayerHANDShoot
						local items = self.parent.inventory_item_order
						local stack = self.parent.inventory_item_stack
						for _, item in ipairs(items) do
							drone:item_give(item, stack[item + 1], 1)
						end
						chest.captainhacked = 1
						chest.active = 1
					else
						chest.captainhacktimer = chest.captainhacktimer  + 1
						break
					end
				elseif chest.object_index == gm.constants.oDoor and chest.active < 1 then
					if chest.captainhacktimer == nil then
						chest.captainhacktimer = 0
					end
					if chest.captainhacktimer >= 15 * 60 then
						chest.cost_type = 1
						chest.cost = 0
						if chest.captainhacked == nil then
							chest.active = 1
						end
						chest.activator = self.parent
						chest.captainhacked = 1
					else
						chest.captainhacktimer = chest.captainhacktimer  + 1
						break
					end
				elseif (chest.cost ~= nil and chest.cost > 0 and chest.cost_type == 0) and chest.active < 1 then
					if chest.captainhacktimer == nil then
						chest.captainhacktimer = 0
					end
					if chest.captainhacktimer >= chest.cost * 9 then
						chest.cost = 0
						if chest.captainhacked == nil then
							chest.active = 1
						end
						chest.activator = self.parent
						chest.captainhacked = 1
					else
						chest.captainhacktimer = chest.captainhacktimer + GM._mod_game_getDirector().stage_chest_cost_scale
						break
					end
				end
			end
			hacklist:destroy()
		end
	end
end)

objHacking:onDraw(function(self)
	local data = self:get_data()
	setupgenericbeacondraw(self, data, Color.from_rgb(255, 240, 137), true)
	if data.activetimer >= 60 then
		local hacklist = List.new()
		self:collision_ellipse_list(self.x - 135, self.y - 135, self.x + 135, self.y + 135, gm.constants.pInteractable, false, true, hacklist, true)
		for _, chest in ipairs(hacklist) do
			if chest.object_index == gm.constants.oHiddenHand and chest.captainhacked == nil then
				gm.draw_set_colour(Color.from_rgb(255, 240, 137))
				gm.draw_lightning(self.x, self.y - 27, chest.x + 42, chest.y + 32, Color.from_rgb(255, 240, 137))
				gm.draw_rectangle(chest.x + 22, chest.y + 3, gm.lerp(chest.x + 22, chest.x + 62, chest.captainhacktimer / (15 * 60)), chest.y - 2, false)
				gm.draw_sprite(sprite_bar, 0, chest.x + 42, chest.y)
				break
			elseif chest.object_index == gm.constants.oDoor and chest.active < 1 then
				gm.draw_set_colour(Color.from_rgb(255, 240, 137))
				gm.draw_lightning(self.x, self.y - 27, chest.x + 16, chest.y + 33, Color.from_rgb(255, 240, 137))
				gm.draw_rectangle(chest.x - 5, chest.y - 15, gm.lerp(chest.x - 5, chest.x + 35, chest.captainhacktimer / (15 * 60)), chest.y - 10, false)
				gm.draw_sprite(sprite_bar, 0, chest.x + 16, chest.y - 13)
				break
			elseif (chest.cost ~= nil and chest.cost > 0 and chest.cost_type == 0) and chest.active < 1 and chest.captainhacktimer ~= nil and chest.captainhacked == nil then
				gm.draw_set_colour(Color.from_rgb(255, 240, 137))
				local yy = chest.y - gm.round(gm.sprite_get_height(chest.sprite_index) * 0.25)
				gm.draw_lightning(self.x, self.y - 27, chest.x, yy, Color.from_rgb(255, 240, 137))
				gm.draw_rectangle(chest.x - 20, yy - 35, gm.lerp(chest.x - 20, chest.x + 20, chest.captainhacktimer / (chest.cost * 9)), yy - 30, false)
				gm.draw_sprite(sprite_bar, 0, chest.x, yy - 33)
				break
			end
		end
		hacklist:destroy()
	end
end)





Callback.add(Callback.TYPE.onStageStart, "captainRefreshBeacons", function()
	for _, actor in ipairs(Instance.find_all(gm.constants.oP)) do
		if actor.class == cap_id then
			if actor.beacon1charges ~= nil then
				actor.beacon1charges = 1 + math.floor(actor:item_stack_count(Item.find("ror", "ancientScepter")) / 2) + (actor:item_stack_count(Item.find("ror", "ancientScepter")) % 2)
			end
			if actor.beacon2charges ~= nil then
				actor.beacon2charges = 1 + math.floor(actor:item_stack_count(Item.find("ror", "ancientScepter")) / 2)
			end
			if unavailable ~= nil then
				actor:remove_skill_override(Skill.SLOT.special, unavailable, 30)
			end
		end
	end
end)

Callback.add(Callback.TYPE.onPickupCollected, "captainScepterPickup", function(pickup, actor)
	for _, actor in ipairs(Instance.find_all(gm.constants.oP)) do
		if actor.class == cap_id then
			if pickup.item_id == 77 then
				if actor.beacon1charges ~= nil and actor.beacon2charges ~= nil and unavailable ~= nil then
					actor:remove_skill_override(Skill.SLOT.special, unavailable, 30)
					if actor:item_stack_count(Item.find("ror", "ancientScepter")) % 2 == 0 then
						actor.beacon1charges = actor.beacon1charges + 1
					else
						actor.beacon2charges = actor.beacon2charges + 1
					end
				end
			end
		end
	end
end)

--prevents the game from crashing if the player has a mocha when the secret hacking interaction happens
--dont ask
gm.pre_script_hook(gm.constants.actor_skin_skinnable_set_skin, function(self, other, result, args)
	if gm.object_is_ancestor(args[1].value.object_index, gm.constants.pDrone) then
		return false
	end
end)