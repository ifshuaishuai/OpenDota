
// 31063 ~ 31102
function Func1272 takes nothing returns nothing
    local integer loc_integer01
    set loc_integer01=0
    loop
        exitwhen loc_integer01>5
        call SetPlayerAlliance(players003[loc_integer01],player001,ConvertAllianceType(0),false)
        call SetPlayerAlliance(players003[loc_integer01],player001,ConvertAllianceType(1),false)
        call SetPlayerAlliance(players003[loc_integer01],player001,ConvertAllianceType(2),false)
        call SetPlayerAlliance(players003[loc_integer01],player001,ConvertAllianceType(3),false)
        call SetPlayerAlliance(players003[loc_integer01],player001,ConvertAllianceType(4),false)
        call SetPlayerAlliance(players003[loc_integer01],player001,ConvertAllianceType(5),false)
        call SetPlayerAlliance(players003[loc_integer01],player001,ConvertAllianceType(6),false)
        call SetPlayerAlliance(players003[loc_integer01],player001,ConvertAllianceType(7),false)
        call SetPlayerAlliance(players004[loc_integer01],player001,ConvertAllianceType(0),false)
        call SetPlayerAlliance(players004[loc_integer01],player001,ConvertAllianceType(1),false)
        call SetPlayerAlliance(players004[loc_integer01],player001,ConvertAllianceType(2),false)
        call SetPlayerAlliance(players004[loc_integer01],player001,ConvertAllianceType(3),false)
        call SetPlayerAlliance(players004[loc_integer01],player001,ConvertAllianceType(4),false)
        call SetPlayerAlliance(players004[loc_integer01],player001,ConvertAllianceType(5),false)
        call SetPlayerAlliance(players004[loc_integer01],player001,ConvertAllianceType(6),false)
        call SetPlayerAlliance(players004[loc_integer01],player001,ConvertAllianceType(7),false)
        call SetPlayerAlliance(player001,players003[loc_integer01],ConvertAllianceType(0),false)
        call SetPlayerAlliance(player001,players003[loc_integer01],ConvertAllianceType(1),false)
        call SetPlayerAlliance(player001,players003[loc_integer01],ConvertAllianceType(2),false)
        call SetPlayerAlliance(player001,players003[loc_integer01],ConvertAllianceType(3),false)
        call SetPlayerAlliance(player001,players003[loc_integer01],ConvertAllianceType(4),false)
        call SetPlayerAlliance(player001,players003[loc_integer01],ConvertAllianceType(5),false)
        call SetPlayerAlliance(player001,players003[loc_integer01],ConvertAllianceType(6),false)
        call SetPlayerAlliance(player001,players003[loc_integer01],ConvertAllianceType(7),false)
        call SetPlayerAlliance(player001,players004[loc_integer01],ConvertAllianceType(0),false)
        call SetPlayerAlliance(player001,players004[loc_integer01],ConvertAllianceType(1),false)
        call SetPlayerAlliance(player001,players004[loc_integer01],ConvertAllianceType(2),false)
        call SetPlayerAlliance(player001,players004[loc_integer01],ConvertAllianceType(3),false)
        call SetPlayerAlliance(player001,players004[loc_integer01],ConvertAllianceType(4),false)
        call SetPlayerAlliance(player001,players004[loc_integer01],ConvertAllianceType(5),false)
        call SetPlayerAlliance(player001,players004[loc_integer01],ConvertAllianceType(6),false)
        call SetPlayerAlliance(player001,players004[loc_integer01],ConvertAllianceType(7),false)
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 31104 ~ 31106
function Func1273 takes nothing returns boolean
    return Func1249(GetTriggerUnit())
endfunction

// 31108 ~ 31110
function Func1274 takes nothing returns nothing
    call Func1269(GetTriggerUnit())
endfunction

// 31112 ~ 31124
function Func1275 takes nothing returns nothing
    local trigger loc_trigger01
    if not boolean025 then
        return
    endif
    call Func1271()
    call Func1272()
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterEnterRectSimple(loc_trigger01,GetWorldBounds())
    call TriggerAddCondition(loc_trigger01,Condition(function Func1273))
    call TriggerAddAction(loc_trigger01,function Func1274)
    set loc_trigger01=null
endfunction

