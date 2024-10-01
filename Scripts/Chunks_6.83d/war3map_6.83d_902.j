
// 92395 ~ 92427
function Func4464 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01
    local real loc_real02
    local real loc_real03
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit02)
    else
        set loc_real03=Func0169(GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        set loc_real01=GetUnitX(loc_unit02)+20*Cos(loc_real03*bj_DEGTORAD)
        set loc_real02=GetUnitY(loc_unit02)+20*Sin(loc_real03*bj_DEGTORAD)
        call SetUnitX(loc_unit02,loc_real01)
        call SetUnitY(loc_unit02,loc_real02)
        call SetUnitFacing(loc_unit02,loc_real03)
        if Func0147(loc_unit02,loc_unit01)<30 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func0115(loc_unit02,loc_unit01,1,100+50*loc_integer02)
            call KillUnit(loc_unit02)
            call SetUnitAnimationByIndex(loc_unit02,3)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 92429 ~ 92442
function Func4465 takes integer loc_integer01,unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SetUnitAnimationByIndex(loc_unit01,2)
    call SetUnitVertexColor(loc_unit01,255,255,255,150)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4464))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(45),(loc_unit01))
    call SetUnitAnimationByIndex(loc_unit01,2)
    set loc_trigger01=null
endfunction

// 92444 ~ 92472
function Func4466 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local group loc_group01
    local unit loc_unit02
    if GetTriggerEvalCount(loc_trigger01)>real408/0.05 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
    else
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),375+25,Condition(function Func0313))
        set loc_unit02=Func0253(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call Func0029(loc_group01)
        if loc_unit02!=null then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func4465(loc_integer02,loc_unit01,loc_unit02)
        endif
        set loc_group01=null
        set loc_unit02=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 92474 ~ 92491
function Func4467 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4466))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit01))
    call SetUnitAnimationByIndex(loc_unit01,1)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 92493 ~ 92509
function Func4468 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0EG',loc_real01,loc_real02,270)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2LL')
    call SetUnitAnimationByIndex(loc_unit02,0)
    call TriggerRegisterTimerEvent(loc_trigger01,3,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4467))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 92511 ~ 92516
function Func4469 takes nothing returns boolean
    if GetSpellAbilityId()=='A2LL' then
        call Func4468()
    endif
    return false
endfunction

// 92518 ~ 92523
function Func4470 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4469))
    set loc_trigger01=null
endfunction
