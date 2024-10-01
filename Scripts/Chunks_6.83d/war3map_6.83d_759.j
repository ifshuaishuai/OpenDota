
// 79433 ~ 79466
function Func3853 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0NO')
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(392)))
    local real loc_real02=0
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if loc_integer03==4 or loc_integer03==8 or loc_integer03==12 then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            if loc_integer03==12 then
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            elseif loc_integer03==4 or loc_integer03==8 then
                call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("effects\\NetherInferno.mdx",loc_unit02,"origin")))
            endif
            set loc_real02=(0.08+loc_integer02*0.08)*Func0142(loc_real01-GetUnitState(loc_unit02,UNIT_STATE_LIFE),0)
            if loc_real02>0 then
                call Func0173("+"+I2S(R2I(loc_real02)),2,loc_unit02,0.023,68,0,187,216)
            endif
        endif
        call Func0115(loc_unit01,loc_unit02,1,5*loc_integer02+loc_real02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 79468 ~ 79484
function Func3854 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    call DestroyEffect(AddSpecialEffectTarget("effects\\NetherInferno.mdx",loc_unit02,"origin"))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3853))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(392),((GetUnitState(loc_unit02,UNIT_STATE_LIFE))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("effects\\NetherInferno.mdx",loc_unit02,"origin")))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 79486 ~ 79499
function Func3855 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0NO')
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,180+25,Condition(function Func0339))
    call ForGroup(loc_group01,function Func3854)
    call Func0029(loc_group01)
    call RemoveLocation(loc_location01)
    set loc_location01=null
    set loc_group01=null
endfunction

// 79501 ~ 79506
function Func3856 takes nothing returns boolean
    if GetSpellAbilityId()=='A0NO' then
        call Func3855()
    endif
    return false
endfunction

// 79508 ~ 79513
function Func3857 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3856))
    set loc_trigger01=null
endfunction
