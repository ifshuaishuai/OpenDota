
// 77439 ~ 77448
function Func3737 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call Func0420(loc_unit01,0)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4277)),(2))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 77450 ~ 77475
function Func3738 takes unit loc_unit01,unit loc_unit02 returns nothing
    local real loc_real01=100*GetUnitState(loc_unit02,UNIT_STATE_LIFE)/GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)
    local real loc_real02=2.5*GetUnitAbilityLevel(loc_unit01,'A1A3')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4277)),(1))
    call TriggerRegisterTimerEvent(loc_trigger01,0.35,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3737))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false then
        set loc_real02=loc_real02/2
    endif
    if loc_real01>80 then
        call Func0420(loc_unit01,R2I(loc_real02))
    elseif loc_real01>60 then
        call Func0420(loc_unit01,R2I(loc_real02*2))
    elseif loc_real01>40 then
        call Func0420(loc_unit01,R2I(loc_real02*2*2))
    elseif loc_real01>20 then
        call Func0420(loc_unit01,R2I(loc_real02*2*2*2))
    else
        call Func0420(loc_unit01,R2I(loc_real02*2*2*2*2))
    endif
    set loc_trigger01=null
endfunction

// 77477 ~ 77488
function Func3739 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
        if GetSpellAbilityId()=='A09V' and GetUnitAbilityLevel(GetTriggerUnit(),'A1A3')>0 then
            call Func3738(GetTriggerUnit(),GetSpellTargetUnit())
        endif
    else
        if GetUnitAbilityLevel(GetAttacker(),'A1A3')>0 and IsUnitIllusion(GetAttacker())==false and IsUnitEnemy(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==true and((LoadInteger(hashtable001,(GetHandleId((GetAttacker()))),((4277))))==1)==false then
            call Func3738(GetAttacker(),GetTriggerUnit())
        endif
    endif
    return false
endfunction

// 77490 ~ 77496
function Func3740 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3739))
    set loc_trigger01=null
endfunction
