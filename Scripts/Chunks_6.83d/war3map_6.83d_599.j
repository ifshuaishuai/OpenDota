
// 68575 ~ 68592
function Func3217 takes unit loc_unit01,integer loc_integer01 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetTextTagText(loc_texttag01,"+"+I2S(loc_integer01)+" "+GetObjectName('n0LQ'),0.03)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagColorBJ(loc_texttag01,50,75,255,15)
    call SetTextTagVelocity(loc_texttag01,0,0.035)
    call SetTextTagFadepoint(loc_texttag01,3)
    call SetTextTagLifespan(loc_texttag01,2.5)
    call SetTextTagPermanent(loc_texttag01,false)
    call SetTextTagVisibility(loc_texttag01,false)
    call SetTextTagVisibility(loc_texttag01,true)
    if IsUnitVisible(loc_unit01,GetLocalPlayer())or Func0107(GetLocalPlayer())then
        call SetTextTagVisibility(loc_texttag01,true)
    else
        call SetTextTagVisibility(loc_texttag01,false)
    endif
    set loc_texttag01=null
endfunction

// 68594 ~ 68605
function Func3218 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A053')
    local real loc_real01=GetUnitState(loc_unit02,UNIT_STATE_LIFE)*(loc_integer01*0.15+0.1)
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+loc_real01)
    call Func3217(loc_unit02,R2I(loc_real01))
    call Func3216(loc_unit02)
    call KillUnit(loc_unit02)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 68607 ~ 68612
function Func3219 takes nothing returns boolean
    if GetSpellAbilityId()=='A053' and Func0096(GetSpellTargetUnit())==false then
        call Func3218()
    endif
    return false
endfunction

// 68614 ~ 68619
function Func3220 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3219))
    set loc_trigger01=null
endfunction
