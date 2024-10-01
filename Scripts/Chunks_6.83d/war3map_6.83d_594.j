
// 68163 ~ 68172
function Func3194 takes nothing returns nothing
    local real loc_real01
    if IsUnitInGroup(GetEnumUnit(),group023)==false then
        set loc_real01=Func0147(GetEnumUnit(),unit343)
        if loc_real01<real345 then
            set real345=loc_real01
            set unit342=GetEnumUnit()
        endif
    endif
endfunction

// 68174 ~ 68208
function Func3195 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local group loc_group02=Func0030()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A06V')
    call GroupAddUnit(loc_group01,loc_unit02)
    call Func3193(loc_unit01,loc_unit02)
    set unit124=loc_unit01
    set unit342=null
    set unit343=loc_unit02
    set group023=loc_group01
    set real345=999999
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,650+25,Condition(function Func0314))
    call ForGroup(loc_group02,function Func3194)
    call Func0029(loc_group02)
    if unit342==null or GetTriggerEvalCount(loc_trigger01)>3+loc_integer02 then
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_unit02=unit342
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    endif
    set loc_group02=null
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 68210 ~ 68224
function Func3196 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(loc_group01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3195))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 68226 ~ 68231
function Func3197 takes nothing returns boolean
    if GetSpellAbilityId()=='A06V' and Func0028(GetSpellTargetUnit())==false then
        call Func3196()
    endif
    return false
endfunction

// 68233 ~ 68238
function Func3198 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3197))
    set loc_trigger01=null
endfunction
