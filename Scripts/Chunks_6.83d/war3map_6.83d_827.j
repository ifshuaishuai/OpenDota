
// 86460 ~ 86462
function Func4145 takes nothing returns nothing
    call Func0365(unit401,GetEnumUnit(),0.75+0.25*GetUnitAbilityLevel(unit401,'A27F'))
endfunction

// 86464 ~ 86518
function Func4146 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(190)))
    local group loc_group01
    local real loc_real06=Func0149(loc_real04,loc_real05,loc_real02,loc_real03)/25
    local location loc_location01
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real07=loc_real04+loc_real06*loc_integer02*Cos(loc_real01)
    local real loc_real08=loc_real05+loc_real06*loc_integer02*Sin(loc_real01)
    call SetUnitX(loc_unit02,Func0126(loc_real07))
    call SetUnitY(loc_unit02,Func0129(loc_real08))
    if Func0100(loc_unit02)==false then
        call SetUnitFlyHeight(loc_unit02,325-13*loc_integer02,0)
    endif
    if loc_integer02==25 then
        call SetUnitX(loc_unit02,Func0126(loc_real02))
        call SetUnitY(loc_unit02,Func0129(loc_real03))
        if IsPointInRegion(region006,GetUnitX(loc_unit02),GetUnitY(loc_unit02))==true then
            set loc_location01=Func0279(GetUnitX(loc_unit02),GetUnitY(loc_unit02))
            call SetUnitX(loc_unit02,Func0127(GetLocationX(loc_location01)))
            call SetUnitY(loc_unit02,Func0130(GetLocationY(loc_location01)))
            call RemoveLocation(loc_location01)
            set loc_location01=null
        endif
        set unit124=loc_unit01
        set unit401=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),350,Condition(function Func0305))
        call GroupRemoveUnit(loc_group01,loc_unit02)
        call ForGroup(loc_group01,function Func4145)
        call Func0029(loc_group01)
        call Func0180(GetUnitX(loc_unit02),GetUnitY(loc_unit02),150)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if Func0100(loc_unit02)==false then
            call SetUnitFlyHeight(loc_unit02,GetUnitDefaultFlyHeight(loc_unit02),0)
        endif
        call SetUnitPathing(loc_unit02,true)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 86520 ~ 86542
function Func4147 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,real loc_real01,real loc_real02,effect loc_effect01,effect loc_effect02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real03=loc_real01
    local real loc_real04=loc_real02
    local real loc_real05=Func0169(GetUnitX(loc_unit02),GetUnitY(loc_unit02),loc_real01,loc_real02)*bj_DEGTORAD
    if Func0149(GetUnitX(loc_unit02),GetUnitY(loc_unit02),loc_real01,loc_real02)>375 then
        set loc_real03=GetUnitX(loc_unit02)+375*Cos(loc_real05)
        set loc_real04=GetUnitY(loc_unit02)+375*Sin(loc_real05)
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(189),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(190),((GetUnitY(loc_unit02))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(loc_effect01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(loc_effect02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4146))
    set loc_trigger01=null
endfunction

// 86544 ~ 86615
function Func4148 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(12)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(706)))
    local real loc_real03
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or(GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT and Func0270(loc_unit02)==false)then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A27F',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A27X',false)
        call Func4147(loc_unit01,loc_unit02,(LoadUnitHandle(hashtable001,(loc_integer01),(711))),loc_real01,loc_real02,(LoadEffectHandle(hashtable001,(loc_integer01),(32))),(LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A27X' then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            set loc_real03=Func0169(GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetSpellTargetX(),GetSpellTargetY())*bj_DEGTORAD
            if Func0149(GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetSpellTargetX(),GetSpellTargetY())>375 then
                set loc_real01=GetUnitX(loc_unit02)+375*Cos(loc_real03)
                set loc_real02=GetUnitY(loc_unit02)+375*Sin(loc_real03)
            else
                set loc_real01=GetSpellTargetX()
                set loc_real02=GetSpellTargetY()
            endif
            call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffect("Abilities\\Spells\\Other\\GeneralAuraTarget\\GeneralAuraTarget.mdl",loc_real01,loc_real02)))
            call SaveReal(hashtable001,(loc_integer01),(47),((loc_real01)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(48),((loc_real02)*1.0))
            call SaveUnitHandle(hashtable001,(loc_integer01),(711),(GetSpellTargetUnit()))
            call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\GeneralAuraTarget\\GeneralAuraTarget.mdl",GetSpellTargetUnit(),"origin")))
        endif
    else
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        call SetUnitPathing(loc_unit02,false)
        if(LoadInteger(hashtable001,(loc_integer01),(707)))==1 then
            set loc_integer04=loc_integer04+3
        else
            set loc_integer04=loc_integer04-3
        endif
        call SaveInteger(hashtable001,(loc_integer01),(706),(loc_integer04))
        if loc_integer04==30 then
            call SaveInteger(hashtable001,(loc_integer01),(707),(-1))
        elseif loc_integer04==-30 then
            call SaveInteger(hashtable001,(loc_integer01),(707),(1))
        endif
        if Func0100(loc_unit02)==false then
            if loc_integer02<15 then
                call SetUnitFlyHeight(loc_unit02,loc_integer02*20,0)
            else
                call SetUnitFlyHeight(loc_unit02,300+loc_integer04,0)
            endif
        endif
        if loc_integer02>(loc_integer03-25)then
            if Func0100(loc_unit02)==false then
                call SetUnitFlyHeight(loc_unit02,300,0)
            endif
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A27F',true)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A27X',false)
            call Func4147(loc_unit01,loc_unit02,(LoadUnitHandle(hashtable001,(loc_integer01),(711))),loc_real01,loc_real02,(LoadEffectHandle(hashtable001,(loc_integer01),(32))),(LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 86617 ~ 86652
function Func4149 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A27F')
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitAddAbility(loc_unit03,'A282')
    call SetUnitAbilityLevel(loc_unit03,'A282',loc_integer02)
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A27F',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A27X',true)
    call UnitAddAbility(loc_unit01,'A27X')
    call SetUnitPathing(loc_unit02,false)
    if Func0100(loc_unit02)==false then
        call Func0193(loc_unit02,'Amrf')
        call UnitRemoveAbility(loc_unit02,'Amrf')
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(711),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(12),(R2I((1.25+0.25*loc_integer02)/.02)))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveInteger(hashtable001,(loc_integer01),(706),(0))
    call SaveInteger(hashtable001,(loc_integer01),(707),(1))
    call SaveReal(hashtable001,(loc_integer01),(47),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((GetUnitY(loc_unit02))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\AntiGravityTarget.mdx",loc_unit02,"origin")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffect("Abilities\\Spells\\Other\\GeneralAuraTarget\\GeneralAuraTarget.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02))))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4148))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 86654 ~ 86659
function Func4150 takes nothing returns boolean
    if GetSpellAbilityId()=='A27F' and Func0028(GetSpellTargetUnit())==false then
        call Func4149()
    endif
    return false
endfunction

// 86661 ~ 86668
function Func4151 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4150))
    call Func0132('A0X6')
    call Func0132('A282')
    set loc_trigger01=null
endfunction
