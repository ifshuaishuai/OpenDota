
// 87342 ~ 87373
function Func4177 takes nothing returns nothing
    if Func0275(GetEnumUnit())then
        return
    endif
    if integer542==1 then
        if GetUnitAbilityLevel(GetEnumUnit(),'A27S')==0 then
            call Func0193(GetEnumUnit(),'A27S')
            call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A27S',false)
        endif
    elseif integer542==2 then
        if GetUnitAbilityLevel(GetEnumUnit(),'A27Q')==0 then
            call UnitRemoveAbility(GetEnumUnit(),'A27S')
            call Func0193(GetEnumUnit(),'A27Q')
            call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A27Q',false)
        endif
    elseif integer542==3 then
        if GetUnitAbilityLevel(GetEnumUnit(),'A27R')==0 then
            call UnitRemoveAbility(GetEnumUnit(),'A27S')
            call UnitRemoveAbility(GetEnumUnit(),'A27Q')
            call Func0193(GetEnumUnit(),'A27R')
            call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A27R',false)
        endif
    elseif integer542==4 then
        if GetUnitAbilityLevel(GetEnumUnit(),'A27T')==0 then
            call UnitRemoveAbility(GetEnumUnit(),'A27S')
            call UnitRemoveAbility(GetEnumUnit(),'A27Q')
            call UnitRemoveAbility(GetEnumUnit(),'A27R')
            call Func0193(GetEnumUnit(),'A27T')
            call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A27T',false)
        endif
    endif
endfunction

// 87375 ~ 87408
function Func4178 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(340)))
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group02=Func0030()
    if loc_unit01==null or GetUnitTypeId(loc_unit01)!='E02X' then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call ForGroup(loc_group01,function Func4176)
        call Func0029(loc_group01)
        call Func0029(loc_group02)
        return false
    endif
    set unit124=loc_unit01
    set integer542=GetUnitAbilityLevel(loc_unit01,'A27V')
    if Func0194(loc_unit01)==false then
        call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,925,Condition(function Func0338))
    endif
    call GroupRemoveGroup(loc_group02,loc_group01)
    call ForGroup(loc_group01,function Func4176)
    if Func0194(loc_unit01)==false then
        call ForGroup(loc_group02,function Func4177)
    endif
    call SaveGroupHandle(hashtable001,(loc_integer01),(340),(loc_group02))
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 87410 ~ 87437
function Func4179 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02
    local player loc_player01
    call TriggerRegisterTimerEvent(loc_trigger01,0.3,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4178))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(340),(Func0030()))
    set loc_integer02=0
    loop
        exitwhen loc_integer02>5
        set loc_player01=players003[loc_integer02]
        call SetPlayerAbilityAvailable(loc_player01,'A27S',false)
        call SetPlayerAbilityAvailable(loc_player01,'A27Q',false)
        call SetPlayerAbilityAvailable(loc_player01,'A27R',false)
        call SetPlayerAbilityAvailable(loc_player01,'A27T',false)
        set loc_player01=players004[loc_integer02]
        call SetPlayerAbilityAvailable(loc_player01,'A27S',false)
        call SetPlayerAbilityAvailable(loc_player01,'A27Q',false)
        call SetPlayerAbilityAvailable(loc_player01,'A27R',false)
        call SetPlayerAbilityAvailable(loc_player01,'A27T',false)
        set loc_integer02=loc_integer02+1
    endloop
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 87439 ~ 87444
function Func4180 takes nothing returns boolean
    if GetLearnedSkill()=='A27V' and GetUnitAbilityLevel(GetTriggerUnit(),'A27V')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func4179()
    endif
    return false
endfunction

// 87446 ~ 87451
function Func4181 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4180))
    set loc_trigger01=null
endfunction
