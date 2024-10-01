
// 81249 ~ 81323
function Func3942 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A00H')
    local integer loc_integer02
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07=40
    local unit loc_unit02
    if loc_integer01==0 then
        set loc_real07=45
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0A1')
        if loc_integer01==1 then
            set loc_integer02='o01C'
        elseif loc_integer01==2 then
            set loc_integer02='o01D'
        elseif loc_integer01==3 then
            set loc_integer02='o01E'
        endif
    else
        if loc_integer01==1 then
            set loc_integer02='osp4'
        elseif loc_integer01==2 then
            set loc_integer02='o008'
        elseif loc_integer01==3 then
            set loc_integer02='o009'
        endif
    endif
    set loc_real05=65
    set loc_real06=65
    set loc_real03=loc_real01+0*loc_real05
    set loc_real04=loc_real02+1*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01+1*loc_real05
    set loc_real04=loc_real02+1*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01+2*loc_real05
    set loc_real04=loc_real02+1*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01-1*loc_real05
    set loc_real04=loc_real02+1*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01-2*loc_real05
    set loc_real04=loc_real02+1*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01-1*loc_real05
    set loc_real04=loc_real02+0*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01+1*loc_real05
    set loc_real04=loc_real02+0*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01-1*loc_real05
    set loc_real04=loc_real02-1*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01+0*loc_real05
    set loc_real04=loc_real02-1*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_real03=loc_real01+1*loc_real05
    set loc_real04=loc_real02-1*loc_real06
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer02,loc_real03,loc_real04,0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real07)
    set loc_unit01=null
endfunction

// 81325 ~ 81330
function Func3943 takes nothing returns boolean
    if GetSpellAbilityId()=='A00H' or GetSpellAbilityId()=='A0A1' then
        call Func3942()
    endif
    return false
endfunction

// 81332 ~ 81337
function Func3944 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3943))
    set loc_trigger01=null
endfunction
