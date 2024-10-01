
// 90133 ~ 90148
function Func4338 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(422)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(423)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(424)))
    call SetHeroAgi(loc_unit01,GetHeroAgi(loc_unit01,false)+loc_integer02,true)
    call SetHeroStr(loc_unit01,GetHeroStr(loc_unit01,false)+loc_integer03,true)
    call SetHeroInt(loc_unit01,GetHeroInt(loc_unit01,false)+loc_integer04,true)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 90150 ~ 90195
function Func4339 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2FK')
    local trigger loc_trigger01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local real loc_real01
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        set loc_integer03=Func0045(loc_unit02)
        set loc_real01=0.15
        if loc_integer03==2 then
            set loc_integer04=R2I(loc_real01*GetHeroAgi(loc_unit02,false))-1
            set loc_integer05=0
            set loc_integer06=0
        elseif loc_integer03==3 then
            set loc_integer04=0
            set loc_integer05=R2I(loc_real01*GetHeroStr(loc_unit02,false))-1
            set loc_integer06=0
        elseif loc_integer03==1 then
            set loc_integer04=0
            set loc_integer05=0
            set loc_integer06=R2I(loc_real01*GetHeroInt(loc_unit02,false))-1
        endif
        call SetHeroAgi(loc_unit02,GetHeroAgi(loc_unit02,false)-loc_integer04,true)
        call SetHeroStr(loc_unit02,GetHeroStr(loc_unit02,false)-loc_integer05,true)
        call SetHeroInt(loc_unit02,GetHeroInt(loc_unit02,false)-loc_integer06,true)
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,7,false)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4338))
        call SaveInteger(hashtable001,(loc_integer02),(422),(loc_integer04))
        call SaveInteger(hashtable001,(loc_integer02),(424),(loc_integer06))
        call SaveInteger(hashtable001,(loc_integer02),(423),(loc_integer05))
        call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
        set loc_trigger01=null
    endif
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",loc_unit02,"chest"))
    call Func0115(loc_unit01,loc_unit02,integer551,50+50*loc_integer01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 90197 ~ 90216
function Func4340 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local real loc_real03=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)*bj_DEGTORAD
    set loc_real01=GetUnitX(loc_unit01)
    set loc_real02=GetUnitY(loc_unit01)
    if Func0180(loc_real01,loc_real02,real398)>0 then
        set integer551=3
    else
        set integer551=1
    endif
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,real398+25,Condition(function Func0298))
    call ForGroup(loc_group01,function Func4339)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\WhirlingDeath_01.mdx",loc_unit01,"origin"))
    set loc_unit01=null
    set loc_group01=null
endfunction

// 90218 ~ 90223
function Func4341 takes nothing returns boolean
    if GetSpellAbilityId()=='A2FK' then
        call Func4340()
    endif
    return false
endfunction

// 90225 ~ 90230
function Func4342 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4341))
    set loc_trigger01=null
endfunction
