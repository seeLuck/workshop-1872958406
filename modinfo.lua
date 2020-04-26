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
server_filter_tags = {"stack", "clean"}

configuration_options =
{
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
        name = "wx78drop",
        label = "WX78Drop",
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
        name = "natureSpawn",
        label = "NatureSpawn",
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
        name = "lanternColor",
        label = "LanternColor",
        options =
        {
            {description = "OFF", data = false, hover = "OFF"},
            {description = "ON", data = true, hover = "ON"},
        },
        default = false,
    }
}