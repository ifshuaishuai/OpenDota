
// 22716 ~ 22736
function Func0916 takes nothing returns boolean
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

// 22738 ~ 22766
function Func0917 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger02)
    local string loc_string01="Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
    if GetLocalPlayer()!=GetOwningPlayer(loc_unit01)then
        set loc_string01=""
    endif
    call Func0193(loc_unit01,'A2R3')
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4337)),(1))
    call DestroyEffect(AddSpecialEffectTarget(loc_string01,loc_unit01,"chest"))
    call DestroyEffect(AddSpecialEffectTarget(loc_string01,loc_unit01,"hand left"))
    call DestroyEffect(AddSpecialEffectTarget(loc_string01,loc_unit01,"hand right"))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0915))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger02,0.01,false)
    call TriggerAddCondition(loc_trigger02,Condition(function Func0916))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(375),(loc_integer01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 22768 ~ 22772
function Func0918 takes nothing returns nothing
    if GetSpellAbilityId()=='A2R1' and((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4337))))==1)==false then
        call Func0917()
    endif
endfunction
