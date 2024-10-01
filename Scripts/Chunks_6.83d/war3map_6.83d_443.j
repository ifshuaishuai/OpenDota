
// 57396 ~ 57399
function Func2575 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    call Func0255('A2KK')
endfunction

// 57401 ~ 57424
function Func2576 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(375)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer03
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit01 and GetEventDamage()>20 then
            set loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(674)))
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4297))))==1)==false then
                call Func0044(loc_unit01,4297,0.1)
                call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(674),(loc_integer03+1))
            endif
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 57426 ~ 57464
function Func2577 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local trigger loc_trigger02
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(674)))
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and loc_integer02<6 then
        if GetAttacker()==loc_unit01 and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4297))))==1)==false then
            set loc_trigger02=CreateTrigger()
            call TriggerRegisterUnitEvent(loc_trigger02,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
            call TriggerRegisterTimerEvent(loc_trigger02,1,false)
            call TriggerAddCondition(loc_trigger02,Condition(function Func2576))
            call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger02)),(2),(loc_unit01))
        endif
    endif
    if loc_integer02>5 then
        call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(674),(0))
        call UnitRemoveAbility(loc_unit01,'A1W1')
        if(LoadInteger(hashtable001,(loc_integer01),(34)))==1 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED then
        call SaveInteger(hashtable001,(loc_integer01),(34),(1))
        if loc_integer02>5 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
        call UnitRemoveAbility(loc_unit01,'A1VG')
        if(Func0394((loc_unit01),integers089[integer367])!=null)then
            call Func0193(loc_unit01,'A1VH')
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1VH',true)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 57466 ~ 57480
function Func2578 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEvalCount(loc_trigger01)==1 then
        call SetUnitTimeScalePercent(loc_unit01,250)
    else
        call SetUnitTimeScalePercent(loc_unit01,100)
        call SetUnitAnimationByIndex(loc_unit01,12)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 57482 ~ 57512
function Func2579 takes nothing returns boolean
    local trigger loc_trigger01
    if GetSpellAbilityId()=='A1VH' then
        call Func0044(GetTriggerUnit(),4296,29.9)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1VH',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1VG',true)
        call Func0193(GetTriggerUnit(),'A1VG')
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1W1',false)
        call Func0193(GetTriggerUnit(),'A1W1')
        call IssueTargetOrder(GetTriggerUnit(),"grabtree",GetSpellTargetDestructable())
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,30,false)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2577))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(GetTriggerUnit()))
        call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(34),(0))
        call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(674),(0))
        set loc_trigger01=null
    elseif GetSpellAbilityId()=='A2KA' then
        call RemoveDestructable(GetSpellTargetDestructable())
        call ShowUnit(GetTriggerUnit(),false)
        call ShowUnit(GetTriggerUnit(),true)
        call UnitRemoveAbility(GetTriggerUnit(),'Aloc')
        call UnitAddAbility(GetTriggerUnit(),'A2KB')
        call UnitRemoveAbility(GetTriggerUnit(),'A2KB')
        call UnitAddAbility(GetTriggerUnit(),'A2KC')
        call UnitRemoveAbility(GetTriggerUnit(),'A2KC')
        call AddUnitAnimationProperties(GetTriggerUnit(),"upgrade",false)
    endif
    return false
endfunction

// 57514 ~ 57531
function Func2580 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if(Func0394((loc_unit01),integers089[integer367])!=null)then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4296))))==1)==false then
            if GetUnitAbilityLevel(loc_unit01,'A1VH')==0 and GetUnitAbilityLevel(loc_unit01,'A1VG')==0 then
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1VH',true)
                call Func0193(loc_unit01,'A1VH')
            endif
        endif
    else
        call UnitRemoveAbility(loc_unit01,'A1VH')
        call UnitRemoveAbility(loc_unit01,'A1VG')
    endif
    set loc_trigger01=null
    return false
endfunction

// 57533 ~ 57542
function Func2581 takes nothing returns nothing
    local unit loc_unit01=unit128
    local unit loc_unit02=unit129
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(297)))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit02)),(297),(loc_unit03))
    call SetUnitOwner(loc_unit03,GetOwningPlayer(loc_unit02),true)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 57544 ~ 57550
function Func2582 takes nothing returns nothing
    local unit loc_unit01=unit127
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(297)))
    if loc_unit02!=null and GetUnitTypeId(loc_unit02)=='e01V' then
        call RemoveUnit(loc_unit02)
    endif
endfunction

// 57552 ~ 57554
function Func2583 takes nothing returns boolean
    return GetLearnedSkill()=='A0CY' and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 57556 ~ 57562
function Func2584 takes nothing returns nothing
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(298)))
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0CY')
    if GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        call SetUnitScale(loc_unit01,0.5+0.25*loc_integer01,0.5+0.25*loc_integer01,0.5+0.25*loc_integer01)
    endif
endfunction
