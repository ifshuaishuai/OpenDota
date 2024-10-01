
// 42804 ~ 42807
function Func1671 takes nothing returns nothing
    call Func0115(unit268,GetEnumUnit(),2,real276)
    call Func0365(unit268,GetEnumUnit(),real275)
endfunction

// 42809 ~ 42829
function Func1672 takes unit loc_unit01,unit loc_unit02,real loc_real01 returns nothing
    local group loc_group01
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1NI')
    local real loc_real02
    local real loc_real03
    set unit268=loc_unit01
    set real276=(80+70*loc_integer01)*loc_real01/5.0
    set real275=(1+0.75*loc_integer01)*loc_real01/5.0
    set unit269=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(unit269,'A0X6')
    call SetUnitAbilityLevel(unit269,'A0X6',Func0364(real275))
    set unit124=loc_unit01
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),175+25,Condition(function Func0305))
    if GetUnitTypeId(loc_unit02)!='h0BD' then
        call GroupAddUnit(loc_group01,loc_unit02)
    endif
    call ForGroup(loc_group01,function Func1671)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemolisherFireMissile\\DemolisherFireMissile.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
endfunction

// 42831 ~ 42855
function Func1673 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(444)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(445)))
    local real loc_real03=Func0169(GetUnitX(loc_unit03),GetUnitY(loc_unit03),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    local real loc_real04=GetUnitX(loc_unit03)+18*Cos(loc_real03*bj_DEGTORAD)
    local real loc_real05=GetUnitY(loc_unit03)+18*Sin(loc_real03*bj_DEGTORAD)
    call SetUnitX(loc_unit03,loc_real04)
    call SetUnitY(loc_unit03,loc_real05)
    if Func0149(loc_real04,loc_real05,GetUnitX(loc_unit02),GetUnitY(loc_unit02))<=18 then
        call KillUnit(loc_unit03)
        call Func1672(loc_unit01,loc_unit02,loc_real01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 42857 ~ 42870
function Func1674 takes unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0BD',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(444),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(445),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1673))
    set loc_trigger01=null
    set loc_unit03=null
endfunction
