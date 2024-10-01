
// 70852 ~ 70894
function Func3344 takes nothing returns nothing
    local location loc_location01
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0X7')
    local real loc_real06
    local real loc_real07
    local unit loc_unit02=null
    if GetSpellTargetUnit()!=null then
        set loc_location01=GetUnitLoc(GetSpellTargetUnit())
    else
        set loc_location01=GetSpellTargetLoc()
    endif
    set loc_real04=GetLocationX(loc_location01)
    set loc_real05=GetLocationY(loc_location01)
    set loc_real03=Atan2(loc_real05-loc_real02,loc_real04-loc_real01)
    set loc_real04=loc_real01+700*Cos(loc_real03)
    set loc_real05=loc_real02+700*Sin(loc_real03)
    if loc_integer01==1 then
        set loc_real06=80
        set loc_real07=0.75
    elseif loc_integer01==2 then
        set loc_real06=140
        set loc_real07=1.25
    elseif loc_integer01==3 then
        set loc_real06=200
        set loc_real07=1.75
    elseif loc_integer01==4 then
        set loc_real06=260
        set loc_real07=2.25
    endif
    if GetSpellTargetUnit()!=null and Func0028(GetSpellTargetUnit())then
        set loc_unit02=GetSpellTargetUnit()
    endif
    call Func0370(loc_unit01,loc_unit02,loc_real06,loc_real07,0.52,loc_real01,loc_real02,loc_real04,loc_real05,150,null,true,1600)
    call RemoveLocation(loc_location01)
    set loc_location01=null
    set loc_unit01=null
endfunction

// 70896 ~ 70901
function Func3345 takes nothing returns boolean
    if GetSpellAbilityId()=='A0X7' then
        call Func3344()
    endif
    return false
endfunction

// 70903 ~ 70909
function Func3346 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3345))
    call Func0132('A0X6')
    set loc_trigger01=null
endfunction
