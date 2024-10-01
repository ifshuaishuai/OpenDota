
// 23293 ~ 23313
function Func0953 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if(GetTriggerEventId()==EVENT_UNIT_DEATH and GetKillingUnit()==loc_unit01)or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetUnitAbilityLevel(loc_unit02,'B0ES')>0)then
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
        call AddHeroXP(loc_unit01,R2I(Func0054(loc_integer02)*2.5),true)
        call Func0219(GetOwningPlayer(loc_unit01),loc_unit02,190)
        set integers081[GetPlayerId(GetOwningPlayer(loc_unit01))]=integers081[GetPlayerId(GetOwningPlayer(loc_unit01))]+190
        set integers080[GetPlayerId(GetOwningPlayer(loc_unit01))]=integers080[GetPlayerId(GetOwningPlayer(loc_unit01))]+190
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 23315 ~ 23330
function Func0954 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitLevel(loc_unit02)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0953))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 23332 ~ 23336
function Func0955 takes nothing returns nothing
    if GetSpellAbilityId()=='A28Y' and Func0806(GetSpellTargetUnit())==false then
        call Func0954()
    endif
endfunction
