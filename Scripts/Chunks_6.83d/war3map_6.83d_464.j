
// 58808 ~ 58839
function Func2664 takes unit loc_unit01 returns nothing
    local unit loc_unit02=units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    local integer loc_integer01=GetHandleId(loc_unit02)
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local unit loc_unit03
    if GetUnitTypeId(loc_unit02)!='E01Y' then
        return
    endif
    set loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(348)))
    set loc_integer03=1
    loop
        exitwhen loc_integer03>loc_integer02
        set loc_integer05=(LoadInteger(hashtable001,(loc_integer01),(7000+loc_integer03)))
        set loc_unit03=Func0022(loc_integer05)
        if loc_unit03==loc_unit01 then
            set loc_integer04=loc_integer03
            loop
                exitwhen loc_integer04==loc_integer02
                call SaveInteger(hashtable001,(loc_integer01),(7000+loc_integer04),((LoadInteger(hashtable001,(loc_integer01),(7000+loc_integer04+1)))))
                set loc_integer04=loc_integer04+1
            endloop
            set loc_integer03=loc_integer02
        endif
        set loc_integer03=loc_integer03+1
    endloop
    call SaveInteger(hashtable001,(loc_integer01),(348),(loc_integer02-1))
    set loc_unit03=null
    set loc_unit02=null
endfunction

// 58841 ~ 58853
function Func2665 takes unit loc_unit01 returns nothing
    local unit loc_unit02=units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    local integer loc_integer01=GetHandleId(loc_unit02)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(348)))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(786),(((TimerGetElapsed(timer001)))*1.0))
    set loc_integer02=loc_integer02+1
    call SaveInteger(hashtable001,(loc_integer01),(7000+loc_integer02),(Func0024(loc_unit01)))
    call SaveInteger(hashtable001,(loc_integer01),(348),(loc_integer02))
    if booleans024[GetPlayerId(GetOwningPlayer(loc_unit02))]then
        call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit02))
    endif
    set loc_unit02=null
endfunction

// 58855 ~ 58857
function Func2666 takes nothing returns nothing
    call Func2664(GetTriggerUnit())
endfunction

// 58859 ~ 58870
function Func2667 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0RP')*3+2
    local integer loc_integer02=GetHandleId(loc_unit01)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer02),(348)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer02),(7000+1)))
    local unit loc_unit02=Func0022(loc_integer04)
    if loc_integer03>=loc_integer01 then
        call Func2664(loc_unit02)
        call RemoveUnit(loc_unit02)
    endif
    set loc_unit02=null
endfunction

// 58872 ~ 58879
function Func2668 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
    call Func0193(loc_unit01,'A0RU')
    call SetUnitAbilityLevel(loc_unit01,'A0RU',integer493)
    call IssueTargetOrder(loc_unit01,"slow",GetEnumUnit())
    call Func0193(loc_unit01,'A0S7')
    set loc_unit01=null
endfunction

// 58881 ~ 58907
function Func2669 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group01=Func0030()
    local real loc_real03=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(786)))
    local real loc_real04=(TimerGetElapsed(timer001))-loc_real03
    local integer loc_integer01=1
    if loc_real04>4 then
        set loc_integer01=5
    elseif loc_real04>3 then
        set loc_integer01=4
    elseif loc_real04>2 then
        set loc_integer01=3
    elseif loc_real04>1 then
        set loc_integer01=2
    endif
    set integer493=loc_integer01
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl",loc_real01,loc_real02))
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,400,Condition(function Func0298))
    call ForGroup(loc_group01,function Func2668)
    call Func0029(loc_group01)
    call Func2664(loc_unit01)
    call RemoveUnit(loc_unit01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 58909 ~ 58911
function Func2670 takes nothing returns boolean
    return GetOwningPlayer(GetFilterUnit())==player005 and GetUnitTypeId(GetFilterUnit())=='e020'
endfunction

// 58913 ~ 58919
function Func2671 takes nothing returns nothing
    local real loc_real01=Func0178(GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),real009,real010)
    local real loc_real02=Func0178(GetUnitX(unit124),GetUnitY(unit124),real009,real010)
    if loc_real01<loc_real02 then
        set unit124=GetEnumUnit()
    endif
endfunction

// 58921 ~ 58932
function Func2672 takes nothing returns nothing
    local group loc_group01=Func0030()
    set player005=GetOwningPlayer(GetTriggerUnit())
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),9000,Condition(function Func2670))
    set unit124=FirstOfGroup(loc_group01)
    set real009=GetUnitX(GetTriggerUnit())
    set real010=GetUnitY(GetTriggerUnit())
    call ForGroup(loc_group01,function Func2671)
    call IssueImmediateOrder((unit124),"locustswarm")
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 58934 ~ 58936
function Func2673 takes nothing returns nothing
    call Func0193(GetTriggerUnit(),'A2XJ')
endfunction

// 58938 ~ 58945
function Func2674 takes nothing returns nothing
    local location loc_location01=GetSpellTargetLoc()
    call Func0193(GetTriggerUnit(),'A2XJ')
    call Func2667(GetTriggerUnit())
    call Func2665(CreateUnit(GetOwningPlayer(GetTriggerUnit()),'e020',GetLocationX(loc_location01),GetLocationY(loc_location01),0))
    call RemoveLocation(loc_location01)
    set loc_location01=null
endfunction

// 58947 ~ 58955
function Func2675 takes nothing returns boolean
    if GetSpellAbilityId()=='A0RP' then
        call Func2674()
    endif
    if GetSpellAbilityId()=='A2XJ' then
        call Func2672()
    endif
    return false
endfunction

// 58957 ~ 58962
function Func2676 takes nothing returns boolean
    if GetSpellAbilityId()=='A0RQ' then
        call Func2669()
    endif
    return false
endfunction

// 58964 ~ 58969
function Func2677 takes nothing returns boolean
    if GetLearnedSkill()=='A0RP' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0RP')==1 then
        call Func0193(GetTriggerUnit(),'A2XJ')
    endif
    return false
endfunction

// 58971 ~ 58976
function Func2678 takes nothing returns boolean
    if GetUnitTypeId(GetDyingUnit())=='e020' then
        call Func2664(GetTriggerUnit())
    endif
    return false
endfunction

// 58978 ~ 58992
function Func2679 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2675))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2678))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2676))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2677))
    set loc_trigger01=null
endfunction
