
// 81806 ~ 81928
function Func3962 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(588)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(589)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(239)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2YR')
    local group loc_group01
    local unit loc_unit06
    local integer loc_integer03
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call StopSound(sound057,false,false)
        call ShowUnit(loc_unit03,false)
        call ShowUnit(loc_unit05,false)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call ShowUnit(loc_unit01,true)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4326)),(2))
        call UnitRemoveAbility(loc_unit01,'A04R')
        call SetUnitInvulnerable(loc_unit01,false)
        call PauseUnit(loc_unit01,false)
        if GetLocalPlayer()==GetOwningPlayer(loc_unit01)then
            call ClearSelection()
            call SelectUnit(loc_unit01,true)
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,1)
        set loc_unit06=CreateUnit(GetOwningPlayer(GetKillingUnit()),'e00E',0,0,0)
        call UnitRemoveBuffs(loc_unit01,true,true)
        call UnitRemoveAbility(loc_unit01,'Aetl')
        call UnitDamageTarget(loc_unit06,loc_unit01,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
        if loc_unit02!=null then
            call ShowUnit(loc_unit02,true)
            call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4326)),(2))
            call UnitRemoveAbility(loc_unit02,'A04R')
            call SetUnitInvulnerable(loc_unit02,false)
            call PauseUnit(loc_unit02,false)
            if GetLocalPlayer()==GetOwningPlayer(loc_unit02)then
                call ClearSelection()
                call SelectUnit(loc_unit02,true)
            endif
            call SetUnitState(loc_unit02,UNIT_STATE_LIFE,1)
            set loc_unit06=CreateUnit(GetOwningPlayer(GetKillingUnit()),'e00E',0,0,0)
            call UnitRemoveBuffs(loc_unit02,true,true)
            call UnitRemoveAbility(loc_unit02,'Aetl')
            call UnitDamageTarget(loc_unit06,loc_unit02,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
        endif
        set loc_unit06=null
    else
        if GetTriggerEvalCount(loc_trigger01)==1 then
            call SetUnitFlyHeight(loc_unit04,0,200)
        elseif GetTriggerEvalCount(loc_trigger01)==2 then
            call PauseUnit(loc_unit04,false)
            call UnitApplyTimedLife(loc_unit04,'BTLF',0.1)
            call StopSound(sound057,false,false)
            call StartSound(sound058)
            call DestroyEffect(AddSpecialEffect("war3mapImported\\FireNova2.mdx",GetUnitX(loc_unit03),GetUnitY(loc_unit03)))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call ShowUnit(loc_unit01,true)
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4326)),(2))
            call UnitRemoveAbility(loc_unit01,'A04R')
            call SetUnitInvulnerable(loc_unit01,false)
            call SetUnitAnimationByIndex(loc_unit01,8)
            call QueueUnitAnimation(loc_unit01,"idle")
            call PauseUnit(loc_unit01,false)
            if GetLocalPlayer()==GetOwningPlayer(loc_unit01)then
                call ClearSelection()
                call SelectUnit(loc_unit01,true)
            endif
            call ShowUnit(loc_unit03,false)
            call ShowUnit(loc_unit05,false)
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
            if loc_unit02!=null then
                call ShowUnit(loc_unit02,true)
                call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4326)),(2))
                call UnitRemoveAbility(loc_unit02,'A04R')
                call SetUnitInvulnerable(loc_unit02,false)
                call PauseUnit(loc_unit02,false)
                if GetLocalPlayer()==GetOwningPlayer(loc_unit02)then
                    call ClearSelection()
                    call SelectUnit(loc_unit02,true)
                endif
                call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE))
                call SetUnitState(loc_unit02,UNIT_STATE_MANA,GetUnitState(loc_unit02,UNIT_STATE_MAX_MANA))
            endif
            set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1RJ')
            if loc_integer03>0 then
                call UnitRemoveAbility(loc_unit01,'A1RJ')
                call UnitAddAbility(loc_unit01,'A1RJ')
                call SetUnitAbilityLevel(loc_unit01,'A1RJ',loc_integer03)
            endif
            set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1YX')
            if loc_integer03>0 then
                call UnitRemoveAbility(loc_unit01,'A1YX')
                call UnitAddAbility(loc_unit01,'A1YX')
                call SetUnitAbilityLevel(loc_unit01,'A1YX',loc_integer03)
            endif
            set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1YY')
            if loc_integer03>0 then
                call UnitRemoveAbility(loc_unit01,'A1YY')
                call UnitAddAbility(loc_unit01,'A1YY')
                call SetUnitAbilityLevel(loc_unit01,'A1YY',loc_integer03)
            endif
            set loc_unit06=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
            call Func0193(loc_unit06,'A1ZT')
            call SetUnitAbilityLevel(loc_unit06,'A1ZT',loc_integer02)
            call IssueImmediateOrder(loc_unit06,"stomp")
            set loc_unit06=null
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit05=null
    set loc_unit04=null
    return false
