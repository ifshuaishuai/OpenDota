
// 80902 ~ 80941
function Func3922 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local lightning loc_lightning01=(LoadLightningHandle(hashtable001,(loc_integer01),(196)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(190)))
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05
    local real loc_real06
    local real loc_real07=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real08=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real09
    local real loc_real10=Func0149(loc_real07,loc_real08,loc_real03,loc_real04)
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real04)*1.0))
    if loc_real10>100 or loc_integer02>(3.5/.03)or Func0098(loc_unit02)==true then
        call DestroyLightning(loc_lightning01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call MoveLightning(loc_lightning01,true,loc_real01,loc_real02,loc_real03,loc_real04)
        if Func0149(loc_real01,loc_real02,loc_real03,loc_real04)>325 then
            set loc_real09=Atan2(loc_real04-loc_real02,loc_real03-loc_real01)
            set loc_real05=loc_real01+(325)*Cos(loc_real09)
            set loc_real06=loc_real02+(325)*Sin(loc_real09)
            call SetUnitX(loc_unit02,loc_real05)
            call SetUnitY(loc_unit02,loc_real06)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_lightning01=null
    return false
endfunction

// 80943 ~ 80963
function Func3923 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local lightning loc_lightning01=AddLightning("PONC",true,GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    call SetLightningColor(loc_lightning01,1,1,1,1)
    call SaveLightningHandle(hashtable001,(loc_integer02),(196),(loc_lightning01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(189),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(190),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(23),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(24),((GetUnitY(loc_unit02))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3922))
    call Func0115(loc_unit01,loc_unit02,1,50*loc_integer01)
    call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    set loc_trigger01=null
    set loc_lightning01=null
endfunction

// 80965 ~ 81019
function Func3924 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(190)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real06=loc_real02+(30*(20+4*2)/30)*loc_integer02*Cos(loc_real01*bj_DEGTORAD)
    local real loc_real07=loc_real03+(30*(20+4*2)/30)*loc_integer02*Sin(loc_real01*bj_DEGTORAD)
    local real loc_real08=SquareRoot((loc_real06-loc_real04)*(loc_real06-loc_real04)+(loc_real07-loc_real05)*(loc_real07-loc_real05))
    local real loc_real09=700
    local real loc_real10=175
    local real loc_real11=(1-loc_real08/loc_real09)*loc_real10*2
    local group loc_group01=Func0030()
    local unit loc_unit02
    if loc_integer02==1 then
        call SetUnitAnimationByIndex(loc_unit01,5)
        call SetUnitTimeScale(loc_unit01,1.5)
    endif
    if loc_real11>loc_real10 then
        call SetUnitAnimationByIndex(loc_unit01,5)
        set loc_real11=loc_real10*2-loc_real11
    endif
    call SetUnitFlyHeight(loc_unit01,Func0142(loc_real11,0),0)
    call SetUnitX(loc_unit01,Func0126(loc_real06))
    call SetUnitY(loc_unit01,Func0129(loc_real07))
    call SetUnitFacing(loc_unit01,loc_real01)
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real06,loc_real07,120,Condition(function Func0344))
    set loc_unit02=FirstOfGroup(loc_group01)
    call Func0029(loc_group01)
    if loc_real08<30 or loc_unit02!=null or GetTriggerEvalCount(loc_trigger01)>75 then
        call SetUnitFlyHeight(loc_unit01,0,0)
        call SetUnitFacing(loc_unit01,loc_real01)
        call SetUnitTimeScale(loc_unit01,1)
        call SetUnitAnimation(loc_unit01,"stand")
        call SetUnitPathing(loc_unit01,true)
        call UnitRemoveAbility(loc_unit01,'A1J6')
        call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),100)
        if loc_unit02!=null and Func0098(loc_unit02)==false then
            call Func0044(loc_unit02,4408,5)
            call Func3923(loc_unit01,loc_unit02,loc_integer03)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 81021 ~ 81047
function Func3925 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1J7')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real01=700
    local real loc_real02=GetUnitFacing(loc_unit01)
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=Func0126(loc_real03+loc_real01*Cos(loc_real02*bj_DEGTORAD))
    local real loc_real06=Func0129(loc_real04+loc_real01*Sin(loc_real02*bj_DEGTORAD))
    call Func0193(loc_unit01,'Amrf')
    call UnitRemoveAbility(loc_unit01,'Amrf')
    call SetUnitPathing(loc_unit01,false)
    call Func0193(loc_unit01,'A1J6')
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3924))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(13),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(189),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(190),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(47),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(48),((loc_real06)*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 81049 ~ 81054
function Func3926 takes nothing returns boolean
    if GetSpellAbilityId()=='A1J7' then
        call Func3925()
    endif
    return false
endfunction

// 81056 ~ 81061
function Func3927 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3926))
    set loc_trigger01=null
endfunction
