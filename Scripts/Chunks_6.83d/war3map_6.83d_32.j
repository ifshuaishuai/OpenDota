
// 12075 ~ 12077
function Func0502 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='ncop'
endfunction

// 12079 ~ 12088
function Func0503 takes nothing returns nothing
    if boolean113 then
        call UnitRemoveAbility(units006[GetPlayerId(GetOwningPlayer(GetEnumUnit()))],'A14F')
        call UnitRemoveAbility(units006[GetPlayerId(GetOwningPlayer(GetEnumUnit()))],'A14E')
        call UnitRemoveAbility(units006[GetPlayerId(GetOwningPlayer(GetEnumUnit()))],'A14H')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A0I4')==0 then
        call UnitAddAbility(GetEnumUnit(),'A0I4')
    endif
endfunction

// 12090 ~ 12096
function Func0504 takes player loc_player01 returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func0502))
    call ForGroup(loc_group01,function Func0503)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 12098 ~ 12107
function Func0505 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(86)))
    call Func0068(loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 12109 ~ 12114
function Func0506 takes unit loc_unit01,player loc_player01 returns string
    local string loc_string01=GetObjectName('n0DB')
    set loc_string01=Func0418(loc_string01,"$hero",GetUnitName(loc_unit01))
    set loc_string01=Func0418(loc_string01,"$p",(strings005[GetPlayerId((loc_player01))]))
    return loc_string01
endfunction

// 12116 ~ 12274
function Func0507 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local real loc_real01
    local real loc_real02
    local region loc_region01=CreateRegion()
    local player loc_player02=loc_player01
    local item loc_item01
    local unit loc_unit02=loc_unit01
    local trigger loc_trigger01
    if boolean003==false then
        call Func0433(GetOwningPlayer(loc_unit01))
    endif
    if GetObjectName('n0HH')=="Language: English"and(strings007[(GetUnitPointValue(loc_unit01))]!="")then
        call DisplayTimedTextToPlayer(loc_player01,0,0,4,"A |c006699CC-tips|r command is available if you would like some pointers for this hero")
    endif
    if booleans035[GetPlayerId(loc_player01)]==true then
        call Func0426(loc_player01,GetUnitPointValue(loc_unit01))
    endif
    if boolean062==false and(units001[GetPlayerId(players003[1])]!=null and units001[GetPlayerId(players003[2])]!=null and units001[GetPlayerId(players003[3])]!=null and units001[GetPlayerId(players003[4])]!=null and units001[GetPlayerId(players003[5])]!=null and units001[GetPlayerId(players004[1])]!=null and units001[GetPlayerId(players004[2])]!=null and units001[GetPlayerId(players004[3])]!=null and units001[GetPlayerId(players004[4])]!=null and units001[GetPlayerId(players004[5])]!=null)then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,7,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0495))
        set loc_trigger01=null
    endif
    set booleans010[GetPlayerId(GetOwningPlayer((loc_unit01)))]=false
    call RegionAddRect(loc_region01,rect187)
    if boolean040 and boolean041==false then
        set booleans007[GetPlayerId(loc_player01)]=true
        set loc_player01=(LoadPlayerHandle(hashtable001,(2000),(550+GetPlayerId(loc_player01))))
        call SetUnitOwner(loc_unit01,loc_player01,true)
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2TS',false)
    if Func0056(GetOwningPlayer(loc_unit01))then
        if IsUnitInRegion(loc_region01,loc_unit01)then
            set loc_real01=GetRandomReal(GetRectMinX(rect011),GetRectMaxX(rect011))
            set loc_real02=GetRandomReal(GetRectMinY(rect011),GetRectMaxY(rect011))
        else
            set loc_real01=GetUnitX(loc_unit01)
            set loc_real02=GetUnitY(loc_unit01)
        endif
    else
        if IsUnitInRegion(loc_region01,loc_unit01)then
            set loc_real01=GetRandomReal(GetRectMinX(rect004),GetRectMaxX(rect004))
            set loc_real02=GetRandomReal(GetRectMinY(rect004),GetRectMaxY(rect004))
        else
            set loc_real01=GetUnitX(loc_unit01)
            set loc_real02=GetUnitY(loc_unit01)
        endif
    endif
    set booleans006[GetPlayerId(loc_player01)]=true
    if(not boolean040 or boolean041)then
        if boolean109==false and boolean060==false then
            call PanCameraToTimedForPlayer(loc_player01,loc_real01,loc_real02,0)
        endif
        if GetUnitTypeId(loc_unit01)!='N0MM' then
            call ClearSelectionForPlayer(loc_player01)
        endif
        call SelectUnitAddForPlayer(loc_unit01,loc_player01)
    endif
    call SetUnitX(loc_unit01,loc_real01)
    call SetUnitY(loc_unit01,loc_real02)
    if GetUnitTypeId(loc_unit01)!='N0MM' then
        set units001[GetPlayerId(loc_player01)]=loc_unit01
    endif
    call Func0414(loc_player01,"9",GetUnitTypeId(loc_unit01))
    if boolean040 and boolean041==false then
        call Func0071(loc_player02)
    else
        call Func0071(loc_player01)
    endif
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(85),(true))
    if not boolean028 then
        set booleans001[GetUnitPointValue(loc_unit01)]=true
        call Func0068(GetUnitTypeId(loc_unit01))
    endif
    if boolean003 then
        if Func0056(loc_player01)then
            set integers031[0]=integers031[0]+1
        else
            set integers031[1]=integers031[1]+1
        endif
        set integers035[GetPlayerId(loc_player01)]=integers035[GetPlayerId(loc_player01)]+1
        if integers035[GetPlayerId(GetOwningPlayer(loc_unit01))]>1 and loc_unit01!=units002[GetPlayerId(GetOwningPlayer(loc_unit01))]then
            call Func0487(units002[GetPlayerId(GetOwningPlayer(loc_unit01))])
            call DisableTrigger(trigger057)
            call SetHeroXP(loc_unit01,GetHeroXP(units002[GetPlayerId(GetOwningPlayer(loc_unit01))]),false)
            call UnitAddItem(loc_unit01,UnitItemInSlot(units002[GetPlayerId(GetOwningPlayer(loc_unit01))],0))
            call UnitAddItem(loc_unit01,UnitItemInSlot(units002[GetPlayerId(GetOwningPlayer(loc_unit01))],1))
            call UnitAddItem(loc_unit01,UnitItemInSlot(units002[GetPlayerId(GetOwningPlayer(loc_unit01))],2))
            call UnitAddItem(loc_unit01,UnitItemInSlot(units002[GetPlayerId(GetOwningPlayer(loc_unit01))],3))
            call UnitAddItem(loc_unit01,UnitItemInSlot(units002[GetPlayerId(GetOwningPlayer(loc_unit01))],4))
            call UnitAddItem(loc_unit01,UnitItemInSlot(units002[GetPlayerId(GetOwningPlayer(loc_unit01))],5))
            call EnableTrigger(trigger057)
            if Func0486(units002[GetPlayerId(GetOwningPlayer(loc_unit01))])then
                call Func0488(units002[GetPlayerId(GetOwningPlayer(loc_unit01))])
            else
                call Func0136(units002[GetPlayerId(GetOwningPlayer(loc_unit01))])
            endif
        endif
    endif
    if loc_player01!=players003[0]and loc_player01!=players004[0]then
        if boolean040 then
            if TimerGetElapsed(timer001)>60 then
                call Func0493(loc_player01,GetObjectName('n02E')+" "+GetUnitName(loc_unit01))
            elseif booleans004[GetPlayerId(loc_player02)]==true then
                call Func0493(loc_player01,Func0506(loc_unit01,loc_player02))
            else
                call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD)+250)
                call Func0493(loc_player01,GetObjectName('n0D1')+" "+GetUnitName(loc_unit01)+" "+GetObjectName('n0D0')+" "+(strings005[GetPlayerId((loc_player02))]))
            endif
        elseif boolean033==false or loc_player01==player003 then
            if(booleans003[GetPlayerId(GetOwningPlayer(loc_unit01))]==true and boolean033==false)then
                call Func0493(loc_player01,GetObjectName('n0D5')+" "+GetUnitName(loc_unit01)+".")
            elseif((booleans004[GetPlayerId(loc_player01)]==true and boolean003==false)or boolean004 or boolean005 or boolean035)then
                call Func0493(loc_player01,GetObjectName('n0D3')+" "+GetUnitName(loc_unit01)+".")
            else
                call Func0493(loc_player01,GetObjectName('n0D2')+" "+GetUnitName(loc_unit01)+".")
            endif
        endif
    endif
    if boolean046 then
        if boolean040 then
            call Func0500(loc_player02)
        else
            call Func0500(loc_player01)
        endif
    endif
    if(boolean109 or boolean060)and boolean046 then
        call Func0500(loc_player01)
    endif
    call Func0504(loc_player01)
    if(GetUnitTypeId(loc_unit01)=='E005')then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,60.00," ")
        call DisplayTimedTextToPlayer(loc_player01,0,real003,60.00,"|c00ff0303"+GetObjectName('n06H')+GetObjectName('n0CB')+" "+GetObjectName('n06E')+"|r")
    elseif GetUnitTypeId(loc_unit01)=='O00J' or GetUnitTypeId(loc_unit01)=='N016' or GetUnitTypeId(loc_unit01)=='UC91' or GetUnitTypeId(loc_unit01)=='EC45' then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,10.00," ")
        call DisplayTimedTextToPlayer(loc_player01,0,real003,10.00,"|c00ff0303"+GetObjectName('n0G3')+"|r")
    endif
    if(GetUnitTypeId(loc_unit01)=='E01B')then
        call DisplayTimedTextToPlayer(loc_player01,0,real003,30.00," ")
        call DisplayTimedTextToPlayer(loc_player01,0,real003,30.00,"|c00ff0303"+GetObjectName('n06P')+" "+GetObjectName('n06U')+"|r")
    endif
    if(booleans004[GetPlayerId(loc_player01)]==false)then
        if(boolean034)then
            call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,175+GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD))
        endif
    endif
    if HaveSavedBoolean(hashtable001,600+GetUnitPointValue(loc_unit01),87)==false then
        call SaveBoolean(hashtable001,(600+GetUnitPointValue(loc_unit01)),(87),(true))
        call Func0492(loc_unit01)
    endif
    set unit124=loc_unit01
    call ExecuteFunc("Func3109")
    if booleans030[GetPlayerId(GetLocalPlayer())]==false then
        call SetPlayerName(loc_player01,(strings005[GetPlayerId((loc_player01))])+" ("+Func0040(units001[GetPlayerId(loc_player01)])+")")
    endif
    call RemoveRegion(loc_region01)
