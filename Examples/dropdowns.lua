local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()

local FinityWindow = Finity.new("dropdown example", true, false, "", true, "")

local PlayerSettingsCategory = FinityWindow:Category("Player") -- Makes a button on your left

local PlayerSettings = PlayerSettingsCategory:Sector("Player Configuration") -- Adds sections inside the category, Name Optional

PlayerSettings:Cheat("dropdown", "Team Changer", function(team)
    print(team)
end, { options = {"Sheriff", "Civilian"}, default = "Sheriff" })
