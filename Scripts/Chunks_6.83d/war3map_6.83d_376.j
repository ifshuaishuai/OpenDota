
// 52993 ~ 52999
function Func2312 takes nothing returns nothing
    call SelectUnitRemoveForPlayer(GetEnumUnit(),GetOwningPlayer(GetEnumUnit()))
    call SetUnitInvulnerable(GetEnumUnit(),true)
    call PauseUnit(GetEnumUnit(),true)
    call ShowUnit(GetEnumUnit(),false)
    call DestroyEffect(AddSpecialEffect("war3mapImported\\DG_Disappear.mdx",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
endfunction

// 53001 ~ 53025
function Func2313 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call ForGroup(loc_group01,function Func2312)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2311))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_unit02=null
    return false
endfunction

// 53027 ~ 53046
function Func2314 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    set unit295=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,925,Condition(function Func2309))
    call GroupAddUnit(loc_group01,loc_unit01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,.01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2313))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
endfunction

// 53048 ~ 53053
function Func2315 takes nothing returns boolean
    if GetSpellAbilityId()=='A30C' then
        call Func2314()
    endif
    return false
endfunction

// 53055 ~ 53060
function Func2316 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2315))
    set loc_trigger01=null
endfunction
