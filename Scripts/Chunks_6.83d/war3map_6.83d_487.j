
// 60394 ~ 60396
function Func2768 takes nothing returns boolean
    return GetUnitAbilityLevel(GetTriggerUnit(),('B066'))>0 or GetUnitAbilityLevel(GetAttacker(),('A0MG'))>0
endfunction

// 60398 ~ 60414
function Func2769 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local unit loc_unit03
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,('A0MG'))
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    if loc_integer01>0 then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(203),(loc_integer01))
    else
        set loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(203)))
    endif
    if IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01))==true then
        call Func0193(loc_unit04,('A0MH'))
        call SetUnitAbilityLevel(loc_unit04,('A0MH'),loc_integer01)
        call IssueTargetOrder(loc_unit04,"bloodlust",loc_unit01)
    endif
endfunction

// 60416 ~ 60421
function Func2770 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2768))
    call TriggerAddAction(loc_trigger01,function Func2769)
endfunction

// 60423 ~ 60481
function Func2771 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real01
    local integer loc_integer04
    local unit loc_unit03
    if loc_integer02==1 then
        set loc_real01=16
        set loc_integer04=10
    elseif loc_integer02==2 then
        set loc_real01=24
        set loc_integer04=10
    elseif loc_integer02==3 then
        set loc_real01=32
        set loc_integer04=10
    elseif loc_integer02==4 then
        set loc_real01=40
        set loc_integer04=10
    endif
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetTriggerEvalCount(loc_trigger01)>1 and GetSpellAbilityId()=='A0S1' and Func0028(GetSpellTargetUnit())==false and loc_unit02==GetSpellTargetUnit()then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_DEATH then
        set loc_unit03=GetKillingUnit()
        if Func0099(loc_unit03)then
            set loc_unit03=(units001[GetPlayerId(GetOwningPlayer((loc_unit03)))])
        endif
        if GetTriggerUnit()==loc_unit02 or loc_unit03==loc_unit02 then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call UnitRemoveAbility(loc_unit02,'A1W3')
            call UnitRemoveAbility(loc_unit02,'B0DO')
        endif
    else
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        if loc_integer03==loc_integer04 or GetUnitAbilityLevel(loc_unit02,'B0DO')==0 or Func0098(loc_unit02)==true then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call UnitRemoveAbility(loc_unit02,'A1W3')
            call UnitRemoveAbility(loc_unit02,'B0DO')
        endif
        call Func0115(loc_unit01,loc_unit02,1,loc_real01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 60483 ~ 60507
function Func2772 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0S1')
    local real loc_real01
    local real loc_real02
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Demon\\ReviveDemon\\ReviveDemon.mdl",loc_unit02,"overhead"))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1W3',false)
    call Func0193(loc_unit02,'A1W3')
    call UnitMakeAbilityPermanent(loc_unit02,true,'A1W2')
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2771))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\SoulBurn\\SoulBurnbuff.mdl",loc_unit02,"overhead")))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 60509 ~ 60513
function Func2773 takes nothing returns nothing
    if GetUnitAbilityLevel(GetEnumUnit(),'B0DO')>0 then
        set integer498=integer498+1
    endif
endfunction

