
// 73064 ~ 73089
function Func3478 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(376)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(377)))
    local unit loc_unit01
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2100+loc_integer02)))
    if loc_boolean01 then
        set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
        call SetUnitX(loc_unit01,GetUnitX(loc_unit02))
        call SetUnitY(loc_unit01,GetUnitY(loc_unit02))
    endif
    call RemoveUnit(loc_unit02)
    set loc_integer02=loc_integer02-1
    call SaveInteger(hashtable001,(loc_integer01),(376),(loc_integer02))
    if loc_integer02==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if IsUnitInRegion(region007,loc_unit01)then
            call Func0259(loc_unit01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 73091 ~ 73152
function Func3479 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(376)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(11)))
    local integer loc_integer04=GetHandleId(loc_trigger02)
    local group loc_group01
    local unit loc_unit02
    local real loc_real02
    local real loc_real03
    local real loc_real04
    if loc_integer02<16+2*loc_integer03 then
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(376),(loc_integer02))
        set loc_real02=GetUnitX(loc_unit01)+loc_integer02*50*Cos(loc_real01*bj_DEGTORAD)
        set loc_real03=GetUnitY(loc_unit01)+loc_integer02*50*Sin(loc_real01*bj_DEGTORAD)
        call SaveUnitHandle(hashtable001,(loc_integer04),(2100+loc_integer02),(CreateUnit(GetOwningPlayer(loc_unit01),'u00H',loc_real02,loc_real03,loc_real01)))
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,125,Condition(function Func0346))
        call GroupRemoveUnit(loc_group01,loc_unit01)
        set loc_unit02=GroupPickRandomUnit(loc_group01)
        call Func0029(loc_group01)
        if loc_unit02!=null then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call TriggerRegisterTimerEvent(loc_trigger02,0.03,true)
            call TriggerAddCondition(loc_trigger02,Condition(function Func3478))
            call SaveInteger(hashtable001,(loc_integer04),(376),(loc_integer02))
            call SaveBoolean(hashtable001,(loc_integer04),(377),(true))
            call SaveUnitHandle(hashtable001,(loc_integer04),(17),(loc_unit02))
            if IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01))then
                if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
                    call Func0415("HA_Hits"+I2S(GetPlayerId(GetOwningPlayer(loc_unit01))),integers167[GetPlayerId(GetOwningPlayer(loc_unit01))])
                    set integers167[GetPlayerId(GetOwningPlayer(loc_unit01))]=integers167[GetPlayerId(GetOwningPlayer(loc_unit01))]+1
                    call Func0044(loc_unit01,4400,1.5)
                endif
                set integers168[GetPlayerId(GetOwningPlayer(loc_unit01))]=integers168[GetPlayerId(GetOwningPlayer(loc_unit01))]+1
                call Func0415("HA_Total"+I2S(GetPlayerId(GetOwningPlayer(loc_unit01))),integers168[GetPlayerId(GetOwningPlayer(loc_unit01))])
                call Func3477(loc_unit01,loc_unit02)
                call Func0115(loc_unit01,loc_unit02,3,90*loc_integer03)
                call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",loc_unit02,"origin"))
            endif
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set integers168[GetPlayerId(GetOwningPlayer(loc_unit01))]=integers168[GetPlayerId(GetOwningPlayer(loc_unit01))]+1
        call TriggerRegisterTimerEvent(loc_trigger02,0.03,true)
        call TriggerAddCondition(loc_trigger02,Condition(function Func3478))
        call SaveInteger(hashtable001,(loc_integer04),(376),(loc_integer02))
        call SaveBoolean(hashtable001,(loc_integer04),(377),(false))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_trigger02=null
    set loc_group01=null
    set loc_unit02=null
    return false
endfunction

// 73154 ~ 73172
function Func3480 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetLocationX(loc_location01),GetLocationY(loc_location01))
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A06I')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(13),((loc_real01)*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(376),(0))
    call SaveTriggerHandle(hashtable001,(loc_integer02),(11),(CreateTrigger()))
    call TriggerRegisterTimerEvent(loc_trigger01,0.0375,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3479))
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_location01=null
    set loc_trigger01=null
endfunction

// 73174 ~ 73179
function Func3481 takes nothing returns boolean
    if GetSpellAbilityId()=='A06I' then
        call Func3480()
    endif
    return false
endfunction
