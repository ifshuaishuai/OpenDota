
// 76316 ~ 76344
function Func3672 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=GetEventDamageSource()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A04E')
    local real loc_real01=GetEventDamage()
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(412)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(411)))
    local real loc_real04=650-50*loc_integer02
    if Func0058(GetOwningPlayer(loc_unit02))then
        if(loc_real03+real363)<(TimerGetElapsed(timer001))then
            set loc_real02=0
        endif
        set loc_real03=(TimerGetElapsed(timer001))
        set loc_real02=loc_real02+loc_real01
        if loc_real02>loc_real04 and GetUnitAbilityLevel(loc_unit01,'BNdo')==0 then
            set loc_real02=0
            call Func0373(loc_unit01)
            call Func0371(loc_unit01,0,0)
            call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",loc_unit01,"origin"))
        endif
        call SaveReal(hashtable001,(loc_integer01),(412),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(411),((loc_real03)*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 76346 ~ 76357
function Func3673 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3672))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(412),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(411),(((TimerGetElapsed(timer001)))*1.0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 76359 ~ 76364
function Func3674 takes nothing returns boolean
    if GetLearnedSkill()=='A04E' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A04E')==1 then
        call Func3673()
    endif
    return false
endfunction

// 76366 ~ 76371
function Func3675 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3674))
    set loc_trigger01=null
endfunction