endfunction

// 81930 ~ 82016
function Func3963 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit03
    local unit loc_unit04
    local unit loc_unit05=CreateUnit(GetOwningPlayer(loc_unit01),'h0CL',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2YR')
    local unit loc_unit06
    local unit loc_unit07=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    if loc_unit02==loc_unit01 then
        set loc_unit02=null
    endif
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0BX',loc_real01,loc_real02,0)
    if loc_integer02==1 then
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'h0CV',loc_real01,loc_real02,0)
    elseif loc_integer02==2 then
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'h0CX',loc_real01,loc_real02,0)
    elseif loc_integer02==3 then
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'h0CW',loc_real01,loc_real02,0)
    endif
    call AddSpecialEffectTarget("war3mapImported\\PhoenixDown_2.mdl",loc_unit03,"origin")
    if GetLocalPlayer()==GetOwningPlayer(loc_unit01)then
        call ClearSelection()
        call SelectUnit(loc_unit04,true)
    endif
    call Func0180(loc_real01,loc_real02,400)
    call ShowUnit(loc_unit01,false)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4326)),(1))
    call Func0193(loc_unit01,'A04R')
    call Func0371(loc_unit01,0,0)
    call SetUnitInvulnerable(loc_unit01,true)
    call UnitRemoveBuffs(loc_unit01,true,true)
    if loc_unit02!=null then
        call ShowUnit(loc_unit02,false)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4326)),(1))
        call Func0193(loc_unit02,'A04R')
        call Func0371(loc_unit02,0,0)
        call SetUnitInvulnerable(loc_unit02,true)
        call UnitRemoveBuffs(loc_unit02,true,true)
    endif
    call StartSound(sound057)
    call UnitRemoveAbility(loc_unit04,'Arav')
    call UnitApplyTimedLife(loc_unit03,'BTLF',6.1)
    call UnitApplyTimedLife(loc_unit05,'BTLF',6.1)
    call UnitApplyTimedLife(loc_unit04,'BTLF',6.1)
    call TriggerRegisterTimerEvent(loc_trigger01,5.2,false)
    call TriggerRegisterTimerEvent(loc_trigger01,6,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3962))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit04,EVENT_UNIT_DEATH)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(588),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(589),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(239),(loc_unit05))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit04,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3960))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit04,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit04,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3961))
    call SaveUnitHandle(hashtable001,(loc_integer01),(589),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit07))
    if Func0379(loc_unit01,'I0A8')then
        call UnitAddAbility(loc_unit07,'A04I')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
endfunction

// 82018 ~ 82023
function Func3964 takes nothing returns boolean
    if GetSpellAbilityId()=='A2YR' then
        call Func3963()
    endif
    return false
endfunction

// 82025 ~ 82032
function Func3965 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3964))
    call Func0132('A0X6')
    call Func0132('A1ZT')
    set loc_trigger01=null
endfunction
