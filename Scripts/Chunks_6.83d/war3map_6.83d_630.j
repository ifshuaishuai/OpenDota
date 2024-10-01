
// 70605 ~ 70607
function Func3325 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and GetUnitAbilityLevel(GetFilterUnit(),'B084')>0
endfunction

// 70609 ~ 70625
function Func3326 takes nothing returns boolean
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01
    if Func0194(loc_unit01)==false then
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit350=loc_unit01
        set integer518=GetUnitAbilityLevel(loc_unit01,'A01N')
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1225,Condition(function Func3325))
        call ForGroup(loc_group01,function Func3324)
        call Func0029(loc_group01)
    endif
    set loc_group01=null
    set loc_unit01=null
    return false
endfunction

// 70627 ~ 70633
function Func3327 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3326))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 70635 ~ 70640
function Func3328 takes nothing returns boolean
    if GetLearnedSkill()=='A01N' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A01N')==1 then
        call Func3327()
    endif
    return false
endfunction

// 70642 ~ 70647
function Func3329 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3328))
    set loc_trigger01=null
endfunction