endfunction

// 12276 ~ 12278
function Func0508 takes nothing returns boolean
    return IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==true
endfunction

// 12280 ~ 12284
function Func0509 takes nothing returns nothing
    local unit loc_unit01=GetSoldUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    call Func0071(loc_player01)
endfunction

// 12286 ~ 12302
function Func0510 takes nothing returns boolean
    local integer loc_integer01=1
    if boolean008 then
        set loc_integer01=2
    endif
    call SetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    return false
endfunction

// 12304 ~ 12316
function Func0511 takes nothing returns nothing
    local integer loc_integer01=R2I(TimerGetElapsed(timer001)-real001)
    local integer loc_integer02=loc_integer01/60-1/2
    local integer loc_integer03=ModuloInteger(loc_integer01,60)
    if boolean049 then
        call Func0274(loc_integer02,loc_integer03,false)
    elseif boolean048==false then
        set loc_integer01=R2I(16-TimerGetElapsed(timer001))
        set loc_integer02=loc_integer01/60-1/2
        set loc_integer03=ModuloInteger(loc_integer01,60)
        call Func0274(loc_integer02,loc_integer03,true)
    endif
endfunction

// 12318 ~ 12326
function Func0512 takes nothing returns boolean
    if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and(LoadInteger(hashtable002,(GetSpellAbilityId()),(GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId()))))>0 then
        call TimerStart(timers003[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))],(LoadInteger(hashtable002,(GetSpellAbilityId()),(GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId())))),false,null)
    endif
    if GetSpellAbilityId()=='A02W' then
        call TimerStart(timers003[GetPlayerId((GetOwningPlayer(GetTriggerUnit())))],0,false,null)
    endif
    return false
endfunction

