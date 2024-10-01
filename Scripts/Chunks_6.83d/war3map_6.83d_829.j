
// 86696 ~ 86705
function Func4153 takes nothing returns nothing
    local real loc_real01
    if IsUnitInGroup(GetEnumUnit(),group038)==false then
        set loc_real01=Func0147(GetEnumUnit(),unit403)
        if loc_real01<real393 then
            set real393=loc_real01
            set unit402=GetEnumUnit()
        endif
    endif
endfunction

// 86707 ~ 86740
function Func4154 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local group loc_group02=Func0030()
    call GroupAddUnit(loc_group01,loc_unit02)
    call Func4152(loc_unit01,loc_unit02)
    set unit124=loc_unit01
    set unit402=null
    set unit403=loc_unit02
    set group038=loc_group01
    set real393=999999
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,440+25,Condition(function Func0314))
    call ForGroup(loc_group02,function Func4153)
    call Func0029(loc_group02)
    if unit402==null or GetTriggerEvalCount(loc_trigger01)>26 then
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_unit02=unit402
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    endif
    set loc_group02=null
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 86742 ~ 86762
function Func4155 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    call Func0184(sound073,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    call Func0193(loc_unit03,'A284')
    call SetUnitAbilityLevel(loc_unit03,'A284',GetUnitAbilityLevel(loc_unit01,'A27G'))
    call IssueTargetOrder(loc_unit03,"chainlightning",loc_unit02)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(loc_group01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4154))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    set loc_unit03=null
endfunction

// 86764 ~ 86769
function Func4156 takes nothing returns boolean
    if GetSpellAbilityId()=='A27G' and Func0028(GetSpellTargetUnit())==false then
        call Func4155()
    endif
    return false
endfunction

// 86771 ~ 86776
function Func4157 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4156))
    set loc_trigger01=null
endfunction
