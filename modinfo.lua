name = "Server Improvement"
description = "自用服务器优化插件，随时可能再改，最好别订阅。\nSelf-use server improvement collections. Updating at any time. No recommend to subscribe it."
author = "雪绕风飞"
version = "1.6"
forumthread = ""
api_version = 10
icon_atlas = "modicon.xml"
icon = "modicon.tex"
dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = false
dst_compatible = true
client_only_mod = false
all_clients_require_mod = false

configuration_options =
{
	{
		name = "",
		label = "休闲配置",
		hover = "",
		options =	
		{
			{description = "", data = 0},
		},
		default = 0,
	},
    {
        name = "boatHealth",
        label = "BoatHealth",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "moonStormHealth",
        label = "MoonStormHealth",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "seasonStart",
        label = "SeasonStart",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "Normal", data = 1, hover = "Normal"},
            {description = "Wealthy", data = 2, hover = "Wealthy"},
        },
        default = false,
    },
    {
        name = "fridgeFresh",
        label = "FridgeFresh",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "chef",
        label = "Chef",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
		name = "",
		label = "体验配置",
		hover = "",
		options =	
		{
			{description = "", data = 0},
		},
		default = 0,
	},
    {
        name = "natureSpawn",
        label = "NatureSpawn",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "Less", data = 1, hover = "Less"},
            {description = "More", data = 2, hover = "More"},
        },
        default = false,
    },
    {
        name = "worldClean",
        label = "WorldClean",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
		name = "",
		label = "推荐配置",
		hover = "",
		options =	
		{
			{description = "", data = 0},
		},
		default = 0,
	},
    {
        name = "usercmd",
        label = "UserCMD",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "salt",
        label = "Salt",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "beenice",
        label = "BeeNice",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "smartIceMachine",
        label = "SmartIceMachine",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "lanternColor",
        label = "LanternColor",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "bossFastRespawn",
        label = "BossFastRespawn",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "farmer",
        label = "Farmer",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "dontdrop",
        label = "Dontdrop",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    },
    {
        name = "merm",
        label = "Merm",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    }
}