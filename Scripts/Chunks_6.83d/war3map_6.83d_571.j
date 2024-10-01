
// 66094 ~ 66102
function Func3094 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit03,'A0VI')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    if Func0098(loc_unit02)==false then
        call Func0115(loc_unit01,loc_unit02,1,loc_integer01*7)
    endif
    set loc_unit03=null
endfunction

// 66104 ~ 66128
function Func3095 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamage()>10 and((LoadInteger(hashtable001,(GetHandleId((loc_trigger01))),((4263))))==1)==false and GetOwningPlayer(GetEventDamageSource())!=GetOwningPlayer(GetTriggerUnit())then
            call DisableTrigger(loc_trigger01)
            call Func3094(loc_unit02,loc_unit01,loc_integer03)
            call EnableTrigger(loc_trigger01)
            call Func0039(loc_trigger01,4263,0.8-loc_integer03*0.0285)
        endif
    else
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 66130 ~ 66147
function Func3096 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001)))
    call TriggerRegisterTimerEvent(loc_trigger01,2.5+loc_integer02*0.5,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3095))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Weapons\\SpiritOfVengeanceMissile\\SpiritOfVengeanceMissile.mdl",loc_unit02,"overhead")))
    call Func3094(loc_unit01,loc_unit02,loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 66149 ~ 66154
function Func3097 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VZ' then
        call Func3096()
    endif
    return false
endfunction

// 66156 ~ 66162
function Func3098 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3097))
    call Func0134('A0VI',GetRandomReal(1,25))
    set loc_trigger01=null
endfunction
