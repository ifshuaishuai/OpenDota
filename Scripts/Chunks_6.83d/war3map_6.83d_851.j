
// 88679 ~ 88684
function Func4252 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group039)==false then
        call GroupAddUnit(group039,GetEnumUnit())
        call Func0115(unit408,GetEnumUnit(),3,real397)
    endif
endfunction

// 88686 ~ 88723
function Func4253 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(20)))
    local group loc_group02
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real03
    local real loc_real04
    if GetTriggerEvalCount(loc_trigger01)>67 then
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
    else
        set loc_real03=GetUnitX(loc_unit01)
        set loc_real04=GetUnitY(loc_unit01)
        set loc_group02=Func0030()
        set group039=loc_group01
        set unit124=loc_unit01
        set unit408=loc_unit02
        set real397=loc_real02
        call GroupEnumUnitsInRange(loc_group02,loc_real03,loc_real04,225,Condition(function Func0318))
        call ForGroup(loc_group02,function Func4252)
        call Func0029(loc_group02)
        call SetUnitX(loc_unit01,Func0126(loc_real03+15*Cos(loc_real01*bj_DEGTORAD)))
        call SetUnitY(loc_unit01,Func0129(loc_real04+15*Sin(loc_real01*bj_DEGTORAD)))
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_group02=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 88725 ~ 88748
function Func4254 takes unit loc_unit01,real loc_real01,real loc_real02,real loc_real03 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local real loc_real06=loc_real02
    local real loc_real07=loc_real03
    local real loc_real08=Func0169(loc_real04,loc_real05,loc_real06,loc_real07)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2AA')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0DI',loc_real04,loc_real05,loc_real08)
    call SetUnitScale(loc_unit02,1.5,1.5,1.5)
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real08)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.015,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4253))
    set loc_trigger01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 88750 ~ 88794
function Func4255 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(95)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AB',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AA',true)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if loc_boolean01==false and GetEventDamage()>2 and GetEventDamage()<3000 and IsUnitIllusion(loc_unit02)==false then
            call SaveReal(hashtable001,(loc_integer01),(20),(((LoadReal(hashtable001,(loc_integer01),(20)))+GetEventDamage())*1.0))
            call Func0145(loc_unit02,GetEventDamage())
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
        if GetSpellAbilityId()=='A2AA' then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call SaveBoolean(hashtable001,(loc_integer01),(95),(true))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A2AB' then
            call Func4254(loc_unit01,(LoadReal(hashtable001,(loc_integer01),(20))),GetSpellTargetX(),GetSpellTargetY())
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AB',false)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AA',true)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AB',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AA',true)
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

// 88796 ~ 88818
function Func4256 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0193(loc_unit01,'A2AB')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AB',true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2AA',false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,20,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4255))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveBoolean(hashtable001,(loc_integer01),(95),(false))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("war3mapImported\\WispShellBlue_2.mdx",loc_unit01,"origin")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("war3mapImported\\DivineWrathTarget.mdx",loc_unit02,"origin")))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 88820 ~ 88825
function Func4257 takes nothing returns boolean
    if GetSpellAbilityId()=='A2AA' then
        call Func4256()
    endif
    return false
endfunction

// 88827 ~ 88832
function Func4258 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4257))
    set loc_trigger01=null
endfunction
