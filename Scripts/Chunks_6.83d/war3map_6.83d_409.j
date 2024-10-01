
// 54865 ~ 54870
function Func2429 takes unit loc_unit01 returns boolean
    if Func0394(loc_unit01,integers089[integer385])!=null then
        return true
    endif
    return false
endfunction

// 54872 ~ 54930
function Func2430 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local boolean loc_boolean01=Func2429(loc_unit01)
    if GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT then
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
    endif
    if(GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT and loc_integer02>1)or(GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and Func0374(GetSpellAbilityId())and GetSpellTargetUnit()==loc_unit01)then
        if(GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT and loc_integer02>1)then
            if Func0194(loc_unit01)==false then
                call UnitRemoveAbility(loc_unit01,'A2Z7')
                call UnitRemoveAbility(loc_unit01,'A2Z9')
                call UnitRemoveAbility(loc_unit01,'A2Z8')
                call UnitRemoveAbility(loc_unit01,'A0WO')
                call UnitRemoveAbility(loc_unit01,'A31E')
                call UnitRemoveAbility(loc_unit01,'B009')
                call UnitRemoveAbility(loc_unit01,'B0DP')
                call UnitRemoveAbility(loc_unit01,'B0HN')
                call UnitRemoveAbility(loc_unit01,'B0HO')
            endif
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    elseif GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT then
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\BattleCryCaster.mdx",loc_unit01,"overhead"))
        if loc_boolean01 then
            if loc_integer03==1 then
                call Func0193(loc_unit01,'A2Z7')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2Z7',false)
                call Func0193(loc_unit01,'A31V')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A31V',false)
            endif
            if loc_integer03==2 then
                call Func0193(loc_unit01,'A2Z9')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2Z9',false)
                call Func0193(loc_unit01,'A31U')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A31U',false)
            endif
            if loc_integer03==3 then
                call Func0193(loc_unit01,'A2Z8')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2Z8',false)
                call Func0193(loc_unit01,'A31W')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A31W',false)
            endif
        else
            call Func0193(loc_unit01,'A0WO')
            call SetUnitAbilityLevel(loc_unit01,'A0WO',loc_integer03)
            call UnitMakeAbilityPermanent(loc_unit01,true,'A0WO')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0WO',false)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 54932 ~ 54947
function Func2431 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1WH')
    call TriggerRegisterTimerEvent(loc_trigger01,25,false)
    call TriggerRegisterTimerEvent(loc_trigger01,0.31,false)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2430))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 54949 ~ 54954
function Func2432 takes nothing returns boolean
    if GetSpellAbilityId()=='A1WH' and GetUnitTypeId(GetTriggerUnit())=='H001' then
        call Func2431()
    endif
    return false
endfunction

// 54956 ~ 54961
function Func2433 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2432))
    set loc_trigger01=null
endfunction