// 12328 ~ 12780
function Func0513 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0512))
    set loc_integer01=0
    loop
        exitwhen(loc_integer01>13)
        set timers003[loc_integer01]=CreateTimer()
        set loc_integer01=loc_integer01+1
    endloop
    set hashtable002=InitHashtable()
    call SaveInteger(hashtable002,('A11K'),(1),(60))
    call SaveInteger(hashtable002,('A11K'),(2),(50))
    call SaveInteger(hashtable002,('A11K'),(3),(40))
    call SaveInteger(hashtable002,('A0O2'),(1),(80))
    call SaveInteger(hashtable002,('A0O2'),(2),(75))
    call SaveInteger(hashtable002,('A0O2'),(3),(70))
    call SaveInteger(hashtable002,('A289'),(1),(45))
    call SaveInteger(hashtable002,('A289'),(2),(45))
    call SaveInteger(hashtable002,('A289'),(3),(45))
    call SaveInteger(hashtable002,('A0DH'),(1),(150))
    call SaveInteger(hashtable002,('A0DH'),(2),(130))
    call SaveInteger(hashtable002,('A0DH'),(3),(110))
    call SaveInteger(hashtable002,('A1OB'),(1),(150))
    call SaveInteger(hashtable002,('A1OB'),(2),(130))
    call SaveInteger(hashtable002,('A1OB'),(3),(110))
    call SaveInteger(hashtable002,('A0ER'),(1),(150))
    call SaveInteger(hashtable002,('A0ER'),(2),(150))
    call SaveInteger(hashtable002,('A0ER'),(3),(150))
    call SaveInteger(hashtable002,('A2S8'),(1),(150))
    call SaveInteger(hashtable002,('A2S8'),(2),(150))
    call SaveInteger(hashtable002,('A2S8'),(3),(150))
    call SaveInteger(hashtable002,('A0MQ'),(1),(140))
    call SaveInteger(hashtable002,('A0MQ'),(2),(120))
    call SaveInteger(hashtable002,('A0MQ'),(3),(100))
    call SaveInteger(hashtable002,('A1B6'),(1),(140))
    call SaveInteger(hashtable002,('A1B6'),(2),(120))
    call SaveInteger(hashtable002,('A1B6'),(3),(100))
    call SaveInteger(hashtable002,('A1WH'),(1),(80))
    call SaveInteger(hashtable002,('A1WH'),(2),(80))
    call SaveInteger(hashtable002,('A1WH'),(3),(80))
    call SaveInteger(hashtable002,('A1A1'),(1),(100))
    call SaveInteger(hashtable002,('A1A1'),(2),(100))
    call SaveInteger(hashtable002,('A1A1'),(3),(100))
    call SaveInteger(hashtable002,('A07Z'),(1),(70))
    call SaveInteger(hashtable002,('A07Z'),(2),(70))
    call SaveInteger(hashtable002,('A07Z'),(3),(70))
    call SaveInteger(hashtable002,('ANcr'),(1),(45))
    call SaveInteger(hashtable002,('ANcr'),(2),(45))
    call SaveInteger(hashtable002,('ANcr'),(3),(45))
    call SaveInteger(hashtable002,('A0Z8'),(1),(70))
    call SaveInteger(hashtable002,('A0Z8'),(2),(55))
    call SaveInteger(hashtable002,('A0Z8'),(3),(40))
    call SaveInteger(hashtable002,('A1CV'),(1),(12))
    call SaveInteger(hashtable002,('A1CV'),(2),(12))
    call SaveInteger(hashtable002,('A1CV'),(3),(12))
    call SaveInteger(hashtable002,('A03G'),(1),(115))
    call SaveInteger(hashtable002,('A03G'),(2),(115))
    call SaveInteger(hashtable002,('A03G'),(3),(115))
    call SaveInteger(hashtable002,('A29L'),(1),(120))
    call SaveInteger(hashtable002,('A29L'),(2),(110))
    call SaveInteger(hashtable002,('A29L'),(3),(100))
    call SaveInteger(hashtable002,('A0QR'),(1),(45))
    call SaveInteger(hashtable002,('A0QR'),(2),(30))
    call SaveInteger(hashtable002,('A0QR'),(3),(15))
    call SaveInteger(hashtable002,('A1B3'),(1),(4))
    call SaveInteger(hashtable002,('A1B3'),(2),(4))
    call SaveInteger(hashtable002,('A1B3'),(3),(4))
    call SaveInteger(hashtable002,('A06R'),(1),(140))
    call SaveInteger(hashtable002,('A06R'),(2),(120))
    call SaveInteger(hashtable002,('A06R'),(3),(100))
    call SaveInteger(hashtable002,('A1B4'),(1),(120))
    call SaveInteger(hashtable002,('A1B4'),(2),(100))
    call SaveInteger(hashtable002,('A1B4'),(3),(80))
    call SaveInteger(hashtable002,('A0G4'),(1),(80))
    call SaveInteger(hashtable002,('A0G4'),(2),(70))
    call SaveInteger(hashtable002,('A0G4'),(3),(60))
    call SaveInteger(hashtable002,('A1D8'),(1),(20))
    call SaveInteger(hashtable002,('A1D8'),(2),(20))
    call SaveInteger(hashtable002,('A1D8'),(3),(20))
    call SaveInteger(hashtable002,('A29I'),(1),(150))
    call SaveInteger(hashtable002,('A29I'),(2),(150))
    call SaveInteger(hashtable002,('A29I'),(3),(150))
    call SaveInteger(hashtable002,('A0E2'),(1),(75))
    call SaveInteger(hashtable002,('A0E2'),(2),(65))
    call SaveInteger(hashtable002,('A0E2'),(3),(55))
    call SaveInteger(hashtable002,('A1MR'),(1),(6))
    call SaveInteger(hashtable002,('A1MR'),(2),(6))
    call SaveInteger(hashtable002,('A1MR'),(3),(6))
    call SaveInteger(hashtable002,('A03O'),(1),(140))
    call SaveInteger(hashtable002,('A03O'),(2),(140))
    call SaveInteger(hashtable002,('A03O'),(3),(140))
    call SaveInteger(hashtable002,('A0RW'),(1),(20))
    call SaveInteger(hashtable002,('A0RW'),(2),(20))
    call SaveInteger(hashtable002,('A0RW'),(3),(20))
    call SaveInteger(hashtable002,('A0MU'),(1),(100))
    call SaveInteger(hashtable002,('A0MU'),(2),(100))
    call SaveInteger(hashtable002,('A0MU'),(3),(100))
    call SaveInteger(hashtable002,('A0A2'),(1),(100))
    call SaveInteger(hashtable002,('A0A2'),(2),(100))
    call SaveInteger(hashtable002,('A0A2'),(3),(100))
    call SaveInteger(hashtable002,('A0SW'),(1),(100))
    call SaveInteger(hashtable002,('A0SW'),(2),(100))
    call SaveInteger(hashtable002,('A0SW'),(3),(100))
    call SaveInteger(hashtable002,('A093'),(1),(120))
    call SaveInteger(hashtable002,('A093'),(2),(90))
    call SaveInteger(hashtable002,('A093'),(3),(60))
    call SaveInteger(hashtable002,('A03K'),(1),(180))
    call SaveInteger(hashtable002,('A03K'),(2),(150))
    call SaveInteger(hashtable002,('A03K'),(3),(120))
    call SaveInteger(hashtable002,('A1B0'),(1),(180))
    call SaveInteger(hashtable002,('A1B0'),(2),(150))
    call SaveInteger(hashtable002,('A1B0'),(3),(120))
    call SaveInteger(hashtable002,('A0R0'),(1),(130))
    call SaveInteger(hashtable002,('A0R0'),(2),(130))
    call SaveInteger(hashtable002,('A0R0'),(3),(130))
    call SaveInteger(hashtable002,('A0FL'),(1),(30))
    call SaveInteger(hashtable002,('A0FL'),(2),(30))
    call SaveInteger(hashtable002,('A0FL'),(3),(30))
    call SaveInteger(hashtable002,('A1CX'),(1),(30))
    call SaveInteger(hashtable002,('A1CX'),(2),(30))
    call SaveInteger(hashtable002,('A1CX'),(3),(30))
    call SaveInteger(hashtable002,('A034'),(1),(5))
    call SaveInteger(hashtable002,('A034'),(2),(5))
    call SaveInteger(hashtable002,('A034'),(3),(5))
    call SaveInteger(hashtable002,('A15J'),(1),(75))
    call SaveInteger(hashtable002,('A15J'),(2),(75))
    call SaveInteger(hashtable002,('A15J'),(3),(75))
    call SaveInteger(hashtable002,('A2WE'),(1),(70))
    call SaveInteger(hashtable002,('A2WE'),(2),(70))
    call SaveInteger(hashtable002,('A2WE'),(3),(70))
    call SaveInteger(hashtable002,('A04P'),(1),(20))
    call SaveInteger(hashtable002,('A04P'),(2),(15))
    call SaveInteger(hashtable002,('A04P'),(3),(10))
    call SaveInteger(hashtable002,('A0M1'),(1),(130))
    call SaveInteger(hashtable002,('A0M1'),(2),(120))
    call SaveInteger(hashtable002,('A0M1'),(3),(110))
    call SaveInteger(hashtable002,('A1AX'),(1),(70))
    call SaveInteger(hashtable002,('A1AX'),(2),(70))
    call SaveInteger(hashtable002,('A1AX'),(3),(70))
    call SaveInteger(hashtable002,('A054'),(1),(160))
    call SaveInteger(hashtable002,('A054'),(2),(150))
    call SaveInteger(hashtable002,('A054'),(3),(140))
    call SaveInteger(hashtable002,('A00U'),(1),(160))
    call SaveInteger(hashtable002,('A00U'),(2),(150))
    call SaveInteger(hashtable002,('A00U'),(3),(140))
    call SaveInteger(hashtable002,('A0G8'),(1),(80))
    call SaveInteger(hashtable002,('A0G8'),(2),(80))
    call SaveInteger(hashtable002,('A0G8'),(3),(80))
    call SaveInteger(hashtable002,('A07U'),(1),(180))
    call SaveInteger(hashtable002,('A07U'),(2),(120))
    call SaveInteger(hashtable002,('A07U'),(3),(60))
    call SaveInteger(hashtable002,('A0KU'),(1),(140))
    call SaveInteger(hashtable002,('A0KU'),(2),(120))
    call SaveInteger(hashtable002,('A0KU'),(3),(100))
    call SaveInteger(hashtable002,('A1EJ'),(1),(30))
    call SaveInteger(hashtable002,('A1EJ'),(2),(30))
    call SaveInteger(hashtable002,('A1EJ'),(3),(30))
    call SaveInteger(hashtable002,('A0B4'),(1),(4))
    call SaveInteger(hashtable002,('A0B4'),(2),(4))
    call SaveInteger(hashtable002,('A0B4'),(3),(4))
    call SaveInteger(hashtable002,('A1IN'),(1),(60))
    call SaveInteger(hashtable002,('A1IN'),(2),(60))
    call SaveInteger(hashtable002,('A1IN'),(3),(60))
    call SaveInteger(hashtable002,('A0J1'),(1),(130))
    call SaveInteger(hashtable002,('A0J1'),(2),(115))
    call SaveInteger(hashtable002,('A0J1'),(3),(100))
    call SaveInteger(hashtable002,('A1D7'),(1),(60))
    call SaveInteger(hashtable002,('A1D7'),(2),(60))
    call SaveInteger(hashtable002,('A1D7'),(3),(60))
    call SaveInteger(hashtable002,('A1MI'),(1),(40))
    call SaveInteger(hashtable002,('A1MI'),(2),(40))
    call SaveInteger(hashtable002,('A1MI'),(3),(40))
    call SaveInteger(hashtable002,('A2QE'),(1),(40))
    call SaveInteger(hashtable002,('A2QE'),(2),(40))
    call SaveInteger(hashtable002,('A2QE'),(3),(40))
    call SaveInteger(hashtable002,('A1AO'),(1),(80))
    call SaveInteger(hashtable002,('A1AO'),(2),(70))
    call SaveInteger(hashtable002,('A1AO'),(3),(60))
    call SaveInteger(hashtable002,('A1UV'),(1),(80))
    call SaveInteger(hashtable002,('A1UV'),(2),(70))
    call SaveInteger(hashtable002,('A1UV'),(3),(60))
    call SaveInteger(hashtable002,('A1NE'),(1),(180))
    call SaveInteger(hashtable002,('A1NE'),(2),(160))
    call SaveInteger(hashtable002,('A1NE'),(3),(140))
    call SaveInteger(hashtable002,('A2IG'),(1),(180))
    call SaveInteger(hashtable002,('A2IG'),(2),(160))
    call SaveInteger(hashtable002,('A2IG'),(3),(140))
    call SaveInteger(hashtable002,('A1AT'),(1),(90))
    call SaveInteger(hashtable002,('A1AT'),(2),(90))
    call SaveInteger(hashtable002,('A1AT'),(3),(90))
    call SaveInteger(hashtable002,('A0RP'),(1),(11))
    call SaveInteger(hashtable002,('A0RP'),(2),(9))
    call SaveInteger(hashtable002,('A0RP'),(3),(7))
    call SaveInteger(hashtable002,('A0LC'),(1),(25))
    call SaveInteger(hashtable002,('A0LC'),(2),(25))
    call SaveInteger(hashtable002,('A0LC'),(3),(25))
    call SaveInteger(hashtable002,('A0IN'),(1),(45))
    call SaveInteger(hashtable002,('A0IN'),(2),(45))
    call SaveInteger(hashtable002,('A0IN'),(3),(45))
    call SaveInteger(hashtable002,('A1AW'),(1),(10))
    call SaveInteger(hashtable002,('A1AW'),(2),(10))
    call SaveInteger(hashtable002,('A1AW'),(3),(10))
    call SaveInteger(hashtable002,('A0LH'),(1),(70))
    call SaveInteger(hashtable002,('A0LH'),(2),(60))
    call SaveInteger(hashtable002,('A0LH'),(3),(50))
    call SaveInteger(hashtable002,('A04Q'),(1),(45))
    call SaveInteger(hashtable002,('A04Q'),(2),(40))
    call SaveInteger(hashtable002,('A04Q'),(3),(35))
    call SaveInteger(hashtable002,('A0WQ'),(1),(45))
    call SaveInteger(hashtable002,('A0WQ'),(2),(45))
    call SaveInteger(hashtable002,('A0WQ'),(3),(45))
    call SaveInteger(hashtable002,('A09U'),(1),(70))
    call SaveInteger(hashtable002,('A09U'),(2),(60))
    call SaveInteger(hashtable002,('A09U'),(3),(50))
    call SaveInteger(hashtable002,('A0CT'),(1),(60))
    call SaveInteger(hashtable002,('A0CT'),(2),(50))
    call SaveInteger(hashtable002,('A0CT'),(3),(40))
    call SaveInteger(hashtable002,('A29J'),(1),(120))
    call SaveInteger(hashtable002,('A29J'),(2),(110))
    call SaveInteger(hashtable002,('A29J'),(3),(100))
    call SaveInteger(hashtable002,('A07Q'),(1),(120))
    call SaveInteger(hashtable002,('A07Q'),(2),(80))
    call SaveInteger(hashtable002,('A07Q'),(3),(40))
    call SaveInteger(hashtable002,('A0H9'),(1),(120))
    call SaveInteger(hashtable002,('A0H9'),(2),(120))
    call SaveInteger(hashtable002,('A0H9'),(3),(120))
    call SaveInteger(hashtable002,('A013'),(1),(140))
    call SaveInteger(hashtable002,('A013'),(2),(120))
    call SaveInteger(hashtable002,('A013'),(3),(100))
    call SaveInteger(hashtable002,('A0A6'),(1),(140))
    call SaveInteger(hashtable002,('A0A6'),(2),(120))
    call SaveInteger(hashtable002,('A0A6'),(3),(60))
    call SaveInteger(hashtable002,('A080'),(1),(80))
    call SaveInteger(hashtable002,('A080'),(2),(50))
    call SaveInteger(hashtable002,('A080'),(3),(30))
    call SaveInteger(hashtable002,('A03R'),(1),(150))
    call SaveInteger(hashtable002,('A03R'),(2),(120))
    call SaveInteger(hashtable002,('A03R'),(3),(90))
    call SaveInteger(hashtable002,('A0AV'),(1),(150))
    call SaveInteger(hashtable002,('A0AV'),(2),(120))
    call SaveInteger(hashtable002,('A0AV'),(3),(90))
    call SaveInteger(hashtable002,('A0S8'),(1),(85))
    call SaveInteger(hashtable002,('A0S8'),(2),(85))
    call SaveInteger(hashtable002,('A0S8'),(3),(85))
    call SaveInteger(hashtable002,('A1QP'),(1),(85))
    call SaveInteger(hashtable002,('A1QP'),(2),(85))
    call SaveInteger(hashtable002,('A1QP'),(3),(85))
    call SaveInteger(hashtable002,('A0LT'),(1),(160))
    call SaveInteger(hashtable002,('A0LT'),(2),(140))
    call SaveInteger(hashtable002,('A0LT'),(3),(120))
    call SaveInteger(hashtable002,('A1CS'),(1),(30))
    call SaveInteger(hashtable002,('A1CS'),(2),(30))
    call SaveInteger(hashtable002,('A1CS'),(3),(30))
    call SaveInteger(hashtable002,('A11T'),(1),(80))
    call SaveInteger(hashtable002,('A11T'),(2),(70))
    call SaveInteger(hashtable002,('A11T'),(3),(60))
    call SaveInteger(hashtable002,('A1W8'),(1),(90))
    call SaveInteger(hashtable002,('A1W8'),(2),(75))
    call SaveInteger(hashtable002,('A1W8'),(3),(60))
    call SaveInteger(hashtable002,('A1W9'),(1),(90))
    call SaveInteger(hashtable002,('A1W9'),(2),(75))
    call SaveInteger(hashtable002,('A1W9'),(3),(60))
    call SaveInteger(hashtable002,('A29G'),(1),(90))
    call SaveInteger(hashtable002,('A29G'),(2),(90))
    call SaveInteger(hashtable002,('A29G'),(3),(90))
    call SaveInteger(hashtable002,('A29H'),(1),(90))
    call SaveInteger(hashtable002,('A29H'),(2),(90))
    call SaveInteger(hashtable002,('A29H'),(3),(90))
    call SaveInteger(hashtable002,('A0L3'),(1),(130))
    call SaveInteger(hashtable002,('A0L3'),(2),(130))
    call SaveInteger(hashtable002,('A0L3'),(3),(130))
    call SaveInteger(hashtable002,('A2QC'),(1),(130))
    call SaveInteger(hashtable002,('A2QC'),(2),(130))
    call SaveInteger(hashtable002,('A2QC'),(3),(130))
    call SaveInteger(hashtable002,('A01P'),(1),(70))
    call SaveInteger(hashtable002,('A01P'),(2),(60))
    call SaveInteger(hashtable002,('A01P'),(3),(50))
    call SaveInteger(hashtable002,('A09Z'),(1),(70))
    call SaveInteger(hashtable002,('A09Z'),(2),(60))
    call SaveInteger(hashtable002,('A09Z'),(3),(50))
    call SaveInteger(hashtable002,('A12P'),(1),(60))
    call SaveInteger(hashtable002,('A12P'),(2),(60))
    call SaveInteger(hashtable002,('A12P'),(3),(60))
    call SaveInteger(hashtable002,('A1D6'),(1),(15))
    call SaveInteger(hashtable002,('A1D6'),(2),(15))
    call SaveInteger(hashtable002,('A1D6'),(3),(15))
    call SaveInteger(hashtable002,('A19O'),(1),(90))
    call SaveInteger(hashtable002,('A19O'),(2),(75))
    call SaveInteger(hashtable002,('A19O'),(3),(60))
    call SaveInteger(hashtable002,('A0AK'),(1),(10))
    call SaveInteger(hashtable002,('A0AK'),(2),(10))
    call SaveInteger(hashtable002,('A0AK'),(3),(10))
    call SaveInteger(hashtable002,('A1FY'),(1),(10))
    call SaveInteger(hashtable002,('A1FY'),(2),(10))
    call SaveInteger(hashtable002,('A1FY'),(3),(10))
    call SaveInteger(hashtable002,('A0VF'),(1),(22))
    call SaveInteger(hashtable002,('A0VF'),(2),(17))
    call SaveInteger(hashtable002,('A0VF'),(3),(12))
    call SaveInteger(hashtable002,('A0VF'),(4),(5))
    call SaveInteger(hashtable002,('A1B5'),(1),(16))
    call SaveInteger(hashtable002,('A1B5'),(2),(8))
    call SaveInteger(hashtable002,('A1B5'),(3),(4))
    call SaveInteger(hashtable002,('A1B5'),(4),(2))
    call SaveInteger(hashtable002,('A07K'),(1),(6))
    call SaveInteger(hashtable002,('A07K'),(2),(6))
    call SaveInteger(hashtable002,('A07K'),(3),(6))
    call SaveInteger(hashtable002,('A10Q'),(1),(40))
    call SaveInteger(hashtable002,('A10Q'),(2),(40))
    call SaveInteger(hashtable002,('A10Q'),(3),(40))
    call SaveInteger(hashtable002,('A1DB'),(1),(40))
    call SaveInteger(hashtable002,('A1DB'),(2),(40))
    call SaveInteger(hashtable002,('A1DB'),(3),(40))
    call SaveInteger(hashtable002,('A00H'),(1),(120))
    call SaveInteger(hashtable002,('A00H'),(2),(120))
    call SaveInteger(hashtable002,('A00H'),(3),(120))
    call SaveInteger(hashtable002,('A0A1'),(1),(120))
    call SaveInteger(hashtable002,('A0A1'),(2),(120))
    call SaveInteger(hashtable002,('A0A1'),(3),(120))
    call SaveInteger(hashtable002,('A0O5'),(1),(60))
    call SaveInteger(hashtable002,('A0O5'),(2),(60))
    call SaveInteger(hashtable002,('A0O5'),(3),(60))
    call SaveInteger(hashtable002,('A1B1'),(1),(60))
    call SaveInteger(hashtable002,('A1B1'),(2),(60))
    call SaveInteger(hashtable002,('A1B1'),(3),(60))
    call SaveInteger(hashtable002,('A0NT'),(1),(80))
    call SaveInteger(hashtable002,('A0NT'),(2),(80))
    call SaveInteger(hashtable002,('A0NT'),(3),(80))
    call SaveInteger(hashtable002,('A0NX'),(1),(80))
    call SaveInteger(hashtable002,('A0NX'),(2),(80))
    call SaveInteger(hashtable002,('A0NX'),(3),(80))
    call SaveInteger(hashtable002,('A02Q'),(1),(100))
    call SaveInteger(hashtable002,('A02Q'),(2),(100))
    call SaveInteger(hashtable002,('A02Q'),(3),(100))
    call SaveInteger(hashtable002,('A1D9'),(1),(100))
    call SaveInteger(hashtable002,('A1D9'),(2),(100))
    call SaveInteger(hashtable002,('A1D9'),(3),(100))
    call SaveInteger(hashtable002,('A0QK'),(1),(100))
    call SaveInteger(hashtable002,('A0QK'),(2),(100))
    call SaveInteger(hashtable002,('A0QK'),(3),(100))
    call SaveInteger(hashtable002,('A073'),(1),(135))
    call SaveInteger(hashtable002,('A073'),(2),(135))
    call SaveInteger(hashtable002,('A073'),(3),(135))
    call SaveInteger(hashtable002,('A03J'),(1),(135))
    call SaveInteger(hashtable002,('A03J'),(2),(135))
    call SaveInteger(hashtable002,('A03J'),(3),(135))
    call SaveInteger(hashtable002,('A04J'),(1),(135))
    call SaveInteger(hashtable002,('A04J'),(2),(135))
    call SaveInteger(hashtable002,('A04J'),(3),(135))
    call SaveInteger(hashtable002,('A04M'),(1),(135))
    call SaveInteger(hashtable002,('A04M'),(2),(135))
    call SaveInteger(hashtable002,('A04M'),(3),(135))
    call SaveInteger(hashtable002,('A04N'),(1),(135))
    call SaveInteger(hashtable002,('A04N'),(2),(135))
    call SaveInteger(hashtable002,('A04N'),(3),(135))
    call SaveInteger(hashtable002,('A095'),(1),(160))
    call SaveInteger(hashtable002,('A095'),(2),(100))
    call SaveInteger(hashtable002,('A095'),(3),(40))
    call SaveInteger(hashtable002,('A09W'),(1),(100))
    call SaveInteger(hashtable002,('A09W'),(2),(60))
    call SaveInteger(hashtable002,('A09W'),(3),(20))
    call SaveInteger(hashtable002,('A1BX'),(1),(200))
    call SaveInteger(hashtable002,('A1BX'),(2),(190))
    call SaveInteger(hashtable002,('A1BX'),(3),(180))
    call SaveInteger(hashtable002,('A05T'),(1),(120))
    call SaveInteger(hashtable002,('A05T'),(2),(90))
    call SaveInteger(hashtable002,('A05T'),(3),(60))
    call SaveInteger(hashtable002,('A08H'),(1),(120))
    call SaveInteger(hashtable002,('A08H'),(2),(90))
    call SaveInteger(hashtable002,('A08H'),(3),(60))
    call SaveInteger(hashtable002,('A067'),(1),(100))
    call SaveInteger(hashtable002,('A067'),(2),(85))
    call SaveInteger(hashtable002,('A067'),(3),(70))
    call SaveInteger(hashtable002,('A08P'),(1),(70))
    call SaveInteger(hashtable002,('A08P'),(2),(70))
    call SaveInteger(hashtable002,('A08P'),(3),(70))
    call SaveInteger(hashtable002,('A0CC'),(1),(22))
    call SaveInteger(hashtable002,('A0CC'),(2),(22))
    call SaveInteger(hashtable002,('A0CC'),(3),(22))
    call SaveInteger(hashtable002,('A0OK'),(1),(160))
    call SaveInteger(hashtable002,('A0OK'),(2),(160))
    call SaveInteger(hashtable002,('A0OK'),(3),(160))
    call SaveInteger(hashtable002,('A1VW'),(1),(160))
    call SaveInteger(hashtable002,('A1VW'),(2),(160))
    call SaveInteger(hashtable002,('A1VW'),(3),(160))
    call SaveInteger(hashtable002,('A306'),(1),(135))
    call SaveInteger(hashtable002,('A306'),(2),(135))
    call SaveInteger(hashtable002,('A306'),(3),(135))
    call SaveInteger(hashtable002,('A307'),(1),(40))
    call SaveInteger(hashtable002,('A307'),(2),(40))
    call SaveInteger(hashtable002,('A307'),(3),(40))
    call SaveInteger(hashtable002,('S008'),(1),(165))
    call SaveInteger(hashtable002,('S008'),(2),(165))
    call SaveInteger(hashtable002,('S008'),(3),(165))
    call SaveInteger(hashtable002,('S00U'),(1),(165))
    call SaveInteger(hashtable002,('S00U'),(2),(165))
    call SaveInteger(hashtable002,('S00U'),(3),(165))
    call SaveInteger(hashtable002,('A1TB'),(1),(90))
    call SaveInteger(hashtable002,('A1TB'),(2),(75))
    call SaveInteger(hashtable002,('A1TB'),(3),(60))
    call SaveInteger(hashtable002,('A1U6'),(1),(90))
    call SaveInteger(hashtable002,('A1U6'),(2),(80))
    call SaveInteger(hashtable002,('A1U6'),(3),(70))
    call SaveInteger(hashtable002,('A2V8'),(1),(90))
    call SaveInteger(hashtable002,('A2V8'),(2),(80))
    call SaveInteger(hashtable002,('A2V8'),(3),(70))
    call SaveInteger(hashtable002,('A1T5'),(1),(55))
    call SaveInteger(hashtable002,('A1T5'),(2),(50))
    call SaveInteger(hashtable002,('A1T5'),(3),(45))
    call SaveInteger(hashtable002,('A235'),(1),(55))
    call SaveInteger(hashtable002,('A235'),(2),(50))
    call SaveInteger(hashtable002,('A235'),(3),(45))
    call SaveInteger(hashtable002,('A1SA'),(1),(50))
    call SaveInteger(hashtable002,('A1SA'),(2),(50))
    call SaveInteger(hashtable002,('A1SA'),(3),(50))
    call SaveInteger(hashtable002,('A1RK'),(1),(110))
    call SaveInteger(hashtable002,('A1RK'),(2),(110))
    call SaveInteger(hashtable002,('A1RK'),(3),(110))
    call SaveInteger(hashtable002,('A1YQ'),(1),(25))
    call SaveInteger(hashtable002,('A1YQ'),(2),(20))
    call SaveInteger(hashtable002,('A1YQ'),(3),(15))
    call SaveInteger(hashtable002,('A27H'),(1),(20))
    call SaveInteger(hashtable002,('A27H'),(2),(18))
    call SaveInteger(hashtable002,('A27H'),(3),(16))
    call SaveInteger(hashtable002,('A2V9'),(1),(2))
    call SaveInteger(hashtable002,('A2V9'),(2),(2))
    call SaveInteger(hashtable002,('A2V9'),(3),(2))
    call SaveInteger(hashtable002,('A2BG'),(1),(60))
    call SaveInteger(hashtable002,('A2BG'),(2),(40))
    call SaveInteger(hashtable002,('A2BG'),(3),(20))
    call SaveInteger(hashtable002,('A2CI'),(1),(50))
    call SaveInteger(hashtable002,('A2CI'),(2),(50))
    call SaveInteger(hashtable002,('A2CI'),(3),(50))
    call SaveInteger(hashtable002,('A2E5'),(1),(8))
    call SaveInteger(hashtable002,('A2E5'),(2),(8))
    call SaveInteger(hashtable002,('A2E5'),(3),(8))
    call SaveInteger(hashtable002,('A2M0'),(1),(65))
    call SaveInteger(hashtable002,('A2M0'),(2),(60))
    call SaveInteger(hashtable002,('A2M0'),(3),(55))
    call SaveInteger(hashtable002,('A0Z0'),(1),(90))
    call SaveInteger(hashtable002,('A0Z0'),(2),(80))
    call SaveInteger(hashtable002,('A0Z0'),(3),(70))
    call SaveInteger(hashtable002,('A2O6'),(1),(90))
    call SaveInteger(hashtable002,('A2O6'),(2),(75))
    call SaveInteger(hashtable002,('A2O6'),(3),(60))
    call SaveInteger(hashtable002,('A2TI'),(1),(80))
    call SaveInteger(hashtable002,('A2TI'),(2),(80))
    call SaveInteger(hashtable002,('A2TI'),(3),(80))
    call SaveInteger(hashtable002,('A2TF'),(1),(20))
    call SaveInteger(hashtable002,('A2TF'),(2),(20))
    call SaveInteger(hashtable002,('A2TF'),(3),(20))
