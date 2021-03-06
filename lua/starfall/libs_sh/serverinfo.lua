
--- Server info functions. 
-- @shared
local serverinfo_library, _ = SF.Libraries.Register("serverinfo")

--- Returns a table containing physics environment settings. See GLua's physenv.GetPerformanceSettings()
-- for more info.
function serverinfo_library.performanceSettings()
	return table.Copy(physenv.GetPerformanceSettings())
end

--- Returns the server's acceleration due to gravity vector.
function serverinfo_library.gravity()
	return physenv.GetGravity()
end

--- Returns the air density. See Glua's physenv.GetAirDensity()
function serverinfo_library.airDensity()
	return physenv.GetAirDensity()
end

--- Returns the map name
function serverinfo_library.map()
	return game.GetMap()
end

--- Returns The hostname
function serverinfo_library.hostname() 
	return GetConVar("hostname"):GetString()
end

--- Returns true if the server is on a LAN
function serverinfo_library.isLan()
	return GetConVar("sv_lan"):GetBool() 
end

--- Returns the gamemode as a String
function serverinfo_library.gamemode()
	return gmod.GetGamemode().Name
end

--- Returns whether or not the current game is single player
function serverinfo_library.isSinglePlayer()
	return SinglePlayer()
end

--- Returns whether or not the server is a dedicated server
function serverinfo_library.isDedicatedServer()
	return isDedicatedServer()
end

--- Returns the number of players on the server
function serverinfo_library.numPlayers()
	return #player.GetAll()
end

--- Returns the maximum player limit
function serverinfo_library.maxPlayers()
	return MaxPlayers()
end
