
// 90904 ~ 90914
function Func4373 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerUnit()==loc_unit01 and GetLearnedSkill()=='A2E5' then
        call SetUnitAbilityLevel(loc_unit01,'A2YO',GetUnitAbilityLevel(loc_unit01,'A2E5'))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 90916 ~ 90927
function Func4374 takes nothing returns nothing
    local unit loc_unit01=unit124
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0193(loc_unit01,'A2YO')
    call SetUnitAbilityLevel(loc_unit01,'A2YO',GetUnitAbilityLevel(loc_unit01,'A2E5'))
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4373))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 90929 ~ 90941
function Func4375 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(754)))==(LoadInteger(hashtable001,(loc_integer01),(754))))then
        call Func0420((loc_unit01),(0))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 90943 ~ 90951
function Func4376 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
        set integer555=integer555+60
    else
        set integer555=integer555+20
    endif
    call UnitRemoveAbility(GetEnumUnit(),'A2LE')
    call UnitRemoveAbility(GetEnumUnit(),'B0G1')
endfunction

// 90953 ~ 90959
function Func4377 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
        set integer555=integer555+60
    else
        set integer555=integer555+20
    endif
endfunction

// 90961 ~ 90964
function Func4378 takes nothing returns nothing
    call Func0365(unit412,GetEnumUnit(),0.5+integer556*0.5)
    call Func0115(unit412,GetEnumUnit(),1,integer555)
endfunction
