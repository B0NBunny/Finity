--[[

OUT DATED WILL NEED TO EDIT SLIGHTLY.

Heres an exaple for the Finity Gui Lib :D
For Mainly for islands.
]]


local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()

local FinityWindow = Finity.new("Finity Menu", true, false, "Example") -- Creates the window

FinityWindow.ChangeToggleKey("Semicolon")

local PlayerSettingsCategory = FinityWindow:Category("Player Settings") -- Makes a button on your left
local Islandss = FinityWindow:Category("User Stats")
local CreditsCategory = FinityWindow:Category("Credits")


local PlayerSettings = PlayerSettingsCategory:Sector("Player Settings | Configure them here") -- Adds sections inside the category, Name Optional

local PlayerSpeed = PlayerSettings:Cheat("slider", "Player Speed", function (Value)
    print("Player speed is now: "..Value)

    local plr = game.Players.LocalPlayer
    plr.Character.Humanoid.WalkSpeed = Value

end, {min = 0, max = 1500, suffix = " Player Speed "}) --Sets parameters for the minimum and maximum amount the player can set
-- Suffix is the text that appears next to the value on the right

local MaxPlayerZoom = PlayerSettings:Cheat("slider", "Max Player Zoom", function (Value)
    print("Max Player Zoom is now: "..Value)

    local plr = game.Players.LocalPlayer
    plr.CameraMaxZoomDistance = Value

end, {min = 0.0, max = 1500.0, suffix = " Max Zoom Distance "})

local SpoofName = PlayerSettings:Cheat("Textbox", "New Player Name (LOCAL) ", function(Value)
	local plr = game.Players.LocalPlayer
    local name = Value

    print(name)
    
    plr.Name = name
    plr.Character = name

end, { placeholder = "Player Name" })

local SpoofUID = PlayerSettings:Cheat("Textbox", "New Player UserId (LOCAL) ", function(Value)
	local plr = game.Players.LocalPlayer
    local Id = Value

    print(Id)
    
    plr.UserId = Id
    
end, { placeholder = "Player UserId" })

-- Sectors lay them selfs out, It goes from left to right and the max is 2 on each row

local CreditsMaintainer = CreditsCategory:Sector("Finity Library Maintainer")

CreditsMaintainer:Cheat("Label", "LocalSmail | Github")
CreditsMaintainer:Cheat("Label", "Antwan#5152 | Discord.gg/ZjDYXYbwkU")

-- Original dev who left it to die :(

local CreditsCreator = CreditsCategory:Sector("Finity Library Creator")
CreditsCreator:Cheat("Label", "detourious | v3rmillion.net")
CreditsCreator:Cheat("Label", "deto#7612")

-- Islands

local Islands = Islandss:Sector("Islands")

Islands:Cheat("Checkbox", "Max Stats Unlock all GamePasses", function(State) 
    if State then

        while true do

            local player = game:GetService("Players").LocalPlayer
            local Gamepasses = player.Gamepasses
            local XPValues = player.Experience

            for _, gamepasses in pairs(Gamepasses:GetChildren()) do
                
                if gamepasses.Value == false then
                    gamepasses.Value = true
                end

                print(_, gamepassess)

            end

            for _, e in pairs(XPValues:GetChildren()) do
                    
                e.Value += 18999981

                print(exp, e, e.value)

            end


            print("Task Done!")
            break
        end
    end
end)

Islands:Cheat("Checkbox", "Enable/Disable Hotbar", function(State) 
    local player = game:GetService("Players").LocalPlayer

    if State then
        player.HotbarVisible.Value = false
    end

    if not State then
        player.HotbarVisible.Value = true
    end

end)
