
// 63101 ~ 63110
function Func2912 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(254)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,'A0IF')
    if GetRandomInt(1,100)<=40 and Func0146(loc_unit01,loc_unit02,1400)then
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+(0.05+0.05*loc_integer02)*GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\ReplenishManaCasterOverhead.mdl",loc_unit01,"overhead"))
    endif
endfunction

// 63112 ~ 63132
function Func2913 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0IF')
    local trigger loc_trigger01
    if(loc_integer01==1)then
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2911))
        call TriggerAddAction(loc_trigger01,function Func2912)
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(254),(loc_unit01))
    endif
    if(loc_integer01==1)then
        call Func0193(loc_unit01,'A0OL')
    elseif(loc_integer01==2)then
        call Func0193(loc_unit01,'A0OM')
    elseif(loc_integer01==3)then
        call Func0193(loc_unit01,'A0ON')
    elseif(loc_integer01==4)then
        call Func0193(loc_unit01,'A0OH')
    endif
endfunction

// 63134 ~ 63139
function Func2914 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2910))
    call TriggerAddAction(loc_trigger01,function Func2913)
endfunction
