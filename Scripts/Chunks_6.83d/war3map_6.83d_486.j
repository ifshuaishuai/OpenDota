
// 60272 ~ 60283
function Func2762 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or IssueImmediateOrder(loc_unit01,"windwalk")then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 60285 ~ 60293
function Func2763 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2762))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    set loc_trigger01=null
endfunction

// 60295 ~ 60338
function Func2764 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,'A0NS')
    local integer loc_integer03=3+loc_integer02
    local real loc_real01
    local boolean loc_boolean01=false
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit02,'A1DA')
        set loc_integer03=4+1*loc_integer02
        set loc_boolean01=true
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED and((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4250))))==1)then
        if loc_unit01==loc_unit02 then
            call Func0145(loc_unit01,GetEventDamage())
            call Func0145(loc_unit01,GetEventDamage())
        elseif loc_boolean01 and Func0147(loc_unit01,loc_unit02)<900 and IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))then
            call Func0145(loc_unit01,GetEventDamage()*0.35)
            call Func0145(loc_unit02,GetEventDamage()*0.35)
        endif
    elseif loc_unit01==loc_unit02 and((GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and(GetSpellAbilityId()=='A0NS' or GetSpellAbilityId()=='A1DA'))or(GetTriggerEventId()==EVENT_UNIT_DAMAGED and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4251))))==1)==false and GetUnitState(loc_unit01,UNIT_STATE_LIFE)<400 and GetUnitAbilityLevel(loc_unit01,'BNdo')==0))then
        call TimerStart(timers003[GetPlayerId(GetOwningPlayer(loc_unit01))],70-10*loc_integer02,false,null)
        call Func0044(loc_unit01,4250,loc_integer03)
        call Func0044(loc_unit01,4251,70-10*loc_integer02)
        call UnitRemoveBuffs(loc_unit01,false,true)
        call Func0371(loc_unit01,0,0)
        if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
            call DisableTrigger(loc_trigger01)
            set boolean145=true
            if IssueImmediateOrder(loc_unit01,"windwalk")==false then
                call Func2763(loc_unit01)
            endif
            set boolean145=false
            call EnableTrigger(loc_trigger01)
        endif
        call Func0161("Abilities\\Spells\\Undead\\Unsummon\\UnsummonTarget.mdl",loc_unit01,"origin",loc_integer03)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 60340 ~ 60366
function Func2765 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01
    local region loc_region01
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2764))
    set trigger068=loc_trigger01
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,0,0,999999,Condition(function Func0350))
    call ForGroup(loc_group01,function Func2761)
    call Func0029(loc_group01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveTriggerHandle(hashtable001,(loc_integer01),(35),(trigger068))
    set loc_region01=CreateRegion()
    call RegionAddRect(loc_region01,GetWorldBounds())
    call TriggerRegisterEnterRegion(loc_trigger01,loc_region01,Condition(function Func0011))
    call TriggerAddCondition(loc_trigger01,Condition(function Func2760))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_region01=null
endfunction

// 60368 ~ 60373
function Func2766 takes nothing returns boolean
    if(GetLearnedSkill()=='A0NS' or GetLearnedSkill()=='A1DA')and IsUnitIllusion(GetTriggerUnit())==false and(GetUnitAbilityLevel(GetTriggerUnit(),'A0NS')==1 or GetUnitAbilityLevel(GetTriggerUnit(),'A1DA')==1)then
        call Func2765()
    endif
    return false
endfunction

// 60375 ~ 60380
function Func2767 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2766))
    set loc_trigger01=null
endfunction