endfunction

// 12782 ~ 12791
function Func0514 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(758)))
    set integers080[loc_integer02]=GetPlayerState(Player(loc_integer02),PLAYER_STATE_RESOURCE_GOLD)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 12793 ~ 12802
function Func0515 takes nothing returns boolean
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0514))
    call SaveInteger(hashtable001,(loc_integer01),(758),(loc_integer02))
    set loc_trigger01=null
    return false
endfunction

// 12804 ~ 12835
function Func0516 takes nothing returns boolean
    local player loc_player01
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    set loc_integer01=1
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        set loc_integer02=GetPlayerId(loc_player01)
        set loc_integer03=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
        if reals004[loc_integer02]<(TimerGetElapsed(timer001))then
            set integers080[loc_integer02]=loc_integer03
        elseif loc_integer03>integers080[loc_integer02]then
            call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers080[loc_integer02])
        else
            set integers080[loc_integer02]=loc_integer03
        endif
        set loc_player01=players004[loc_integer01]
        set loc_integer02=GetPlayerId(loc_player01)
        set loc_integer03=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
        if reals004[loc_integer02]<(TimerGetElapsed(timer001))then
            set integers080[loc_integer02]=loc_integer03
        elseif loc_integer03>integers080[loc_integer02]then
            call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers080[loc_integer02])
        else
            set integers080[loc_integer02]=loc_integer03
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return false
endfunction

