
// 89127 ~ 89134
function Func4276 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=GetHeroAgi(loc_unit01,false)
    local integer loc_integer03=GetHeroStr(loc_unit01,false)
    local integer loc_integer04=GetHeroInt(loc_unit01,false)
    call SetHeroAgi(loc_unit01,loc_integer02+loc_integer01,true)
    call SetHeroStr(loc_unit01,loc_integer03+loc_integer01,true)
    call SetHeroInt(loc_unit01,loc_integer04+loc_integer01,true)
endfunction

// 89136 ~ 89190
function Func4277 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(744)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2G2')
    local integer loc_integer04=(R2I((TimerGetElapsed(timer001))/60))
    local real loc_real01=loc_integer03+1+(0.1+0.1*loc_integer03)*loc_integer04
    local integer loc_integer05=3+3*loc_integer03+R2I((0.1+0.1*loc_integer03)*loc_integer04)
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A2G2' then
            if loc_unit02!=null and loc_unit02!=GetSpellTargetUnit()then
                call UnitRemoveAbility(loc_unit02,'A2IO')
                call Func4275(loc_unit02,loc_integer02)
                call Func4275(loc_unit01,loc_integer02)
                call SaveInteger(hashtable001,(loc_integer01),(744),(0))
            endif
            set loc_unit02=GetSpellTargetUnit()
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
            call Func0193(loc_unit02,'A2IO')
            call Func0161("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",loc_unit01,"chest",1.9)
            call Func0161("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",loc_unit02,"chest",1.9)
            return false
        else
            return false
        endif
    endif
    if loc_unit02==null then
    elseif Func0194(loc_unit02)or Func0194(loc_unit01)or Func0147(loc_unit01,loc_unit02)>1400 then
        call Func4275(loc_unit01,loc_integer02)
        call Func4275(loc_unit02,loc_integer02)
        call SaveInteger(hashtable001,(loc_integer01),(744),(0))
        call UnitRemoveAbility(loc_unit01,'A2IO')
        call UnitRemoveAbility(loc_unit02,'A2IO')
    else
        if GetUnitAbilityLevel(loc_unit01,'A2IO')==0 then
            call Func0193(loc_unit01,'A2IO')
        endif
        if GetUnitAbilityLevel(loc_unit02,'A2IO')==0 then
            call Func0193(loc_unit02,'A2IO')
        endif
        if loc_integer02!=loc_integer05 then
            call Func4276(loc_unit01,loc_integer05-loc_integer02)
            call Func4276(loc_unit02,loc_integer05-loc_integer02)
            call SaveInteger(hashtable001,(loc_integer01),(744),(loc_integer05))
        endif
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_real01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 89192 ~ 89204
function Func4278 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4277))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(null))
    call SaveInteger(hashtable001,(loc_integer01),(744),(0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 89206 ~ 89211
function Func4279 takes nothing returns boolean
    if GetLearnedSkill()=='A2G2' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A2G2')==1 then
        call Func4278()
    endif
    return false
endfunction

// 89213 ~ 89218
function Func4280 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4279))
    set loc_trigger01=null
endfunction
