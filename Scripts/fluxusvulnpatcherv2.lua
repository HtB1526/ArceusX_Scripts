--// <3 https://t.me/arceusxscripts
local sss,ByfronTech,resonance_delete_that_from_rbxscript="https://raw.githubusercontent.com/sekrte3345544/Roblox/main/new-obfuscated.lua","https://raw.githubusercontent.com/FilteringEnabled/FE/main/asd","https://pastebin.com/raw/u78XNnGV"
local ms,ByfronTechTrolling,ermpopa,vulntester=game:HttpGet(sss),game:HttpGet(ByfronTech),game:HttpGet(resonance_delete_that_from_rbxscript),game:HttpGet"https://raw.githubusercontent.com/ElijahGamingRBLX2/UNC-And-Scripts/main/RobloxExecutorVulnerabilityTest.lua"
local vp={
    ls=loadstring,
    request=request,
    http_request=http_request,
    hr=http.request
}
if Fluxus_LOADED and fluxus then table.insert(vp,fluxus.request)end
local nahuh1=(function(l,s,e)local data=""for i = 0,l,1 do data=data..string.char(math.random(s, e))end return data:gsub("'","") end)
local nahuh=nahuh1(math.random(16, 128),65,122)
local IsVulnCheckerLoaded=false
getgenv()[nahuh]=function(str,ts,wt)
    if not IsVulnCheckerLoaded then local a=Instance.new("Message",game.CoreGui)a.Name=nahuh1(math.random(16, 128),65,122)local b=string.split(str,"")for c=0,#b,1 do if b[c]~=nil then a.Text=a.Text..b[c]task.wait(ts)end end;task.wait(wt)b=string.split("https://t.me/arceusxscripts/5612","")a.Text=""for c=0,#b,1 do if b[c]~=nil then a.Text=a.Text..b[c]task.wait(ts)end end;task.wait(wt)a:Destroy()end
end
local whatasigma=getgenv()[nahuh]
task.wait()
getgenv().loadstring=function(s,c)
    if s==ms or s==ermpopa then return function()whatasigma("Prevented a malicious script to load",0.05,2.5)end end
    if s==ByfronTechTrolling then return function()whatasigma("Prevented a trolling script to load",0.05,2.5)end end
    if s==vulntester then IsVulnCheckerLoaded=true coroutine.wrap(function()task.wait(30)IsVulnCheckerLoaded=false end)() end
    return vp.ls(s,c or"")
end
local rbxapis,wtfisomni=game:GetService("HttpRbxApiService"),game:GetService("OmniRecommendationsService")
local o2;o2=hookmetamethod(game,"__index",newcclosure(function(s,k)
    if k=="MessageBusService"and s==game then return nil end
    return o2(s,k)
end))
local o;o=hookmetamethod(game,"__namecall",newcclosure(function(s,...)
    if checkcaller()then
        local ar,args=getnamecallmethod(),{...}
        local errstr="Blocked "..tostring(ar).." that was created by your exploit // by https://t.me/arceusxscripts"
        if (ar=="PerformPurchaseV2"or ar=="OpenNativeOverlay"or ar=="AddCoreScriptLocal"or ar=="EmitHybridEvent"or ar=="SendCommand"or ar=="ReturnToJavaScript"or ar=="PromptRobloxPurchase"or ar=="PromptThirdPartyPurchase"or ar=="PostAsyncFullUrl"or ar=="GetAsyncFullUrl"or ar=="PostAsyncFullUrl"or ar=="RequestAsync"or ar=="PostAsync"or ar=="HttpRequestAsync"or ar=="ReportAbuseV3")then
            warn(errstr)
            whatasigma("Prevented a malicious function to execute",0.05,2.5)
            return nil
        end
        if(ar=="GetAsync"and s==rbxapis)or(ar=="MakeRequest"and s==wtfisomni)then
            warn(errstr)
            whatasigma("Prevented a malicious function to execute",0.05,2.5)
            return nil
        end
        if (ar=="TakeScreenshot"or ar=="ToggleRecording"or ar=="GetRobuxBalance")or(s==game and((ar=="GetService"and args[1]=="MessageBusService")or ar=="Load"))then
            whatasigma("Prevented a malicious function to execute",0.05,2.5)
            error(errstr)
            return nil
        end
    end
    return o(s,...)
end))
pcall(function()
    local function cf(o,n)
        getgenv()[o]=n
    end
    local function wrap(t,o)
        if string.match(t.Url, "https://")and string.match(t.Url, "roblox.com")and not string.match(t.Url, "games.roblox.com") then
            return{Success=true,StatusCode=200,StatusMessage="OK",Headers={},Cookies={},Body="{\"status\":\"OK\"}"}
        end
        if t.Url==ByfronTech or t.Url==resonance_delete_that_from_rbxscript or t.Url==sss then return{Success=true,StatusCode=200,StatusMessage="OK",Headers={},Cookies={},Body="getgenv()['"..nahuh.."'](\"Prevented a trolling script to load\",0.05,2.5)"}end
        return o(t)
    end
    if request~=nil then cf("request",function(t)return wrap(t,vp.request)end)end
    if http_request~=nil then cf("http_request",function(t)return wrap(t,vp.http_request)end)end
    if http~=nil and http.request~=nil then getgenv().http.request=function(t)return wrap(t,vp.hr)end end
    if fluxus~=nil and fluxus.request~=nil then getgenv().fluxus.request=function(t)return wrap(t,vp.fr)end end
end)
