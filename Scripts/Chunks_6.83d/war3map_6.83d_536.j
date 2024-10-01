
// 63481 ~ 63522
function Func2939 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer02
    local unit loc_unit01
    local unit loc_unit02
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
        set loc_real05=(LoadReal(hashtable001,(loc_integer01),(138)))
        set loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
        set loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
        set loc_real06=(LoadReal(hashtable001,(loc_integer01),(137)))
        set loc_real03=GetUnitX(loc_unit02)+loc_real05/12*Cos(loc_real06)
        set loc_real04=GetUnitY(loc_unit02)+loc_real05/12*Sin(loc_real06)
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
            call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
        else
            call SetUnitX(loc_unit02,loc_real03)
            call SetUnitY(loc_unit02,loc_real04)
        endif
        if GetTriggerEvalCount(loc_trigger01)>19 then
            set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
            set loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func0115(loc_unit01,loc_unit02,1,loc_integer02*40)
            set loc_unit01=null
        endif
        set loc_unit02=null
    endif
    set loc_trigger01=null
    return false
endfunction

// 63524 ~ 63546
function Func2940 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    if Func2938(loc_unit02)==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2939))
        call SaveReal(hashtable001,(loc_integer01),(6),((real336)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((real337)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(138),((Func0149(real336,real337,GetUnitX(loc_unit02),GetUnitY(loc_unit02)))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(137),((Atan2(real337-GetUnitY(loc_unit02),real336-GetUnitX(loc_unit02)))*1.0))
        call SaveInteger(hashtable001,(loc_integer01),(5),(integer505))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 63548 ~ 63568
function Func2941 takes nothing returns nothing
    local group loc_group01=Func0030()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A0QE')
    local real loc_real03=150+100*loc_integer01+25
    set unit124=GetTriggerUnit()
    call Func0184(sound035,loc_real01,loc_real02)
    call DestroyEffect(AddSpecialEffect("war3mapImported\\Star Aura.mdx",loc_real01,loc_real02))
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,loc_real03,Condition(function Func0313))
    set real336=loc_real01
    set real337=loc_real02
    set integer505=loc_integer01
    call ForGroup(loc_group01,function Func2940)
    call Func0180(loc_real01,loc_real02,200)
    call RemoveLocation(loc_location01)
    call Func0029(loc_group01)
    set loc_location01=null
    set loc_group01=null
endfunction

// 63570 ~ 63575
function Func2942 takes nothing returns boolean
    if GetSpellAbilityId()=='A0QE' then
        call Func2941()
    endif
    return false
endfunction
