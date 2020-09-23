local RET = GLOBAL.RET
local ALLOW = GLOBAL.TUNING.ALLOW

RET.SEWLIST = {}
RET.LIST = {}

if ALLOW["hambat"] then
RET.SEWLIST.HAMBAT={
    {"pigskin",{
        {"hambat",0.5},
    }},
    {"meat",{
        {"hambat",0.2},
    }},
    {"cookedmeat",{
        {"hambat",0.15},
    }},
    {"meat_dried",{
        {"hambat",0.25},
    }},
    {"monstermeat",{
        {"hambat",0.15},
    }},
    {"cookedmonstermeat",{
        {"hambat",0.1},
    }},
    {"monstermeat_dried",{
        {"hambat",0.2},
    }},
    {"smallmeat",{
        {"hambat",0.1},
    }},
    {"cookedsmallmeat",{
        {"hambat",0.05},
    }},
    {"smallmeat_dried",{
        {"hambat",0.15},
    }},
    {"drumstick",{
        {"hambat",0.1},
    }},
    {"drumstick_cooked",{
        {"hambat",0.05},
    }},
    {"plantmeat",{
        {"hambat",0.1},
    }},
    {"plantmeat_cooked",{
        {"hambat",0.05},
    }},
    {"froglegs",{
        {"hambat",0.1},
    }},
    {"froglegs_cooked",{
        {"hambat",0.05},
    }},
    {"batwing",{
        {"hambat",0.15}
    }},
    {"batwing_cooked",{
        {"hambat",0.1}
    }},
    {"humanmeat",{
        {"hambat",1},
    }},
    {"humanmeat_cooked",{
        {"hambat",1},
    }},
    {"humanmeat_dried",{
        {"hambat",1},
    }},
	{"deerclops_eyeball",{
		{"hambat",1},
	}},
	{"minotaurhorn",{
		{"hambat",1},
	}},
	{"bird_egg",{
		{"hambat",0.15},
	}},
	{"bird_egg_cooked",{
		{"hambat",0.1},
	}},
	{"tallbirdegg",{
		{"hambat",0.4},
	}},
	{"tallbirdegg_cooked",{
		{"hambat",0.3},
	}},
	{"tallbirdegg_cooked",{
		{"hambat",0.3},
	}},
	{"trunk_summer",{
		{"hambat",1},
	}},
	{"trunk_winter",{
		{"hambat",1},
	}},
	{"trunk_cooked",{
		{"hambat",1},
    }},
    {"winter_food9",{
        {"hambat",0.15}
    }}

}
end
if ALLOW["nightsword"] >= 1 then
RET.SEWLIST.NIGHTSWORD={
    {"nightmarefuel",{
        {"nightsword",20},
    }},
}
end
if ALLOW["nightstick"] then
RET.SEWLIST.NIGHTSTICK={
    {"lightninggoathorn",{
        {"nightstick",180},
    }},
    {"lightbulb",{
        {"nightstick",18},
    }},
    {"nitre",{
        {"nightstick",60},
    }},
    {"transistor",{
        {"nightstick",90}
    }},
}
end

if ALLOW["tornado"] then
RET.SEWLIST.TORNADO={
    {"gears",{
        {"staff_tornado",5},
    }},
    {"lightninggoathorn",{
        {"staff_tornado",10},
    }},
}
end

if ALLOW["other_equipment"] then
RET.SEWLIST.OTHERQUIPMENT={
    {"nightmarefuel",{
        {"ruins_bat",25},
        {"ruinshat",0.15},
        {"armorruins",0.12},
        {"armor_sanity",0.15},
        {"yellowstaff",4},
        {"opalstaff",4},
        {"skeletonhat",0.2}

    }},
    {"thulecite",{
        {"ruins_bat",50},
        {"ruinshat",0.2},
        {"armorruins",0.15},
        {"multitool_axe_pickaxe",150},
    }},
    {"thulecite_pieces",{
        {"ruins_bat",10},
        {"ruinshat",0.04},
        {"armorruins",0.03},
        {"multitool_axe_pickaxe",30},
    }},
    {"mandrake",{
        {"panflute",8},
    }},
    {"slurper_pelt",{
        {"armorslurper",480},
    }},
    {"coontail",{
        {"whip",50},
    }},
    {"tentaclespots",{
        {"whip",30},
    }},
    {"orangegem",{
        {"orangestaff",10},
        {"orangeamulet",200},
    }},
    {"yellowgem",{
        {"yellowstaff",10},
        -- {"orangeamulet",200},
    }},
    {"pigskin",{
        {"onemanband",60}
    }},
    {"batwing",{
        {"batbat",20},
    }},
    {"batwing_cooked",{
        {"batbat",15},
    }},
	{"slurtle_shellpieces",{
		{"slurtlehat",0.33},
		{"armorsnurtleshell",0.33}
	}},
	{"boneshard",{
		{"skeletonhat",0.05},
    {"armor_bramble",0.1},
  }},
  {"livinglog",{
    {"armor_bramble",0.2},
  }},
  {"moonglass",{
    {"glasscutter",0.15}, --月刀
    {"moonglassaxe",0.15}, --月斧
  }}

}
end
if ALLOW["perishable_wears"] then
RET.SEWLIST.PERISHABLE={
    {"red_mushroomhat",{
        {"red_mushroomhat",1},
    }},
    {"red_cap",{
        {"red_mushroomhat",1/6},
    }},
    {"red_cap",{
        {"red_mushroomhat",1/6},
    }},
	{"spore_medium",{
		{"red_mushroomhat",1},
	}},

    {"green_mushroomhat",{
        {"green_mushroomhat",1},
    }},
    {"green_cap",{
        {"green_mushroomhat",1/6},
    }},
	{"spore_small",{
		{"green_mushroomhat",1},
	}},

    {"blue_mushroomhat",{
        {"blue_mushroomhat",1},
    }},
    {"blue_cap",{
        {"blue_mushroomhat",1/6},
    }},
	{"spore_tall",{
		{"blue_mushroomhat",1},
	}},

    {"hawaiianshirt",{
        {"hawaiianshirt",1},
    }},
    {"cactus_flower",{
        {"hawaiianshirt",0.2},
    }},
    {"cactus_meat",{
        {"hawaiianshirt",0.1},
    }},
    {"cactus_meat_cooked",{
        {"hawaiianshirt",0.08},
    }},

    {"petals",{
        {"flowerhat",0.2},
        {"grass_umbrella",0.167},
    }},
    {"kelp",{
      {"kelphat",0.2},
      {"bullkelp_root",0.2},
    }},
    {"kelp_cooked",{
      {"kelphat",0.1},
      {"bullkelp_root",0.1},
    }},
    {"kelp_dried",{
      {"kelphat",0.15},
      {"bullkelp_root",0.15},
    }},
}
end
if ALLOW["equipment_self"] then
RET.SEWLIST.EQUIPMENT_SELF={
  "axe", --斧子
  "goldenaxe", --金斧
  "shovel", --铲子
  "goldenshovel", -- 金铲
  "pickaxe", --镐子
  "goldenpickaxe", --金镐
  "pitchfork", --草插
  "hammer", -- 锤子
  "saddlehorn", -- 卸鞍器
  "saddle_basic", --鞍
  "saddle_race", -- 闪光鞍
  "saddle_war", -- 战鞍
  "brush", --毛刷
  "multitool_axe_pickaxe", --镐斧
  "nightmare_axe_pickaxe", --影镐
  "oar", --桨
  "oar_driftwood", --浮木桨
  "malbatross_beak", --邪天翁喙
  "book_birds", --鸟书
  "book_gardening", -- 园艺书
  "book_sleep", -- 睡书
  "book_brimstone", --电书
  "book_tentacles", -- 触手书
  "book_toggledownfall", --雨书
  "book_harvest", --黄书
  "firestaff", --火魔杖
  "icestaff", -- 冰魔杖
  "telestaff", --紫杖
  "greenstaff", --绿杖
  "yellowstaff", --矮星杖
  "opalstaff", --月杖
  "orangestaff", --橙杖
  "bugnet", --捕虫网
  "birdtrap", --捕鸟器
  "trap", --陷阱
  "trap_teeth", --狗牙陷阱
  "trap_bramble", --荆棘陷阱"
  "fishingord", --鱼竿
  "bedoll_furry", --棉被
  "bernie_inactive", --伯尼
  "amulet", --复活币
  "bluamulet", --寒冰护符
  "purpleamulet", --梦魇护符
  "greenamulet", --绿符
  "orangeamulet", --橙符
  "blackholestaff", -- 黑洞法杖
  "blacklotus", -- 黑莲
  "compass", --指南针
  -- "featherfan", --扇子
  "horn", --牛角
  "lighter", -- 打火机
  "minifan", --小风车
  "umbrella", --雨伞
  "fertilizer", -- 粪桶
  "panflute", --排箫
  "perdfan", -- 火鸡毛扇
  "onemanban", -- 独奏乐器
  "sewing_kit", --缝布包
  "houndwhistle", --狗笛
  "armor_sanity", --影甲
  "armor_bramble", --荆棘甲
  "armorgrass", -- 草甲
  "armormarble", --大理石甲
  "armorruins", --铥矿甲
  "armorwood", --木甲
  "spear", -- 长矛
  "spear_wathgrithr", --战斗长矛
  "whip", --猫尾鞭
  "bullkelp_root", --海带鞭
  "footballhat", --猪皮帽
  "boomerang", --回力标
  "armordragonfly", -- 鳞甲
  "staff_tornado", -- 旋风
  "beehat", --养蜂帽
  "wathgrithrhat", --战斗头盔
  "slurtlehat", --蜗牛尖壳
  "hivehat", --蜂王冠
  "skeletonhat", -- 骨头盔
  "kelphat", --海带帽
  "armorsnurtleshell", --蜗牛圆壳
  "nightstick", --晨星
  "tentaclespike", --触手棒
  "ruinshat", --铥矿王冠
  "ruins_bat", --铥矿棒
  "nightsword", --影刀
  "batbat", -- 蝙蝠棍
  "strawhat", -- 草帽
  "tophat", --高礼帽
  "rainhat", -- 雨帽
  "earmuffshat", -- 兔耳
  "feefalohat", --牛帽
  "winterhat", -- 冬帽
  "catcoonhat", --猫帽
  "goggleshat", --时尚帽
  "deserhat", --沙漠眼镜
  "raincoat", -- 雨衣
  "sweatervest", -- 狗牙衣
  "trunkvest_summer", --象鼻衣
  "trunkvest_winter", --冬象衣
  "reflectivevest", --夏日背心
  "beargervest", --熊皮大衣
  "eyebrellahat", -- 眼球伞
  "featherhat", -- 羽毛帽
  "armorslurper", -- 饥饿尿布
  "dragonheadhat", -- 龙头
  "dragonbodyhat", --龙身
  "dragontalilhat", --龙尾
  "walrushat", --贝雷帽
  "redlantern", -- 灯笼
  "torch", --火把
  "spiderhat", --蜘蛛女王帽
  "cookiecutterhat", --饼干切割帽
  "mermhat", --鱼人帽

  "glasscutter", --月刀
  "moonglassaxe", --月斧


  "heatrock", --暖石
  "hambat", --火腿棒
  "blue_mushroomhat", --蓝菇帽
  "green_mushroomhat", --绿菇帽
  "red_mushroomhat", --红菇帽
  "grass_umbrella", --花伞
  "flowerhat", --花环
  "icehat", --冰帽
  "watermelonhat", --西瓜帽
  "hawaiianshirt", --花衬衫
  "bathbomb", ----浴球


}
end


for k,v in pairs(RET.SEWLIST) do
    for k1,v1 in pairs(v) do
        table.insert(RET.LIST, v1)
    end
end
