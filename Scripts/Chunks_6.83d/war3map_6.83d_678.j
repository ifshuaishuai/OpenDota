
// 73524 ~ 73530
function Func3503 takes unit loc_unit01,unit loc_unit02 returns nothing
    local real loc_real01=10+20*integer520
    local real loc_real02=80+50*integer520
    local real loc_real03=(loc_real01+loc_real02*real356/700)*0.5
    call Func0115(loc_unit01,loc_unit02,1,loc_real03)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\ChimaeraLightningMissile\\ChimaeraLightningMissile.mdl",loc_unit02,"chest"))
endfunction

// 73532 ~ 73543
function Func3504 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local group loc_group01=group026
    local unit loc_unit02=unit357
    if IsUnitInGroup(loc_unit01,loc_group01)==false then
        call GroupAddUnit(loc_group01,loc_unit01)
        call Func3503(loc_unit02,loc_unit01)
    endif
    set loc_unit01=null
    set loc_group01=null
    set loc_unit02=null
endfunction

// 73545 ~ 73609
function Func3505 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local effect loc_effect01
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03
    local real loc_real04=GetUnitY(loc_unit01)
    local integer loc_integer03
    local integer loc_integer04
    local group loc_group02=Func0030()
    call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
    call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    set group026=loc_group01
    set unit357=loc_unit01
    set integer520=GetUnitAbilityLevel(loc_unit01,'A1E7')
    if loc_integer02>20 then
        set loc_integer04=21*36+(20-loc_integer02)*36
        set real356=loc_integer04
        set loc_integer03=0
        loop
            exitwhen loc_integer03>36
            set loc_real01=loc_real02+loc_integer04*Cos(360*loc_integer03/36*bj_DEGTORAD)
            set loc_real03=loc_real04+loc_integer04*Sin(360*loc_integer03/36*bj_DEGTORAD)
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real03,100,Condition(function Func0318))
            call ForGroup(loc_group02,function Func3504)
            set loc_integer03=loc_integer03+1
        endloop
    else
        set loc_integer04=loc_integer02*36
        set real356=loc_integer04
        set loc_integer03=0
        loop
            exitwhen loc_integer03>36
            set loc_real01=loc_real02+loc_integer04*Cos(360*loc_integer03/36*bj_DEGTORAD)
            set loc_real03=loc_real04+loc_integer04*Sin(360*loc_integer03/36*bj_DEGTORAD)
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real03,100,Condition(function Func0318))
            call ForGroup(loc_group02,function Func3504)
            set loc_integer03=loc_integer03+1
        endloop
    endif
    call Func0029(loc_group02)
    if loc_integer02==40 then
        call KillUnit(loc_unit02)
        call Func0029(loc_group01)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif loc_integer02==20 then
        call GroupClear(loc_group01)
        set loc_effect01=null
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_group01=null
    set loc_unit01=null
    set loc_group02=null
    return false
endfunction

// 73611 ~ 73630
function Func3506 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h092',loc_real01,loc_real02,0)
    local integer loc_integer01=0
    local integer loc_integer02=36
    local group loc_group01=Func0030()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    call SaveEffectHandle(hashtable001,(loc_integer03),(32),(AddSpecialEffectTarget("effects\\Lightning_Ball_Tail_FX.mdx",loc_unit01,"origin")))
    call SaveGroupHandle(hashtable001,(loc_integer03),(133),(loc_group01))
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer03),(19),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.06,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3505))
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
endfunction

// 73632 ~ 73637
function Func3507 takes nothing returns boolean
    if GetSpellAbilityId()=='A1E7' then
        call Func3506()
    endif
    return false
endfunction

// 73639 ~ 73644
function Func3508 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3507))
    set loc_trigger01=null
endfunction
