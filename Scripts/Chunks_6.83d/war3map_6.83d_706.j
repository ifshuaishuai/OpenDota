
// 75707 ~ 75714
function Func3632 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
    local integer loc_integer02=4
    call Func3619(loc_unit01,loc_unit02,true,true)
    set loc_trigger01=null
endfunction

// 75716 ~ 75718
function Func3633 takes nothing returns nothing
    call Func3632(unit367,GetEnumUnit())
endfunction

// 75720 ~ 75728
function Func3634 takes unit loc_unit01,unit loc_unit02 returns nothing
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set unit367=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),275,Condition(function Func0305))
    call ForGroup(loc_group01,function Func3633)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 75730 ~ 75777
function Func3635 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03
    local integer loc_integer04
    local real loc_real01
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real04=GetUnitX(loc_unit02)
    local real loc_real05=GetUnitY(loc_unit02)
    local real loc_real06=Func0149(loc_real04,loc_real05,loc_real02,loc_real03)
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real05)*1.0))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or loc_integer02==200 or loc_real06>1800 then
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
        call UnitShareVision(loc_unit02,GetOwningPlayer(loc_unit01),false)
        call UnitRemoveAbility(loc_unit01,'A179')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if loc_integer02<100 then
            set loc_integer03=loc_integer02
        else
            set loc_integer03=200-loc_integer02
        endif
        call SetUnitVertexColor(loc_unit01,255,255,255,255*(100-loc_integer03)/100)
        if loc_integer02==100 then
            set loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(5)))
            set loc_real01=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
            call SetUnitPosition(loc_unit01,GetUnitX(loc_unit02)+80*Cos(loc_real01),GetUnitY(loc_unit02)+80*Sin(loc_real01))
            call SetUnitAnimation(loc_unit01,"attack")
            call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
            if GetUnitAbilityLevel(loc_unit01,'A0G4')>0 then
                call Func3632(loc_unit01,loc_unit02)
            else
                call Func3634(loc_unit01,loc_unit02)
            endif
            call Func0115(loc_unit01,loc_unit02,1,50+100*loc_integer04)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 75779 ~ 75803
function Func3636 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0G4')
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1D8')
    endif
    call UnitShareVision(loc_unit02,GetOwningPlayer(loc_unit01),true)
    call IssueImmediateOrder(loc_unit01,"halt")
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit02))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.001,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3635))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A179',false)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction
