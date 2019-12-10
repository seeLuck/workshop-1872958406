-- GLOBAL.AddModUserCommand("u-rollback", "rollback", {
-- 	prettyname = function(command) return "rollback" end,
-- 	desc = function() return "User Rollback" end,
-- 	permission = "USER",
-- 	params = {},
-- 	emote = false,
-- 	slash = true,
-- 	usermenu = false,
-- 	servermenu = false,
-- 	vote = false,
-- 	serverfn = function(params, caller)
-- 		print("u-rollback by user "..caller.userid)
-- 		GLOBAL.TheNet:SendWorldRollbackRequestToServer(2)
-- 	end
-- })
local tonumber = GLOBAL.tonumber
local _Networking_Say = GLOBAL.Networking_Say
GLOBAL.Networking_Say = function(guid, userid, name, prefab, message, colour, whisper, isemote, ...)
	_Networking_Say(guid, userid, name, prefab, message, colour, whisper, isemote, ...)
	if not whisper and string.sub(message, 1, 9) == "+rollback" and string.len(message) == 10 then 
		local days = tonumber(string.sub(message, 10, 10))
		if days == 1 or days == 2 then
			GLOBAL.TheNet:SendWorldRollbackRequestToServer(days)
		end
	end
end