// 60515 ~ 60605
function Func2774 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set integer498=0
    call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func0305))
    call ForGroup(loc_group01,function Func2773)
    call Func0029(loc_group01)
    if integer498==0 then
        if GetUnitAbilityLevel(loc_unit01,'B0EZ')>0 then
            call UnitRemoveAbility(loc_unit01,'A2AR')
            call UnitRemoveAbility(loc_unit01,'A2AS')
            call UnitRemoveAbility(loc_unit01,'A2AU')
            call UnitRemoveAbility(loc_unit01,'A2AT')
            call UnitRemoveAbility(loc_unit01,'A2AQ')
            call UnitRemoveAbility(loc_unit01,'A2AP')
            call UnitRemoveAbility(loc_unit01,'B0EZ')
        endif
    elseif integer498==1 then
        if GetUnitAbilityLevel(loc_unit01,'A2AR')==0 then
            call UnitRemoveAbility(loc_unit01,'A2AR')
            call UnitRemoveAbility(loc_unit01,'A2AS')
            call UnitRemoveAbility(loc_unit01,'A2AU')
            call UnitRemoveAbility(loc_unit01,'A2AT')
            call UnitRemoveAbility(loc_unit01,'A2AQ')
            call UnitRemoveAbility(loc_unit01,'A2AP')
            call UnitRemoveAbility(loc_unit01,'B0EZ')
            call UnitAddAbility(loc_unit01,'A2AR')
        endif
    elseif integer498==2 then
        if GetUnitAbilityLevel(loc_unit01,'A2AS')==0 then
            call UnitRemoveAbility(loc_unit01,'A2AR')
            call UnitRemoveAbility(loc_unit01,'A2AS')
            call UnitRemoveAbility(loc_unit01,'A2AU')
            call UnitRemoveAbility(loc_unit01,'A2AT')
            call UnitRemoveAbility(loc_unit01,'A2AQ')
            call UnitRemoveAbility(loc_unit01,'A2AP')
            call UnitRemoveAbility(loc_unit01,'B0EZ')
            call UnitAddAbility(loc_unit01,'A2AS')
        endif
    elseif integer498==3 then
        if GetUnitAbilityLevel(loc_unit01,'A2AU')==0 then
            call UnitRemoveAbility(loc_unit01,'A2AR')
            call UnitRemoveAbility(loc_unit01,'A2AS')
            call UnitRemoveAbility(loc_unit01,'A2AU')
            call UnitRemoveAbility(loc_unit01,'A2AT')
            call UnitRemoveAbility(loc_unit01,'A2AQ')
            call UnitRemoveAbility(loc_unit01,'A2AP')
            call UnitRemoveAbility(loc_unit01,'B0EZ')
            call UnitAddAbility(loc_unit01,'A2AU')
        endif
    elseif integer498==4 then
        if GetUnitAbilityLevel(loc_unit01,'A2AT')==0 then
            call UnitRemoveAbility(loc_unit01,'A2AR')
            call UnitRemoveAbility(loc_unit01,'A2AS')
            call UnitRemoveAbility(loc_unit01,'A2AU')
            call UnitRemoveAbility(loc_unit01,'A2AT')
            call UnitRemoveAbility(loc_unit01,'A2AQ')
            call UnitRemoveAbility(loc_unit01,'A2AP')
            call UnitRemoveAbility(loc_unit01,'B0EZ')
            call UnitAddAbility(loc_unit01,'A2AT')
        endif
    elseif integer498==5 then
        if GetUnitAbilityLevel(loc_unit01,'A2AQ')==0 then
            call UnitRemoveAbility(loc_unit01,'A2AR')
            call UnitRemoveAbility(loc_unit01,'A2AS')
            call UnitRemoveAbility(loc_unit01,'A2AU')
            call UnitRemoveAbility(loc_unit01,'A2AT')
            call UnitRemoveAbility(loc_unit01,'A2AQ')
            call UnitRemoveAbility(loc_unit01,'A2AP')
            call UnitRemoveAbility(loc_unit01,'B0EZ')
            call UnitAddAbility(loc_unit01,'A2AQ')
        endif
    elseif integer498>=6 then
        if GetUnitAbilityLevel(loc_unit01,'A2AP')==0 then
            call UnitRemoveAbility(loc_unit01,'A2AR')
            call UnitRemoveAbility(loc_unit01,'A2AS')
            call UnitRemoveAbility(loc_unit01,'A2AU')
            call UnitRemoveAbility(loc_unit01,'A2AT')
            call UnitRemoveAbility(loc_unit01,'A2AQ')
            call UnitRemoveAbility(loc_unit01,'A2AP')
            call UnitRemoveAbility(loc_unit01,'B0EZ')
            call UnitAddAbility(loc_unit01,'A2AP')
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 60607 ~ 60612
function Func2775 takes nothing returns boolean
    if GetSpellAbilityId()=='A0S1' and Func0028(GetSpellTargetUnit())==false then
        call Func2772()
    endif
    return false
endfunction