// 12837 ~ 12860
function Func0517 takes nothing returns boolean
    local player loc_player01
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    set loc_integer01=1
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        set loc_integer02=GetPlayerId(loc_player01)
        set loc_integer03=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
        if loc_integer03<integers081[loc_integer02]then
            set integers081[loc_integer02]=loc_integer03
        endif
        set loc_player01=players004[loc_integer01]
        set loc_integer02=GetPlayerId(loc_player01)
        set loc_integer03=GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)
        if loc_integer03<integers081[loc_integer02]then
            set integers081[loc_integer02]=loc_integer03
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return false
endfunction

// 12862 ~ 12882
function Func0518 takes integer loc_integer01,integer loc_integer02 returns boolean
    local integer loc_integer03=integer052-1
    local real loc_real01=0
    local real loc_real02=(TimerGetElapsed(timer001))
    local integer loc_integer04=0
    loop
        exitwhen loc_integer03==integer052 or loc_real01>real192 or loc_integer04>200
        if loc_integer03==0 then
            set loc_integer03=8000-1
        endif
        set loc_integer04=loc_integer04+1
        set loc_real01=loc_real02-reals007[loc_integer03]
        if integers082[loc_integer03]==loc_integer01 and integers083[loc_integer03]==loc_integer02 and loc_real01<real192 then
            set integers082[loc_integer03]=0
            set integers083[loc_integer03]=0
            return true
        endif
        set loc_integer03=loc_integer03-1
    endloop
    return false
