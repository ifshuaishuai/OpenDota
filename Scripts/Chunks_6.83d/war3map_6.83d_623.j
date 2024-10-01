
// 70136 ~ 70166
function Func3298 takes integer loc_integer01,unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    if loc_integer01==0 then
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    elseif loc_integer01==1 then
        call Func0193(loc_unit03,'A0TH')
        call SetUnitAbilityLevel(loc_unit03,'A0TH',1)
        call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    elseif loc_integer01==2 then
        call Func0193(loc_unit03,'A0TH')
        call SetUnitAbilityLevel(loc_unit03,'A0TH',1)
        call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    elseif loc_integer01==3 then
        call Func0193(loc_unit03,'A0TH')
        call SetUnitAbilityLevel(loc_unit03,'A0TH',2)
        call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    elseif loc_integer01==4 then
        call Func0193(loc_unit03,'A0TH')
        call SetUnitAbilityLevel(loc_unit03,'A0TH',3)
        call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    elseif loc_integer01==5 then
        call Func0193(loc_unit03,'A0TH')
        call SetUnitAbilityLevel(loc_unit03,'A0TH',4)
        call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    elseif loc_integer01==6 then
        call Func0193(loc_unit03,'A0TH')
        call SetUnitAbilityLevel(loc_unit03,'A0TH',5)
        call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    endif
    set loc_unit03=null
endfunction

// 70168 ~ 70199
function Func3299 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer04)
    local real loc_real01=(10.0+loc_integer02*5.0)/100.0
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        set loc_integer03=loc_integer03+1
        call Func3298(loc_integer03,loc_unit01,loc_unit02)
        if loc_integer03==9 then
            call Func0021(loc_integer04)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        endif
    elseif Func0101(GetEventDamage())and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))and IsUnitType(GetEventDamageSource(),UNIT_TYPE_STRUCTURE)==false then
        if IsUnitType(GetEventDamageSource(),UNIT_TYPE_HERO)or GetUnitAbilityLevel(GetEventDamageSource(),'A04R')==0 then
            call SetUnitState(GetEventDamageSource(),UNIT_STATE_LIFE,GetUnitState(GetEventDamageSource(),UNIT_STATE_LIFE)+GetEventDamage()*loc_real01)
        else
            call SetUnitState(units001[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))],UNIT_STATE_LIFE,GetUnitState(units001[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))],UNIT_STATE_LIFE)+GetEventDamage()*loc_real01)
        endif
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",GetEventDamageSource(),"origin"))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 70201 ~ 70218
function Func3300 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func3298(0,loc_unit01,loc_unit02)
    call SaveInteger(hashtable001,(loc_integer01),(375),(0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A194')))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3299))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 70220 ~ 70225
function Func3301 takes nothing returns boolean
    if GetSpellAbilityId()=='A194' and Func0028(GetSpellTargetUnit())==false then
        call Func3300()
    endif
    return false
endfunction

// 70227 ~ 70233
function Func3302 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3301))
    set loc_trigger01=null
    call Func0132('A0TH')
endfunction
