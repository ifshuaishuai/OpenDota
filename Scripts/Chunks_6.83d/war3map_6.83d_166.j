
// 32991 ~ 32995
function Func1359 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,false)
    set loc_trigger01=null
endfunction

// 32997 ~ 33018
function Func1360 takes nothing returns nothing
    if(TimerGetElapsed(timer001))>60 then
        call Func0121(GetTriggerPlayer(),GetObjectName('n02X'))
        return
    elseif(TimerGetElapsed(timer001))<15 then
        call Func0121(GetTriggerPlayer(),GetObjectName('n02X'))
        return
    endif
    if GetTriggerPlayer()!=player003 then
        call Func0121(GetTriggerPlayer(),GetObjectName('n02W'))
        return
    endif
    if boolean047==false then
        set boolean047=true
        set integer026=2
        call Func1248()
        call Func0152(force003,15,GetObjectName('n05N')+" "+GetObjectName('n055'))
        call Func0152(force003,15,GetObjectName('n05R'))
    else
        call Func0120(GetTriggerPlayer(),GetObjectName('n02V'))
    endif
endfunction

// 33020 ~ 33031
function Func1361 takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CV')+" [|cffff0000E|r|cffff0000E|r|cffff0000E|r] - [|cffffcc00T|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CU')+" [|cffff0000E|r|cffff0000E|r|cff00ffffW|r] - [|cffffcc00D|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CT')+" [|cffff0000E|r|cffff0000E|r|cff0000ffQ|r] - [|cffffcc00F|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0C6')+" [|cff0000ffQ|r|cff0000ffQ|r|cff0000ffQ|r] - [|cffffcc00Y|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CL')+" [|cff0000ffQ|r|cff0000ffQ|r|cff00ffffW|r] - [|cffffcc00V|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CN')+" [|cff0000ffQ|r|cff0000ffQ|r|cffff0000E|r] - [|cffffcc00G|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CS')+" [|cff00ffffW|r|cff00ffffW|r|cffff0000E|r] - [|cffffcc00Z|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CO')+" [|cff00ffffW|r|cff00ffffW|r|cff0000ffQ|r] - [|cffffcc00X|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CP')+" [|cff00ffffW|r|cff00ffffW|r|cff00ffffW|r] - [|cffffcc00C|r]")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CQ')+" [|cff0000ffQ|r|cff00ffffW|r|cffff0000E|r] - [|cffffcc00B|r]")
endfunction

// 33033 ~ 33036
function Func1362 takes string loc_string01 returns nothing
    call StopMusic(true)
    call PlayMusic(loc_string01)
endfunction

// 33038 ~ 33095
function Func1363 takes nothing returns nothing
    local string loc_string01=GetEventPlayerChatString()
    local integer loc_integer01=GetRandomInt(1,integer433)
    if GetLocalPlayer()==GetTriggerPlayer()then
        if loc_string01=="-music off"then
            call StopMusic(false)
        elseif loc_string01=="-music random"then
            call Func1362(strings014[loc_integer01])
        elseif loc_string01=="-music nightelf1"then
            call Func1362(string007)
        elseif loc_string01=="-music nightelf2"then
            call Func1362(string008)
        elseif loc_string01=="-music nightelf3"then
            call Func1362(string009)
        elseif loc_string01=="-music human1"then
            call Func1362(string004)
        elseif loc_string01=="-music human2"then
            call Func1362(string005)
        elseif loc_string01=="-music human3"then
            call Func1362(string006)
        elseif loc_string01=="-music orc1"then
            call Func1362(string010)
        elseif loc_string01=="-music orc2"then
            call Func1362(string011)
        elseif loc_string01=="-music orc3"then
            call Func1362(string012)
        elseif loc_string01=="-music undead1"then
            call Func1362(string018)
        elseif loc_string01=="-music undead2"then
            call Func1362(string019)
        elseif loc_string01=="-music undead3"then
            call Func1362(string020)
        elseif loc_string01=="-music other1"then
            call Func1362(string013)
        elseif loc_string01=="-music other2"then
            call Func1362(string014)
        elseif loc_string01=="-music other3"then
            call Func1362(string015)
        elseif loc_string01=="-music other4"then
            call Func1362(string016)
        elseif loc_string01=="-music other5"then
            call Func1362(string017)
        elseif loc_string01=="-music other6"then
            call Func1362(string021)
        elseif loc_string01=="-music other7"then
            call Func1362(string022)
        elseif loc_string01=="-music other8"then
            call Func1362(string023)
        elseif loc_string01=="-music other9"then
            call Func1362(string024)
        elseif loc_string01=="-music special"then
            call Func1362(string035)
        else
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0CW')+" ")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,"off, random, nightelf1, nightelf2, nightelf3, human1, human2, human3, orc1, orc2, orc3, undead1, undead2, undead3, other1, other2, other3, other4, other5, other6, other7, other8, other9, special")
        endif
    endif
endfunction

// 33097 ~ 33143
function Func1364 takes nothing returns boolean
    set integer433=integer433+1
    set strings014[integer433]=string007
    set integer433=integer433+1
    set strings014[integer433]=string008
    set integer433=integer433+1
    set strings014[integer433]=string009
    set integer433=integer433+1
    set strings014[integer433]=string004
    set integer433=integer433+1
    set strings014[integer433]=string005
    set integer433=integer433+1
    set strings014[integer433]=string006
    set integer433=integer433+1
    set strings014[integer433]=string010
    set integer433=integer433+1
    set strings014[integer433]=string011
    set integer433=integer433+1
    set strings014[integer433]=string012
    set integer433=integer433+1
    set strings014[integer433]=string018
    set integer433=integer433+1
    set strings014[integer433]=string019
    set integer433=integer433+1
    set strings014[integer433]=string020
    set integer433=integer433+1
    set strings014[integer433]=string013
    set integer433=integer433+1
    set strings014[integer433]=string014
    set integer433=integer433+1
    set strings014[integer433]=string015
    set integer433=integer433+1
    set strings014[integer433]=string016
    set integer433=integer433+1
    set strings014[integer433]=string017
    set integer433=integer433+1
    set strings014[integer433]=string021
    set integer433=integer433+1
    set strings014[integer433]=string022
    set integer433=integer433+1
    set strings014[integer433]=string023
    set integer433=integer433+1
    set strings014[integer433]=string024
    set integer433=integer433+1
    set strings014[integer433]=string035
    return false
endfunction

// 33145 ~ 33149
function Func1365 takes player loc_player01,integer loc_integer01,integer loc_integer02,integer loc_integer03,integer loc_integer04 returns nothing
    if GetLocalPlayer()==loc_player01 then
        call SetWaterBaseColor(loc_integer01,loc_integer02,loc_integer03,loc_integer04)
    endif
endfunction

// 33151 ~ 33176
function Func1366 takes string loc_string01 returns nothing
    local string loc_string02=""
    local string loc_string03=""
    local string loc_string04=""
    local integer loc_integer01=0
    local integer loc_integer02=StringLength(loc_string01)
    local integer loc_integer03=1
    loop
        exitwhen loc_integer01>loc_integer02
        if SubString(loc_string01,loc_integer01,loc_integer01+1)==" "then
            set loc_integer03=loc_integer03+1
        else
            if loc_integer03==1 then
                set loc_string02=loc_string02+SubString(loc_string01,loc_integer01,loc_integer01+1)
            elseif loc_integer03==2 then
                set loc_string03=loc_string03+SubString(loc_string01,loc_integer01,loc_integer01+1)
            else
                set loc_string04=loc_string04+SubString(loc_string01,loc_integer01,loc_integer01+1)
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set integer434=S2I(loc_string02)
    set integer435=S2I(loc_string03)
    set integer436=S2I(loc_string04)
endfunction

// 33178 ~ 33211
function Func1367 takes nothing returns nothing
    local string loc_string01=SubString(GetEventPlayerChatString(),7,StringLength(GetEventPlayerChatString()))
    local player loc_player01=GetTriggerPlayer()
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    set booleans033[GetPlayerId(loc_player01)]=true
    if loc_string01=="red"then
        call Func1365(loc_player01,255,0,0,255)
    elseif loc_string01=="blue"then
        call Func1365(loc_player01,0,0,255,255)
    elseif loc_string01=="green"then
        call Func1365(loc_player01,0,255,0,255)
    elseif loc_string01=="default"then
        call Func1365(loc_player01,0,0,255,255)
    elseif loc_string01=="random"then
        set loc_integer01=GetRandomInt(0,255)
        set loc_integer02=GetRandomInt(0,255)
        set loc_integer03=GetRandomInt(0,255)
        call Func1365(loc_player01,loc_integer01,loc_integer02,loc_integer03,255)
        call DisplayTimedTextToPlayer(loc_player01,0,0,5,GetObjectName('n0HD')+" r="+I2S(loc_integer01)+" g="+I2S(loc_integer02)+" b="+I2S(loc_integer03))
    else
        call Func1366(loc_string01)
        set loc_integer01=integer434
        set loc_integer02=integer435
        set loc_integer03=integer436
        if loc_integer01==0 and loc_integer02==0 and loc_integer03==0 and loc_string01!="0 0 0"then
            return
        endif
        if loc_integer01>=0 and loc_integer01<=255 and loc_integer02>=0 and loc_integer02<=255 and loc_integer03>=0 and loc_integer03<=255 then
            call Func1365(loc_player01,loc_integer01,loc_integer02,loc_integer03,255)
        endif
    endif
