
// 88908 ~ 88913
function Func4264 takes nothing returns boolean
    if(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))==true or Func0284(GetFilterUnit())==false)then
        return IsUnitInGroup(GetFilterUnit(),group040)==false
    endif
    return false
endfunction

// 88915 ~ 88977
function Func4265 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01
    local integer loc_integer02=1
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(137)))
    local unit loc_unit02
    local unit loc_unit03
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(48)))
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    set group040=loc_group02
    set loc_real01=Func0126(loc_real01+12*Cos(loc_real03))
    set loc_real02=Func0129(loc_real02+12*Sin(loc_real03))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    if GetTriggerEvalCount(loc_trigger01)>39 then
        loop
            exitwhen loc_integer02>3
            call KillUnit((LoadUnitHandle(hashtable001,(loc_integer01),(393+loc_integer02-1))))
            set loc_integer02=loc_integer02+1
        endloop
        call Func0029(loc_group02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,275,Condition(function Func4264))
        loop
            exitwhen loc_integer02>3
            if(LoadBoolean(hashtable001,(loc_integer01),(511+loc_integer02-1)))==false then
                set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393+loc_integer02-1)))
                set loc_real01=(LoadReal(hashtable001,(loc_integer01),(549+loc_integer02-1)))
                set loc_real02=(LoadReal(hashtable001,(loc_integer01),(567+loc_integer02-1)))
                set loc_real01=Func0126(loc_real01+12*Cos(loc_real03))
                set loc_real02=Func0129(loc_real02+12*Sin(loc_real03))
                call SaveReal(hashtable001,(loc_integer01),(549+loc_integer02-1),((loc_real01)*1.0))
                call SaveReal(hashtable001,(loc_integer01),(567+loc_integer02-1),((loc_real02)*1.0))
                call SetUnitX(loc_unit02,loc_real01)
                call SetUnitY(loc_unit02,loc_real02)
                set loc_unit03=GroupPickRandomUnit(loc_group01)
                if loc_unit03!=null then
                    call GroupRemoveUnit(loc_group01,loc_unit03)
                    call SaveInteger(hashtable001,(GetHandleId((loc_unit03))),((4314)),(1))
                    call SaveBoolean(hashtable001,(loc_integer01),(511+loc_integer02-1),(true))
                    call Func4263(loc_unit01,loc_unit02,loc_unit03,GetUnitAbilityLevel(loc_unit01,'A2B4'))
                endif
            endif
            set loc_integer02=loc_integer02+1
        endloop
        call Func0029(loc_group01)
        set loc_group01=null
        set loc_unit02=null
        set loc_unit03=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 88979 ~ 89036
function Func4266 takes nothing returns nothing
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)*bj_DEGTORAD
    local real loc_real06
    local unit loc_unit02
    local real loc_real07=Func0126(loc_real03+500*Cos(loc_real05))
    local real loc_real08=Func0129(loc_real04+500*Sin(loc_real05))
    local integer loc_integer01=0
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real09
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2B4')
    local integer loc_integer04='h0DN'
    set loc_integer01=loc_integer01+1
    set loc_real06=loc_real05*bj_RADTODEG+90
    if loc_real06>360 then
        set loc_real06=loc_real06-360
    endif
    set loc_real06=loc_real06*bj_DEGTORAD
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer04,loc_real03+100*Cos(loc_real05)+100*Cos(loc_real06),loc_real04+100*Sin(loc_real05)+100*Sin(loc_real06),loc_real05*bj_RADTODEG)
    call SaveUnitHandle(hashtable001,(loc_integer02),(393+loc_integer01-1),(loc_unit02))
    call SaveBoolean(hashtable001,(loc_integer02),(511+loc_integer01-1),(false))
    call SaveReal(hashtable001,(loc_integer02),(549+loc_integer01-1),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(567+loc_integer01-1),((GetUnitY(loc_unit02))*1.0))
    set loc_integer01=loc_integer01+1
    set loc_real06=loc_real05*bj_RADTODEG-90
    if loc_real06<0 then
        set loc_real06=360+loc_real06
    endif
    set loc_real06=loc_real06*bj_DEGTORAD
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer04,loc_real03+100*Cos(loc_real05)+100*Cos(loc_real06),loc_real04+100*Sin(loc_real05)+100*Sin(loc_real06),loc_real05*bj_RADTODEG)
    call SaveUnitHandle(hashtable001,(loc_integer02),(393+loc_integer01-1),(loc_unit02))
    call SaveBoolean(hashtable001,(loc_integer02),(511+loc_integer01-1),(false))
    call SaveReal(hashtable001,(loc_integer02),(549+loc_integer01-1),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(567+loc_integer01-1),((GetUnitY(loc_unit02))*1.0))
    set loc_integer01=loc_integer01+1
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer04,loc_real03+100*Cos(loc_real05),loc_real04+100*Sin(loc_real05),loc_real05*bj_RADTODEG)
    call SaveUnitHandle(hashtable001,(loc_integer02),(393+loc_integer01-1),(loc_unit02))
    call SaveBoolean(hashtable001,(loc_integer02),(511+loc_integer01-1),(false))
    call SaveReal(hashtable001,(loc_integer02),(549+loc_integer01-1),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(567+loc_integer01-1),((GetUnitY(loc_unit02))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.015,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4265))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(137),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(47),((loc_real07)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(48),((loc_real08)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer02),(187),(Func0030()))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 89038 ~ 89043
function Func4267 takes nothing returns boolean
    if GetSpellAbilityId()=='A2B4' then
        call Func4266()
    endif
    return false
endfunction

// 89045 ~ 89050
function Func4268 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4267))
    set loc_trigger01=null
endfunction
