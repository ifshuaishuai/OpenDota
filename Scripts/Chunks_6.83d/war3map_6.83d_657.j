
// 72162 ~ 72164
function Func3428 takes nothing returns nothing
    call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+real353*0.5)
endfunction

// 72166 ~ 72217
function Func3429 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01=Func0030()
    local real loc_real03=600
    local real loc_real04=600
    local unit loc_unit02
    set loc_real01=GetUnitX(loc_unit01)
    set loc_real02=GetUnitY(loc_unit01)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,loc_real03,Condition(function Func0361))
    set loc_unit02=FirstOfGroup(loc_group01)
    call Func0029(loc_group01)
    if loc_unit02==null then
        if(LoadBoolean(hashtable001,(loc_integer01),(307)))==true and(LoadBoolean(hashtable001,(loc_integer01),(308)))==true then
            call UnitRemoveAbility(loc_unit01,'A283')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            if(LoadBoolean(hashtable001,(loc_integer01),(307)))==false then
                call SaveBoolean(hashtable001,(loc_integer01),(307),(true))
            else
                call SaveBoolean(hashtable001,(loc_integer01),(308),(true))
            endif
        endif
    else
        set loc_real01=GetUnitX(loc_unit02)
        set loc_real02=GetUnitY(loc_unit02)
        call SaveBoolean(hashtable001,(loc_integer01),(307),(false))
        call SaveBoolean(hashtable001,(loc_integer01),(308),(false))
        call FlushChildHashtable(hashtable001,(GetHandleId(loc_unit02)))
        call DestroyEffect(AddSpecialEffect("war3mapImported\\CorpseExplosion.mdx",loc_real01,loc_real02))
        call RemoveUnit(loc_unit02)
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit354=loc_unit01
        set real353=20*GetUnitAbilityLevel(loc_unit01,'A288')
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,loc_real04,Condition(function Func0305))
        call ForGroup(loc_group01,function Func3427)
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,loc_real04,Condition(function Func0332))
        call ForGroup(loc_group01,function Func3428)
        call Func0029(loc_group01)
    endif
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    return false
endfunction

// 72219 ~ 72234
function Func3430 takes nothing returns nothing
    local real loc_real01=GetUnitX(GetTriggerUnit())
    local real loc_real02=GetUnitY(GetTriggerUnit())
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0184(sound074,loc_real01,loc_real02)
    call TriggerRegisterTimerEvent(loc_trigger01,1.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3429))
    call Func0193(GetTriggerUnit(),'A283')
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(GetTriggerUnit()))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveBoolean(hashtable001,(loc_integer01),(307),(false))
    call SaveBoolean(hashtable001,(loc_integer01),(308),(false))
    set loc_trigger01=null
endfunction

// 72236 ~ 72241
function Func3431 takes nothing returns boolean
    if GetSpellAbilityId()=='A288' then
        call Func3430()
    endif
    return false
endfunction

// 72243 ~ 72248
function Func3432 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3431))
    set loc_trigger01=null
endfunction