endfunction

// 12884 ~ 12902
function Func0519 takes integer loc_integer01,integer loc_integer02 returns boolean
    local integer loc_integer03=integer052-1
    local real loc_real01=0
    local real loc_real02=(TimerGetElapsed(timer001))
    local integer loc_integer04=0
    loop
        exitwhen loc_integer03==integer052 or loc_real01>real192 or loc_integer04>200
        if loc_integer03==0 then
            set loc_integer03=8000-1
        endif
        set loc_integer04=loc_integer04+1
        set loc_real01=loc_real02-reals007[loc_integer03]
        if integers082[loc_integer03]==loc_integer01 and integers083[loc_integer03]==loc_integer02 and loc_real01<real192 then
            return true
        endif
        set loc_integer03=loc_integer03-1
    endloop
    return false
endfunction

// 12904 ~ 12915
function Func0520 takes nothing returns nothing
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
    local real loc_real01=GetEventDamage()
    set reals007[integer052]=(TimerGetElapsed(timer001))
    set integers082[integer052]=loc_integer01
    set integers083[integer052]=loc_integer02
    set integer052=integer052+1
    if integer052==8000 then
        set integer052=1
    endif
endfunction

// 12917 ~ 12947
function Func0521 takes unit loc_unit01,unit loc_unit02 returns string
    local integer loc_integer01=1
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit02))
    local integer loc_integer04
    local string loc_string01=" "+GetObjectName('n0JY')+" "
    local boolean loc_boolean01=false
    loop
        exitwhen loc_integer01>5
        if Func0056(GetOwningPlayer(loc_unit02))then
            set loc_integer04=GetPlayerId(players003[loc_integer01])
        else
            set loc_integer04=GetPlayerId(players004[loc_integer01])
        endif
        if loc_integer03!=loc_integer04 and Func0518(loc_integer04,loc_integer02)then
            set integers006[loc_integer04]=integers006[loc_integer04]+1
            call Func0415("Assist"+I2S(loc_integer04),loc_integer02)
            if loc_boolean01 then
                set loc_string01=loc_string01+"/"+strings001[loc_integer04]+(strings005[GetPlayerId((Player(loc_integer04)))])+"|r"
            else
                set loc_string01=loc_string01+strings001[loc_integer04]+(strings005[GetPlayerId((Player(loc_integer04)))])+"|r"
            endif
            set loc_boolean01=true
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if loc_boolean01 then
        return loc_string01
    endif
    return" "
