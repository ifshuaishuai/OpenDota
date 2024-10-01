
// 71834 ~ 71845
function Func3411 takes nothing returns nothing
    local unit loc_unit01
    if IsUnitInGroup(GetEnumUnit(),group002)==false then
        call GroupAddUnit(group002,GetEnumUnit())
        set loc_unit01=CreateUnit(GetOwningPlayer(GetEnumUnit()),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
        call Func0193(loc_unit01,'A0RI')
        call SetUnitAbilityLevel(loc_unit01,'A0RI',GetUnitAbilityLevel(unit353,'A0RA'))
        call IssueTargetOrder(loc_unit01,"ensnare",GetEnumUnit())
        call Func0115(unit353,GetEnumUnit(),1,100)
    endif
    set loc_unit01=null
endfunction

// 71847 ~ 71878
function Func3412 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group02=Func0030()
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(221)))
    set unit124=loc_unit01
    set unit353=loc_unit01
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,300,Condition(function Func0305))
    set group002=loc_group01
    call ForGroup(loc_group02,function Func3411)
    call Func0029(loc_group02)
    if GetTriggerEvalCount(loc_trigger01)>real351*10 then
        set loc_integer02=1
        loop
            exitwhen loc_integer02>16
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(2700+loc_integer02))))
            set loc_integer02=loc_integer02+1
        endloop
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_group02=null
    set loc_unit01=null
    return false
endfunction

// 71880 ~ 71912
function Func3413 takes nothing returns nothing
    local integer loc_integer01=1
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03
    local real loc_real04
    local integer loc_integer02=16
    local string loc_string01="Abilities\\Spells\\Undead\\Graveyard\\GraveMarker.mdl"
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    call Func0184(sound004,loc_real01,loc_real02)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3412))
    call SaveGroupHandle(hashtable001,(loc_integer03),(22),(loc_group01))
    call SaveUnitHandle(hashtable001,(loc_integer03),(221),(GetTriggerUnit()))
    call SaveReal(hashtable001,(loc_integer03),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer03),(7),((loc_real02)*1.0))
    loop
        exitwhen loc_integer01>loc_integer02
        set loc_real03=loc_real01+real352*Cos(loc_integer01*360/loc_integer02*bj_DEGTORAD)
        set loc_real04=loc_real02+real352*Sin(loc_integer01*360/loc_integer02*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer03),(2700+loc_integer01),(AddSpecialEffect(loc_string01,loc_real03,loc_real04)))
        if loc_integer01==1 or loc_integer01==5 or loc_integer01==9 or loc_integer01==13 then
            set loc_real03=loc_real01+275*Cos(loc_integer01*360/loc_integer02*bj_DEGTORAD)
            set loc_real04=loc_real02+275*Sin(loc_integer01*360/loc_integer02*bj_DEGTORAD)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_trigger01=null
    set loc_group01=null
endfunction

// 71914 ~ 71919
function Func3414 takes nothing returns boolean
    if GetSpellAbilityId()=='A0RA' then
        call Func3413()
    endif
    return false
endfunction

// 71921 ~ 71926
function Func3415 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3414))
    set loc_trigger01=null
endfunction
