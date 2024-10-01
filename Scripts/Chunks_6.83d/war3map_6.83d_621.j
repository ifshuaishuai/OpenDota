
// 70015 ~ 70047
function Func3290 takes unit loc_unit01,unit loc_unit02 returns boolean
    local real loc_real01=Func0168(loc_unit02,loc_unit01)
    local real loc_real02=GetUnitFacing(loc_unit02)
    local real loc_real03
    local real loc_real04
    local real loc_real05=-1.0
    local real loc_real06=-1.0
    local real loc_real07
    local real loc_real08
    local real loc_real09=-1.0
    local real loc_real10=-1.0
    set loc_real03=RMaxBJ(loc_real02-85,0)
    set loc_real04=loc_real02
    if loc_real02-85<=0 then
        set loc_real05=360-(85-(loc_real04-loc_real03))
        set loc_real06=360
    endif
    set loc_real07=loc_real02
    set loc_real08=RMinBJ(loc_real02+85,360)
    if loc_real02+85>=360 then
        set loc_real09=0
        set loc_real10=0+(85-(loc_real08-loc_real07))
    endif
    if loc_real01<0 then
        set loc_real01=loc_real01+360
    elseif loc_real01>360 then
        set loc_real01=loc_real01-360
    endif
    if(loc_real01>loc_real03 and loc_real01<loc_real04)or(loc_real05!=-1 and loc_real01>loc_real05 and loc_real01<loc_real06)or(loc_real01>loc_real07 and loc_real01<loc_real08)or(loc_real09!=-1 and loc_real01>loc_real09 and loc_real01<loc_real10)then
        return true
    endif
    return false
endfunction

// 70049 ~ 70051
function Func3291 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and Func3290(unit124,GetFilterUnit())
endfunction

// 70053 ~ 70087
function Func3292 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1AT')
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    local group loc_group03=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    set group025=loc_group03
    set unit348=loc_unit01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1025,Condition(function Func3291))
    call ForGroup(loc_group01,function Func3289)
    call GroupAddGroup(loc_group01,loc_group03)
    call GroupAddGroup(loc_group03,loc_group02)
    call GroupRemoveGroup(loc_group01,loc_group02)
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    if GetTriggerEvalCount(loc_trigger01)>R2I(real350/0.02)then
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call ForGroup(loc_group03,function Func3286)
        call ForGroup(loc_group03,function Func3285)
        call Func0029(loc_group03)
    else
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\EtherealForm\\SpiritWalkerChange.mdl",loc_unit01,"chest")))
    endif
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    set loc_group03=null
    set loc_trigger01=null
    return false
endfunction

// 70089 ~ 70099
function Func3293 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3292))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\EtherealForm\\SpiritWalkerChange.mdl",GetTriggerUnit(),"chest")))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
endfunction

// 70101 ~ 70106
function Func3294 takes nothing returns boolean
    if GetSpellAbilityId()=='A1AT' then
        call Func3293()
    endif
    return false
endfunction

// 70108 ~ 70113
function Func3295 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3294))
    set loc_trigger01=null
endfunction
