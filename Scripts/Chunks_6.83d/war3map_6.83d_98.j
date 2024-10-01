
// 22270 ~ 22282
function Func0886 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and(Func0884(GetUnitTypeId(GetEventDamageSource()))==false and(GetOwningPlayer(GetEventDamageSource())!=player001 or GetUnitTypeId(GetEventDamageSource())=='n00L')and GetEventDamage()>0)or boolean073==true)then
        call UnitRemoveAbility(loc_unit01,'B0CG')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 22284 ~ 22336
function Func0887 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03
    local integer loc_integer02=0
    local boolean loc_boolean01=false
    local boolean loc_boolean02=false
    local integer loc_integer03
    if loc_unit02==null then
        set loc_unit02=GetTriggerUnit()
    endif
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    loop
        exitwhen loc_integer02>5 or loc_boolean02
        if Func0399(UnitItemInSlot(loc_unit01,loc_integer02))==integer251 then
            set loc_integer03=GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer02))
            if loc_integer03>0 then
                set loc_boolean01=true
                set loc_integer03=loc_integer03-1
            else
                set loc_boolean02=true
                set loc_boolean01=false
            endif
        endif
        set loc_integer02=loc_integer02+1
    endloop
    if loc_boolean01==true then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==true then
            call UnitAddAbility(loc_unit03,'A1MM')
            call IssueTargetOrderById(loc_unit03,852609,loc_unit02)
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
            call TriggerRegisterTimerEvent(loc_trigger01,real205,false)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
            call TriggerAddCondition(loc_trigger01,Condition(function Func0886))
        else
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\Urn_Enemy.mdx",loc_unit02,"overhead")))
            call TriggerRegisterTimerEvent(loc_trigger01,1,true)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
            call TriggerAddCondition(loc_trigger01,Condition(function Func0885))
        endif
    endif
    set loc_unit01=null
    set loc_unit03=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 22338 ~ 22342
function Func0888 takes nothing returns nothing
    if GetSpellAbilityId()=='A1MO' then
        call Func0887()
    endif
endfunction
