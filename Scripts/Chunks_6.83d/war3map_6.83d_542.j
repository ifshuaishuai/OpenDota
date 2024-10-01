
// 63870 ~ 63896
function Func2961 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(29)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        if(LoadBoolean(hashtable001,(loc_integer01),(276)))==false and GetTriggerUnit()==(LoadUnitHandle(hashtable001,(loc_integer01),(2)))then
            call SaveBoolean(hashtable001,(loc_integer01),(276),(true))
            call SetHeroStr((LoadUnitHandle(hashtable001,(loc_integer01),(2))),GetHeroStr((LoadUnitHandle(hashtable001,(loc_integer01),(2))),false)-loc_integer02,true)
        elseif(LoadBoolean(hashtable001,(loc_integer01),(277)))==false and GetTriggerUnit()==(LoadUnitHandle(hashtable001,(loc_integer01),(17)))then
            call SaveBoolean(hashtable001,(loc_integer01),(277),(true))
            call SetHeroStr((LoadUnitHandle(hashtable001,(loc_integer01),(17))),GetHeroStr((LoadUnitHandle(hashtable001,(loc_integer01),(17))),false)+loc_integer02,true)
        endif
    else
        if(LoadBoolean(hashtable001,(loc_integer01),(276)))==false then
            call SaveBoolean(hashtable001,(loc_integer01),(276),(true))
            call SetHeroStr((LoadUnitHandle(hashtable001,(loc_integer01),(2))),GetHeroStr((LoadUnitHandle(hashtable001,(loc_integer01),(2))),false)-loc_integer02,true)
        endif
        if(LoadBoolean(hashtable001,(loc_integer01),(277)))==false then
            call SaveBoolean(hashtable001,(loc_integer01),(277),(true))
            call SetHeroStr((LoadUnitHandle(hashtable001,(loc_integer01),(17))),GetHeroStr((LoadUnitHandle(hashtable001,(loc_integer01),(17))),false)+loc_integer02,true)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 63898 ~ 63926
function Func2962 takes nothing returns nothing
    local unit loc_unit01=unit334
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01
    local integer loc_integer02=integer506
    local trigger loc_trigger01
    local integer loc_integer03
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and Func0468(GetUnitTypeId(loc_unit02))==false then
        set loc_integer01=IMinBJ(GetHeroStr(loc_unit02,false)-1,4)
        set loc_trigger01=CreateTrigger()
        set loc_integer03=GetHandleId(loc_trigger01)
        call SetHeroStr(loc_unit01,GetHeroStr(loc_unit01,false)+loc_integer01,true)
        call SetHeroStr(loc_unit02,GetHeroStr(loc_unit02,false)-loc_integer01,true)
        call TriggerRegisterTimerEvent(loc_trigger01,40,false)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2961))
        call SaveBoolean(hashtable001,(loc_integer03),(276),(false))
        call SaveBoolean(hashtable001,(loc_integer03),(277),(false))
        call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
        call SaveInteger(hashtable001,(loc_integer03),(29),(loc_integer01))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\RaiseSkeletonWarrior\\RaiseSkeleton.mdl",loc_unit01,"origin"))
    endif
    call Func0115(loc_unit01,loc_unit02,1,40*loc_integer02-20)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 63928 ~ 63952
function Func2963 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local group loc_group01=Func0030()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A15S')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h07J',loc_real01,loc_real02,0)
    call DestroyEffect(AddSpecialEffect("effects\\DecayGreen_Groundonly_1.mdx",loc_real01,loc_real02))
    call RemoveLocation(loc_location01)
    set unit124=loc_unit01
    set unit334=loc_unit01
    set integer506=loc_integer02
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,325+25,Condition(function Func0313))
    call ForGroup(loc_group01,function Func2962)
    call Func0029(loc_group01)
    call KillUnit(loc_unit02)
    set loc_unit01=null
    set loc_location01=null
    set loc_group01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 63954 ~ 63959
function Func2964 takes nothing returns boolean
    if GetSpellAbilityId()=='A15S' then
        call Func2963()
    endif
    return false
endfunction

// 63961 ~ 63966
function Func2965 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2964))
    set loc_trigger01=null
endfunction
