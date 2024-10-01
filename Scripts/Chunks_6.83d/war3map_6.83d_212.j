
// 42154 ~ 42193
function Func1644 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer03)
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01
    local unit loc_unit03
    set loc_real01=0.6*(loc_integer02-25)*(loc_integer02-25)
    if loc_integer02<51 and GetTriggerEventId()!=EVENT_UNIT_DEATH then
        if ModuloInteger(loc_integer02,5)==0 then
            call Func0115(loc_unit01,loc_unit02,1,3+3*loc_integer04)
        endif
        if Func0100(loc_unit02)==false then
            call SetUnitFlyHeight(loc_unit02,500-loc_real01,0)
        endif
    else
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call Func0193(loc_unit03,'A11L')
        call SetUnitAbilityLevel(loc_unit03,'A11L',loc_integer04)
        call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
        if Func0100(loc_unit02)==false then
            call SetUnitFlyHeight(loc_unit02,GetUnitDefaultFlyHeight(loc_unit02),0)
        endif
        if boolean036==false then
            call PauseUnit(loc_unit02,false)
        endif
        call SetUnitPathing(loc_unit02,true)
        call Func0021(loc_integer03)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 42195 ~ 42217
function Func1645 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=unit124
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer02=integer022
    call PauseUnit(loc_unit02,true)
    call SetUnitPathing(loc_unit02,false)
    if Func0100(loc_unit02)==false then
        call Func0193(loc_unit02,'Amrf')
        call UnitRemoveAbility(loc_unit02,'Amrf')
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1644))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call Func0115(loc_unit01,loc_unit02,1,30+30*loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 42219 ~ 42248
function Func1646 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01=Func0030()
    local ubersplat loc_ubersplat01=CreateUbersplat(loc_real01,loc_real02,"THNN",255,255,255,255,false,false)
    call SetUbersplatRenderAlways(loc_ubersplat01,true)
    call Func0186(GetOwningPlayer(loc_unit01),4,loc_real01,loc_real02,400)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(178))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(179))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(180))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",loc_real01,loc_real02))
    call DestroyEffect(AddSpecialEffect("effects\\TidalErruption.mdx",loc_real01,loc_real02))
    set unit124=loc_unit01
    set integer022=loc_integer02
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,225+25,Condition(function Func0313))
    call ForGroup(loc_group01,function Func1645)
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 42250 ~ 42286
function Func1647 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A136')
    local string loc_string01=""
    local real loc_real03
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))==true or Func0107(GetLocalPlayer())then
        set loc_string01="Objects\\Spawnmodels\\Other\\IllidanFootprint\\IllidanWaterSpawnFootPrint.mdl"
    endif
    call RemoveLocation(loc_location01)
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    set loc_real03=0
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffect(loc_string01,loc_real01+40*Cos(loc_real03/6*360*bj_DEGTORAD),loc_real02+40*Sin(loc_real03/6*360*bj_DEGTORAD))))
    set loc_real03=1
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffect(loc_string01,loc_real01+40*Cos(loc_real03/6*360*bj_DEGTORAD),loc_real02+40*Sin(loc_real03/6*360*bj_DEGTORAD))))
    set loc_real03=2
    call SaveEffectHandle(hashtable001,(loc_integer01),(177),(AddSpecialEffect(loc_string01,loc_real01+40*Cos(loc_real03/6*360*bj_DEGTORAD),loc_real02+40*Sin(loc_real03/6*360*bj_DEGTORAD))))
    set loc_real03=3
    call SaveEffectHandle(hashtable001,(loc_integer01),(178),(AddSpecialEffect(loc_string01,loc_real01+40*Cos(loc_real03/6*360*bj_DEGTORAD),loc_real02+40*Sin(loc_real03/6*360*bj_DEGTORAD))))
    set loc_real03=4
    call SaveEffectHandle(hashtable001,(loc_integer01),(179),(AddSpecialEffect(loc_string01,loc_real01+40*Cos(loc_real03/6*360*bj_DEGTORAD),loc_real02+40*Sin(loc_real03/6*360*bj_DEGTORAD))))
    set loc_real03=5
    call SaveEffectHandle(hashtable001,(loc_integer01),(180),(AddSpecialEffect(loc_string01,loc_real01+40*Cos(loc_real03/6*360*bj_DEGTORAD),loc_real02+40*Sin(loc_real03/6*360*bj_DEGTORAD))))
    call TriggerRegisterTimerEvent(loc_trigger01,1.6,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1646))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_location01=null
endfunction

// 42288 ~ 42293
function Func1648 takes nothing returns boolean
    if GetSpellAbilityId()=='A136' then
        call Func1647()
    endif
    return false
endfunction

// 42295 ~ 42300
function Func1649 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1648))
    set loc_trigger01=null
endfunction
