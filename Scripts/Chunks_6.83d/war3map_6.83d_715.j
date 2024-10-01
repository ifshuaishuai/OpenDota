
// 76145 ~ 76185
function Func3661 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>(4*(4+loc_integer02))or Func0098(loc_unit02)or Func0147(loc_unit01,loc_unit02)>700 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit03)
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetTriggerEvalCount(loc_trigger01)>1 and GetSpellAbilityId()=='A1RA' then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call UnitRemoveAbility(loc_unit01,'A1RA')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1PH',true)
            call KillUnit(loc_unit03)
        endif
    elseif IsUnitVisible(loc_unit02,GetOwningPlayer(loc_unit01))==false then
        if(LoadInteger(hashtable001,(loc_integer01),(34)))==1 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call KillUnit(loc_unit03)
        else
            call SaveInteger(hashtable001,(loc_integer01),(34),(1))
        endif
    else
        call SaveInteger(hashtable001,(loc_integer01),(34),(0))
        if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false then
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_integer02*25.0/4.0)
        else
            call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_integer02*50.0/4.0)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction
