name = "Repairable Equipment"
description = "[Version:4.4.1]\n版本：4.4.1\n\nWeapons, armors and tools and be repaired by recipe material.\n可以用材料修复武器、装备、工具等。"
author = "Civi, Potter_Lee"
version = "4.4.1"

forumthread = ""
api_version = 10
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
all_clients_require_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
	"item",
}

configuration_options =
{
	{
		name = "HAMBAT",
		label = "Ham Bat repairable?",
		hover = "Material: Pig Skin/Meats",
		options =	{
						{description = "Yes", data = true},
						{description = "No", data = false},
					},
		default = true,
	},
	{
		name = "NIGHTSWORD",
		label = "Dark Sword repairable?",
		hover = "Material: Nightmare Fuel",
		options =	{
						{description = "Fast", data = 2},
						{description = "Normal", data = 1},
						{description = "False", data = 0},
					},
		default = 1,
	},
	{
		name = "NIGHTSTICK",
		label = "Morning Star repairable?",
		hover = "Material: Volt Goat Horn, Nitre or Light Bulb",
		options =	{
						{description = "Yes", data = true},
						{description = "No", data = false},
					},
		default = true,
	},
	{
		name = "TORNADO",
		label = "Weather Pain repairable?",
		hover = "Material: Gears, Volt Goat Horn",
		options = {
					{description = "Yes", data = true},
					{description = "No", data = false},
				},
		default = false
	},
	{
		name = "OTHER_EQUIPMENT",
		label = "Other equipment repairable?",
		hover = "Most equipment are repairable\nCheck them in game!",
		options =	{
						{description = "Yes", data = true},
						{description = "No", data = false},
					},
		default = false,
	},
	{
		name = "PERISHABLE_WEARS",
		label = "perishable wears repairable?",
		hover = "Mushroom Hats' Material: Mushroom\nFloral Shirt's Material: Cactus Flower",
		options =	{
						{description = "Yes", data = true},
						{description = "No", data = false},
					},
		default = true,
	},
	{
		name = "EQUIPMENT_SELF",
		label = "equipment self-repairable?",
		options =	{
						{description = "Yes", data = true},
						{description = "No", data = false},
					},
		default = true,
	}
}
