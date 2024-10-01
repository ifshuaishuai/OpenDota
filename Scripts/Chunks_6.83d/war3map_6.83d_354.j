
// 51492 ~ 51534
function Func2220 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))-1
    local texttag loc_texttag01
    call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_texttag01=CreateTextTag()
        call SetTextTagText(loc_texttag01,I2S(loc_integer02),0.03)
        call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
        call SetTextTagColorBJ(loc_texttag01,0,29,255,15)
        call SetTextTagVelocity(loc_texttag01,0,0.035)
        call SetTextTagFadepoint(loc_texttag01,3)
        call SetTextTagLifespan(loc_texttag01,0.9)
        call SetTextTagPermanent(loc_texttag01,false)
        call SetTextTagVisibility(loc_texttag01,false)
        if GetOwningPlayer(loc_unit01)==GetLocalPlayer()then
            call SetTextTagVisibility(loc_texttag01,true)
        endif
        set loc_texttag01=CreateTextTag()
        call SetTextTagText(loc_texttag01,I2S(loc_integer02),0.03)
        call SetTextTagPosUnit(loc_texttag01,loc_unit02,0)
        call SetTextTagColorBJ(loc_texttag01,0,29,255,15)
        call SetTextTagVelocity(loc_texttag01,0,0.035)
        call SetTextTagFadepoint(loc_texttag01,3)
        call SetTextTagLifespan(loc_texttag01,0.9)
        call SetTextTagPermanent(loc_texttag01,false)
        call SetTextTagVisibility(loc_texttag01,false)
        if GetOwningPlayer(loc_unit01)==GetLocalPlayer()then
            call SetTextTagVisibility(loc_texttag01,true)
        endif
    endif
    set loc_trigger01=null
    set loc_texttag01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 51536 ~ 51550
function Func2221 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(229)))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    call RemoveUnit(loc_unit02)
    call UnitRemoveAbility(loc_unit01,('A0GC'))
    if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==('A0G8')then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),('A0G8'),true)
    endif
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger01)))
    call Func0035((loc_trigger01))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 51552 ~ 51557
function Func2222 takes nothing returns boolean
    if GetSpellAbilityId()==('A0GC')then
        return true
    endif
    return false
endfunction

// 51559 ~ 51573
function Func2223 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(229)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
    call KillUnit(loc_unit02)
    call SetUnitX(loc_unit01,loc_real01)
    call SetUnitY(loc_unit01,loc_real02)
    call PanCameraToTimedForPlayer(GetOwningPlayer(loc_unit01),loc_real01,loc_real02,0)
    call IssueImmediateOrder(loc_unit01,"stop")
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 51575 ~ 51577
function Func2224 takes nothing returns boolean
    return GetUnitAbilityLevel(GetSummonedUnit(),('B030'))>0 and GetUnitState(GetSummonedUnit(),UNIT_STATE_LIFE)>0
endfunction

// 51579 ~ 51606
function Func2225 takes nothing returns nothing
    local unit loc_unit01=GetSummoningUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(228)))
    local unit loc_unit03=GetSummonedUnit()
    local trigger loc_trigger01
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),('A0G8'),false)
    call Func0193(loc_unit01,('A0GC'))
    call SetUnitColor(loc_unit03,GetPlayerColor(GetOwningPlayer(loc_unit02)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(229),(loc_unit03))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call TriggerAddAction(loc_trigger01,function Func2221)
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit01))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2220))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(17),(loc_unit03))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(34),(GetUnitAbilityLevel(loc_unit01,('A0G8'))*15+15-1))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
endfunction

// 51608 ~ 51610
function Func2226 takes nothing returns boolean
    return GetSpellAbilityId()==('A0G8')
endfunction

// 51612 ~ 51618
function Func2227 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(228),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 51620 ~ 51628
function Func2228 takes nothing returns boolean
    if GetSpellAbilityId()==('A0G8')then
        if GetOwningPlayer(GetSpellTargetUnit())==GetOwningPlayer(GetTriggerUnit())then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0LF'))
        endif
    endif
    return false
endfunction

// 51630 ~ 51648
function Func2229 takes nothing returns nothing
    local trigger loc_trigger01
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2226))
    call TriggerAddAction(loc_trigger01,function Func2227)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2224))
    call TriggerAddAction(loc_trigger01,function Func2225)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2222))
    call TriggerAddAction(loc_trigger01,function Func2223)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2228))
    set loc_trigger01=null
endfunction
