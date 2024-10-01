
// 50354 ~ 50362
function Func2150 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local unit loc_unit02=CreateUnit(player005,'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,'A10W')
    call SetUnitAbilityLevel(loc_unit02,'A10W',integer477)
    call IssueTargetOrder(loc_unit02,"drunkenhaze",loc_unit01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 50364 ~ 50394
function Func2151 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(190)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(59)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    set real296=loc_real01
    set real297=loc_real02
    call ForGroup(loc_group01,function Func2149)
    if loc_integer03==16 then
        if loc_integer02=='A11X' then
            set integer477=1
        elseif loc_integer02=='A11V' then
            set integer477=2
        else
            set integer477=3
        endif
        set player005=loc_player01
        call ForGroup(loc_group01,function Func2150)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_player01=null
    set loc_group01=null
    return false
endfunction

// 50396 ~ 50419
function Func2152 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(190)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(59)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    call Func0035(loc_trigger01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2151))
    call SavePlayerHandle(hashtable001,(loc_integer01),(54),(loc_player01))
    call SaveReal(hashtable001,(loc_integer01),(189),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(190),((loc_real02)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveInteger(hashtable001,(loc_integer01),(59),(loc_integer02))
    set loc_trigger01=null
    set loc_player01=null
    set loc_group01=null
    return false
endfunction

// 50421 ~ 50442
function Func2153 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    call KillUnit(CreateUnit(GetOwningPlayer(loc_unit01),'h06P',loc_real01,loc_real02,0))
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,700,Condition(function Func0313))
    call TriggerRegisterTimerEvent(loc_trigger01,0.4,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2152))
    call SavePlayerHandle(hashtable001,(loc_integer01),(54),(GetOwningPlayer(GetTriggerUnit())))
    call SaveReal(hashtable001,(loc_integer01),(189),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(190),((loc_real02)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveInteger(hashtable001,(loc_integer01),(59),(GetSpellAbilityId()))
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
endfunction

// 50444 ~ 50449
function Func2154 takes nothing returns boolean
    if GetSpellAbilityId()=='A11X' or GetSpellAbilityId()=='A11V' or GetSpellAbilityId()=='A11W' then
        call Func2153()
    endif
    return false
endfunction

// 50451 ~ 50456
function Func2155 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2154))
    set loc_trigger01=null
endfunction
