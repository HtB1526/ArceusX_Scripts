local OrionLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/shlexware/Orion/main/source")()
local Window,Config = OrionLib:MakeWindow({Name="TowerOfHacks by scow! V1.04 / Fork By HtB1526",HidePremium=false,SaveConfig=true,IntroEnabled=true,IntroText="TowerOfHacks | Fork by HtB1526"}),{God=false,ctrlclick=false,Vals={Walk=16,Jump=50}}
local home = Window:MakeTab({Name="Home",Icon="https://www.roblox.com/library/",PremiumOnly=false})
local homeS,LC = home:AddSection({Name="Home"}),game.Players.LocalPlayer
homeS:AddLabel("Hey there, "..LC.Name.."!")
homeS:AddLabel("Fork by @HtB1526 (telegram)")
homeS:AddLabel("Checkout your telegram channel: t.me/arceusxscripts")
local main=Window:MakeTab({Name = "Tower Of Hacks", Icon = "https://www.roblox.com/library/", PremiumOnly = false})
local SS,LP=main:AddSection({Name="Main"}),main:AddSection({Name="LocalPlayer"})
for a,FFF in pairs(getreg())do if type(FFF)=='function'then local c=getinfo(FFF)if c.name=='kick'then hookfunction(c.func,function(...)end)end end end
SS:AddToggle({Name="God Mode",Default=false,Callback=function(v)Config.God=v end})
SS:AddButton({Name="Win Round",Callback=function()LC.Character.HumanoidRootPart.CFrame=workspace.tower.sections.finish.exit.ParticleBrick.CFrame end})
SS:AddButton({Name="Get All Gears",Callback=function()for b,c in pairs(game:GetService("ReplicatedStorage").Gear:GetChildren())do if c:IsA"Tool"then c:Clone().Parent=LC.Backpack end end end})
coroutine.wrap(function()while true do if Config.God then pcall(function()LC.Character.KillScript:Destroy()end)end task.wait()end end)()
LP:AddSlider({Name="Walk Speed",ValueName="WalkSpeed",Min=16,Max=250,Default=16,Increment=1,Color=Color3.fromRGB(255,255,255),Callback=function(v)Config.Vals.Walk=v end})
LP:AddSlider({Name="Jump Power",ValueName="JumpPower",Color=Color3.fromRGB(255,255,255),Min=50,Max=500,Default=50,Increment=1,Callback=function(v)Config.Vals.Jump=v end})
game:GetService("RunService").RenderStepped:Connect(function()LC.Character.Humanoid.JumpPower=Config.Vals.Jump LC.Character.Humanoid.WalkSpeed=Config.Vals.Walk end)
