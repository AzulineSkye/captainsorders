local sprite_bots = Resources.sprite_load(NAMESPACE, "defensiveMicrobots", path.combine(PATH, "Sprites/microbots.png"), 1, 16, 18)
local sprite_bot = Resources.sprite_load(NAMESPACE, "defensiveMicrobot", path.combine(PATH, "Sprites/microbot.png"), 1, 3, 3)

local bots = Item.new(NAMESPACE, "defensiveMicrobots")
bots:set_sprite(sprite_bots)
bots:set_tier(Item.TIER.rare)
bots:set_loot_tags(Item.LOOT_TAG.category_utility)
bots:toggle_loot(false)
bots:clear_callbacks()