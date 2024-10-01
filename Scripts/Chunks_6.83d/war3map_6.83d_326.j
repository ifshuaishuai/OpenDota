
// 49796 ~ 49798
function Func2116 takes nothing returns boolean
    return GetUnitTypeId(GetSummonedUnit())=='o00C' or GetUnitTypeId(GetSummonedUnit())=='o01G' or GetUnitTypeId(GetSummonedUnit())=='o01H' or GetUnitTypeId(GetSummonedUnit())=='o01I'
endfunction

// 49800 ~ 49802
function Func2117 takes nothing returns nothing
    call SetUnitAbilityLevelSwapped('A058',GetSummonedUnit(),GetUnitAbilityLevelSwapped('A047',GetSummoningUnit()))
endfunction

// 49804 ~ 49809
function Func2118 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2116))
    call TriggerAddAction(loc_trigger01,function Func2117)
endfunction

// 49811 ~ 49843
function Func2119 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetEventDamage()>2 and Func0058(GetOwningPlayer(GetEventDamageSource())))then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_UNIT_DAMAGED and GetTriggerEventId()!=EVENT_UNIT_DEATH then
        set loc_real01=GetUnitX(loc_unit01)
        set loc_real02=GetUnitY(loc_unit01)
        set loc_real03=GetUnitX(loc_unit02)
        set loc_real04=GetUnitY(loc_unit02)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl",loc_real01,loc_real02))
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",loc_real03,loc_real04))
        call Func0044(loc_unit02,4410,1)
        call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
