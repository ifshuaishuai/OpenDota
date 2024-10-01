
// 46739 ~ 46745
function Func1911 takes nothing returns nothing
    if(LoadBoolean(hashtable001,(integer467),(GetHandleId(GetEnumUnit()))))==false then
        call SaveBoolean(hashtable001,(integer467),(GetHandleId(GetEnumUnit())),(true))
        call Func0115(unit279,GetEnumUnit(),1,real282*(integer468*4+4)/100)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",GetEnumUnit(),"origin"))
    endif
endfunction

// 46747 ~ 46815
function Func1912 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(195)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(194)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=Atan2(loc_real02-loc_real04,loc_real01-loc_real03)
    local real loc_real06=loc_real03+(25+25*loc_integer02)*Cos(loc_real05)
    local real loc_real07=loc_real04+(25+25*loc_integer02)*Sin(loc_real05)
    local lightning loc_lightning01=(LoadLightningHandle(hashtable001,(loc_integer01),(196)))
    local real loc_real08=(LoadReal(hashtable001,(loc_integer01),(197)))
    local real loc_real09=(LoadReal(hashtable001,(loc_integer01),(198)))
    local real loc_real10=GetUnitState(loc_unit02,UNIT_STATE_MANA)
    local real loc_real11=(25+25*loc_integer02)*(12+0.007*GetUnitState(loc_unit02,UNIT_STATE_MAX_MANA))/100
    local group loc_group01=Func0030()
    local real loc_real12=(LoadReal(hashtable001,(loc_integer01),(199)))
    set loc_real12=loc_real12+25+25*loc_integer02
    call SaveReal(hashtable001,(loc_integer01),(199),((loc_real12)*1.0))
    if GetTriggerEvalCount(loc_trigger01)>25 then
        set loc_real08=loc_real08+(25+25*loc_integer02)*Cos(loc_real05)
        set loc_real09=loc_real09+(25+25*loc_integer02)*Sin(loc_real05)
        call SaveReal(hashtable001,(loc_integer01),(197),((loc_real08)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(198),((loc_real09)*1.0))
    endif
    call SetUnitState(loc_unit02,UNIT_STATE_MANA,RMaxBJ(loc_real10-loc_real11,0))
    call MoveLightning(loc_lightning01,true,loc_real08,loc_real09,loc_real06,loc_real07)
    call SetUnitX(loc_unit02,loc_real06)
    call SetUnitY(loc_unit02,loc_real07)
    call SetUnitPosition(loc_unit01,loc_real06,loc_real07)
    call SetUnitPosition(loc_unit03,loc_real06,loc_real07)
    set unit124=loc_unit02
    set unit279=loc_unit02
    set integer467=loc_integer01
    set integer468=loc_integer02
    set real282=loc_real12
    call GroupEnumUnitsInRange(loc_group01,loc_real06,loc_real07,75+75*loc_integer02,Condition(function Func0305))
    call ForGroup(loc_group01,function Func1911)
    call Func0029(loc_group01)
    set loc_integer03=loc_integer03-1
    call SaveInteger(hashtable001,(loc_integer01),(194),(loc_integer03))
    call SetUnitVertexColor(loc_unit02,255,255,255,0)
    if loc_integer03==0 or GetUnitState(loc_unit02,UNIT_STATE_MANA)<1 then
        call DestroyLightning(loc_lightning01)
        call Func0180(loc_real06,loc_real07,75)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call RemoveUnit(loc_unit01)
        call RemoveUnit(loc_unit03)
        call SetUnitVertexColor(loc_unit02,255,255,255,255)
        call SetUnitPathing(loc_unit02,true)
        call SetUnitInvulnerable(loc_unit02,false)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0180(loc_real06,loc_real07,75)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_lightning01=null
    set loc_group01=null
    set loc_unit03=null
    return false
endfunction

// 46817 ~ 46877
function Func1913 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02
    local unit loc_unit03
    local location loc_location01
    local real loc_real03
    local real loc_real04
    local trigger loc_trigger01
    local integer loc_integer01
    local lightning loc_lightning01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A14O')
    local real loc_real05=GetUnitState(loc_unit01,UNIT_STATE_MANA)
    local real loc_real06=15+0.07*GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA)
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,RMaxBJ(loc_real05-loc_real06,0))
    if GetUnitState(loc_unit01,UNIT_STATE_MANA)>10 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'o010',loc_real01,loc_real02,0)
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'H07G',loc_real01,loc_real02,0)
        set loc_lightning01=AddLightning("FORK",true,loc_real01,loc_real02,loc_real01,loc_real02)
        if GetSpellTargetUnit()==null then
            set loc_location01=GetSpellTargetLoc()
            set loc_real03=GetLocationX(loc_location01)
            set loc_real04=GetLocationY(loc_location01)
            call RemoveLocation(loc_location01)
        else
            set loc_real03=GetUnitX(GetSpellTargetUnit())
            set loc_real04=GetUnitY(GetSpellTargetUnit())
        endif
        call SetUnitVertexColor(loc_unit01,255,255,255,0)
        call SetUnitVertexColor(loc_unit03,255,255,255,0)
        call SetUnitPathing(loc_unit01,false)
        call SetUnitPathing(loc_unit02,false)
        call SetUnitInvulnerable(loc_unit01,true)
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(195),(loc_unit03))
        call SaveLightningHandle(hashtable001,(loc_integer01),(196),(loc_lightning01))
        call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real03)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real04)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(197),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(198),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(199),((0)*1.0))
        call SaveInteger(hashtable001,(loc_integer01),(194),(Func0139(R2I(SquareRoot((loc_real03-loc_real01)*(loc_real03-loc_real01)+(loc_real04-loc_real02)*(loc_real04-loc_real02))/(25+25*loc_integer02)),1)))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("effects\\Lightning_Ball_Tail_FX.mdx",loc_unit03,"origin")))
        call TriggerRegisterTimerEvent(loc_trigger01,0.04,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1912))
        call ShowUnit(loc_unit01,false)
        call ShowUnit(loc_unit01,true)
        call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_location01=null
    set loc_trigger01=null
    set loc_lightning01=null
endfunction

// 46879 ~ 46884
function Func1914 takes nothing returns boolean
    if GetSpellAbilityId()=='A14O' then
        call Func1913()
    endif
    return false
endfunction
