
// 51935 ~ 51941
function Func2246 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group010)==false then
        call GroupAddUnit(group010,GetEnumUnit())
        call SetUnitOwner(unit291,GetOwningPlayer(GetEnumUnit()),false)
        call IssueTargetOrder(unit291,"sleep",GetEnumUnit())
    endif
endfunction

// 51943 ~ 51988
function Func2247 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local group loc_group01
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    if GetTriggerEvalCount(loc_trigger01)==10 then
        call Func0193(loc_unit01,'A24E')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A07U',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A24E',true)
    endif
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetTriggerEvalCount(loc_trigger01)>140 or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A24E')then
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A07U' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A07U',true)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A24E',false)
        call ForGroup(loc_group02,function Func2245)
        call Func0029(loc_group02)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit290=loc_unit01
        set unit291=loc_unit02
        set group010=loc_group02
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1250+25,Condition(function Func0294))
        call ForGroup(loc_group01,function Func2246)
        set group011=loc_group01
        set group012=Func0030()
        call ForGroup(loc_group02,function Func2244)
        call GroupRemoveGroup(group012,loc_group02)
        call Func0029(loc_group01)
        call Func0029(group012)
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    set loc_group02=null
    set loc_unit02=null
    return false
endfunction

// 51990 ~ 52008
function Func2248 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call UnitAddAbility(loc_unit02,'A07T')
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2247))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\SongOfTheSiren_2.mdx",loc_unit01,"origin")))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 52010 ~ 52015
function Func2249 takes nothing returns boolean
    if GetSpellAbilityId()=='A07U' then
        call Func2248()
    endif
    return false
endfunction

// 52017 ~ 52022
function Func2250 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2249))
    set loc_trigger01=null
endfunction
