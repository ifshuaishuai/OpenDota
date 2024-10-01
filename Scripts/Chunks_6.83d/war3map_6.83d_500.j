
// 61384 ~ 61423
function Func2818 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(138)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>10 then
        call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),200)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_real05=loc_real03+loc_real02*Cos(loc_real01)
        set loc_real06=loc_real04+loc_real02*Sin(loc_real01)
        if(IsPointInRegion(region006,((loc_real05)*1.0),((loc_real06)*1.0)))==false then
            call SaveReal(hashtable001,(loc_integer01),(6),((loc_real05)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(7),((loc_real06)*1.0))
            set loc_real07=loc_real05
            set loc_real08=loc_real06
        else
            set loc_real07=loc_real03
            set loc_real08=loc_real04
        endif
        if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
            call SetUnitPosition(loc_unit01,loc_real07,loc_real08)
        else
            call SetUnitX(loc_unit01,loc_real07)
            call SetUnitY(loc_unit01,loc_real08)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 61425 ~ 61443
function Func2819 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A19V')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2818))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer02),(137),((Atan2(GetUnitY(loc_unit02)-real330,GetUnitX(loc_unit02)-real329))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(138),((Func0142((400-Func0149(real329,real330,GetUnitX(loc_unit02),GetUnitY(loc_unit02))),10)/10)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(6),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((GetUnitY(loc_unit02))*1.0))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    call Func0115(unit324,GetEnumUnit(),1,integer500*75)
endfunction

// 61445 ~ 61498
function Func2820 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local group loc_group01=Func0030()
    local unit loc_unit03
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(7)))
    set loc_real02=Func0126(loc_real02+36*Cos(loc_real01))
    set loc_real03=Func0129(loc_real03+36*Sin(loc_real01))
    call SetUnitX(loc_unit01,loc_real02)
    call SetUnitY(loc_unit01,loc_real03)
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,125,Condition(function Func0313))
    set loc_unit03=FirstOfGroup(loc_group01)
    call Func0029(loc_group01)
    if Func0149(loc_real02,loc_real03,loc_real04,loc_real05)<40 or GetTriggerEvalCount(loc_trigger01)>100 then
        set loc_unit03=null
        set loc_real02=loc_real04
        set loc_real03=loc_real05
        set unit324=loc_unit02
        set integer500=(LoadInteger(hashtable001,(loc_integer01),(5)))
        set unit325=loc_unit03
        if loc_unit03==null then
            set real329=loc_real02
            set real330=loc_real03
        else
            set real329=GetUnitX(loc_unit03)
            set real330=GetUnitY(loc_unit03)
        endif
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,400,Condition(function Func0313))
        if loc_unit03!=null then
            call GroupRemoveUnit(loc_group01,loc_unit03)
            call Func0365(loc_unit02,loc_unit03,0.3)
            call Func0115(unit324,loc_unit03,1,integer500*75)
        endif
        call ForGroup(loc_group01,function Func2819)
        call KillUnit(loc_unit01)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit03=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 61500 ~ 61524
function Func2821 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A19V')
    local unit loc_unit02
    call RemoveLocation(loc_location01)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0ED',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real03*bj_RADTODEG)
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.04,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2820))
    set loc_unit01=null
    set loc_unit02=null
    set loc_location01=null
    set loc_trigger01=null
endfunction

// 61526 ~ 61531
function Func2822 takes nothing returns boolean
    if GetSpellAbilityId()=='A19V' then
        call Func2821()
    endif
    return false
endfunction

// 61533 ~ 61538
function Func2823 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2822))
    set loc_trigger01=null
endfunction
