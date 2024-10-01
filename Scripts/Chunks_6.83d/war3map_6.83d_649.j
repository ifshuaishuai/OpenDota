
// 71614 ~ 71636
function Func3398 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=20+loc_integer02*40
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A03Q')
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        set loc_real01=loc_real01/2
    endif
    if loc_integer03>0 and GetRandomReal(0,100)<15 then
        set loc_real01=loc_real01*(1.2+1.1*loc_integer03)
        call Func0173(I2S(R2I(loc_real01))+"!",3,loc_unit02,0.02,255,0,0,255)
    endif
    call Func0193(loc_unit03,'A0YL')
    call SetUnitAbilityLevel(loc_unit03,'A0YL',loc_integer02)
    call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    call Func0115(loc_unit01,loc_unit02,3,loc_real01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 71638 ~ 71647
function Func3399 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=Func0196(loc_unit01,loc_unit02,'h010',"Func3398",1200,true)
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A0YM')))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 71649 ~ 71654
function Func3400 takes nothing returns boolean
    if GetSpellAbilityId()=='A0YM' and Func0028(GetSpellTargetUnit())==false then
        call Func3399()
    endif
    return false
endfunction

// 71656 ~ 71661
function Func3401 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3400))
    set loc_trigger01=null
endfunction
