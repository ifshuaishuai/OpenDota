
// 48139 ~ 48168
function Func2015 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(152)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer04)
    local lightning loc_lightning01=(LoadLightningHandle(hashtable001,(loc_integer01),(196)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyLightning(loc_lightning01)
        call Func0021(loc_integer04)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call MoveLightning(loc_lightning01,false,GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))
        if Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))>600 then
            call DestroyLightning(loc_lightning01)
            call Func0021(loc_integer04)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func2013(loc_unit01,loc_unit02,loc_integer02,loc_integer03)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_lightning01=null
    return false
endfunction

// 48170 ~ 48188
function Func2016 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local lightning loc_lightning01=AddLightning("HWPB",false,GetUnitX(unit282),GetUnitY(unit282),GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()))
    call SetLightningColor(loc_lightning01,0,.7,1,1)
    call SaveLightningHandle(hashtable001,(loc_integer01),(196),(loc_lightning01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(unit282))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(GetEnumUnit())))
    call SaveInteger(hashtable001,(loc_integer01),(5),(integer470))
    call SaveInteger(hashtable001,(loc_integer01),(152),(integer471))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterUnitEvent(loc_trigger01,GetEnumUnit(),EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,unit282,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2015))
    call Func0115(GetTriggerUnit(),GetEnumUnit(),1,real285)
    call Func2014(GetTriggerUnit(),GetEnumUnit())
    set loc_trigger01=null
    set loc_lightning01=null
endfunction

// 48190 ~ 48221
function Func2017 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00U',loc_real01,loc_real02,0)
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0S8')
    local real loc_real03=6
    local integer loc_integer02=1
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1QP')
        set loc_real03=8
        set loc_integer02=2
    endif
    call RemoveLocation(loc_location01)
    call SetUnitAnimation(loc_unit02,"channel")
    call Func0226(loc_unit02,loc_real03)
    set unit282=loc_unit02
    set real286=loc_real03
    set real285=loc_integer01*50+50
    set integer470=loc_integer01
    set integer471=loc_integer02
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,400,Condition(function Func0308))
    call ForGroup(loc_group01,function Func2016)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit02=null
    set loc_unit01=null
    set loc_location01=null
endfunction

// 48223 ~ 48228
function Func2018 takes nothing returns boolean
    if GetSpellAbilityId()=='A0S8' or GetSpellAbilityId()=='A1QP' then
        call Func2017()
    endif
    return false
endfunction

// 48230 ~ 48235
function Func2019 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2018))
    set loc_trigger01=null
endfunction
