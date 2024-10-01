
// 65572 ~ 65593
function Func3062 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer02)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    local effect loc_effect01=(LoadEffectHandle(hashtable001,(loc_integer01),(32)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    call Func0115(loc_unit01,loc_unit02,1,loc_real01)
    if loc_integer03==3 then
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call DestroyEffect(loc_effect01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_effect01=null
    return false
endfunction

// 65595 ~ 65605
function Func3063 takes unit loc_unit01,unit loc_unit02,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real01)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Environment\\SmallBuildingFire\\SmallBuildingFire2.mdl",loc_unit02,"chest")))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3062))
    set loc_trigger01=null
endfunction

// 65607 ~ 65610
function Func3064 takes nothing returns nothing
    call Func3063(unit124,GetEnumUnit(),real009/5)
    call Func0115(unit124,GetEnumUnit(),1,real009)
endfunction

// 65612 ~ 65655
function Func3065 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(137)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)-26
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real04
    local real loc_real05
    local unit loc_unit02
    local group loc_group01
    if loc_integer02==1 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01L',loc_real01,loc_real02,loc_real03*bj_RADTODEG)
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    elseif loc_integer02>1 then
        set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    endif
    if loc_integer02>0 then
        set loc_real04=Func0126(GetUnitX(loc_unit02)+15*Cos(loc_real03))
        set loc_real05=Func0129(GetUnitY(loc_unit02)+15*Sin(loc_real03))
        call SetUnitX(loc_unit02,loc_real04)
        call SetUnitY(loc_unit02,loc_real05)
        if(loc_integer02>1 and ModuloInteger(loc_integer02,10)==0)or loc_integer02==1 then
            set loc_group01=Func0030()
            set unit124=loc_unit01
            set real009=Func3060(loc_unit01)
            call GroupEnumUnitsInRange(loc_group01,loc_real04,loc_real05,300,Condition(function Func0305))
            call ForGroup(loc_group01,function Func3064)
            call Func0029(loc_group01)
            call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Other\\NeutralBuildingExplosion\\NeutralBuildingExplosion.mdl",loc_real04,loc_real05))
        endif
        if loc_integer02>Func3061(loc_unit01)/16.6 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call KillUnit(loc_unit02)
        endif
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 65657 ~ 65678
function Func3066 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local location loc_location01=GetSpellTargetLoc()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01K',loc_real01,loc_real02,loc_real03*bj_RADTODEG)
    call SetUnitTimeScale(loc_unit02,0.58)
    call UnitApplyTimedLife(loc_unit02,'BTLF',1.75)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3065))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_location01=null
    set loc_unit01=null
endfunction

// 65680 ~ 65685
function Func3067 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VN' then
        call Func3066()
    endif
    return false
endfunction

// 65687 ~ 65692
function Func3068 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3067))
    set loc_trigger01=null
endfunction
