local cfg={DS={"i have child porn on my pc!","i watch child porn!","i enjoy child porn!","i make child porn!","i bomb a school!"
,"i will rape children!","im a child pedophile!","i support pedophiles!","i groom children!","i plan a school bombing!","i will rape a child!"
,"i support school bombers!","i rape children when bombing their schools!","niggers, we dont have a term msg rn. so we can just say: i rape children! i support terrorism!"},MI=workspace.lmao}
pcall(function()
    for _,v in pairs(getrenv()._G)do
        for _,DS in pairs(cfg.DS)do
            if type(v)=="string"and v:lower():find(DS)then
                game.Players.LocalPlayer:Kick"AntiTRB triggered | t.me/arceusxscripts/5258"
                cfg.MI.Playing=true cfg.MI.Volume=10
                wait(0.75)while true do end
            end
        end
    end
end)
