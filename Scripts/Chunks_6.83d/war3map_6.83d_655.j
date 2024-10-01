
// 72029 ~ 72045
function Func3420 takes nothing returns boolean
    local real loc_real01
    if IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==false or GetUnitAbilityLevel(GetFilterUnit(),'A04R')>0 or GetOwningPlayer(GetFilterUnit())==Player(15)then
        return false
    endif
    if(Func0194(GetFilterUnit()))then
        return false
    endif
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)or(integer022>0 and Func1249(GetFilterUnit()))then
        set loc_real01=Func0149(real010,real011,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
        if loc_real01<real009 then
            set real009=loc_real01
            set unit124=GetFilterUnit()
        endif
    endif
    return false
endfunction

// 72047 ~ 72067
function Func3421 takes unit loc_unit01 returns unit
    local location loc_location01
    local group loc_group01
    local real loc_real01
    local real loc_real02
    set loc_location01=GetSpellTargetLoc()
    set loc_real01=GetLocationX(loc_location01)
    set loc_real02=GetLocationY(loc_location01)
    set loc_group01=Func0030()
    set integer022=GetUnitAbilityLevel(loc_unit01,'A0R0')
    set unit124=null
    set real009=9999
    set real010=loc_real01
    set real011=loc_real02
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,4000,Condition(function Func3420))
    call Func0029(loc_group01)
    call RemoveLocation(loc_location01)
    set loc_location01=null
    set loc_group01=null
    return unit124
endfunction

// 72069 ~ 72106
function Func3422 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01
    local real loc_real02
    local unit loc_unit03
    if loc_unit02==null then
        set loc_unit02=Func3421(loc_unit01)
    endif
    if loc_unit02==null then
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n03H'))
        return
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0R0',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2MB',true)
    call Func0193(loc_unit01,'A2MB')
    call TriggerRegisterTimerEvent(loc_trigger01,6-GetUnitAbilityLevel(loc_unit01,'A0R0'),false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3419))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\DarkHands.mdl",loc_unit02,"overhead")))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call UnitAddType(loc_unit02,UNIT_TYPE_PEON)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,.03,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3416))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A0R0')))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h098',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call SaveUnitHandle(hashtable001,(loc_integer01),(393),(loc_unit03))
    call ShowUnit(loc_unit03,false)
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 72108 ~ 72129
function Func3423 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    if loc_unit01!=null then
        if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false then
            call Func0123(loc_unit02)
            call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n041'))
        elseif GetUnitAbilityLevel(loc_unit02,'A0R0')>0 and Func1249(loc_unit01)==false then
            call Func0123(loc_unit02)
            call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n041'))
        endif
    endif
    if loc_unit01==null then
        set loc_unit01=Func3421(loc_unit02)
    endif
    if loc_unit01==null then
        call Func0123(loc_unit02)
        call Func0120(GetOwningPlayer(loc_unit02),GetObjectName('n040'))
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 72131 ~ 72136
function Func3424 takes nothing returns boolean
    if GetSpellAbilityId()=='A0R0' then
        call Func3423()
    endif
    return false
endfunction

// 72138 ~ 72143
function Func3425 takes nothing returns boolean
    if GetSpellAbilityId()=='A0R0' then
        call Func3422(GetTriggerUnit())
    endif
    return false
endfunction

// 72145 ~ 72156
function Func3426 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3424))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3425))
    set loc_trigger01=null
    call Func0237('h094')
    call Func0237('h095')
    call Func0237('h096')
endfunction
