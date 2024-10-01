
// 61744 ~ 61795
function Func2836 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    local real loc_real02
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(57)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(282)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(283)))
    local real loc_real06
    local real loc_real07
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>R2I(20*loc_real03)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit03)
        call SetUnitPathing(loc_unit02,true)
        call Func0282(loc_unit01)
        call Func0180(GetUnitX(loc_unit02),GetUnitY(loc_unit02),175)
    else
        call SetUnitX(loc_unit03,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit03,GetUnitY(loc_unit01))
        if Func0149(loc_real04,loc_real05,GetUnitX(loc_unit01),GetUnitY(loc_unit01))>400 then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call KillUnit(loc_unit03)
            call SetUnitPathing(loc_unit02,true)
            call Func0282(loc_unit01)
            call Func0180(GetUnitX(loc_unit02),GetUnitY(loc_unit02),175)
        else
            call SaveReal(hashtable001,(loc_integer01),(282),((GetUnitX(loc_unit01))*1.0))
            call SaveReal(hashtable001,(loc_integer01),(283),((GetUnitY(loc_unit01))*1.0))
            if loc_real01>300 then
                set loc_real02=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
                set loc_real06=GetUnitX(loc_unit01)+300*Cos(loc_real02)
                set loc_real07=GetUnitY(loc_unit01)+300*Sin(loc_real02)
                if(IsPointInRegion(region006,((loc_real06)*1.0),((loc_real07)*1.0)))==false then
                    call SetUnitX(loc_unit02,loc_real06)
                    call SetUnitY(loc_unit02,loc_real07)
                endif
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 61797 ~ 61828
function Func2837 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'u00Y',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A19O')
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1MV')+2
    endif
    call Func0193(loc_unit03,'A19N')
    call SetUnitAbilityLevel(loc_unit03,'A19N',GetUnitAbilityLevel(loc_unit01,'A19O'))
    call IssueTargetOrder(loc_unit03,"magicleash",loc_unit02)
    call SetUnitPathing(loc_unit03,false)
    call SetUnitPathing(loc_unit02,false)
    call Func0281(loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2836))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(57),((2.5+loc_integer02*0.5)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\AerialShackles\\AerialShacklesTarget.mdl",loc_unit02,"chest")))
    call SaveReal(hashtable001,(loc_integer01),(282),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(283),((GetUnitY(loc_unit01))*1.0))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 61830 ~ 61835
function Func2838 takes nothing returns boolean
    if(GetSpellAbilityId()=='A19O' or GetSpellAbilityId()=='A1MV')and Func0028(GetSpellTargetUnit())==false and GetUnitTypeId(GetSpellTargetUnit())!='n00L' then
        call Func2837()
    endif
    return false
endfunction

// 61837 ~ 61842
function Func2839 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2838))
    set loc_trigger01=null
endfunction
