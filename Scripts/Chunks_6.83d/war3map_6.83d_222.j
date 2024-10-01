
// 42889 ~ 42914
function Func1676 takes real loc_real01 returns string
    if loc_real01>4.5 then
        return"5.0"
    elseif loc_real01>4.0 then
        return"4.5"
    elseif loc_real01>3.5 then
        return"4.0"
    elseif loc_real01>3.0 then
        return"3.5"
    elseif loc_real01>2.5 then
        return"3.0"
    elseif loc_real01>2.0 then
        return"2.5"
    elseif loc_real01>1.5 then
        return"2.0"
    elseif loc_real01>1.0 then
        return"1.5"
    elseif loc_real01>0.5 then
        return"1.0"
    elseif loc_real01>0.0 then
        return"0.5"
    else
        return"0.0"
    endif
    return" "
endfunction

// 42916 ~ 42976
function Func1677 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(442)))
    local real loc_real02=(TimerGetElapsed(timer001))
    local real loc_real03=5.0-(loc_real02-loc_real01)
    local real loc_real04=Func0141(loc_real02-loc_real01,5.0)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))+1
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call Func1672(loc_unit01,loc_unit01,5.0)
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1NI' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1NI',true)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1NH',false)
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A1NH' then
            if Func0028(GetSpellTargetUnit())==false then
                call Func1674(loc_unit01,GetSpellTargetUnit(),loc_real04,loc_real01)
            endif
            if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1NI' then
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1NI',true)
            endif
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1NH',false)
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        if loc_real03>=0 then
            call Func1675(Func1676(loc_real03),loc_unit01,loc_unit01)
            if ModuloInteger(loc_integer02,2)==0 then
                call SetUnitVertexColor(loc_unit01,255,125,125,255)
            else
                call SetUnitVertexColor(loc_unit01,255,175,175,255)
            endif
        else
            call SetUnitVertexColor(loc_unit01,255,0,0,255)
        endif
        if loc_real02-loc_real01>(5.0+0.5)then
            call Func1672(loc_unit01,loc_unit01,5.0)
            if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1NI' then
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1NI',true)
            endif
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1NH',false)
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 42978 ~ 43000
function Func1678 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local string loc_string01="war3mapImported\\UnstableConcoctionRangeDisplay3.mdx"
    if GetLocalPlayer()!=GetOwningPlayer(loc_unit01)then
        set loc_string01=""
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001)))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget(loc_string01,loc_unit01,"origin")))
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1677))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1NI',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1NH',true)
    call Func0193(loc_unit01,'A1NH')
    call UnitMakeAbilityPermanent(loc_unit01,true,'A1NH')
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 43002 ~ 43007
function Func1679 takes nothing returns boolean
    if GetSpellAbilityId()=='A1NI' then
        call Func1678()
    endif
    return false
endfunction

// 43009 ~ 43015
function Func1680 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1679))
    call Func0132('A0X6')
    set loc_trigger01=null
endfunction
