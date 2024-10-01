
// 57818 ~ 57820
function Func2605 takes nothing returns boolean
    return GetLearnedSkill()=='A0BE' and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 57822 ~ 57824
function Func2606 takes nothing returns nothing
    call SetUnitAbilityLevel(GetTriggerUnit(),'A09E',GetUnitAbilityLevel(GetTriggerUnit(),'A0BE'))
endfunction

// 57826 ~ 57831
function Func2607 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2605))
    call TriggerAddAction(loc_trigger01,function Func2606)
endfunction

// 57841 ~ 57843
function Func2608 takes nothing returns boolean
    return GetUnitAbilityLevel(GetAttacker(),('A0O0'))>0 and((LoadInteger(hashtable001,(GetHandleId((GetAttacker()))),((4271))))==1)==false
endfunction

// 57845 ~ 57870
function Func2609 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(237)))
    local unit loc_unit03=Func0022(loc_integer02)
    local integer loc_integer03=Func0139((LoadInteger(hashtable001,(loc_integer01),(236))),0)
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,('A0O0'))
    local integer loc_integer05=1
    if loc_unit03!=loc_unit02 then
        set loc_integer03=1
    else
        set loc_integer03=Func0138(loc_integer03+1,1+4)
    endif
    if loc_integer03>1 then
        set loc_integer05=loc_integer03+4*(loc_integer04-1)
    endif
    call Func0137(loc_unit01,('A0NZ'),loc_integer05)
    call SaveInteger(hashtable001,(loc_integer01),(236),(loc_integer03))
    if loc_unit03!=loc_unit02 then
        call Func0021(loc_integer02)
        set loc_integer02=Func0024(loc_unit02)
        call SaveInteger(hashtable001,(loc_integer01),(237),(loc_integer02))
    endif
    call Func0044(loc_unit01,4271,0.4)
endfunction

// 57872 ~ 57878
function Func2610 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2608))
    call TriggerAddAction(loc_trigger01,function Func2609)
    call Func0132(('A0NZ'))
endfunction