endfunction

// 12949 ~ 12977
function Func0522 takes unit loc_unit01,unit loc_unit02 returns string
    local integer loc_integer01=1
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit02))
    local integer loc_integer04
    local string loc_string01=""
    local boolean loc_boolean01=false
    loop
        exitwhen loc_integer01>5
        if Func0056(GetOwningPlayer(loc_unit02))then
            set loc_integer04=GetPlayerId(players003[loc_integer01])
        else
            set loc_integer04=GetPlayerId(players004[loc_integer01])
        endif
        if loc_integer03!=loc_integer04 and Func0519(loc_integer04,loc_integer02)then
            if loc_boolean01 then
                set loc_string01=loc_string01+"/"+strings001[loc_integer04]+(strings005[GetPlayerId((Player(loc_integer04)))])+"|r"
            else
                set loc_string01=loc_string01+strings001[loc_integer04]+(strings005[GetPlayerId((Player(loc_integer04)))])+"|r"
            endif
            set loc_boolean01=true
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if loc_boolean01 then
        return loc_string01
    endif
    return" "
endfunction

// 12979 ~ 12998
function Func0523 takes unit loc_unit01,unit loc_unit02 returns integer
    local integer loc_integer01=1
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit02))
    local integer loc_integer04
    local integer loc_integer05=0
    loop
        exitwhen loc_integer01>5
        if Func0056(GetOwningPlayer(loc_unit02))then
            set loc_integer04=GetPlayerId(players003[loc_integer01])
        else
            set loc_integer04=GetPlayerId(players004[loc_integer01])
        endif
        if loc_integer03!=loc_integer04 and Func0519(loc_integer04,loc_integer02)then
            set loc_integer05=loc_integer05+1
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return loc_integer05
endfunction

// 13000 ~ 13028
function Func0524 takes unit loc_unit01,unit loc_unit02 returns boolean
    local integer loc_integer01=1
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit02))
    local integer loc_integer04
    local string loc_string01=" Assists: "
    local boolean loc_boolean01=false
    local integer loc_integer05=1
    set players005[1]=null
    set players005[2]=null
    set players005[3]=null
    set players005[4]=null
    set players005[5]=null
    loop
        exitwhen loc_integer01>5
        if Func0056(GetOwningPlayer(loc_unit02))then
            set loc_integer04=GetPlayerId(players003[loc_integer01])
        else
            set loc_integer04=GetPlayerId(players004[loc_integer01])
        endif
        if loc_integer03!=loc_integer04 and Func0519(loc_integer04,loc_integer02)then
            set players005[loc_integer05]=Player(loc_integer04)
            set loc_integer05=loc_integer05+1
            set loc_boolean01=true
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return loc_boolean01
endfunction

// 13030 ~ 13051
function Func0525 takes unit loc_unit01,unit loc_unit02,real loc_real01 returns nothing
    local integer loc_integer01=1
    local integer loc_integer02=0
    call Func0524(loc_unit01,loc_unit02)
    loop
        exitwhen loc_integer01>5
        if players005[loc_integer01]!=null then
            set loc_integer02=loc_integer02+1
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    loop
        exitwhen loc_integer01>5
        if players005[loc_integer01]!=null then
            set integers081[GetPlayerId(players005[loc_integer01])]=integers081[GetPlayerId(players005[loc_integer01])]+R2I(loc_real01/loc_integer02)
            set integers080[GetPlayerId(players005[loc_integer01])]=integers080[GetPlayerId(players005[loc_integer01])]+R2I(loc_real01/loc_integer02)
            call Func0240(players005[loc_integer01],R2I(loc_real01/loc_integer02),units001[GetPlayerId(players005[loc_integer01])])
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 13053 ~ 13054
function Func0526 takes nothing returns nothing
endfunction

// 13056 ~ 13134
function Func0527 takes nothing returns nothing
    local integer loc_integer01=GetUnitTypeId(GetTriggerUnit())
    if GetOwningPlayer(GetTriggerUnit())==player001 then
        set integers005[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers005[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
    elseif(loc_integer01=='ugho')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='unec')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='esen')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='edry')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='u001')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='u002')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='e00V')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='e00W')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='ebal')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='e026')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='umtw')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    elseif(loc_integer01=='u00R')then
        if(IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit())))then
            set integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers004[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        else
            set integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]=integers003[GetPlayerId(GetOwningPlayer(GetKillingUnit()))]+1
        endif
    endif
    call Func0526()
endfunction

