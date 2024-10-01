
// 72306 ~ 72393
function Func3438 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A24Q')
    local integer loc_integer03
    local real loc_real01
    local real loc_real02=3+loc_integer02
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetTriggerEvalCount(loc_trigger01)>4*loc_real02 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit02,'A24Z')
        call UnitRemoveAbility(loc_unit02,'A250')
        call UnitRemoveAbility(loc_unit02,'A24X')
        call UnitRemoveAbility(loc_unit02,'A251')
        call UnitRemoveAbility(loc_unit02,'A24Y')
        call UnitRemoveAbility(loc_unit02,'B0EH')
    else
        set loc_real01=100*GetUnitState(loc_unit02,UNIT_STATE_LIFE)/GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)
        if loc_real01<20 then
            set loc_integer03=5
        elseif loc_real01<40 then
            set loc_integer03=4
        elseif loc_real01<60 then
            set loc_integer03=3
        elseif loc_real01<80 then
            set loc_integer03=2
        else
            set loc_integer03=1
        endif
        if loc_integer03==1 then
            if GetUnitAbilityLevel(loc_unit02,'A24Z')==0 then
                call UnitRemoveAbility(loc_unit02,'A250')
                call UnitRemoveAbility(loc_unit02,'A24X')
                call UnitRemoveAbility(loc_unit02,'A251')
                call UnitRemoveAbility(loc_unit02,'A24Y')
                call UnitRemoveAbility(loc_unit02,'B0EH')
                call UnitAddAbility(loc_unit02,'A24Z')
            endif
        elseif loc_integer03==2 then
            if GetUnitAbilityLevel(loc_unit02,'A250')==0 then
                call UnitRemoveAbility(loc_unit02,'A24Z')
                call UnitRemoveAbility(loc_unit02,'A24X')
                call UnitRemoveAbility(loc_unit02,'A251')
                call UnitRemoveAbility(loc_unit02,'A24Y')
                call UnitRemoveAbility(loc_unit02,'B0EH')
                call UnitAddAbility(loc_unit02,'A250')
            endif
        elseif loc_integer03==3 then
            if GetUnitAbilityLevel(loc_unit02,'A24X')==0 then
                call UnitRemoveAbility(loc_unit02,'A24Z')
                call UnitRemoveAbility(loc_unit02,'A250')
                call UnitRemoveAbility(loc_unit02,'A251')
                call UnitRemoveAbility(loc_unit02,'A24Y')
                call UnitRemoveAbility(loc_unit02,'B0EH')
                call UnitAddAbility(loc_unit02,'A24X')
            endif
        elseif loc_integer03==4 then
            if GetUnitAbilityLevel(loc_unit02,'A251')==0 then
                call UnitRemoveAbility(loc_unit02,'A24Z')
                call UnitRemoveAbility(loc_unit02,'A250')
                call UnitRemoveAbility(loc_unit02,'A24X')
                call UnitRemoveAbility(loc_unit02,'A24Y')
                call UnitRemoveAbility(loc_unit02,'B0EH')
                call UnitAddAbility(loc_unit02,'A251')
            endif
        elseif loc_integer03==5 then
            if GetUnitAbilityLevel(loc_unit02,'A24Y')==0 then
                call UnitRemoveAbility(loc_unit02,'A24Z')
                call UnitRemoveAbility(loc_unit02,'A250')
                call UnitRemoveAbility(loc_unit02,'A24X')
                call UnitRemoveAbility(loc_unit02,'A251')
                call UnitRemoveAbility(loc_unit02,'B0EH')
                call UnitAddAbility(loc_unit02,'A24Y')
            endif
        endif
        call Func0115(loc_unit01,loc_unit02,1,0.01*4*0.25*GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE))
        if ModuloInteger(GetTriggerEvalCount(loc_trigger01),4)==0 then
            call CreateCorpse(GetOwningPlayer(loc_unit01),'ugho',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 72395 ~ 72415
function Func3439 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A24Q')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffectTarget("effects\\EntanglingBonesTarget.mdx",loc_unit02,"chest")))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3438))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A24Z',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A250',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A24X',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A251',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A24Y',false)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 72417 ~ 72422
function Func3440 takes nothing returns boolean
    if GetSpellAbilityId()=='A24Q' and Func0028(GetSpellTargetUnit())==false then
        call Func3439()
    endif
    return false
endfunction

// 72424 ~ 72429
function Func3441 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3440))
    set loc_trigger01=null
endfunction
