
// 63246 ~ 63265
function Func2922 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4303)),(2))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call SetUnitInvulnerable(loc_unit02,false)
    call PauseUnit(loc_unit02,false)
    call ShowUnit(loc_unit02,true)
    call ClearSelectionForPlayer(GetOwningPlayer(loc_unit02))
    call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit02))
    call RemoveSavedHandle(hashtable001,(GetHandleId(loc_unit01)),(748))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 63267 ~ 63307
function Func2923 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0OJ')
    local integer loc_integer02=Func0138(GetHeroInt(loc_unit02,false),1+loc_integer01*3)
    local trigger loc_trigger01
    local integer loc_integer03
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'o019',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitApplyTimedLife(loc_unit03,'BTLF',(loc_integer01+1))
    if(IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01)))==false or Func0028(GetSpellTargetUnit())==false then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4303)),(1))
        set loc_trigger01=CreateTrigger()
        set loc_integer03=GetHandleId(loc_trigger01)
        call SelectUnitRemoveForPlayer(loc_unit02,GetOwningPlayer(loc_unit02))
        call SetUnitInvulnerable(loc_unit02,true)
        call PauseUnit(loc_unit02,true)
        call ShowUnit(loc_unit02,false)
        call SaveEffectHandle(hashtable001,(loc_integer03),(32),(AddSpecialEffect("Abilities\\Spells\\Demon\\DarkConversion\\ZombifyTarget.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02))))
        call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
        call TriggerRegisterTimerEvent(loc_trigger01,loc_integer01,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2922))
        if(IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01)))==true then
            call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(748),(loc_unit02))
            call SetHeroInt(loc_unit02,GetHeroInt(loc_unit02,false)-loc_integer02,true)
            call SetHeroInt(loc_unit01,GetHeroInt(loc_unit01,false)+loc_integer02,true)
            set loc_trigger01=CreateTrigger()
            set loc_integer03=GetHandleId(loc_trigger01)
            call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
            call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
            call SaveInteger(hashtable001,(loc_integer03),(262),(loc_integer02))
            call TriggerRegisterTimerEvent(loc_trigger01,50,false)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
            call TriggerAddCondition(loc_trigger01,Condition(function Func2921))
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 63309 ~ 63314
function Func2924 takes nothing returns boolean
    if GetSpellAbilityId()=='A0OJ' then
        call Func2923()
    endif
    return false
endfunction