endfunction

// 33213 ~ 33215
function Func1368 takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,15.00,"This command has been temporarily disabled")
endfunction

// 33217 ~ 33220
function Func1369 takes nothing returns boolean
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,"Total Bonus XP/Gold: "+I2S(integers084[GetPlayerId(GetTriggerPlayer())])+"/"+I2S(integers085[GetPlayerId(GetTriggerPlayer())]))
    return false
endfunction

// 33222 ~ 33227
function Func1370 takes nothing returns boolean
    if integer461>0 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n0LO')+": "+I2S(integer461))
    endif
    return false
endfunction

// 33229 ~ 33240
function Func1371 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(148)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    call Func0118(loc_player01,strings015[loc_integer02])
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_player01=null
    return false
endfunction

// 33242 ~ 33262
function Func1372 takes nothing returns nothing
    local string loc_string01=GetEventPlayerChatString()
    local trigger loc_trigger01
    local integer loc_integer01=S2I(SubString(GetEventPlayerChatString(),7,StringLength(GetEventPlayerChatString())))
    local integer loc_integer02=1
    if loc_integer01<1 or loc_integer01>integer437 then
        set loc_integer01=GetRandomInt(1,integer437)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n0E5')+" "+I2S(loc_integer01))
    endif
    if boolean103 then
        loop
            exitwhen loc_integer02>integer437
            call Func0249(strings015[loc_integer02])
            set loc_integer02=loc_integer02+1
        endloop
        set boolean103=false
    endif
    if booleans034[loc_integer01]==false then
    endif
    call Func0118(GetTriggerPlayer(),strings015[loc_integer01])
endfunction

