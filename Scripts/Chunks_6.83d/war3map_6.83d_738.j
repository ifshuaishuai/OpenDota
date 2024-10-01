
// 77814 ~ 77850
function Func3760 takes player loc_player01 returns nothing
    call SetPlayerAbilityAvailable(loc_player01,'A1KR',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KS',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KQ',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KP',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KU',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KV',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1K1',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KW',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KX',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KY',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KZ',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1KT',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L4',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L3',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L2',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L1',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L0',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L5',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L8',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L7',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L9',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1LB',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1LA',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1L6',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1LH',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1M3',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1M4',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1MC',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1M7',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1M8',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1M9',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1MA',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1M5',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1MB',false)
    call SetPlayerAbilityAvailable(loc_player01,'A1M6',false)
endfunction

// 77852 ~ 77867
function Func3761 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=0
    local player loc_player01
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3759))
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        call Func3760(loc_player01)
        set loc_player01=players004[loc_integer01]
        call Func3760(loc_player01)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_trigger01=null
endfunction

// 77869 ~ 77889
function Func3762 takes nothing returns nothing
    local integer loc_integer01
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    if GetUnitTypeId(loc_unit01)=='u017' or GetUnitTypeId(loc_unit01)=='u019' or GetUnitTypeId(loc_unit01)=='u018' or GetUnitTypeId(loc_unit01)=='u01A' or GetUnitTypeId(loc_unit01)=='u01B' or GetUnitTypeId(loc_unit01)=='u01C' or GetUnitTypeId(loc_unit01)=='u01U' or GetUnitTypeId(loc_unit01)=='u01V' or GetUnitTypeId(loc_unit01)=='u01W' then
        return
    endif
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    if GetUnitTypeId(loc_unit01)=='u014' or GetUnitTypeId(loc_unit01)=='u01D' or GetUnitTypeId(loc_unit01)=='u01R' then
        set loc_integer01=1
    elseif GetUnitTypeId(loc_unit01)=='u015' or GetUnitTypeId(loc_unit01)=='u01E' or GetUnitTypeId(loc_unit01)=='u01S' then
        set loc_integer01=2
    else
        set loc_integer01=3
    endif
    call Func0193(loc_unit02,'A1NF')
    call SetUnitAbilityLevel(loc_unit02,'A1NF',loc_integer01)
    call IssueImmediateOrder(loc_unit02,"stomp")
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 77891 ~ 77901
function Func3763 takes unit loc_unit01,integer loc_integer01,integer loc_integer02 returns nothing
    local integer loc_integer03
    if loc_integer02==1 then
        set loc_integer03=8
    elseif loc_integer02==2 then
        set loc_integer03=14
    elseif loc_integer02==3 then
        set loc_integer03=22
    endif
    call Func0420(loc_unit01,loc_integer01*loc_integer03)
endfunction

// 77903 ~ 77939
function Func3764 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=loc_unit01
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(28)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(194)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetAttacker()==loc_unit01 then
            set loc_integer04=IMaxBJ(loc_integer04-1,0)
            call SaveInteger(hashtable001,(loc_integer01),(194),(loc_integer04))
            call Func3763(loc_unit01,loc_integer04,loc_integer02)
        endif
    else
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(28),(loc_integer03))
        if ModuloInteger(loc_integer03,15)==0 then
            set loc_integer04=IMinBJ(loc_integer04+1,7)
            call SaveInteger(hashtable001,(loc_integer01),(194),(loc_integer04))
        endif
        if GetUnitTypeId(loc_unit02)=='u017' or GetUnitTypeId(loc_unit02)=='u019' or GetUnitTypeId(loc_unit02)=='u018' or GetUnitTypeId(loc_unit02)=='u01A' or GetUnitTypeId(loc_unit02)=='u01B' or GetUnitTypeId(loc_unit02)=='u01C' or GetUnitTypeId(loc_unit02)=='u01U' or GetUnitTypeId(loc_unit02)=='u01V' or GetUnitTypeId(loc_unit02)=='u01W' then
            set loc_integer04=7
            call SaveInteger(hashtable001,(loc_integer01),(194),(loc_integer04))
        endif
        call Func3763(loc_unit01,loc_integer04,loc_integer02)
        if GetUnitTypeId(loc_unit01)=='u017' or GetUnitTypeId(loc_unit01)=='u019' or GetUnitTypeId(loc_unit01)=='u018' or GetUnitTypeId(loc_unit01)=='u01A' or GetUnitTypeId(loc_unit01)=='u01B' or GetUnitTypeId(loc_unit01)=='u01C' or GetUnitTypeId(loc_unit01)=='u01U' or GetUnitTypeId(loc_unit01)=='u01V' or GetUnitTypeId(loc_unit01)=='u01W' then
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+31.25+18.75*loc_integer02)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
