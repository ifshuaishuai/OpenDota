
// 56154 ~ 56165
function Func2505 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call UnitRemoveAbility(loc_unit01,'A2NI')
    call UnitAddAbility(loc_unit01,'A2NI')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 56167 ~ 56174
function Func2506 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2505))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
endfunction

// 56176 ~ 56187
function Func2507 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call Func0420(loc_unit01,0)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 56189 ~ 56218
function Func2508 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,integer loc_integer01,integer loc_integer02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer03
    local unit loc_unit04
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",loc_unit02,"chest"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",loc_unit01,"chest"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",loc_unit01,"origin"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",loc_unit01,"hand,left"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",loc_unit01,"hand,right"))
    call ShowUnit(loc_unit02,false)
    call KillUnit(loc_unit02)
    call KillUnit(loc_unit03)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4270)),(2))
    if loc_integer02>0 or loc_integer01>0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer03=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,9.1,false)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2507))
        call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call Func0193(loc_unit04,'A1G9')
        call SetUnitAbilityLevel(loc_unit04,'A1G9',loc_integer02)
        call IssueTargetOrder(loc_unit04,"bloodlust",loc_unit01)
        call Func0420(loc_unit01,loc_integer01)
        call SaveEffectHandle(hashtable001,(loc_integer03),(32),(AddSpecialEffectTarget("war3mapImported\\RadianceHands.mdx",loc_unit01,"weapon")))
    endif
    set loc_trigger01=null
    set loc_unit04=null
endfunction

// 56220 ~ 56239
function Func2509 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group014)==false then
        if IsUnitIllusion(GetEnumUnit())==false then
            if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
                set integer487=integer487+(integer486*10)
                set integer488=integer488+5
            else
                set integer487=integer487+(integer486*3)
                set integer488=integer488+1
            endif
        endif
        call GroupAddUnit(group014,GetEnumUnit())
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",GetEnumUnit(),"chest"))
        set boolean143=true
        set boolean144=true
        call Func0115(unit309,GetEnumUnit(),1,real314)
        set boolean143=false
        set boolean144=false
    endif
endfunction

// 56241 ~ 56277
function Func2510 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,real loc_real06 returns real
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local real loc_real10
    local real loc_real11
    local real loc_real12
    local real loc_real13
    local real loc_real14
    local real loc_real15
    local real loc_real16
    local real loc_real17
    local real loc_real18
    local real loc_real19
    local real loc_real20
    local real loc_real21
    local real loc_real22
    local real loc_real23
    set loc_real18=loc_real03-loc_real05
    set loc_real19=loc_real04-loc_real06
    set loc_real20=-1*loc_real19
    set loc_real21=loc_real18
    set loc_real22=SquareRoot(loc_real20*loc_real20+loc_real21*loc_real21)
    set loc_real20=loc_real20/loc_real22
    set loc_real21=loc_real21/loc_real22
    set loc_real07=loc_real01-loc_real03
    set loc_real08=loc_real02-loc_real04
    set loc_real09=SquareRoot(loc_real07*loc_real07+loc_real08*loc_real08)
    set loc_real10=loc_real07/loc_real09
    set loc_real11=loc_real08/loc_real09
    set loc_real23=loc_real07*loc_real20+loc_real08*loc_real21
    set loc_real12=-1*loc_real01+2*loc_real03+2*loc_real20*loc_real23
    set loc_real13=-1*loc_real02+2*loc_real04+2*loc_real21*loc_real23
    set loc_real16=loc_real05+loc_real03-loc_real12
    set loc_real17=loc_real06+loc_real04-loc_real13
    return loc_real16
endfunction
