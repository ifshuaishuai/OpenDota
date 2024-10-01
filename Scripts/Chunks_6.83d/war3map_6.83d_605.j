
// 68898 ~ 68936
function Func3239 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local integer loc_integer01=1
    local boolean loc_boolean01=Func0056(GetOwningPlayer(loc_unit01))
    local player loc_player01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A0ZF')
    if loc_integer04==1 then
        set loc_integer02='A104'
        set loc_integer03='A107'
    elseif loc_integer04==2 then
        set loc_integer02='A101'
        set loc_integer03='A106'
    elseif loc_integer04==3 then
        set loc_integer02='A102'
        set loc_integer03='A105'
    elseif loc_integer04==4 then
        set loc_integer02='A103'
        set loc_integer03='A108'
    endif
    loop
        exitwhen loc_integer01>5
        if loc_boolean01 then
            set loc_player01=players003[loc_integer01]
        else
            set loc_player01=players004[loc_integer01]
        endif
        set loc_unit02=CreateUnit(loc_player01,'e01V',0,0,0)
        call Func0193(loc_unit02,loc_integer02)
        call Func0193(loc_unit02,loc_integer03)
        call UnitApplyTimedLife(loc_unit02,'BTLF',10)
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    set loc_unit02=null
    set loc_player01=null
endfunction

// 68938 ~ 68943
function Func3240 takes nothing returns boolean
    if GetSpellAbilityId()=='A0ZF' then
        call Func3239()
    endif
    return false
endfunction

// 68945 ~ 68950
function Func3241 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3240))
    set loc_trigger01=null
endfunction
