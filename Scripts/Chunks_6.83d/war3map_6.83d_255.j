
// 45132 ~ 45138
function Func1813 takes nothing returns boolean
    if GetLearnedSkill()=='A0LV' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func0193(GetTriggerUnit(),'A2MC')
        call SetUnitAbilityLevel(GetTriggerUnit(),'A2MC',GetUnitAbilityLevel(GetTriggerUnit(),'A0LV'))
    endif
    return false
endfunction

// 45140 ~ 45148
function Func1814 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1808))
    call TriggerAddAction(loc_trigger01,function Func1812)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1813))
endfunction

// 45150 ~ 45155
function Func1815 takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A069'))then
        return false
    endif
    return true
endfunction

// 45157 ~ 45179
function Func1816 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(157)))
    local group loc_group01=Func0030()
    local unit loc_unit02
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),Condition(function Func1809))
    loop
        exitwhen(CountUnitsInGroup(loc_group01)<=loc_integer02)
        set loc_unit02=GroupPickRandomUnit(loc_group01)
        call GroupRemoveUnit(loc_group01,loc_unit02)
        call KillUnit(loc_unit02)
    endloop
    call Func0029(loc_group01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit02=null
    return false
endfunction

// 45181 ~ 45215
function Func1817 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit02,'A069')
    local integer loc_integer02=1
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit02))
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer04=GetHandleId(loc_trigger01)
    call Func0150(loc_unit01)
    if(loc_integer01==1)then
        set loc_integer02=1
        call Func0193(loc_unit01,'A0KO')
    endif
    if(loc_integer01==2)then
        set loc_integer02=2
        call Func0193(loc_unit01,'A0KQ')
    endif
    if(loc_integer01==3)then
        set loc_integer02=3
        call Func0193(loc_unit01,'A0KR')
    endif
    if(loc_integer01==4)then
        set loc_integer02=4
        call Func0193(loc_unit01,'A0KP')
    endif
    call Func0193(loc_unit01,'Aeth')
    call Func0193(loc_unit01,'A12G')
    call SaveUnitHandle(hashtable001,(loc_integer04),(2),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer04),(157),(loc_integer02))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1816))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 45217 ~ 45247
function Func1818 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03
    local real loc_real01
    local real loc_real02
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A28T')
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2YN')
    endif
    if IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01))then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call UnitAddAbility(loc_unit03,'A069')
        call SetUnitAbilityLevel(loc_unit03,'A069',loc_integer01)
        call IssueTargetOrder(loc_unit03,"charm",loc_unit02)
    else
        if Func0056(GetOwningPlayer(loc_unit01))then
            set loc_real01=GetRectCenterX(rect011)
            set loc_real02=GetRectCenterY(rect011)
        else
            set loc_real01=GetRectCenterX(rect004)
            set loc_real02=GetRectCenterY(rect004)
        endif
        if(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(loc_unit02))),(139)))==false then
            call Func1811(loc_unit02,loc_unit01,loc_integer01,loc_real01,loc_real02,false)
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 45249 ~ 45254
function Func1819 takes nothing returns boolean
    if(GetSpellAbilityId()=='A28T' or GetSpellAbilityId()=='A2YN')and Func0028(GetSpellTargetUnit())==false then
        call Func1818()
    endif
    return false
endfunction

// 45256 ~ 45266
function Func1820 takes nothing returns boolean
    if GetSpellAbilityId()=='A28T' then
        if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true then
            if IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)==true or IsUnitIllusion(GetSpellTargetUnit())then
                call Func0123(GetTriggerUnit())
                call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0K9'))
            endif
        endif
    endif
    return false
endfunction

// 45268 ~ 45280
function Func1821 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1815))
    call TriggerAddAction(loc_trigger01,function Func1817)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1820))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1819))
    set loc_trigger01=null
endfunction
