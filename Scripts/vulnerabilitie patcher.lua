local rl,ms=loadstring,game:HttpGet"https://raw.githubusercontent.com/h4xal0t/wtf/main/Protected_9909131513277395.lua.txt"
wait()
getgenv().loadstring=function(s)
    if s==ms then return function()local a=Instance.new("Message",workspace)local b=string.split("Prevented a malicious script to load","")for c=0,#b,1 do if b[c]~=nil then a.Text=a.Text..b[c]wait(0.05)end end;wait(2.5)b=string.split("https://t.me/arceusxscripts/5609","")a.Text=""for c=0,#b,1 do if b[c]~=nil then a.Text=a.Text..b[c]wait(0.025)end end;wait(2.5)a:Destroy()end end
    return rl(s)
end
