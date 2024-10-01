
// 53574 ~ 53582
function Func2348 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(21)))
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_real01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 53584 ~ 53589
function Func2349 takes nothing returns nothing
    local trigger loc_trigger01=Func0196(unit301,GetEnumUnit(),'h0D8',"Func2348",400,false)
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveReal(hashtable001,(loc_integer01),(21),((real307)*1.0))
    set loc_trigger01=null
endfunction

// 53591 ~ 53629
function Func2350 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit02,'A273')
        call UnitRemoveAbility(loc_unit02,'B0EL')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    else
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        if loc_integer03>5 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call UnitRemoveAbility(loc_unit02,'A273')
            call UnitRemoveAbility(loc_unit02,'B0EL')
        endif
        call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\NightElf\\EntBirthTarget\\EntBirthTarget.mdl",loc_unit02,"origin"))
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),525,Condition(function Func0332))
        set unit301=loc_unit02
        set real307=15*loc_integer02
        call ForGroup(loc_group01,function Func2349)
        call Func0029(loc_group01)
        call Func0115(loc_unit01,loc_unit02,1,real307)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 53631 ~ 53650
function Func2351 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A26N')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call Func0193(loc_unit02,'A273')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A273',false)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerRegisterTimerEvent(loc_trigger01,4.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2350))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(442),(((TimerGetElapsed(timer001)))*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 53652 ~ 53658
function Func2352 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    call Func0196(loc_unit01,loc_unit02,'h0D9',"Func2351",600,false)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 53660 ~ 53665
function Func2353 takes nothing returns boolean
    if GetSpellAbilityId()=='A26N' and Func0028(GetSpellTargetUnit())==false then
        call Func2351()
    endif
    return false
endfunction

// 53667 ~ 53672
function Func2354 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2353))
    set loc_trigger01=null
endfunction
