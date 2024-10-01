
// 42453 ~ 42487
function Func1657 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local image loc_image01=(LoadImageHandle(hashtable001,(loc_integer01),(185)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A13D')then
        if GetTriggerEventId()!=EVENT_UNIT_DEATH and Func0098(loc_unit01)==false then
            if IsUnitHidden(loc_unit01)then
                call SetUnitX(loc_unit01,loc_real01)
                call SetUnitY(loc_unit01,loc_real02)
            else
                call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
            endif
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A13D',false)
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(704)))=='A11N' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A11N',true)
        endif
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call ShowImage(loc_image01,false)
        call DestroyImage(loc_image01)
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_image01=null
    set loc_unit02=null
    return false
endfunction

// 42489 ~ 42531
function Func1658 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local real loc_real03=90
    local image loc_image01=CreateImage("Fonts\\X.blp",loc_real03,loc_real03,0,loc_real01-loc_real03/2,loc_real02-loc_real03/2,0,0,0,0,2)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local string loc_string01=""
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A11N')
    call Func0044(loc_unit02,4401,5)
    call Func0193(loc_unit01,'A13D')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A13D',true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A11N',false)
    call SetImageRenderAlways(loc_image01,true)
    if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false or IsUnitAlly(loc_unit02,GetLocalPlayer())==true or Func0107(GetLocalPlayer())then
        set loc_string01="effects\\BlackTide.mdx"
        call ShowImage(loc_image01,true)
    else
        call ShowImage(loc_image01,false)
    endif
    call SetImageColor(loc_image01,255,0,0,255)
    call UnitApplyTimedLife(CreateUnit(GetOwningPlayer(loc_unit01),'o01Z',loc_real01,loc_real02,0),'BTLF',5)
    if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==true then
        call TriggerRegisterTimerEvent(loc_trigger01,8,false)
    else
        call TriggerRegisterTimerEvent(loc_trigger01,4,false)
    endif
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1657))
    call SaveImageHandle(hashtable001,(loc_integer01),(185),(loc_image01))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget(loc_string01,loc_unit02,"overhead")))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_unit02=null
    set loc_image01=null
    set loc_trigger01=null
endfunction

// 42533 ~ 42545
function Func1659 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A11N' and(IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))or Func0028(GetSpellTargetUnit())==false)then
            call Func1658()
        endif
    else
        if GetLearnedSkill()=='A11N' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A13D',false)
            call Func0193(GetTriggerUnit(),'A13D')
        endif
    endif
    return false
endfunction