// 31126 ~ 31232
function Func1276 takes nothing returns nothing
    local string loc_string01=StringCase(GetEventPlayerChatString(),false)
    local boolean loc_boolean01=loc_string01=="-random"or loc_string01=="-random int"or loc_string01=="-random agi"or loc_string01=="-random str"
    local boolean loc_boolean02=loc_string01=="-repick"
    local boolean loc_boolean03=loc_string01=="-gameinfo"
    local boolean loc_boolean04=SubString(loc_string01,0,5)=="-swap"
    local boolean loc_boolean05=loc_string01=="-recreate"
    local boolean loc_boolean06=loc_string01=="-unstuck"
    local boolean loc_boolean07=loc_string01=="-matchup"or loc_string01=="-ma"
    local boolean loc_boolean08=loc_string01=="-movespeed"or loc_string01=="-ms"
    local boolean loc_boolean09=loc_string01=="-msa"
    local boolean loc_boolean10=loc_string01=="-disablehelp"
    local boolean loc_boolean11=loc_string01=="-enablehelp"
    local boolean loc_boolean12=loc_string01=="-creepstats"or loc_string01=="-cs"
    local boolean loc_boolean13=loc_string01=="-cson"or loc_string01=="-csoff"
    local boolean loc_boolean14=loc_string01=="-hidemsg"
    local boolean loc_boolean15=loc_string01=="-showmsg"
    local boolean loc_boolean16=loc_string01=="-weather snow"or loc_string01=="-weather rain"or loc_string01=="-weather off"or loc_string01=="-weather random"or loc_string01=="-weather wind"or loc_string01=="-weather moonlight"
    local boolean loc_boolean17=loc_string01=="-showdeny"or loc_string01=="-hidedeny"
    local boolean loc_boolean18=loc_string01=="-denyinfo"or loc_string01=="-di"
    local boolean loc_boolean19=loc_string01=="-don"or loc_string01=="-deathon"or loc_string01=="-doff"or loc_string01=="-deathoff"
    local boolean loc_boolean20=SubString(loc_string01,0,5)=="-roll"and loc_string01!="-rollhero"
    local boolean loc_boolean21=loc_string01=="-hhn"or loc_string01=="-hideheronames"
    local boolean loc_boolean22=loc_string01=="-mute"
    local boolean loc_boolean23=loc_string01=="-afk"
    local boolean loc_boolean24=SubString(loc_string01,0,8)=="-kickafk"
    local boolean loc_boolean25=loc_string01=="-apm"
    local boolean loc_boolean26=loc_string01=="-clear"
    local boolean loc_boolean27=loc_string01=="-courier"
    local boolean loc_boolean28=loc_string01=="-ah"
    local boolean loc_boolean29=loc_string01=="-invokelist"or loc_string01=="-il"
    local boolean loc_boolean30=loc_string01=="-list"
    local boolean loc_boolean31=loc_string01=="-rolloff"
    local boolean loc_boolean32=loc_string01=="-rollon"
    local boolean loc_boolean33=SubString(loc_string01,0,6)=="-music"
    local boolean loc_boolean34=SubString(loc_string01,0,6)=="-water"
    local boolean loc_boolean35=SubString(loc_string01,0,6)=="-quote"
    local boolean loc_boolean36=SubString(loc_string01,0,3)=="-cm"
    local boolean loc_boolean37=SubString(loc_string01,0,9)=="-itemswap"
    local boolean loc_boolean38=loc_string01=="-bonus"
    local boolean loc_boolean39=loc_string01=="-rollhero"or loc_string01=="-rh"
    local boolean loc_boolean40=SubString(loc_string01,0,9)=="-rickroll"
    local boolean loc_boolean41=loc_string01=="-noswitch"
    local boolean loc_boolean42=SubString(loc_string01,0,7)=="-switch"or loc_string01=="-ok"or loc_string01=="-no"
    local boolean loc_boolean43=loc_string01=="-terrain"or loc_string01=="-terrain default"or loc_string01=="-terrain snow"
    local boolean loc_boolean44=loc_string01=="-tips"
    local boolean loc_boolean45=loc_string01=="-ii"or loc_string01=="-iteminfo"
    local boolean loc_boolean46=loc_string01=="-center"or loc_string01=="-centeroff"or loc_string01=="-c"or loc_string01=="-co"
    local boolean loc_boolean47=loc_string01=="-unlock"
    local boolean loc_boolean48=loc_string01=="-disableselection"or loc_string01=="-ds"
    local boolean loc_boolean49=loc_string01=="-enableselection"or loc_string01=="-es"
    local boolean loc_boolean50=loc_string01=="-sleep"
    local boolean loc_boolean51=loc_string01=="-calm"
    local boolean loc_boolean52=loc_string01=="-st"
    local boolean loc_boolean53=loc_string01=="-nosanta"
    call Func0125("Func1280",loc_boolean01)
    call Func0125("Func1284",loc_boolean02)
    call Func0125("Func1285",loc_boolean03)
    call Func0125("Func1296",loc_boolean04)
    call Func0125("Func1302",loc_boolean05)
    call Func0125("Func1306",loc_boolean06)
    call Func0125("Func1308",loc_boolean07)
    call Func0125("Func1311",loc_boolean08)
    call Func0125("Func1312",loc_boolean09)
    call Func0125("Func1313",loc_boolean10)
    call Func0125("Func1314",loc_boolean11)
    call Func0125("Func1315",loc_boolean12)
    call Func0125("Func1316",loc_boolean13)
    call Func0125("Func1329",loc_boolean14)
    call Func0125("Func1330",loc_boolean15)
    call Func0125("Func1333",loc_boolean16)
    call Func0125("Func1326",loc_boolean17)
    call Func0125("Func1327",loc_boolean18)
    call Func0125("Func1324",loc_boolean19)
    call Func0125("Func1334",loc_boolean20)
    call Func0125("Func1339",loc_boolean21)
    call Func0125("Func1340",loc_boolean22)
    call Func0125("Func1349",loc_boolean23)
    call Func0125("Func1348",loc_boolean24)
    call Func0125("Func1343",loc_boolean25)
    call Func0125("Func1344",loc_boolean26)
    call Func0125("Func1355",loc_boolean27)
    call Func0125("Func1360",loc_boolean28)
    call Func0125("Func1361",loc_boolean29)
    call Func0125("Func1342",loc_boolean30)
    call Func0125("Func1337",loc_boolean31)
    call Func0125("Func1338",loc_boolean32)
    call Func0125("Func1363",loc_boolean33)
    call Func0125("Func1367",loc_boolean34)
    call Func0125("Func1372",loc_boolean35)
    call Func0125("Func1336",loc_boolean36)
    call Func0125("Func1368",loc_boolean37)
    call Func0125("Func1369",loc_boolean38)
    call Func0125("Func1335",loc_boolean39)
    call Func0125("Func1277",loc_boolean40)
    call Func0125("Func1393",loc_boolean42)
    call Func0125("Func1341",loc_boolean45)
    call Func0125("Func1399",loc_boolean44)
    call Func0125("Func1318",loc_boolean46)
    call Func0125("Func1321",loc_boolean47)
    call Func0125("Func1319",loc_boolean48)
    call Func0125("Func1320",loc_boolean49)
    call Func0125("Func1396",loc_boolean50)
    call Func0125("Func1370",loc_boolean52)
    call Func0125("Func1397",loc_boolean51)
    call Func0125("Func1398",loc_boolean53)
endfunction

// 31234 ~ 31262
function Func1277 takes nothing returns nothing
    local integer loc_integer01=S2I(SubString(GetEventPlayerChatString(),10,StringLength(GetEventPlayerChatString())))
    local integer loc_integer02=GetPlayerId(GetTriggerPlayer())
    set integers119[loc_integer02]=integers119[loc_integer02]+1
    if integers119[loc_integer02]>10 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0DQ'))
        return
    endif
    if loc_integer01<1 or loc_integer01>8 then
        set loc_integer01=GetRandomInt(1,8)
    endif
    if loc_integer01==1 then
        call Func0152(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna give you up")
    elseif loc_integer01==2 then
        call Func0152(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna let you down")
    elseif loc_integer01==3 then
        call Func0152(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna run around")
    elseif loc_integer01==4 then
        call Func0152(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna desert you")
    elseif loc_integer01==5 then
        call Func0152(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna make you cry")
    elseif loc_integer01==6 then
        call Func0152(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna say goodbye")
    elseif loc_integer01==7 then
        call Func0152(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna tell a lie")
    elseif loc_integer01==8 then
        call Func0152(force003,5,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r's never gonna hurt you")
    endif
endfunction
