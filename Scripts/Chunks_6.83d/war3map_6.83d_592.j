
// 68083 ~ 68085
function Func3188 takes nothing returns boolean
    return IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false and Func0277(GetFilterUnit())==false)
endfunction

// 68087 ~ 68129
function Func3189 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01
    local unit loc_unit02
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real05
    if GetTriggerEvalCount(loc_trigger01)>40 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),500,Condition(function Func3188))
        set loc_unit02=GroupPickRandomUnit(loc_group01)
        if loc_unit02==null then
            set loc_real01=GetRandomReal(175,400)
            set loc_real02=GetRandomReal(0,6)
            set loc_real03=GetUnitX(loc_unit01)+loc_real01*Cos(loc_real02)
            set loc_real04=GetUnitY(loc_unit01)+loc_real01*Sin(loc_real02)
            call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl",loc_real03,loc_real04))
        else
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl",loc_unit02,"origin"))
            set loc_real05=9*loc_integer02
            if IsUnitType(loc_unit02,UNIT_TYPE_STRUCTURE)==true then
                set loc_real05=loc_real05*1.4
            endif
            call Func0115(loc_unit03,loc_unit02,2,loc_real05)
        endif
        call Func0029(loc_group01)
    endif
    set loc_unit02=null
    set loc_group01=null
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 68131 ~ 68144
function Func3190 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\RocketMissile\\RocketMissile.mdl",loc_unit01,"hand right"))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A20T')))
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3189))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 68146 ~ 68151
function Func3191 takes nothing returns boolean
    if GetSpellAbilityId()=='A20T' then
        call Func3190()
    endif
    return false
endfunction

// 68153 ~ 68157
function Func3192 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3191))
endfunction
