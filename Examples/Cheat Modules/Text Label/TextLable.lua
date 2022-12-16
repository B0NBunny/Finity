local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()

local FinityWindow = Finity.new("TextLabel example", true, false, "", true, "")

local PlayerSettingsCategory = FinityWindow:Category("Player") -- Makes a button on your left

local PlayerSettings = PlayerSettingsCategory:Sector("Player Configuration") -- Adds sections inside the category, Name Optional

local label = PlayerSettings:Cheat("Label", "Here you can configure your player settings. Choose form the many options below.")

-- You can set the labels text by doing the following:

--[[

local value_goes_here = "anything can be a value as long as it can become a string!"

label:SetValue(value_goes_here)

]]
