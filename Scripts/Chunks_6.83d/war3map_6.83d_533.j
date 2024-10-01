
// 63368 ~ 63375
function Func2930 takes nothing returns boolean
    if(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)then
        if(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())))then
            return true
        endif
    endif
    return false
endfunction

// 63377 ~ 63404
function Func2931 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0OK')
    local real loc_real01=GetLocationX(GetSpellTargetLoc())
    local real loc_real02=GetLocationY(GetSpellTargetLoc())
    local group loc_group01=Func0030()
    local integer loc_integer02=0
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(748)))
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1VW')
    endif
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl",loc_real01,loc_real02))
    loop
        exitwhen loc_integer02>=360
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl",loc_real01+(200+loc_integer01*50)*Cos(loc_integer02*bj_DEGTORAD),loc_real02+(200+loc_integer01*50)*Sin(loc_integer02*bj_DEGTORAD)))
        set loc_integer02=loc_integer02+45
    endloop
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,300+loc_integer01*100,Condition(function Func2930))
    if loc_unit02!=null and Func0149(loc_real01,loc_real02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))<(300+loc_integer01*100)then
        call SetUnitInvulnerable(loc_unit02,false)
        call GroupAddUnit(loc_group01,loc_unit02)
    endif
    call ForGroup(loc_group01,function Func2929)
    if loc_unit02!=null and Func0194(loc_unit02)==false then
        call SetUnitInvulnerable(loc_unit02,true)
    endif
    call Func0029(loc_group01)
endfunction

// 63406 ~ 63411
function Func2932 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2928))
    call TriggerAddAction(loc_trigger01,function Func2931)
endfunction
