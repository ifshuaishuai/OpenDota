
// 60118 ~ 60124
function Func2752 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(unit322),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
    call Func0193(loc_unit01,'A0MJ')
    call SetUnitAbilityLevel(loc_unit01,'A0MJ',integer497)
    call IssueTargetOrder(loc_unit01,"forkedlightning",GetEnumUnit())
    set loc_unit01=null
endfunction

// 60126 ~ 60135
function Func2753 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set integer497=loc_integer01
    set unit322=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),700,Condition(function Func0303))
    call ForGroup(loc_group01,function Func2752)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 60137 ~ 60185
function Func2754 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(362)))
    local unit loc_unit01
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer02)
    local integer loc_integer03
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4250))))==1)==false then
            if loc_real01<GetEventDamage()then
                set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
                set loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
                call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
                call SaveBoolean(hashtable001,(GetHandleId(loc_unit02)),(363),(false))
                call Func0021(loc_integer02)
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
                call Func0145(GetTriggerUnit(),loc_real01)
                call Func2753(loc_unit01,GetTriggerUnit(),loc_integer03)
            elseif GetEventDamage()>0 then
                call Func0145(GetTriggerUnit(),GetEventDamage())
                call SaveReal(hashtable001,(loc_integer01),(362),((loc_real01-GetEventDamage())*1.0))
            endif
        endif
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if Func0374(GetSpellAbilityId())==true and GetSpellTargetUnit()==loc_unit02 then
            set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
            set loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
            call SaveBoolean(hashtable001,(GetHandleId(loc_unit02)),(363),(false))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func2753(loc_unit01,loc_unit02,loc_integer03)
        endif
    else
        set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
        set loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit02)),(363),(false))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func2753(loc_unit01,loc_unit02,loc_integer03)
    endif
    set loc_trigger01=null
    return false
endfunction

// 60187 ~ 60223
function Func2755 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,'A0MF')
    local integer loc_integer03=GetHandleId(loc_unit01)
    local real loc_real01
    if(LoadBoolean(hashtable001,(loc_integer03),(363)))==true then
        call TriggerEvaluate((LoadTriggerHandle(hashtable001,(loc_integer03),(364))))
    endif
    call UnitRemoveBuffs(loc_unit01,false,true)
    call Func0371(loc_unit01,0,0)
    if loc_integer02==1 then
        set loc_real01=110
    elseif loc_integer02==2 then
        set loc_real01=140
    elseif loc_integer02==3 then
        set loc_real01=170
    else
        set loc_real01=200
    endif
    call SaveReal(hashtable001,(loc_integer01),(362),((loc_real01)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\Defensive Barrier big.mdx",loc_unit01,"chest")))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2754))
    call SaveTriggerHandle(hashtable001,(loc_integer03),(364),(loc_trigger01))
    call SaveBoolean(hashtable001,(loc_integer03),(363),(true))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 60225 ~ 60230
function Func2756 takes nothing returns boolean
    if GetSpellAbilityId()=='A0MF' then
        call Func2755()
    endif
    return false
endfunction
