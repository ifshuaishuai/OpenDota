
// 78884 ~ 78892
function Func3816 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SetUnitState((LoadUnitHandle(hashtable001,(loc_integer01),(26))),UNIT_STATE_MANA,(LoadReal(hashtable001,(loc_integer01),(242))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 78894 ~ 78902
function Func3817 takes unit loc_unit01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3816))
    call SaveUnitHandle(hashtable001,(loc_integer01),(26),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(242),((loc_real01)*1.0))
    set loc_trigger01=null
endfunction

// 78904 ~ 78906
function Func3818 takes nothing returns boolean
    return GetSpellAbilityId()=='A0CT'
endfunction

// 78908 ~ 78925
function Func3819 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggerUnit())
    local real loc_real01=Func0142((LoadReal(hashtable001,(loc_integer01),(7200+1))),1)
    local real loc_real02=Func0142((LoadReal(hashtable001,(loc_integer01),(7250+1))),1)
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7300+1)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(7350+1)))
    local unit loc_unit01=GetTriggerUnit()
    if(LoadReal(hashtable001,(loc_integer01),(7200+1)))>1 and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 then
        call AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call SetUnitX(loc_unit01,loc_real03)
        call SetUnitY(loc_unit01,loc_real04)
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real01)
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real02)
        call UnitRemoveBuffs(loc_unit01,false,true)
        call Func0373(loc_unit01)
        call Func3817(loc_unit01,loc_real02)
    endif
endfunction

// 78927 ~ 78932
function Func3820 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3818))
    call TriggerAddAction(loc_trigger01,function Func3819)
endfunction

// 78934 ~ 78952
function Func3821 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(221)))
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=1
    local integer loc_integer03=10
    loop
        exitwhen loc_integer02>loc_integer03
        call SaveReal(hashtable001,(loc_integer01),(7300+(loc_integer02-1)),(((LoadReal(hashtable001,(loc_integer01),(7300+(loc_integer02)))))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7350+(loc_integer02-1)),(((LoadReal(hashtable001,(loc_integer01),(7350+(loc_integer02)))))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7200+(loc_integer02-1)),(((LoadReal(hashtable001,(loc_integer01),(7200+(loc_integer02)))))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7250+(loc_integer02-1)),(((LoadReal(hashtable001,(loc_integer01),(7250+(loc_integer02)))))*1.0))
        set loc_integer02=loc_integer02+1
    endloop
    call SaveReal(hashtable001,(loc_integer01),(7300+10),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7350+10),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7200+10),((GetUnitState(loc_unit01,UNIT_STATE_LIFE))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7250+10),((GetUnitState(loc_unit01,UNIT_STATE_MANA))*1.0))
endfunction

// 78954 ~ 78956
function Func3822 takes nothing returns boolean
    return GetLearnedSkill()=='A0CT' and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 78958 ~ 78966
function Func3823 takes nothing returns nothing
    local unit loc_unit01=unit124
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0CT')
    local trigger loc_trigger01
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(loc_trigger01,0.50)
    call TriggerAddAction(loc_trigger01,function Func3821)
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(221),(loc_unit01))
endfunction

// 78968 ~ 78969
function Func3824 takes nothing returns nothing
endfunction
