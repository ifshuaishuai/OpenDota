
// 21283 ~ 21295
function Func0821 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call UnitRemoveAbility(loc_unit01,'A31A')
    call UnitRemoveAbility(loc_unit01,'A2YJ')
    call UnitRemoveAbility(loc_unit01,'A2YH')
    call Func0035(loc_trigger01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 21297 ~ 21318
function Func0822 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    if((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4346))))==1)==true then
        call Func0120(GetOwningPlayer(GetEnumUnit()),GetObjectName('n0NQ')+" "+GetUnitName(GetEnumUnit()))
    else
        if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
            call Func0044(GetEnumUnit(),4346,70)
        endif
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0193(GetEnumUnit(),'A31A')
        call Func0193(GetEnumUnit(),'A2YJ')
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A31A',false)
        call Func0193(GetEnumUnit(),'A2YH')
        call TriggerRegisterTimerEvent(loc_trigger01,10,false)
        call TriggerRegisterDeathEvent(loc_trigger01,GetEnumUnit())
        call TriggerAddCondition(loc_trigger01,Condition(function Func0821))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetEnumUnit()))
        set loc_trigger01=null
    endif
endfunction

// 21320 ~ 21329
function Func0823 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    call PlaySoundOnUnitBJ(sound079,100,loc_unit01)
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),775,Condition(function Func0331))
    call ForGroup(loc_group01,function Func0822)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 21331 ~ 21335
function Func0824 takes nothing returns nothing
    if GetSpellAbilityId()=='A2YG' then
        call Func0823()
    endif
endfunction
