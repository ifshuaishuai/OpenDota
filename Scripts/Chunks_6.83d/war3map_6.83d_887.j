
// 91305 ~ 91315
function Func4402 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    if IsUnitInGroup(loc_unit01,group043)==false then
        call GroupAddUnit(group043,loc_unit01)
        call TriggerRegisterUnitEvent(trigger071,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
        call TriggerRegisterUnitEvent(trigger071,loc_unit01,EVENT_UNIT_ISSUED_POINT_ORDER)
        call TriggerRegisterUnitEvent(trigger071,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4328)),(1))
    endif
    set loc_unit01=null
endfunction

// 91317 ~ 91363
function Func4403 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local group loc_group02
    if GetTriggerEventId()!=EVENT_UNIT_ISSUED_TARGET_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_POINT_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_TARGET_ORDER then
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        set group043=loc_group01
        set trigger071=loc_trigger01
        set loc_group02=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit02),GetUnitY(loc_unit02),350+25,Condition(function Func0305))
        call GroupRemoveUnit(loc_group02,loc_unit02)
        call ForGroup(loc_group02,function Func4402)
        call Func0029(loc_group02)
        if loc_integer03==(2.25+0.25*loc_integer02)*20 or Func0194(loc_unit02)then
            call ForGroup(loc_group01,function Func4401)
            call Func0029(loc_group01)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            set trigger071=loc_trigger01
            set unit415=loc_unit02
            call ForGroup(loc_group01,function Func4400)
            if ModuloInteger(loc_integer03,20)==0 or loc_integer03==0 then
            endif
        endif
    else
        if UnitIsSleeping(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'B008')==0 and GetIssuedOrderId()!=851973 and boolean145==false then
            call DisableTrigger(loc_trigger01)
            call ClearSelectionForPlayer(GetOwningPlayer(GetTriggerUnit()))
            call IssueTargetOrder(GetTriggerUnit(),"attack",loc_unit02)
            call EnableTrigger(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 91365 ~ 91387
function Func4404 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0Z0')
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitAddAbility(loc_unit03,'A2NJ')
    call SetUnitAbilityLevel(loc_unit03,'A2NJ',loc_integer02)
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    set unit416=loc_unit01
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(Func0030()))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\WintersCurse.mdx",loc_unit02,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffect("war3mapImported\\WintersCurseAoE.mdx",GetUnitX(loc_unit02),GetUnitY(loc_unit02))))
    call TriggerAddCondition(loc_trigger01,Condition(function Func4403))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 91389 ~ 91394
function Func4405 takes nothing returns boolean
    if GetSpellAbilityId()=='A0Z0' and Func0028(GetSpellTargetUnit())==false then
        call Func4404()
    endif
    return false
endfunction

// 91396 ~ 91401
function Func4406 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4405))
    set loc_trigger01=null
endfunction
