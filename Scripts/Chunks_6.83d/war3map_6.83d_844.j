
// 88130 ~ 88153
function Func4223 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(746)))
    local unit loc_unit03
    local integer loc_integer03=1
    local integer loc_integer04
    loop
        exitwhen loc_integer03>loc_integer02
        set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(1450+loc_integer03)))
        if loc_unit03==loc_unit02 then
            set loc_integer02=loc_integer02-1
            call SaveUnitHandle(hashtable001,(loc_integer01),(1450+loc_integer03),((LoadUnitHandle(hashtable001,(loc_integer01),(1450+loc_integer03+1)))))
            call SaveInteger(hashtable001,(loc_integer01),(746),(loc_integer02))
            set loc_integer04=loc_integer03+1
            loop
                exitwhen loc_integer04>loc_integer02
                call SaveUnitHandle(hashtable001,(loc_integer01),(1450+loc_integer04),((LoadUnitHandle(hashtable001,(loc_integer01),(1450+loc_integer04+1)))))
                set loc_integer04=loc_integer04+1
            endloop
        endif
        set loc_integer03=loc_integer03+1
    endloop
    set loc_unit03=null
endfunction

// 88155 ~ 88194
function Func4224 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)*bj_DEGTORAD
    local real loc_real06
    local real loc_real07
    local real loc_real08=Func0149(loc_real01,loc_real02,loc_real03,loc_real04)
    local real loc_real09=GetUnitMoveSpeed(loc_unit01)*2.5*0.02
    local group loc_group01
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call Func4223(loc_unit01,loc_unit02)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif loc_real08<2 then
        call SetUnitAnimationByIndex(loc_unit02,1)
    else
        if loc_real08<loc_real09 then
            set loc_real06=loc_real03
            set loc_real07=loc_real04
        else
            set loc_real06=loc_real01+loc_real09*Cos(loc_real05)
            set loc_real07=loc_real02+loc_real09*Sin(loc_real05)
        endif
        call SetUnitX(loc_unit02,loc_real06)
        call SetUnitY(loc_unit02,loc_real07)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 88196 ~ 88229
function Func4225 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetSpellTargetX(),GetSpellTargetY())*bj_DEGTORAD
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(746)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2JK')
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(1450+1)))
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0E8',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01*bj_RADTODEG)
    local trigger loc_trigger01
    local integer loc_integer04=1
    set loc_integer02=loc_integer02+1
    call SaveUnitHandle(hashtable001,(loc_integer01),(1450+loc_integer02),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer01),(746),(loc_integer02))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SetUnitVertexColor(loc_unit03,255,255,255,75)
    call SetUnitTimeScale(loc_unit03,2)
    call SetUnitAnimationByIndex(loc_unit03,0)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4224))
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit03)
    call UnitApplyTimedLife(loc_unit03,'BTLF',45)
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("war3mapImported\\Phoenix_Missile_smaller.mdx",loc_unit03,"hand right alternate")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("war3mapImported\\Phoenix_Missile_smaller.mdx",loc_unit03,"hand left alternate")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(177),(AddSpecialEffectTarget("war3mapImported\\FlameDash_Ground.mdx",loc_unit03,"origin")))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(47),((GetSpellTargetX())*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((GetSpellTargetY())*1.0))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 88231 ~ 88244
function Func4226 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(747)))
    if loc_integer01>0 then
        call Func4225()
        call UnitRemoveAbility(loc_unit01,integers177[loc_integer01])
        set loc_integer01=loc_integer01-1
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(747),(loc_integer01))
        call Func0193(loc_unit01,integers177[loc_integer01])
    else
        call Func0120(GetOwningPlayer(GetTriggerUnit()),"No more charges")
    endif
    set loc_unit01=null
endfunction
