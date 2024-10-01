
// 78306 ~ 78320
function Func3773 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==false then
        set boolean152=true
        call Func0115(loc_unit01,loc_unit02,1,loc_real01)
        set boolean152=false
    else
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_real01)
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 78322 ~ 78332
function Func3774 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call Func3771(loc_unit01,(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(443))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 78334 ~ 78353
function Func3775 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId((loc_unit01))),(450)))
    local trigger loc_trigger01=Func0196(loc_unit01,loc_unit02,'h0BE',"Func3773",1000,false)
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SaveReal(hashtable001,(loc_integer02),(20),((20+loc_integer01*65)*1.0))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AntiMagicShell\\AntiMagicShell.mdl",loc_unit01,"chest"))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(443),((0)*1.0))
    call Func3771(loc_unit01,0)
    call Func0044(loc_unit01,2484,4)
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3774))
    call TriggerRegisterTimerEvent(loc_trigger01,4,false)
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 78355 ~ 78371
function Func3776 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A1NA')then
        if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
            call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(443),(((LoadReal(hashtable001,(GetHandleId(loc_unit01)),(443)))-loc_real01)*1.0))
        endif
        call Func3771(loc_unit01,(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(443))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 78373 ~ 78396
function Func3777 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local texttag loc_texttag01=CreateTextTag()
    local boolean loc_boolean01=false
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3772))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
    if GetOwningPlayer(loc_unit01)==GetLocalPlayer()then
        set loc_boolean01=true
    endif
    call SetTextTagText(loc_texttag01," ",0.023)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagVisibility(loc_texttag01,loc_boolean01)
    call SetTextTagPermanent(loc_texttag01,true)
    set units030[GetPlayerId(GetOwningPlayer(loc_unit01))]=loc_unit01
    call SaveReal(hashtable001,(loc_integer01),(443),((0)*1.0))
    call Func3771(loc_unit01,0)
    call SaveTextTagHandle(hashtable001,(loc_integer01),(451),(loc_texttag01))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_texttag01=null
endfunction

// 78398 ~ 78420
function Func3778 takes unit loc_unit01,unit loc_unit02 returns nothing
    local real loc_real01=GetEventDamage()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1NA')
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(443)))
    local trigger loc_trigger01
    local integer loc_integer02
    if Func0147(loc_unit01,loc_unit02)<1400 and boolean152==false then
        if Func0101(loc_real01)and GetEventDamage()>2 and GetEventDamageSource()!=GetTriggerUnit()and(Func0058(GetOwningPlayer(GetEventDamageSource()))or GetUnitTypeId(GetEventDamageSource())=='n00L')then
            set loc_real02=loc_real02+loc_real01
            call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(443),((loc_real02)*1.0))
            set loc_trigger01=CreateTrigger()
            set loc_integer02=GetHandleId(loc_trigger01)
            call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
            call SaveReal(hashtable001,(loc_integer02),(20),((loc_real01)*1.0))
            call TriggerRegisterTimerEvent(loc_trigger01,6,false)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
            call TriggerAddCondition(loc_trigger01,Condition(function Func3776))
            call Func3771(loc_unit01,loc_real02)
        endif
    endif
    set loc_trigger01=null
endfunction

// 78422 ~ 78431
function Func3779 takes nothing returns nothing
    local integer loc_integer01=0
    loop
        exitwhen loc_integer01>12
        if units030[loc_integer01]!=null then
            call Func3778(units030[loc_integer01],GetTriggerUnit())
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 78433 ~ 78438
function Func3780 takes nothing returns boolean
    if GetLearnedSkill()=='A1NA' and GetUnitAbilityLevel(GetTriggerUnit(),'A1NA')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3777()
    endif
    return false
endfunction

// 78440 ~ 78445
function Func3781 takes nothing returns boolean
    if GetSpellAbilityId()=='A1NA' then
        call Func3775()
    endif
    return false
endfunction

// 78447 ~ 78456
function Func3782 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3780))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3781))
    set loc_trigger01=null
    call Func1158("Func3779")
endfunction

// 78470 ~ 78472
function Func3783 takes nothing returns boolean
    return GetSpellAbilityId()==('A06P')
endfunction

// 78474 ~ 78476
function Func3784 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit002))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1
endfunction
