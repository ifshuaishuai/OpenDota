
// 74196 ~ 74209
function Func3538 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
    call SetUnitAnimation(loc_unit01,"morph ALTERNATE")
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 74211 ~ 74266
function Func3539 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A06O')
    local location loc_location01
    local real loc_real01
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local integer loc_integer02
    local unit loc_unit02
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    local real loc_real10
    local real loc_real11=1.65
    local unit loc_unit03=null
    if loc_integer01==1 then
        set loc_real10=100
    elseif loc_integer01==2 then
        set loc_real10=160
    elseif loc_integer01==3 then
        set loc_real10=220
    elseif loc_integer01==4 then
        set loc_real10=280
    endif
    if GetSpellTargetUnit()!=null then
        set loc_location01=GetUnitLoc(GetSpellTargetUnit())
    else
        set loc_location01=GetSpellTargetLoc()
    endif
    set loc_real04=GetLocationX(loc_location01)
    set loc_real05=GetLocationY(loc_location01)
    call RemoveLocation(loc_location01)
    set loc_real01=Func0169(loc_real02,loc_real03,loc_real04,loc_real05)
    call SaveUnitHandle(hashtable001,(loc_integer03),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer03),(6),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer03),(7),((loc_real05)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,Func0149(loc_real02,loc_real03,loc_real04,loc_real05)/2000,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3538))
    if Func0149(loc_real02,loc_real03,loc_real04,loc_real05)<150 then
        set loc_real04=loc_real02+150*Cos(loc_real01*bj_DEGTORAD)
        set loc_real05=loc_real03+150*Sin(loc_real01*bj_DEGTORAD)
    endif
    if GetSpellTargetUnit()!=null and Func0028(GetSpellTargetUnit())then
        set loc_unit03=GetSpellTargetUnit()
    endif
    call Func0370(loc_unit01,loc_unit03,loc_real10,loc_real11,0.52,loc_real02,loc_real03,loc_real04,loc_real05,175,null,true,1600)
    set loc_unit02=null
    set loc_location01=null
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 74268 ~ 74273
function Func3540 takes nothing returns boolean
    if GetSpellAbilityId()=='A06O' then
        call Func3539()
    endif
    return false
endfunction

// 74275 ~ 74281
function Func3541 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3540))
    call Func0132('A0X6')
    set loc_trigger01=null
endfunction
