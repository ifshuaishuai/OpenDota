
// 71444 ~ 71457
function Func3385 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call ResetUnitAnimation(loc_unit01)
    call RemoveUnit(loc_unit02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    return false
endfunction

// 71459 ~ 71473
function Func3386 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'u01I',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3385))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SetUnitVertexColorBJ(loc_unit02,0,0,0,75)
    call SetUnitAnimation(loc_unit02,"spell third")
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 71475 ~ 71480
function Func3387 takes nothing returns boolean
    if GetSpellAbilityId()=='A08C' and GetUnitAbilityLevel(GetTriggerUnit(),'A08C')<5 then
        call Func3386()
    endif
    return false
endfunction

// 71482 ~ 71487
function Func3388 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3387))
    set loc_trigger01=null
endfunction
