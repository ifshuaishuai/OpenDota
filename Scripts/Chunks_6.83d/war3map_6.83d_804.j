
// 84127 ~ 84157
function Func4048 takes nothing returns boolean
    local unit loc_unit01=GetFilterUnit()
    local unit loc_unit02=unit386
    local real loc_real01=real382
    local real loc_real02=real383
    local real loc_real03=real384
    local real loc_real04=real385
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    if(Func0098(GetFilterUnit())==false and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4324))))==1)==false then
            call Func0044(loc_unit01,4324,0.3)
        endif
        set loc_real08=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        set loc_real07=Func0169(loc_real01,loc_real02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))*bj_DEGTORAD
        if loc_real08>real386 then
            set loc_real05=GetUnitX(loc_unit01)+11*Cos(loc_real07)
            set loc_real06=GetUnitY(loc_unit01)+11*Sin(loc_real07)
        else
            set loc_real05=GetUnitX(loc_unit01)-11*Cos(loc_real07)
            set loc_real06=GetUnitY(loc_unit01)-11*Sin(loc_real07)
        endif
        call SetUnitX(loc_unit01,loc_real05)
        call SetUnitY(loc_unit01,loc_real06)
    endif
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 84159 ~ 84198
function Func4049 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03
    local real loc_real04
    local integer loc_integer02=0
    local group loc_group01
    if GetTriggerEvalCount(loc_trigger01)>(50*(2+0.5*GetUnitAbilityLevel(loc_unit01,'A1SU')))then
        loop
            exitwhen loc_integer02>16
            set loc_integer02=loc_integer02+1
        endloop
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set real382=loc_real01
        set real383=loc_real02
        set unit386=loc_unit01
        set unit124=loc_unit01
        loop
            exitwhen loc_integer02>16
            set loc_real03=loc_real01+real386*Cos(bj_DEGTORAD*360.0*loc_integer02/16.0)
            set loc_real04=loc_real02+real386*Sin(bj_DEGTORAD*360.0*loc_integer02/16.0)
            set real384=loc_real03
            set real385=loc_real04
            call GroupEnumUnitsInRange(loc_group01,loc_real03,loc_real04,75,Condition(function Func4048))
            set loc_integer02=loc_integer02+1
        endloop
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 84200 ~ 84229
function Func4050 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03
    local real loc_real04
    local integer loc_integer02=0
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    loop
        exitwhen loc_integer02>16
        set loc_real03=loc_real01+real386*Cos(bj_DEGTORAD*360.0*loc_integer02/16.0)
        set loc_real04=loc_real02+real386*Sin(bj_DEGTORAD*360.0*loc_integer02/16.0)
        set loc_integer02=loc_integer02+1
    endloop
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect("war3mapImported\\KineticField_FX_Stand.mdx",loc_real01,loc_real02)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4049))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 84231 ~ 84246
function Func4051 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect("war3mapImported\\KineticField_FX_Start.mdx",loc_real01,loc_real02)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,1.2,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4050))
    call Func0186(GetOwningPlayer(loc_unit01),5.5,loc_real01,loc_real02,300)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 84248 ~ 84253
function Func4052 takes nothing returns boolean
    if GetSpellAbilityId()=='A1SU' then
        call Func4051()
    endif
    return false
endfunction

// 84255 ~ 84260
function Func4053 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4052))
    set loc_trigger01=null
endfunction
