--// konstant discord: https://discord.gg/c4BzSgmn
--// JOIN KONSTANT NOW BEST LUAU DECOMPILER https://discord.gg/c4BzSgmn
assert(getscriptbytecode, "Exploit not supported.")
local API,last_call,headers = "http://api.plusgiant5.com/konstant/",0,{["Content-Type"]="text/plain"}
local function call(endpoint, scriptPath)
    local success, bytecode = pcall(getscriptbytecode, scriptPath)
    if not success then
        return string.format("-- Failed to get script bytecode, error:\n\n--[[\n%s\n--]]", bytecode)
    end
    local elapsed=os.clock()-last_call
    if elapsed<=0.5 then
        task.wait(0.5-elapsed)
    end
    last_call=os.clock()
    local httpResult=request({Url = API..endpoint,Body = bytecode,Method = "POST",Headers = headers})
    if httpResult.StatusCode ~= 200 then
        return string.format("-- Error occurred while requesting the API, error:\n\n--[[\n%s\n--]]", httpResult.Body)
    else
        return httpResult.Body
    end
end
getgenv().decompile = function(scriptPath)
    return call("decompile", scriptPath)
end
getgenv().disassemble = function(scriptPath)
    return call("disassemble", scriptPath)
end
-- script by lovrewe, optimized by htb1526
