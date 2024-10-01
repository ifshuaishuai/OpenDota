
// 13434 ~ 13440
function Func0547 takes nothing returns boolean
    if(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetFilterUnit())==false then
        if IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit240))==false and Func0394(GetFilterUnit(),integers089[integer134])!=null then
        endif
    endif
    return false
endfunction

// 13442 ~ 13448
function Func0548 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    set unit240=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1625,Condition(function Func0547))
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 13450 ~ 13458
function Func0549 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    set integer054=0
    set unit241=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1425,Condition(function Func0541))
    call Func0029(loc_group01)
    set integer054=0
    set loc_group01=null
endfunction

// 13460 ~ 13484
function Func0550 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(88)))
    local integer loc_integer03=1
    local player loc_player01
    local string loc_string01
    loop
        exitwhen loc_integer03>5
        if loc_integer02==0 then
            set loc_player01=players003[loc_integer03]
            set loc_string01=strings001[GetPlayerId(players003[0])]+GetObjectName('n03N')+"|r "+GetObjectName('n03P')+" "+strings001[GetPlayerId(players003[0])]+GetObjectName('n03Q')+"|r"
        else
            set loc_player01=players004[loc_integer03]
            set loc_string01=strings001[GetPlayerId(players004[0])]+GetObjectName('n03O')+"|r "+GetObjectName('n03P')+" "+strings001[GetPlayerId(players004[0])]+GetObjectName('n03Q')+"|r"
        endif
        call DisplayTimedTextToPlayer(loc_player01,0,0,10,loc_string01)
        call Func0228(sound022,loc_player01)
        set loc_integer03=loc_integer03+1
    endloop
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 13486 ~ 13493
function Func0551 takes integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0550))
    call SaveInteger(hashtable001,(loc_integer02),(88),(loc_integer01))
    set loc_trigger01=null
endfunction

// 13495 ~ 13514
function Func0552 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(89)))
    local string loc_string01=(LoadStr(hashtable001,(loc_integer01),(90)))
    if loc_integer02==1 then
        call Func0227(sound007)
    elseif loc_integer02==2 then
        call Func0227(sound033)
    elseif loc_integer02==3 then
        call Func0227(sound046)
    elseif loc_integer02==4 then
        call Func0227(sound047)
    endif
    call Func0152(force003,10.00,loc_string01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 13516 ~ 13524
function Func0553 takes string loc_string01,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0552))
    call SaveStr(hashtable001,(loc_integer02),(90),(loc_string01))
    call SaveInteger(hashtable001,(loc_integer02),(89),(loc_integer01))
    set loc_trigger01=null
endfunction

// 13526 ~ 13555
function Func0554 takes player loc_player01,integer loc_integer01 returns nothing
    local integer loc_integer02=1
    local integer loc_integer03
    if Func0056(loc_player01)then
        set loc_integer03=Func0063(force001)
    else
        set loc_integer03=Func0063(force002)
    endif
    if Func0056(loc_player01)then
        loop
            exitwhen loc_integer02>5
            if Func0059(players003[loc_integer02])then
                set integers081[GetPlayerId(players003[loc_integer02])]=integers081[GetPlayerId(players003[loc_integer02])]+loc_integer01/loc_integer03
                set integers080[GetPlayerId(players003[loc_integer02])]=integers080[GetPlayerId(players003[loc_integer02])]+loc_integer01/loc_integer03
                call Func0240(players003[loc_integer02],loc_integer01/loc_integer03,units001[GetPlayerId(players003[loc_integer02])])
            endif
            set loc_integer02=loc_integer02+1
        endloop
    else
        loop
            exitwhen loc_integer02>5
            if Func0059(players004[loc_integer02])then
                set integers081[GetPlayerId(players004[loc_integer02])]=integers081[GetPlayerId(players004[loc_integer02])]+loc_integer01/loc_integer03
                set integers080[GetPlayerId(players004[loc_integer02])]=integers080[GetPlayerId(players004[loc_integer02])]+loc_integer01/loc_integer03
                call Func0240(players004[loc_integer02],loc_integer01/loc_integer03,units001[GetPlayerId(players004[loc_integer02])])
            endif
            set loc_integer02=loc_integer02+1
        endloop
    endif
endfunction

// 13557 ~ 13560
function Func0555 takes unit loc_unit01,integer loc_integer01 returns nothing
    local player loc_player01=GetOwningPlayer(loc_unit01)
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-loc_integer01)
endfunction

// 13562 ~ 13568
function Func0556 takes nothing returns boolean
    if GetUnitTypeId(GetFilterUnit())=='o003' then
        call KillUnit(GetFilterUnit())
        return true
    endif
    return false
endfunction

// 13570 ~ 13575
function Func0557 takes nothing returns nothing
    local boolexpr loc_boolexpr01=Condition(function Func0556)
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,bj_mapInitialPlayableArea,loc_boolexpr01)
    call Func0029(loc_group01)
endfunction

// 13577 ~ 13582
function Func0558 takes player loc_player01 returns boolean
    if loc_player01==player001 then
        return true
    endif
    return false
endfunction

// 13584 ~ 13592
function Func0559 takes nothing returns boolean
    if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and GetUnitTypeId(GetTriggerUnit())!='N0MM' then
        if GetUnitTypeId(GetTriggerUnit())=='H00J' and Func0531(GetTriggerUnit())then
            return false
        endif
        return true
    endif
    return false
endfunction

// 13594 ~ 13596
function Func0560 takes player loc_player01,player loc_player02,unit loc_unit01 returns boolean
    return loc_unit01==null or GetKillingUnit()==null or(Func0056(loc_player01)and Func0056(loc_player02))or(Func0057(loc_player01)and Func0057(loc_player02))
endfunction

// 13598 ~ 13603
function Func0561 takes nothing returns nothing
    if Func0468(GetUnitTypeId(GetEnumUnit()))==false then
        set integer058=integer058+1
        set integer059=integer059+1
    endif
endfunction

// 13605 ~ 13614
function Func0562 takes nothing returns nothing
    if(GetUnitTypeId((GetEnumUnit()))=='H00J')==false and Func0468(GetUnitTypeId(GetEnumUnit()))==false then
        call AddHeroXP(GetEnumUnit(),integer057,true)
        set integers084[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=integers084[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]+integer057
        set integers085[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=integers085[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]+integer056
        set integers081[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=integers081[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]+integer056
        set integers080[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=integers080[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]+integer056
        call Func0240(GetOwningPlayer(GetEnumUnit()),integer056,GetEnumUnit())
    endif
endfunction

// 13616 ~ 13633
function Func0563 takes player loc_player01 returns integer
    local integer loc_integer01=0
    local integer loc_integer02=1
    local player loc_player02
    loop
        exitwhen loc_integer02==6
        set loc_player02=players003[loc_integer02]
        if IsPlayerAlly(loc_player01,loc_player02)then
            set loc_integer01=loc_integer01+GetHeroXP(units001[GetPlayerId(loc_player02)])
        endif
        set loc_player02=players004[loc_integer02]
        if IsPlayerAlly(loc_player01,loc_player02)then
            set loc_integer01=loc_integer01+GetHeroXP(units001[GetPlayerId(loc_player02)])
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return loc_integer01
endfunction
