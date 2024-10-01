
// 94195 ~ 94197
function Func4557 takes nothing returns boolean
    return Func0194(GetFilterUnit())==false and(GetUnitTypeId(GetFilterUnit())=='o01X' or GetUnitTypeId(GetFilterUnit())=='o020')and((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((4335))))==1)==false and((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((4340))))==1)==false
endfunction

// 94199 ~ 94228
function Func4558 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local group loc_group01=Func0030()
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2TI')
    local real loc_real03=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(807)))
    if ModuloInteger(loc_integer02,5)==0 then
        call Func0115(loc_unit01,loc_unit02,1,(25+25*loc_integer03)/2)
    endif
    set unit430=loc_unit01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,400+25,Condition(function Func4557))
    call ForGroup(loc_group01,function Func4556)
    call Func0029(loc_group01)
    if(TimerGetElapsed(timer001))>loc_real03 or Func0194(loc_unit02)then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((809)),(2))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 94230 ~ 94246
function Func4559 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(807)))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(807),(((TimerGetElapsed(timer001))+6)*1.0))
    if loc_real01<(TimerGetElapsed(timer001))then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((809)),(1))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\MagnetizeTargetOverhead.mdx",loc_unit02,"origin")))
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4558))
    endif
    set loc_trigger01=null
endfunction

// 94248 ~ 94250
function Func4560 takes nothing returns nothing
    call Func4559(unit430,GetEnumUnit())
endfunction

// 94252 ~ 94274
function Func4561 takes unit loc_unit01,unit loc_unit02 returns nothing
    local group loc_group01=Func0030()
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local real loc_real03=300
    if GetUnitTypeId(loc_unit02)=='o01X' then
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemolisherMissile\\DemolisherMissile.mdx",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
        call UnitApplyTimedLife(loc_unit02,'BTLF',8)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4340)),(1))
        call SetUnitVertexColor(loc_unit02,0,0,0,100)
        set loc_real03=600
    else
        call DestroyEffect(AddSpecialEffect("war3mapImported\\MagnetizeCastAoE.mdx",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    endif
    set unit124=loc_unit01
    set unit430=loc_unit01
    set unit431=loc_unit02
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,loc_real03+25,Condition(function Func0305))
    call ForGroup(loc_group01,function Func4560)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 94276 ~ 94278
function Func4562 takes nothing returns nothing
    call Func4561(unit430,unit431)
endfunction

// 94280 ~ 94285
function Func4563 takes nothing returns boolean
    if GetSpellAbilityId()=='A2TI' then
        call Func4561(GetTriggerUnit(),GetTriggerUnit())
    endif
    return false
endfunction

// 94287 ~ 94292
function Func4564 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4563))
    set loc_trigger01=null
endfunction
