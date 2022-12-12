local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()

local FinityWindow = Finity.new("Using Add/RemoveOption()", true, false, "", true, "")

local PlayerSettingsCategory = FinityWindow:Category("Player")
local CreditsCategory = FinityWindow:Category("Credits")

local PlayerSettings = PlayerSettingsCategory:Sector("Player Configuration")

local t = PlayerSettings:Cheat("dropdown", "Team Changer", function(team)

    print(team)
    
    -- code here

end, { options = {"Civilian"} })

t:AddOption("Sheriff") --[[ This will add the Sheriff option aslong as the option isnt already added, If it is already existant then it will print an warn message
You can do the same thing but instead of adding you remove the option: RemoveOption("Option") which will remove the option aslong as it exists. If it doesnt exist then
it should reply with an warn message. (If it doesnt then it should have removed the option, You can check this by selecting the dropdown and checking if the element is
still existant]]

--t:RemoveOption("Sheriff")
