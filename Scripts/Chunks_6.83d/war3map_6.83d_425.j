
// 55834 ~ 55858
function Func2493 takes nothing returns nothing
    if Func0275(GetEnumUnit())then
        return
    endif
    if integer485==1 then
        if GetUnitAbilityLevel(GetEnumUnit(),'A1CA')==0 then
            call Func0193(GetEnumUnit(),'A1CA')
        endif
    elseif integer485==2 then
        if GetUnitAbilityLevel(GetEnumUnit(),'A1C9')==0 then
            call Func0193(GetEnumUnit(),'A1C9')
        endif
    elseif integer485==3 then
        if GetUnitAbilityLevel(GetEnumUnit(),'A1CB')==0 then
            call Func0193(GetEnumUnit(),'A1CB')
        endif
    elseif integer485==4 then
        if GetUnitAbilityLevel(GetEnumUnit(),'A1CC')==0 then
            call Func0193(GetEnumUnit(),'A1CC')
        endif
    endif
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
        call Func0424(GetEnumUnit(),R2I((I2R(GetHeroAgi(GetEnumUnit(),true))/7)*I2R(integer485)/4))
    endif
endfunction

// 55860 ~ 55897
function Func2494 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(340)))
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group02=Func0030()
    local group loc_group03
    if loc_unit01==null or GetUnitTypeId(loc_unit01)!='O015' then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0029(loc_group01)
        call Func0029(loc_group02)
        return false
    endif
    set unit124=loc_unit01
    set integer485=GetUnitAbilityLevel(loc_unit01,'A1CD')
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,300,Condition(function Func0305))
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4270))))==1)==true then
        set loc_group03=Func0030()
        call GroupEnumUnitsInRange(loc_group03,GetUnitX((units025[GetPlayerId(GetOwningPlayer((loc_unit01)))])),GetUnitY((units025[GetPlayerId(GetOwningPlayer((loc_unit01)))])),300,Condition(function Func0305))
        call GroupAddGroup(loc_group03,loc_group02)
        call Func0029(loc_group03)
        set loc_group03=null
    endif
    call GroupRemoveGroup(loc_group02,loc_group01)
    call ForGroup(loc_group01,function Func2492)
    if Func0194(loc_unit01)==false then
        call ForGroup(loc_group02,function Func2493)
    endif
    call SaveGroupHandle(hashtable001,(loc_integer01),(340),(loc_group02))
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 55899 ~ 55929
function Func2495 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02
    local player loc_player01
    call Func0193(loc_unit01,'A1CQ')
    call TriggerRegisterTimerEvent(loc_trigger01,0.3,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2494))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(340),(Func0030()))
    call SaveTriggerHandle(hashtable001,(GetHandleId(loc_unit01)),(338),(loc_trigger01))
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(339),(true))
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        set loc_player01=players003[loc_integer02]
        call SetPlayerAbilityAvailable(loc_player01,'A1CA',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1C9',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1CB',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1CC',false)
        set loc_player01=players004[loc_integer02]
        call SetPlayerAbilityAvailable(loc_player01,'A1CA',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1C9',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1CB',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1CC',false)
        set loc_integer02=loc_integer02+1
    endloop
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 55931 ~ 55936
function Func2496 takes nothing returns boolean
    if GetLearnedSkill()=='A1CD' and GetUnitAbilityLevel(GetTriggerUnit(),'A1CD')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2495()
    endif
    return false
endfunction

// 55938 ~ 55943
function Func2497 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2496))
    set loc_trigger01=null
endfunction
