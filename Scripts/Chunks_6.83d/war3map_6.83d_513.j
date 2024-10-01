
// 62348 ~ 62354
function Func2864 takes nothing returns boolean
    if GetSpellAbilityId()=='A311' and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and GetSpellTargetUnit()!=GetTriggerUnit()and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n038'))
    endif
    return false
endfunction

// 62356 ~ 62364
function Func2865 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2864))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2863))
    set loc_trigger01=null
endfunction

// 62366 ~ 62400
function Func2866 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2ZS')
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(279)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(1400+1)))
    local integer loc_integer04=1
    local integer loc_integer05=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(830)))
    if loc_integer05>0 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'o003',GetSpellTargetX(),GetSpellTargetY(),GetRandomReal(0,360))
        set loc_integer03=loc_integer03+1
        call SaveUnitHandle(hashtable001,(loc_integer01),(1400+loc_integer03),(loc_unit02))
        call SetUnitAbilityLevel(loc_unit02,'A0BF',loc_integer02)
        if(loc_integer03>loc_integer02*2)then
            call KillUnit(loc_unit03)
            loop
                exitwhen loc_integer04==loc_integer03
                call SaveUnitHandle(hashtable001,(loc_integer01),(1400+loc_integer04),((LoadUnitHandle(hashtable001,(loc_integer01),(1400+loc_integer04+1)))))
                set loc_integer04=loc_integer04+1
            endloop
            set loc_integer03=loc_integer03-1
        endif
        call SaveInteger(hashtable001,(loc_integer01),(279),(loc_integer03))
        call UnitRemoveAbility(loc_unit01,integers163[loc_integer05])
        set loc_integer05=loc_integer05-1
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(830),(loc_integer05))
        call Func0193(loc_unit01,integers163[loc_integer05])
    else
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0NY'))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 62402 ~ 62407
function Func2867 takes nothing returns boolean
    if GetSpellAbilityId()=='A2ZU' or GetSpellAbilityId()=='A2ZX' or GetSpellAbilityId()=='A2ZW' or GetSpellAbilityId()=='A2ZT' or GetSpellAbilityId()=='A2ZV' then
        call Func2866()
    endif
    return false
endfunction

// 62409 ~ 62421
function Func2868 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2ZS')
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(279)))
    local integer loc_integer04=1
    local unit loc_unit02
    loop
        exitwhen loc_integer04>loc_integer03
        set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(1400+loc_integer04)))
        call SetUnitAbilityLevel(loc_unit02,'A0BF',loc_integer02)
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 62423 ~ 62425
function Func2869 takes nothing returns boolean
    return GetLearnedSkill()=='A2ZS' and IsUnitIllusion(GetTriggerUnit())==false
endfunction
