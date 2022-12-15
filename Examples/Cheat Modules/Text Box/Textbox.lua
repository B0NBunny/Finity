local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()

local FinityWindow = Finity.new("Textbox example", true, false, "", true, "") -- Creates the window

local PlayerSettingsCategory = FinityWindow:Category("Player Settings") -- Makes a button on your left
local PlayerSettings = PlayerSettingsCategory:Sector("Player Settings | Configure them here") -- Adds sections inside the category, Name Optional

local SpoofName = PlayerSettings:Cheat("Textbox", "New Name (LOCAL) ", function(Value)
	local plr = game.Players.LocalPlayer
  local name = Value

    print(name)
    
    plr.Name = name
    plr.Character = name

end, { placeholder = "Player Name" })
