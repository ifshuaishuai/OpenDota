
// 75040 ~ 75042
function Func3592 takes nothing returns boolean
    return GetSpellAbilityId()==('A0H9')
endfunction

// 75044 ~ 75052
function Func3593 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local unit loc_unit02=GetTriggerUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit03)),(387),(loc_unit01))
    call Func0193(loc_unit03,('A0N9'))
    call SetUnitAbilityLevel(loc_unit03,('A0N9'),GetUnitAbilityLevel(loc_unit02,('A0H9')))
    call IssueTargetOrderById(loc_unit03,852274,loc_unit02)
endfunction

// 75054 ~ 75056
function Func3594 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction

// 75058 ~ 75088
function Func3595 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(386)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(387)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(385)))
    if GetTriggerEventId()!=EVENT_UNIT_DEATH and GetTriggerEventId()!=EVENT_UNIT_ISSUED_TARGET_ORDER and GetTriggerEventId()!=EVENT_UNIT_ISSUED_POINT_ORDER then
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(385),(loc_integer02))
    endif
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DisableTrigger(GetTriggeringTrigger())
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call SaveInteger(hashtable001,(loc_integer01),(385),(loc_integer02))
        if loc_unit02==GetTriggerUnit()then
            call KillUnit(loc_unit01)
        endif
    elseif IsUnitPaused(loc_unit01)==false then
        if loc_integer02==2 then
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
        endif
        if loc_integer02>1 then
            call DisableTrigger(GetTriggeringTrigger())
            call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
            call EnableTrigger(GetTriggeringTrigger())
        else
            call DisableTrigger(GetTriggeringTrigger())
            call IssueTargetOrderById(loc_unit01,851986,loc_unit02)
            call EnableTrigger(GetTriggeringTrigger())
        endif
    endif
endfunction

// 75090 ~ 75092
function Func3596 takes nothing returns boolean
    return GetUnitAbilityLevel(GetSummonedUnit(),('B06L'))>0
endfunction

// 75094 ~ 75117
function Func3597 takes nothing returns nothing
    local unit loc_unit01=GetSummoningUnit()
    local unit loc_unit02=GetSummonedUnit()
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(387)))
    local trigger loc_trigger01=CreateTrigger()
    call SaveUnitHandle(hashtable001,(GetHandleId(units001[GetPlayerId(GetOwningPlayer(loc_unit01))])),(7100+GetHandleId(loc_unit02)),(loc_unit03))
    call SetUnitPathing(loc_unit02,false)
    call SetUnitMoveSpeed(loc_unit02,400)
    call SetUnitX(loc_unit02,GetUnitX(loc_unit03))
    call SetUnitY(loc_unit02,GetUnitY(loc_unit03))
    call IssueTargetOrderById(loc_unit02,851986,loc_unit03)
    call SetUnitVertexColor(loc_unit02,255,255,255,50)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddAction(loc_trigger01,function Func3595)
    call DestroyEffect(AddSpecialEffect("units\\nightelf\\SpiritOfVengeance\\SpiritOfVengeance.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(387),(loc_unit03))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(386),(loc_unit02))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(385),(0))
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_unit01)))
endfunction

// 75119 ~ 75135
function Func3598 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func3594)
    local sound loc_sound01
    call Func0193(GetTriggerUnit(),('A0HA'))
    call SetUnitPathing(loc_unit01,false)
    call GroupEnumUnitsInRect(loc_group01,bj_mapInitialPlayableArea,loc_boolexpr01)
    call ForGroup(loc_group01,function Func3593)
    call SetUnitPathing(loc_unit01,true)
    if FirstOfGroup(loc_group01)!=null then
        set loc_sound01=CreateSound("Abilities\\Spells\\Other\\ANsa\\SacrificeUnit.wav",false,false,false,10,10,"DefaultEAXON")
        call StartSound(loc_sound01)
        call KillSoundWhenDone(loc_sound01)
    endif
    call Func0029(loc_group01)
endfunction

// 75137 ~ 75139
function Func3599 takes nothing returns boolean
    return GetLearnedSkill()==('A0H9')and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),('A0H9'))==1
endfunction

// 75141 ~ 75143
function Func3600 takes nothing returns nothing
    call Func0193(GetTriggerUnit(),('A0HA'))
endfunction

// 75145 ~ 75160
function Func3601 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3592))
    call TriggerAddAction(loc_trigger01,function Func3598)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3596))
    call TriggerAddAction(loc_trigger01,function Func3597)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3599))
    call TriggerAddAction(loc_trigger01,function Func3600)
    call CreateSound("Abilities\\Spells\\Other\\ANsa\\SacrificeUnit.wav",false,false,false,10,10,"DefaultEAXON")
    call Func0132(('A0N9'))
endfunction

// 75162 ~ 75164
function Func3602 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'B06L')>0
endfunction

// 75166 ~ 75172
function Func3603 takes nothing returns nothing
    local real loc_real01=Func0148(GetEnumUnit(),GetSpellTargetLoc())
    if loc_real01<real002 then
        set unit002=GetEnumUnit()
        set real002=loc_real01
    endif
endfunction

// 75174 ~ 75183
function Func3604 takes nothing returns unit
    local group loc_group01=Func0030()
    set unit002=null
    set real002=9999999
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetTriggerUnit()),Condition(function Func3602))
    call ForGroup(loc_group01,function Func3603)
    set group027=loc_group01
    set loc_group01=null
    return unit002
endfunction

// 75185 ~ 75187
function Func3605 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
endfunction
