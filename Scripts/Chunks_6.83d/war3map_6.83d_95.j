
// 22079 ~ 22091
function Func0873 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEvalCount(loc_trigger01)>40 or GetTriggerEventId()==EVENT_UNIT_DEATH or Func0098(loc_unit01)or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4256))))==1)then
        call UnitRemoveAbility(loc_unit01,'Aetl')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 22093 ~ 22110
function Func0874 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    if Func0096(loc_unit01)==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call UnitAddAbility(loc_unit01,'Aetl')
        call UnitMakeAbilityPermanent(loc_unit01,true,'Aetl')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'Aetl',false)
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0873))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    endif
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 22112 ~ 22116
function Func0875 takes nothing returns nothing
    if GetSpellAbilityId()=='A1AC' and Func0098(GetTriggerUnit())==false then
        call Func0874()
    endif
endfunction
