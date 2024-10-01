
// 73219 ~ 73250
function Func3484 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(25+50*loc_integer02)+(1.0)*GetHeroStr(loc_unit01,true)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
        if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and GetSpellAbilityId()=='A1CX')then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    elseif GetTriggerEvalCount(loc_trigger01)>4 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0123(loc_unit01)
    else
        if loc_integer02>0 then
            set loc_integer03=loc_integer03+1
            if(loc_integer03<4 and IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true)or(loc_integer03<8 and IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false)then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
                call Func0115(loc_unit01,loc_unit02,1,loc_real01)
            endif
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 73252 ~ 73270
function Func3485 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1CX')
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3484))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 73272 ~ 73277
function Func3486 takes nothing returns boolean
    if GetSpellAbilityId()=='A1CX' and Func0028(GetSpellTargetUnit())==false then
        call Func3485()
    endif
    return false
endfunction

// 73279 ~ 73284
function Func3487 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3486))
    set loc_trigger01=null
endfunction
