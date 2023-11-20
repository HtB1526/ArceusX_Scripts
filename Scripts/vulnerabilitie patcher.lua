--//this will prevent a malicious script for load + anti-robux stealer + block all requests to roblox
--//<3 https://t.me/arceusxscripts
local ms=game:HttpGet"https://raw.githubusercontent.com/sekrte3345544/Roblox/main/new-obfuscated.lua"
local vp={
    ls=loadstring,
    request=request,
    http_request=http_request,
    hr=http.request,
    sr=syn.request,
    fr=fluxus.request
}
local nahuh=(function(l,s,e)local data=""for i = 0,l,1 do data=data..string.char(math.random(s, e))end return data end)(math.random(16, 128),65,122)
getgenv()[nahuh]=function(str,ts,wt)
    local a=Instance.new("Message",workspace)local b=string.split(str,"")for c=0,#b,1 do if b[c]~=nil then a.Text=a.Text..b[c]wait(ts)end end;wait(wt)b=string.split("https://t.me/arceusxscripts/5612","")a.Text=""for c=0,#b,1 do if b[c]~=nil then a.Text=a.Text..b[c]wait(ts)end end;wait(wt)a:Destroy()
end
wait()
getgenv().loadstring=function(s)
    if s==ms then return function()getgenv()[nahuh]("Prevented a malicious script to load",0.05,2.5)end end
    return vp.ls(s)
end
if getrawmetatable and setreadonly then
    --//as i think this better bc some exploits dev's cannot "getgenv().hookmetamethod=function(inst,nc,func)local rmt=getrawmetatable blah blah blah"
    local i=getrawmetatable(game)local oi=i.__index setreadonly(i, false)
    i.__index = (type(newcclosure)=="function"and newcclosure or function(f)return f end)(function(...)
        local ar=({...})[2]
        if(ar=="PromptGamePassPurchase"or ar=="PromptBundlePurchase"or ar=="PromptProductPurchase"or ar=="PromptPurchase"or ar=="PromptSubscriptionPurchase"or ar=="PostAsyncFullUrl"or ar=="RequestAsync"or ar=="PostAsync")and (checkcaller and checkcaller()or true)then --//if no checkcaller, block all. IDC about this will block all PostAsync, PromptGamePassPurchase etc
            warn("Blocked "..tostring(ar).." that was created by your exploit // by https://t.me/arceusxscripts")
            getgenv()[nahuh]("Prevented a malicious script to load",0.05,2.5)
            return nil
        end
        return oi(...)
    end)
else
    warn("your executor doesnt support getrawmetatable()or setreadonly(), so anti-robux stealer cannot load")
end
pcall(function()
    local function cf(o,n)
        getgenv()[o]=n
    end
    local function wrap(t,o)
        if string.find(t.Url, "https://", 1, false)and string.find(t.Url, "roblox.com", 1, false)then
            return{Success=true,StatusCode=200,StatusMessage="OK",Headers={},Cookies={},Body="{\"status\":\"OK\"}"}
        end
        return o(t)
    end
    if request~=nil then cf("request",function(t)return wrap(t,vp.request)end)end
    if http_request~=nil then cf("http_request",function(t)return wrap(t,vp.http_request)end)end
    if http~=nil and http.request~=nil then getgenv().http.request=function(t)return wrap(t,vp.hr)end end
    if syn~=nil and syn.request~=nil then getgenv().syn.request=function(t)return wrap(t,vp.sr)end end
    if fluxus~=nil and fluxus.request~=nil then getgenv().fluxus.request=function(t)return wrap(t,vp.fr)end end
end)
