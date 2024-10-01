
// 76373 ~ 76383
function Func3676 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    call Func0029(loc_group01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_group01=null
    return false
endfunction

// 76385 ~ 76392
function Func3677 takes group loc_group01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3676))
    set loc_trigger01=null
endfunction

// 76394 ~ 76428
function Func3678 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local integer loc_integer01=1
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A29I')
    local group loc_group01=Func0030()
    local real loc_real07=500
    if loc_integer02==1 then
        set loc_real06=1.5
        set loc_real05=200
    elseif loc_integer02==2 then
        set loc_real06=1.8
        set loc_real05=290
    elseif loc_integer02==3 then
        set loc_real06=2.25
        set loc_real05=380
    endif
    loop
        exitwhen loc_integer01>16
        set loc_real03=loc_real01+(800)*Cos(22.5*loc_integer01*bj_DEGTORAD)
        set loc_real04=loc_real02+(800)*Sin(22.5*loc_integer01*bj_DEGTORAD)
        call Func0370(loc_unit01,null,loc_real05,loc_real06,0.52,loc_real01,loc_real02,loc_real03,loc_real04,250,loc_group01,false,775)
        set loc_integer01=loc_integer01+1
    endloop
    call Func3677(loc_group01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 76430 ~ 76435
function Func3679 takes nothing returns boolean
    if GetSpellAbilityId()=='A29I' then
        call Func3678()
    endif
    return false
endfunction

// 76437 ~ 76443
function Func3680 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3679))
    call Func0132('A0X6')
    set loc_trigger01=null
endfunction
