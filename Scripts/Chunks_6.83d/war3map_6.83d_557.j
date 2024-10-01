
// 65069 ~ 65084
function Func3029 takes nothing returns nothing
    local real loc_real01=Func0142(Func0141(GetUnitState(GetEnumUnit(),UNIT_STATE_MANA),real344),0)
    local real loc_real02=loc_real01*0.5
    if Func0098(GetEnumUnit())==false and loc_real01>0 and Func0108(GetEnumUnit())==false then
        if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)>(loc_real02+0.5)then
            call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)-loc_real02)
        else
            call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,1)
            call Func0115(unit340,GetEnumUnit(),1,loc_real02)
        endif
        call SetUnitState(GetEnumUnit(),UNIT_STATE_MANA,GetUnitState(GetEnumUnit(),UNIT_STATE_MANA)-loc_real01)
        if(IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO))then
            call SetUnitState(unit340,UNIT_STATE_MANA,GetUnitState(unit340,UNIT_STATE_MANA)+loc_real01*0.5)
        endif
    endif
endfunction

// 65086 ~ 65095
function Func3030 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,integer loc_integer02 returns nothing
    local group loc_group01=Func0030()
    set unit340=loc_unit01
    set unit124=loc_unit01
    set real344=loc_integer01*75+25
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),700,Condition(function Func0305))
    call ForGroup(loc_group01,function Func3029)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 65097 ~ 65120
function Func3031 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit03
    local real loc_real01=2.9
    local real loc_real02=real342+(real343-real342)*loc_integer02/(loc_real01/0.05)
    call SetUnitScale(loc_unit01,loc_real02,loc_real02,loc_real02)
    if loc_integer02>(loc_real01/0.05)then
        call Func3030(loc_unit02,loc_unit01,(LoadInteger(hashtable001,(loc_integer01),(3000))),(LoadInteger(hashtable001,(loc_integer01),(3002))))
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e01O',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call SetUnitTimeScale(loc_unit03,0.3)
        call RemoveUnit(loc_unit01)
        call KillUnit(loc_unit03)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
    return false
endfunction

// 65122 ~ 65142
function Func3032 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local location loc_location01=GetSpellTargetLoc()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01M',loc_real01,loc_real02,loc_real03*bj_RADTODEG)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3031))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(3000),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3000)))))
    call SaveInteger(hashtable001,(loc_integer01),(3001),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001)))))
    call SaveInteger(hashtable001,(loc_integer01),(3002),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3002)))))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_location01=null
    set loc_unit01=null
endfunction

// 65144 ~ 65149
function Func3033 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VS' then
        call Func3032()
    endif
    return false
endfunction

// 65151 ~ 65156
function Func3034 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3033))
    set loc_trigger01=null
endfunction
