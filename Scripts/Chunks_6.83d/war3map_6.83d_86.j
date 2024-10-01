
// 21733 ~ 21747
function Func0852 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(134)))
    if GetTriggerEventId()!=EVENT_UNIT_DEATH then
        call UnitRemoveAbility(loc_unit01,'A17R')
        call UnitRemoveAbility(loc_unit01,'A24F')
    endif
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 21749 ~ 21751
function Func0853 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0.5 and IsUnitAlly(GetFilterUnit(),player013)==true and GetOwningPlayer(GetFilterUnit())!=player002 and GetUnitTypeId(GetFilterUnit())!='ncop' and GetUnitTypeId(GetFilterUnit())!='n0FJ' and GetUnitTypeId(GetFilterUnit())!='n0FI' and GetUnitTypeId(GetFilterUnit())!='n0F6' and GetUnitTypeId(GetFilterUnit())!='n0FH'
endfunction

// 21753 ~ 21772
function Func0854 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetEnumUnit()
    local string loc_string01
    call UnitAddAbility(loc_unit01,'A17R')
    call UnitAddAbility(loc_unit01,'A24F')
    if Func0056(player013)then
        set loc_string01="effects\\GlyphSent.mdx"
    else
        set loc_string01="effects\\GlyphScourge.mdx"
    endif
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget(loc_string01,loc_unit01,"origin")))
    call SaveUnitHandle(hashtable001,(loc_integer01),(134),(loc_unit01))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,real203,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0852))
    set loc_trigger01=null
    set loc_unit01=null
endfunction
