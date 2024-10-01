
// 44399 ~ 44406
function Func1757 takes nothing returns boolean
    if IsUnitInGroup(GetFilterUnit(),group008)==false then
        if GetUnitAbilityLevel(GetFilterUnit(),'B00L')>0 then
            return true
        endif
    endif
    return false
endfunction

// 44408 ~ 44446
function Func1758 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03
    local real loc_real01
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local group loc_group02
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_group02=Func0030()
    set group008=loc_group01
    call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit02),GetUnitY(loc_unit02),900,Condition(function Func1757))
    set loc_unit03=GroupPickRandomUnit(loc_group02)
    call Func0029(loc_group02)
    if loc_unit03!=null then
        set loc_real01=Func1756(loc_unit01,loc_unit02,loc_unit03,loc_integer02,false)
        call GroupAddUnit(loc_group01,loc_unit03)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit03))
        call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
        call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1758))
    else
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_group02=null
    set loc_group01=null
    return false
endfunction

// 44448 ~ 44466
function Func1759 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A004')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real01=Func1756(loc_unit01,loc_unit01,loc_unit02,loc_integer01,true)
    local group loc_group01=Func0030()
    call GroupAddUnit(loc_group01,loc_unit02)
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveGroupHandle(hashtable001,(loc_integer02),(22),(loc_group01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1758))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 44468 ~ 44473
function Func1760 takes nothing returns boolean
    if GetUnitAbilityLevel(GetTriggerUnit(),'A04R')==0 and GetSpellAbilityId()=='A004' and Func0028(GetSpellTargetUnit())==false then
        call Func1759()
    endif
    return false
endfunction

// 44475 ~ 44480
function Func1761 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1760))
    set loc_trigger01=null
endfunction
