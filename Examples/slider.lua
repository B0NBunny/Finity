local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()

local FinityWindow = Finity.new("slider example", true, false, "", true, "")

local PlayerSettingsCategory = FinityWindow:Category("Player") -- Makes a button on your left

local PlayerSettings = PlayerSettingsCategory:Sector("Player Configuration") -- Adds sections inside the category, Name Optional

-- The cheat type can be either full caps or full lower or start with a cap (aka with proper sentence starter's. 
local MaxPlayerZoom = PlayerSettings:Cheat("slider", "Max Player Zoom", function (Value) -- 'Value' will be an interger (number) value. It is also called a Callback variable
    print("Max Player Zoom is now: "..Value) -- prints what the player zoom is (actually prints the value from the Callback variable)

    local plr = game.Players.LocalPlayer
    plr.CameraMaxZoomDistance = Value

end, { default = 0, min = 0, max = 1500, suffix = " Max Zoom Distance "}) 
-- Suffix is some text the user will see next to the value on the right side.
-- default is the default value the user will see
-- min is the minimum value the scrollbar can be
-- max is the maximum value the scrollbar can be
