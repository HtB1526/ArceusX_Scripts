--[[
By HtB#1526
Published in t.me/arceusxscripts
]]
local VeryBigHead = _G.VeryBigHead or false
local V3=Vector3.new(6.30,6.30,6.30)
if VeryBigHead then 
    V3=Vector3.new(250,250,250) 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-839.69091796875, 3.1843905448913574, 912.049560546875)
end
for _, v in pairs(workspace.SlederSpawn:GetChildren())do
    for _,_v in pairs(v:GetChildren())do
        if _v.Name == "Head"then
            _v.Size = V3
            _v.CanCollide=false
            wait()
        end
    end
end
