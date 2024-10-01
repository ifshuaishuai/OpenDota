
// 79104 ~ 79106
function Func3833 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((4290))))==1)==false and(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))==true or Func0284(GetFilterUnit())==false)
endfunction

// 79108 ~ 79169
function Func3834 takes nothing returns boolean
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
    set loc_real01=Func0126(loc_real01+18*Cos(loc_real03))
    set loc_real02=Func0129(loc_real02+18*Sin(loc_real03))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    if GetTriggerEvalCount(loc_trigger01)>166 then
        loop
            exitwhen loc_integer02>12
            if(LoadBoolean(hashtable001,(loc_integer01),(511+loc_integer02-1)))==false then
                call KillUnit((LoadUnitHandle(hashtable001,(loc_integer01),(393+loc_integer02-1))))
            endif
            set loc_integer02=loc_integer02+1
        endloop
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,400,Condition(function Func3833))
        loop
            exitwhen loc_integer02>12
            if(LoadBoolean(hashtable001,(loc_integer01),(511+loc_integer02-1)))==false then
                set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393+loc_integer02-1)))
                set loc_real01=(LoadReal(hashtable001,(loc_integer01),(549+loc_integer02-1)))
                set loc_real02=(LoadReal(hashtable001,(loc_integer01),(567+loc_integer02-1)))
                set loc_real01=Func0126(loc_real01+18*Cos(loc_real03))
                set loc_real02=Func0129(loc_real02+18*Sin(loc_real03))
                call SaveReal(hashtable001,(loc_integer01),(549+loc_integer02-1),((loc_real01)*1.0))
                call SaveReal(hashtable001,(loc_integer01),(567+loc_integer02-1),((loc_real02)*1.0))
                call SetUnitX(loc_unit02,loc_real01)
                call SetUnitY(loc_unit02,loc_real02)
                set loc_unit03=FirstOfGroup(loc_group01)
                if loc_unit03!=null then
                    call GroupRemoveUnit(loc_group01,loc_unit03)
                    call SaveInteger(hashtable001,(GetHandleId((loc_unit03))),((4290)),(1))
                    call SaveBoolean(hashtable001,(loc_integer01),(511+loc_integer02-1),(true))
                    call Func3832(loc_unit02,loc_unit03,GetUnitAbilityLevel(loc_unit01,'A1QW'))
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

// 79171 ~ 79219
function Func3835 takes nothing returns nothing
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)*bj_DEGTORAD
    local unit loc_unit02
    local real loc_real06=Func0126(loc_real03+3000*Cos(loc_real05))
    local real loc_real07=Func0129(loc_real04+3000*Sin(loc_real05))
    local integer loc_integer01=1
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real08
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1QW')
    local integer loc_integer04
    call RemoveLocation(loc_location01)
    if loc_integer03==1 then
        set loc_integer04='u01K'
    elseif loc_integer03==2 then
        set loc_integer04='u01H'
    elseif loc_integer03==3 then
        set loc_integer04='u01J'
    elseif loc_integer03==4 then
        set loc_integer04='u01L'
    endif
    loop
        exitwhen loc_integer01>12
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer04,loc_real03+GetRandomInt(-300,300),loc_real04+GetRandomInt(-300,300),loc_real05*bj_RADTODEG)
        call SaveUnitHandle(hashtable001,(loc_integer02),(393+loc_integer01-1),(loc_unit02))
        call SaveBoolean(hashtable001,(loc_integer02),(511+loc_integer01-1),(false))
        call SaveReal(hashtable001,(loc_integer02),(549+loc_integer01-1),((GetUnitX(loc_unit02))*1.0))
        call SaveReal(hashtable001,(loc_integer02),(567+loc_integer01-1),((GetUnitY(loc_unit02))*1.0))
        set loc_integer01=loc_integer01+1
    endloop
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3834))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(137),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(47),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(48),((loc_real07)*1.0))
    set loc_unit01=null
    set loc_unit02=null
    set loc_location01=null
    set loc_trigger01=null
endfunction

// 79221 ~ 79226
function Func3836 takes nothing returns boolean
    if GetSpellAbilityId()=='A1QW' then
        call Func3835()
    endif
    return false
endfunction

// 79228 ~ 79238
function Func3837 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3836))
    call Func0237('u01K')
    call Func0237('u01H')
    call Func0237('u01J')
    call Func0237('u01L')
    call Func0132('A1QZ')
    set loc_trigger01=null
endfunction
