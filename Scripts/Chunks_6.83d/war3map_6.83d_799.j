
// 83701 ~ 83755
function Func4028 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real06=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real07=Func0169(loc_real05,loc_real06,GetUnitX(loc_unit02),GetUnitY(loc_unit02))*bj_DEGTORAD
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1SQ')
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call UnitShareVision(loc_unit03,GetOwningPlayer(loc_unit02),false)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if GetTriggerUnit()!=loc_unit03 then
            call KillUnit(loc_unit03)
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        call UnitRemoveBuffs(loc_unit03,true,true)
    elseif loc_integer02<3/0.02 then
        call SetUnitFacing(loc_unit03,loc_real07*bj_RADTODEG)
    else
        if loc_integer02==4/0.02 then
            call UnitShareVision(loc_unit03,GetOwningPlayer(loc_unit02),true)
        endif
        call SetUnitFacing(loc_unit03,loc_real07*bj_RADTODEG)
        set loc_real01=loc_real05+(280+real381*loc_integer02*0.02)*0.02*Cos(loc_real07)
        set loc_real02=loc_real06+(280+real381*loc_integer02*0.02)*0.02*Sin(loc_real07)
        call SetUnitPosition(loc_unit03,loc_real01,loc_real02)
        call SaveReal(hashtable001,(loc_integer01),(23),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(24),((loc_real02)*1.0))
        if Func0149(loc_real01,loc_real02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))<20 then
            set loc_real03=RMinBJ(Func0149(loc_real01,loc_real02,(LoadReal(hashtable001,(loc_integer01),(6))),(LoadReal(hashtable001,(loc_integer01),(7)))),1500)
            set loc_real04=loc_real03/1500*(125*GetUnitAbilityLevel(loc_unit01,'A1SQ'))
            set loc_real04=RMaxBJ(loc_real04,50)
            call KillUnit(loc_unit03)
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func0115(loc_unit01,loc_unit02,1,loc_real04)
            call Func0365(loc_unit01,loc_unit02,2+0.2*loc_integer03)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 83757 ~ 83798
function Func4029 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02))*bj_DEGTORAD
    local real loc_real02=Func0126(GetUnitX(loc_unit01)+150*Cos(loc_real01))
    local real loc_real03=Func0129(GetUnitY(loc_unit01)+150*Sin(loc_real01))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1SQ')
    local unit loc_unit03
    local integer loc_integer03
    local string loc_string01="effects\\Snipe Target.mdx"
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))==false and Func0107(GetLocalPlayer())==false then
        set loc_string01=""
    endif
    if loc_integer02==1 then
        set loc_integer03='h0CG'
    elseif loc_integer02==2 then
        set loc_integer03='h0C1'
    elseif loc_integer02==3 then
        set loc_integer03='h0CF'
    elseif loc_integer02==4 then
        set loc_integer03='h0CH'
    endif
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer03,loc_real02,loc_real03,loc_real01*bj_RADTODEG)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4028))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit03))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit03))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget(loc_string01,loc_unit02,"overhead")))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
endfunction

// 83800 ~ 83805
function Func4030 takes nothing returns boolean
    if GetSpellAbilityId()=='A1SQ' and Func0028(GetSpellTargetUnit())==false then
        call Func4029()
    endif
    return false
endfunction

// 83807 ~ 83813
function Func4031 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4030))
    call Func0132('A0X6')
    set loc_trigger01=null
endfunction
