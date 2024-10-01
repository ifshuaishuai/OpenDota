
// 49132 ~ 49153
function Func2076 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEvalCount(loc_trigger01)>10 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A1G5')
        call UnitRemoveAbility(loc_unit02,'A1G3')
        call UnitRemoveAbility(loc_unit02,'A1G6')
        call UnitRemoveAbility(loc_unit02,'A1G4')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0115(loc_unit01,loc_unit02,1,(loc_integer02*4+8)/2)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 49155 ~ 49185
function Func2077 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=integer474
    local unit loc_unit01=unit285
    local unit loc_unit02=GetEnumUnit()
    if loc_integer02==1 then
        call Func0193(loc_unit02,'A1G5')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1G5',false)
    elseif loc_integer02==2 then
        call Func0193(loc_unit02,'A1G3')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1G3',false)
    elseif loc_integer02==3 then
        call Func0193(loc_unit02,'A1G6')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1G6',false)
    elseif loc_integer02==4 then
        call Func0193(loc_unit02,'A1G4')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1G4',false)
    endif
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl",loc_unit02,"chest")))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2076))
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 49187 ~ 49207
function Func2078 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2VO')
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    set integer474=loc_integer02
    set unit285=loc_unit01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,300+25,Condition(function Func0320))
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,300+25,Condition(function Func0297))
    call GroupAddGroup(loc_group02,loc_group01)
    call ForGroup(loc_group01,function Func2077)
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    set loc_trigger01=null
    set loc_group01=null
    set loc_group02=null
endfunction

// 49209 ~ 49217
function Func2079 takes nothing returns boolean
    if GetUnitAbilityLevel(GetTriggerUnit(),'B0GX')>0 and GetUnitAbilityLevel(GetEventDamageSource(),'A2UM')>0 and(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
        call UnitRemoveAbility(GetTriggerUnit(),'B0GX')
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
        call Func2078(GetEventDamageSource(),GetTriggerUnit())
    endif
    return false
endfunction

// 49219 ~ 49229
function Func2080 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit02))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2079))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction
