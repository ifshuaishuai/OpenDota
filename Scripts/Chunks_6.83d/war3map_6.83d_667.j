
// 72880 ~ 72882
function Func3464 takes nothing returns boolean
    return GetUnitAbilityLevel(GetTriggerUnit(),'A06K')>0
endfunction

// 72884 ~ 72891
function Func3465 takes nothing returns nothing
    if(GetIssuedOrderId()==String2OrderIdBJ("immolation"))then
        call Func0193(GetTriggerUnit(),'A0AZ')
    endif
    if(GetIssuedOrderId()==String2OrderIdBJ("unimmolation"))then
        call UnitRemoveAbility(GetTriggerUnit(),'A0AZ')
    endif
endfunction

// 72893 ~ 72898
function Func3466 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0177(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3464))
    call TriggerAddAction(loc_trigger01,function Func3465)
endfunction

// 72900 ~ 72905
function Func3467 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetEnumUnit())
    if GetTriggerUnit()!=GetEnumUnit()then
        call SaveInteger(hashtable001,(loc_integer01),(672),((LoadInteger(hashtable001,(loc_integer01),(672)))+1))
    endif
endfunction

// 72907 ~ 72909
function Func3468 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='U00F' and IsUnitIllusion(GetFilterUnit())==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==true
endfunction

// 72911 ~ 72924
function Func3469 takes nothing returns boolean
    local group loc_group01
    if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and Func0468(GetUnitTypeId(GetTriggerUnit()))==false and IsUnitIllusion(GetTriggerUnit())==false then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),475,Condition(function Func3468))
        if GetUnitTypeId(GetKillingUnit())=='U00F' then
            call GroupAddUnit(loc_group01,GetKillingUnit())
        endif
        call ForGroup(loc_group01,function Func3467)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    return false
endfunction

// 72926 ~ 72939
function Func3470 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEvalCount(loc_trigger01)==1 then
        call ShowUnit(loc_unit01,false)
    elseif GetTriggerEvalCount(loc_trigger01)>80 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 72941 ~ 72973
function Func3471 takes nothing returns boolean
    local unit loc_unit01
    local unit loc_unit02
    local unit loc_unit03
    local trigger loc_trigger01
    local integer loc_integer01
    if GetUnitTypeId(GetTriggerUnit())=='U00F' then
        set loc_unit02=GetTriggerUnit()
        set loc_unit03=GetKillingUnit()
        if loc_unit02==loc_unit03 then
            set loc_unit01=CreateUnit(GetOwningPlayer(loc_unit02),'h0BB',GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetUnitFacing(loc_unit02))
            call SetUnitTimeScale(loc_unit01,0.75)
            call UnitApplyTimedLife(loc_unit01,'BTLF',1.0)
            call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodAbomination.mdl",loc_unit01,"origin"))
            set loc_unit01=null
            call SetSoundPosition(sound051,GetUnitX(loc_unit02),GetUnitY(loc_unit02),50)
            call SetSoundVolumeBJ(sound051,100)
            call PlaySoundBJ(sound051)
            call SetSoundPosition(sound053,GetUnitX(loc_unit02),GetUnitY(loc_unit02),50)
            call SetSoundVolumeBJ(sound053,100)
            call PlaySoundBJ(sound053)
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call TriggerRegisterTimerEvent(loc_trigger01,.1,true)
            call TriggerAddCondition(loc_trigger01,Condition(function Func3470))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
            set loc_trigger01=null
        endif
        set loc_unit02=null
        set loc_unit03=null
    endif
    return false
endfunction