// 33264 ~ 33269
function Func1373 takes player loc_player01 returns string
    local string loc_string01=GetObjectName('n0GB')
    set loc_string01=Func0418(loc_string01,"$c1","|c00ff0303")
    set loc_string01=Func0418(loc_string01,"$p1",strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r")
    return loc_string01
endfunction

// 33271 ~ 33276
function Func1374 takes nothing returns string
    local string loc_string01=GetObjectName('n0GA')
    set loc_string01=Func0418(loc_string01,"$c1","|c006699CC")
    set loc_string01=Func0418(loc_string01,"$c2","|c00ff0303")
    return loc_string01
endfunction

// 33278 ~ 33302
function Func1375 takes nothing returns nothing
    local integer loc_integer01=1
    local unit loc_unit01
    if boolean047 then
        loop
            exitwhen loc_integer01>5
            set loc_unit01=units001[GetPlayerId(players003[loc_integer01])]
            if loc_unit01!=null then
                if integer026==2 then
                    call Func0412(loc_unit01)
                endif
                call UnitSetUsesAltIcon(loc_unit01,false)
            endif
            set loc_unit01=units001[GetPlayerId(players004[loc_integer01])]
            if loc_unit01!=null then
                if integer026==2 then
                    call Func0412(loc_unit01)
                endif
                call UnitSetUsesAltIcon(loc_unit01,false)
            endif
            set loc_integer01=loc_integer01+1
        endloop
        set loc_unit01=null
    endif
endfunction

// 33304 ~ 33315
function Func1376 takes player loc_player01,player loc_player02 returns string
    local string loc_string01=GetObjectName('n0G2')
    set loc_string01=Func0418(loc_string01,"$c1","|c006699CC")
    set loc_string01=Func0418(loc_string01,"$c1","|c006699CC")
    set loc_string01=Func0418(loc_string01,"$c1","|c006699CC")
    set loc_string01=Func0418(loc_string01,"$c1","|c006699CC")
    set loc_string01=Func0418(loc_string01,"$c2","|c00ff0303")
    set loc_string01=Func0418(loc_string01,"$c2","|c00ff0303")
    set loc_string01=Func0418(loc_string01,"$p1",strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r")
    set loc_string01=Func0418(loc_string01,"$p2",strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r")
    return loc_string01
endfunction

// 33317 ~ 33326
function Func1377 takes string loc_string01,string loc_string02 returns string
    local string loc_string03=GetObjectName('n0FV')
    set loc_string03=Func0418(loc_string03,"$c1","|c006699CC")
    set loc_string03=Func0418(loc_string03,"$c1","|c006699CC")
    set loc_string03=Func0418(loc_string03,"$c1","|c006699CC")
    set loc_string03=Func0418(loc_string03,"$c1","|c006699CC")
    set loc_string03=Func0418(loc_string03,"$p1",loc_string01)
    set loc_string03=Func0418(loc_string03,"$p2",loc_string02)
    return loc_string03
endfunction

// 33328 ~ 33333
function Func1378 takes player loc_player01 returns string
    local string loc_string01=GetObjectName('n0FS')
    set loc_string01=Func0418(loc_string01,"$p2",strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r")
    set loc_string01=Func0418(loc_string01,"$c1","|c006699CC")
    return loc_string01
endfunction

// 33335 ~ 33363
function Func1379 takes player loc_player01 returns nothing
    local integer loc_integer01
    local integer loc_integer02
    if(Func0056(loc_player01)==true)then
        set loc_integer01=1
        set loc_integer02=5
        loop
            exitwhen loc_integer01>loc_integer02
            if(players003[loc_integer01]!=loc_player01)then
                if(Func0059(players003[loc_integer01])==true)then
                    call SetPlayerAllianceStateBJ(loc_player01,players003[loc_integer01],4)
                endif
            endif
            set loc_integer01=loc_integer01+1
        endloop
    else
        set loc_integer01=1
        set loc_integer02=5
        loop
            exitwhen loc_integer01>loc_integer02
            if(players004[loc_integer01]!=loc_player01)then
                if(Func0059(players004[loc_integer01])==true)then
                    call SetPlayerAllianceStateBJ(loc_player01,players004[loc_integer01],4)
                endif
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
endfunction

// 33365 ~ 33371
function Func1380 takes nothing returns nothing
    if GetOwningPlayer(GetEnumUnit())==player006 then
        call SetUnitOwner(GetEnumUnit(),player007,true)
    elseif GetOwningPlayer(GetEnumUnit())==player007 then
        call SetUnitOwner(GetEnumUnit(),player006,true)
    endif
endfunction

// 33373 ~ 33416
function Func1381 takes unit loc_unit01,player loc_player01 returns nothing
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local integer loc_integer01
    local item loc_item01
    if Func0056(loc_player01)then
        set loc_real01=GetRectCenterX(rect004)
        set loc_real02=GetRectCenterY(rect004)
        set loc_real03=GetRectCenterX(rect011)
        set loc_real04=GetRectCenterY(rect011)
    else
        set loc_real01=GetRectCenterX(rect011)
        set loc_real02=GetRectCenterY(rect011)
        set loc_real03=GetRectCenterX(rect004)
        set loc_real04=GetRectCenterY(rect004)
    endif
    call SetUnitX(loc_unit01,loc_real01)
    call SetUnitY(loc_unit01,loc_real02)
    if Func0096(loc_unit01)then
        call IssueImmediateOrder(loc_unit01,"creepanimatedead")
    endif
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(140),(true))
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4259)),(2))
        call UnitRemoveAbility(loc_unit01,'A04R')
        call SetUnitInvulnerable(loc_unit01,false)
        call PauseUnit(loc_unit01,false)
        set loc_integer01=0
        loop
            exitwhen loc_integer01>5
            set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
            if GetUnitTypeId(loc_unit01)!='H00J' and loc_item01!=null and(GetItemPlayer(loc_item01)!=GetOwningPlayer(loc_unit01)and Func0380(loc_item01)!=integer212 and Func0380(loc_item01)!=integer213)and GetItemTypeId(loc_item01)!=integers089[integer198]then
                call UnitRemoveItem(loc_unit01,loc_item01)
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
    call SetUnitX(loc_unit01,loc_real03)
    call SetUnitY(loc_unit01,loc_real04)
    call SetUnitColor(loc_unit01,GetPlayerColor(loc_player01))
    set loc_item01=null
endfunction

// 33418 ~ 33427
function Func1382 takes nothing returns boolean
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true or Func0096(GetFilterUnit())then
        call Func1381(GetFilterUnit(),player008)
    elseif GetUnitTypeId(GetFilterUnit())=='ncop' then
        call IssueImmediateOrder(GetFilterUnit(),"creepanimatedead")
    elseif GetUnitTypeId(GetFilterUnit())=='u00B' then
        return true
    endif
    return false
endfunction
