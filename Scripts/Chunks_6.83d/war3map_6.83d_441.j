
// 57205 ~ 57211
function Func2566 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==true then
        call Func0115(unit312,GetEnumUnit(),1,real318/3)
    else
        call Func0115(unit312,GetEnumUnit(),1,real318)
    endif
endfunction

// 57213 ~ 57222
function Func2567 takes unit loc_unit01,real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns nothing
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,loc_real03,Condition(function Func0320))
    set unit312=loc_unit01
    set real318=loc_real04
    call ForGroup(loc_group01,function Func2566)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 57224 ~ 57229
function Func2568 takes nothing returns boolean
    if((GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())))and Func0096(GetFilterUnit())==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))then
        return true
    endif
    return false
endfunction

// 57231 ~ 57242
function Func2569 takes unit loc_unit01 returns unit
    local unit loc_unit02=null
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),275,Condition(function Func2568))
    call GroupRemoveUnit(loc_group01,loc_unit01)
    set loc_unit02=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    set unit124=loc_unit02
    set loc_unit02=null
    set loc_group01=null
    return unit124
endfunction

// 57244 ~ 57315
function Func2570 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(282)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(283)))
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=0
    local real loc_real06=0
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local real loc_real10
    local real loc_real11
    local real loc_real12
    local location loc_location01
    if loc_unit03!=null then
        set loc_real05=GetUnitX(loc_unit03)
        set loc_real06=GetUnitY(loc_unit03)
    endif
    if loc_unit03==null or Func0149(loc_real01,loc_real02,loc_real05,loc_real06)>1000 then
        set loc_real05=loc_real01
        set loc_real06=loc_real02
    endif
    set loc_real07=Func0169(loc_real03,loc_real04,loc_real05,loc_real06)
    set loc_real08=Func0149(loc_real03,loc_real04,loc_real05,loc_real06)
    set loc_real09=loc_real08/IMaxBJ((65-loc_integer02),1)
    set loc_real10=(loc_integer02-33)*(loc_integer02-33)
    set loc_real11=loc_real03+loc_real09*Cos(loc_real07*bj_DEGTORAD)
    set loc_real12=loc_real04+loc_real09*Sin(loc_real07*bj_DEGTORAD)
    if loc_integer02<65 then
        if Func0100(loc_unit02)==false then
            call SetUnitFlyHeight(loc_unit02,775-loc_real10,0)
        endif
        call SetUnitPosition(loc_unit02,loc_real11,loc_real12)
    else
        if Func0100(loc_unit02)==false then
            call SetUnitFlyHeight(loc_unit02,GetUnitDefaultFlyHeight(loc_unit02),0)
        endif
        call PauseUnit(loc_unit02,false)
        call SetUnitPathing(loc_unit02,true)
        call SetUnitPosition(loc_unit02,loc_real05,loc_real06)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4268)),(2))
        set loc_location01=Location(loc_real05,loc_real06)
        call TerrainDeformationRippleBJ(0.2,true,loc_location01,1.00,300.00,96.00,1,64.00)
        call RemoveLocation(loc_location01)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
        if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))then
        else
            if(Func0394((loc_unit01),integers089[integer367])!=null)then
                call Func0115(loc_unit01,loc_unit02,1,(0.2+0.15*(GetUnitAbilityLevel(loc_unit01,'A0CY')+1))*75*GetUnitAbilityLevel(loc_unit01,'A0BZ'))
            else
                call Func0115(loc_unit01,loc_unit02,1,(0.2+0.15*GetUnitAbilityLevel(loc_unit01,'A0CY'))*75*GetUnitAbilityLevel(loc_unit01,'A0BZ'))
            endif
        endif
        call Func0180(loc_real05,loc_real06,300)
        call Func2567(loc_unit01,loc_real05,loc_real06,300,75*GetUnitAbilityLevel(loc_unit01,'A0BZ'))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_location01=null
    return false
endfunction

// 57317 ~ 57354
function Func2571 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=unit313
    local unit loc_unit03
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01
    local real loc_real02
    call SetUnitAnimationByIndex(loc_unit01,4)
    call PauseUnit(loc_unit02,true)
    call SetUnitPathing(loc_unit02,false)
    if Func0100(loc_unit02)==false then
        call Func0193(loc_unit02,'Amrf')
        call UnitRemoveAbility(loc_unit02,'Amrf')
    endif
    call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4268)),(1))
    if GetSpellTargetItem()==null then
        set loc_unit03=GetSpellTargetUnit()
        set loc_real01=GetUnitX(loc_unit03)
        set loc_real02=GetUnitY(loc_unit03)
    else
        set loc_real01=GetItemX(GetSpellTargetItem())
        set loc_real02=GetItemY(GetSpellTargetItem())
        set loc_unit03=null
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit03))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",loc_unit02,"origin")))
    call SaveReal(hashtable001,(loc_integer01),(282),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(283),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2570))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
endfunction
