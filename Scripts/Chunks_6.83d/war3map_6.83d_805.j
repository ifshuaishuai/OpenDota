
// 84262 ~ 84299
function Func4054 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)
    local real loc_real06=Func0149(loc_real03,loc_real04,loc_real01,loc_real02)
    local real loc_real07=(LoadReal(hashtable001,(loc_integer01),(671)))
    call SetUnitFacing(loc_unit02,loc_real05)
    set loc_real03=loc_real03+loc_real07*Cos(loc_real05*bj_DEGTORAD)
    set loc_real04=loc_real04+loc_real07*Sin(loc_real05*bj_DEGTORAD)
    call SetUnitX(loc_unit02,loc_real03)
    call SetUnitY(loc_unit02,loc_real04)
    if loc_real06<40 then
        call KillUnit(loc_unit02)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0044(loc_unit01,4411,1)
        call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
        call PanCameraToTimedForPlayer(GetOwningPlayer(loc_unit01),loc_real01,loc_real02,0)
    elseif Func0098(loc_unit01)then
        call KillUnit(loc_unit02)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 84301 ~ 84323
function Func4055 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(7400)))
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(7500)))
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0C6',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local real loc_real03=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    local real loc_real04=0.02*(RMaxBJ(loc_real03/1.8,600))
    call TriggerAddCondition(loc_trigger01,Condition(function Func4054))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(671),((loc_real04)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("effects\\Lightning_Ball_Tail_FX.mdx",loc_unit02,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffect("effects\\Lightning_Ball_Tail_FX.mdx",loc_real01,loc_real02)))
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 84325 ~ 84334
function Func4056 takes nothing returns boolean
    if GetSpellAbilityId()=='A1SW' and Func0028(GetSpellTargetUnit())==false then
        if IsUnitIllusion(GetSpellTargetUnit())then
            call KillUnit(GetSpellTargetUnit())
        else
            call Func4055()
        endif
    endif
    return false
endfunction
