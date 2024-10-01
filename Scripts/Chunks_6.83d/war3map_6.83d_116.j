
// 23034 ~ 23054
function Func0936 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(375)))
    local integer loc_integer03=GetUnitCurrentOrder(loc_unit01)
    if GetUnitX(loc_unit01)!=loc_real01 or GetUnitY(loc_unit01)!=loc_real02 then
        call IssueImmediateOrder(loc_unit01,"holdposition")
        call SaveReal(hashtable001,(loc_integer02),(6),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer02),(7),((GetUnitY(loc_unit01))*1.0))
    elseif loc_integer03==0 or loc_integer03==851973 or loc_integer03==851983 or loc_integer03==851971 then
        call IssueImmediateOrder(loc_unit01,"holdposition")
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 23056 ~ 23083
function Func0937 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger02)
    local string loc_string01="Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
    if GetLocalPlayer()!=GetOwningPlayer(loc_unit01)then
        set loc_string01=""
    endif
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4330)),(1))
    call DestroyEffect(AddSpecialEffectTarget(loc_string01,loc_unit01,"chest"))
    call DestroyEffect(AddSpecialEffectTarget(loc_string01,loc_unit01,"hand left"))
    call DestroyEffect(AddSpecialEffectTarget(loc_string01,loc_unit01,"hand right"))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0935))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger02,0.01,false)
    call TriggerAddCondition(loc_trigger02,Condition(function Func0936))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(375),(loc_integer01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 23085 ~ 23089
function Func0938 takes nothing returns nothing
    if GetSpellAbilityId()=='A2N1' and((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4330))))==1)==false then
        call Func0937()
    endif
endfunction