// 13136 ~ 13164
function Func0528 takes integer loc_integer01 returns nothing
    local integer loc_integer02=1
    local integer loc_integer03=1
    set units007[loc_integer01]=null
    set reals008[loc_integer01]=0
    set booleans019[loc_integer01]=false
    loop
        exitwhen loc_integer03>integer053
        if reals008[loc_integer03]!=0 then
            set units008[loc_integer02]=units007[loc_integer03]
            set reals009[loc_integer02]=reals008[loc_integer03]
            set booleans020[loc_integer02]=booleans019[loc_integer03]
            set units007[loc_integer03]=null
            set reals008[loc_integer03]=0
            set booleans019[loc_integer03]=false
            set loc_integer02=loc_integer02+1
        endif
        set loc_integer03=loc_integer03+1
    endloop
    set integer053=loc_integer02-1
    set loc_integer02=1
    loop
        exitwhen loc_integer02>integer053
        set units007[loc_integer02]=units008[loc_integer02]
        set reals008[loc_integer02]=reals009[loc_integer02]
        set booleans019[loc_integer02]=booleans020[loc_integer02]
        set loc_integer02=loc_integer02+1
    endloop
endfunction

// 13166 ~ 13168
function Func0529 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)=='H00I' or GetUnitTypeId(loc_unit01)=='H00J'
endfunction

// 13170 ~ 13181
function Func0530 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(699)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(700)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(701)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(702)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(703)))
    if GetUnitAbilityLevel(loc_unit02,'A0OV')!=0 or GetUnitAbilityLevel(loc_unit03,'A0OV')!=0 or GetUnitAbilityLevel(loc_unit04,'A0OV')!=0 or GetUnitAbilityLevel(loc_unit05,'A0OV')!=0 or GetUnitAbilityLevel(loc_unit06,'A0OV')!=0 then
        return true
    endif
    return false
endfunction

// 13183 ~ 13195
function Func0531 takes unit loc_unit01 returns boolean
    local integer loc_integer01=0
    local integer loc_integer02=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer02),(699)))
    loop
        exitwhen loc_integer01>5
        if GetItemTypeId(UnitItemInSlot(loc_unit02,loc_integer01))==integers089[integer198]and GetItemCharges(UnitItemInSlot(loc_unit02,loc_integer01))>0 then
            return true
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return false
endfunction

// 13197 ~ 13224
function Func0532 takes unit loc_unit01,location loc_location01 returns nothing
    local integer loc_integer01=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(699)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(700)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(701)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(702)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(703)))
    if loc_unit02!=null then
        call ReviveHeroLoc(loc_unit02,loc_location01,true)
        call Func0483(loc_unit02)
    endif
    if loc_unit03!=null then
        call ReviveHeroLoc(loc_unit03,loc_location01,true)
        call Func0483(loc_unit03)
    endif
    if loc_unit04!=null then
        call ReviveHeroLoc(loc_unit04,loc_location01,true)
        call Func0483(loc_unit04)
    endif
    if loc_unit05!=null then
        call ReviveHeroLoc(loc_unit05,loc_location01,true)
        call Func0483(loc_unit05)
    endif
    if loc_unit06!=null then
        call ReviveHeroLoc(loc_unit06,loc_location01,true)
        call Func0483(loc_unit06)
    endif
endfunction

// 13226 ~ 13228
function Func0533 takes nothing returns real
    return TimerGetElapsed(timer001)
endfunction

// 13230 ~ 13235
function Func0534 takes unit loc_unit01,real loc_real01,boolean loc_boolean01 returns nothing
    set integer053=integer053+1
    set units007[integer053]=loc_unit01
    set reals008[integer053]=(TimerGetElapsed(timer001))+loc_real01
    set booleans019[integer053]=loc_boolean01
endfunction

// 13237 ~ 13261
function Func0535 takes integer loc_integer01 returns nothing
    local unit loc_unit01=units007[loc_integer01]
    local boolean loc_boolean01=booleans019[loc_integer01]
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local location loc_location01
    if Func0057(loc_player01)then
        set loc_location01=GetRectCenter(rect004)
    else
        set loc_location01=GetRectCenter(rect011)
    endif
    if boolean036==false and Func0194(loc_unit01)then
        call Func0485(loc_unit01,loc_player01,GetLocationX(loc_location01),GetLocationY(loc_location01),true)
        if Func0529(loc_unit01)==false or GetUnitAbilityLevel(loc_unit01,'A0MW')==0 then
            call ReviveHeroLoc(loc_unit01,loc_location01,true)
        else
            call Func0532(loc_unit01,loc_location01)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
    endif
    call RemoveLocation(loc_location01)
    call Func0528(loc_integer01)
    set loc_unit01=null
    set loc_player01=null
    set loc_location01=null
endfunction

// 13263 ~ 13278
function Func0536 takes nothing returns boolean
    local real loc_real01=(TimerGetElapsed(timer001))
    local integer loc_integer01
    set loc_integer01=1
    loop
        exitwhen loc_integer01>integer053
        if reals008[loc_integer01]<loc_real01 and reals008[loc_integer01]!=0 then
            call Func0535(loc_integer01)
        endif
        if reals008[loc_integer01]!=0 and Func0194(units007[loc_integer01])==false then
            call Func0528(loc_integer01)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return false
endfunction

// 13280 ~ 13285
function Func0537 takes unit loc_unit01,integer loc_integer01 returns nothing
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(788)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(787)))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(787),(IMaxBJ(loc_integer02-loc_integer01,0)))
    set loc_unit02=null
endfunction

// 13287 ~ 13293
function Func0538 takes unit loc_unit01,unit loc_unit02 returns nothing
    if Func0147(loc_unit01,loc_unit02)>1300 or(Func0194(loc_unit01)and GetUnitTypeId(loc_unit01)=='H00K')then
        if IsPlayerAlly(GetOwningPlayer(loc_unit01),GetOwningPlayer(loc_unit02))==false then
            call AddHeroXP(loc_unit01,Func0106(loc_unit02),true)
        endif
    endif
endfunction

// 13295 ~ 13299
function Func0539 takes nothing returns nothing
    if Func0394(GetEnumUnit(),integers089[integer235])!=null then
        call SetItemCharges(Func0394(GetEnumUnit(),integers089[integer235]),GetItemCharges(Func0394(GetEnumUnit(),integers089[integer235]))+1)
    endif
endfunction

// 13301 ~ 13308
function Func0540 takes nothing returns boolean
    if(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false then
        if IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit240))and Func0394(GetFilterUnit(),integers089[integer235])!=null then
            return true
        endif
    endif
    return false
endfunction

// 13310 ~ 13326
function Func0541 takes nothing returns boolean
    local item loc_item01
    local integer loc_integer01
    if integer054==0 and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit241))then
        if Func0394(GetFilterUnit(),integers089[integer251])!=null then
            set integer054=integer054+1
            set loc_integer01=GetItemCharges(Func0394(GetFilterUnit(),integers089[integer251]))
            if loc_integer01==0 then
                set loc_integer01=2
            else
                set loc_integer01=loc_integer01+1
            endif
            call SetItemCharges(Func0394(GetFilterUnit(),integers089[integer251]),loc_integer01)
        endif
    endif
    return false
endfunction

// 13328 ~ 13340
function Func0542 takes nothing returns boolean
    local item loc_item01
    local integer loc_integer01
    if integer055==0 and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit241))then
        if Func0394(GetFilterUnit(),integers089[integer132])!=null then
            set integer055=integer055+1
            set loc_integer01=GetItemCharges(Func0394(GetFilterUnit(),integers089[integer132]))
            set loc_integer01=IMinBJ(loc_integer01+1,5)
            call SetItemCharges(Func0394(GetFilterUnit(),integers089[integer132]),loc_integer01)
        endif
    endif
    return false
endfunction

// 13342 ~ 13352
function Func0543 takes unit loc_unit01,unit loc_unit02 returns nothing
    local group loc_group01=Func0030()
    set unit240=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1625,Condition(function Func0540))
    if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false then
        call GroupAddUnit(loc_group01,loc_unit02)
    endif
    call ForGroup(loc_group01,function Func0539)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
