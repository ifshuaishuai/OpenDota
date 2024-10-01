
// 83504 ~ 83530
function Func4016 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2XI')
    if loc_integer03==0 then
        set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1SA')
    endif
    if loc_integer02==5 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4293))))==1)then
            call SetUnitInvulnerable(loc_unit02,false)
        endif
        call Func0115(loc_unit01,loc_unit02,1,4*(25+25*loc_integer03))
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4293))))==1)then
            call SetUnitInvulnerable(loc_unit02,true)
        endif
    else
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 83532 ~ 83546
function Func4017 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4016))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 83548 ~ 83553
function Func4018 takes nothing returns boolean
    if(GetSpellAbilityId()=='A2XI' or GetSpellAbilityId()=='A1SA')and IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true and Func0028(GetSpellTargetUnit())==false then
        call Func4017()
    endif
    return false
endfunction
