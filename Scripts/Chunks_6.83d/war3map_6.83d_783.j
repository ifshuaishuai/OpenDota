
// 81551 ~ 81642
function Func3955 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(588)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(589)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(239)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1RK')
    local group loc_group01
    local unit loc_unit05
    local integer loc_integer03
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call StopSound(sound057,false,false)
        call ShowUnit(loc_unit02,false)
        call ShowUnit(loc_unit04,false)
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
        set loc_unit05=CreateUnit(GetOwningPlayer(GetKillingUnit()),'e00E',0,0,0)
        call UnitRemoveBuffs(loc_unit01,true,true)
        call UnitRemoveAbility(loc_unit01,'Aetl')
        call UnitDamageTarget(loc_unit05,loc_unit01,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
        set loc_unit05=null
    else
        if GetTriggerEvalCount(loc_trigger01)==1 then
            call SetUnitFlyHeight(loc_unit03,0,200)
        elseif GetTriggerEvalCount(loc_trigger01)==2 then
            call PauseUnit(loc_unit03,false)
            call UnitApplyTimedLife(loc_unit03,'BTLF',0.1)
            call StopSound(sound057,false,false)
            call StartSound(sound058)
            call DestroyEffect(AddSpecialEffect("war3mapImported\\FireNova2.mdx",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
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
            call ShowUnit(loc_unit02,false)
            call ShowUnit(loc_unit04,false)
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
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
            set loc_unit05=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
            call Func0193(loc_unit05,'A1ZT')
            call SetUnitAbilityLevel(loc_unit05,'A1ZT',loc_integer02)
            call IssueImmediateOrder(loc_unit05,"stomp")
            set loc_unit05=null
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit04=null
    set loc_unit03=null
    return false
endfunction

// 81644 ~ 81715
function Func3956 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02
    local unit loc_unit03
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'h0CL',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1RK')
    local unit loc_unit05
    local unit loc_unit06=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0BX',loc_real01,loc_real02,0)
    if loc_integer02==1 then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0CV',loc_real01,loc_real02,0)
    elseif loc_integer02==2 then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0CX',loc_real01,loc_real02,0)
    elseif loc_integer02==3 then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0CW',loc_real01,loc_real02,0)
    endif
    call AddSpecialEffectTarget("war3mapImported\\PhoenixDown_2.mdl",loc_unit02,"origin")
    if GetLocalPlayer()==GetOwningPlayer(loc_unit01)then
        call ClearSelection()
        call SelectUnit(loc_unit03,true)
    endif
    call Func0180(loc_real01,loc_real02,400)
    call ShowUnit(loc_unit01,false)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4326)),(1))
    call Func0193(loc_unit01,'A04R')
    call Func0371(loc_unit01,0,0)
    call SetUnitInvulnerable(loc_unit01,true)
    call UnitRemoveBuffs(loc_unit01,true,true)
    call StartSound(sound057)
    call UnitRemoveAbility(loc_unit03,'Arav')
    call UnitApplyTimedLife(loc_unit02,'BTLF',6.1)
    call UnitApplyTimedLife(loc_unit04,'BTLF',6.1)
    call UnitApplyTimedLife(loc_unit03,'BTLF',6.1)
    call TriggerRegisterTimerEvent(loc_trigger01,5.2,false)
    call TriggerRegisterTimerEvent(loc_trigger01,6,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3955))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(588),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(589),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(239),(loc_unit04))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3953))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3954))
    call SaveUnitHandle(hashtable001,(loc_integer01),(589),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit06))
    if Func0379(loc_unit01,'I0A8')then
        call UnitAddAbility(loc_unit06,'A04I')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 81717 ~ 81722
function Func3957 takes nothing returns boolean
    if GetSpellAbilityId()=='A1RK' then
        call Func3956()
    endif
    return false
endfunction

// 81724 ~ 81731
function Func3958 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3957))
    call Func0132('A0X6')
    call Func0132('A1ZT')
    set loc_trigger01=null
endfunction
