--//this will prevent a malicious script for load + anti-robux stealer
--//<3 https://t.me/arceusxscripts
local rl,ms=loadstring,game:HttpGet"https://raw.githubusercontent.com/h4xal0t/wtf/main/Protected_9909131513277395.lua.txt"
getgenv().vp_msg=function(str,ts,wt)
    local a=Instance.new("Message",workspace)local b=string.split(str,"")for c=0,#b,1 do if b[c]~=nil then a.Text=a.Text..b[c]wait(ts)end end;wait(wt)b=string.split("https://t.me/arceusxscripts/5612","")a.Text=""for c=0,#b,1 do if b[c]~=nil then a.Text=a.Text..b[c]wait(ts)end end;wait(wt)a:Destroy()
end
wait()
getgenv().loadstring=function(s)
    if s==ms then return function()getgenv().vp_msg("Prevented a malicious script to load",0.05,2.5)end end
    return rl(s)
end
if getrawmetatable and setreadonly then
    --//as i think this better bc some exploits dev's cannot "getgenv().hookmetamethod=function(inst,nc,func)local rmt=getrawmetatable blah blah blah"
    local i=getrawmetatable(game)local oi=i.__index setreadonly(i, false)
    i.__index = (type(newcclosure)=="function"and newcclosure or function(f)return f end)(function(...)
        local ar=({...})[2]
        if(ar=="PromptGamePassPurchase"or ar=="PromptBundlePurchase"or ar=="PromptProductPurchase"or ar=="PromptPurchase"or ar=="PromptSubscriptionPurchase")and (checkcaller and checkcaller()or true)then --//if no checkcaller, block all GamePassPurchase
            warn("Blocked "..tostring(ar).." that was created by your exploit // by https://t.me/arceusxscripts")
            getgenv().vp_msg("Prevented a robux stealer script load",0.05,2.5)
            return nil
        end
        return oi(...)
    end)
else
    warn("your executor doesnt support getrawmetatable()or setreadonly(), so anti-robux stealer cannot load")
end
