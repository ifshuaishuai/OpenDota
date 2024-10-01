
// 88558 ~ 88578
function Func4244 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(138)))
    local real loc_real03=Func0126(GetUnitX(loc_unit01)+loc_real02/10*Cos(loc_real01))
    local real loc_real04=Func0129(GetUnitY(loc_unit01)+loc_real02/10*Sin(loc_real01))
    if GetTriggerEvalCount(loc_trigger01)==11 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call DestroyEffect(AddSpecialEffect("war3mapImported\\ThrustMovement.mdx",loc_real03,loc_real04))
        call Func0180(loc_real03,loc_real04,150)
        call SetUnitX(loc_unit01,loc_real03)
        call SetUnitY(loc_unit01,loc_real04)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 88580 ~ 88621
function Func4245 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2A9')
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local integer loc_integer03=-1
    local boolean loc_boolean01=false
    if loc_unit01==loc_unit02 then
        set loc_real01=GetUnitFacing(loc_unit01)*bj_DEGTORAD
    else
        set loc_real01=Func0168(loc_unit01,loc_unit02)*bj_DEGTORAD
    endif
    loop
        exitwhen loc_boolean01 or loc_integer03==23
        set loc_integer03=loc_integer03+1
        set loc_real02=Func0126(GetUnitX(loc_unit02)+(350-loc_integer03*25)*Cos(loc_real01))
        set loc_real03=Func0129(GetUnitY(loc_unit02)+(350-loc_integer03*25)*Sin(loc_real01))
        if(IsPointInRegion(region006,((loc_real02)*1.0),((loc_real03)*1.0)))==false then
            set loc_boolean01=true
        endif
    endloop
    set loc_real04=Func0149(loc_real02,loc_real03,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4244))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(138),((loc_real04)*1.0))
    if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==true then
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+50+50*loc_integer02)
    else
        call Func0115(loc_unit01,loc_unit02,3,50+50*loc_integer02)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 88623 ~ 88628
function Func4246 takes nothing returns boolean
    if GetSpellAbilityId()=='A2A9' then
        call Func4245()
    endif
    return false
endfunction

// 88630 ~ 88635
function Func4247 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4246))
    set loc_trigger01=null
endfunction
