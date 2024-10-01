
// 62848 ~ 62855
function Func2891 takes nothing returns boolean
    if GetUnitTypeId(GetFilterUnit())==GetUnitTypeId(unit330)and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(unit330)and IsUnitIllusion(GetFilterUnit())==true then
        call SetUnitX(GetFilterUnit(),real333)
        call SetUnitY(GetFilterUnit(),real334)
        call IssueTargetOrder(GetFilterUnit(),"attack",unit331)
    endif
    return false
endfunction

// 62857 ~ 62911
function Func2892 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    local real loc_real06=Func0149(loc_real01,loc_real02,loc_real03,loc_real04)
    local real loc_real07=GetRandomReal(loc_real06*0.3,loc_real06*0.8)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0RW')
    local real loc_real08=loc_real01+loc_real07*Cos(loc_real05*bj_DEGTORAD)
    local real loc_real09=loc_real02+loc_real07*Sin(loc_real05*bj_DEGTORAD)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),integer504,loc_real08,loc_real09,0)
    local unit loc_unit04
    local group loc_group01
    local trigger loc_trigger01
    local integer loc_integer02
    call SetUnitX(loc_unit01,loc_real08)
    call SetUnitY(loc_unit01,loc_real09)
    call SetUnitFacing(loc_unit01,-loc_real05)
    call PlaySoundOnUnitBJ(sound002,100,loc_unit02)
    if IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01))and GetUnitTypeId(loc_unit02)!='n00L' then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,1.2,false)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2890))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        set loc_trigger01=null
        call Func0420(loc_unit01,40+20*loc_integer01)
        set loc_real08=loc_real01+(loc_real07-25)*Cos(loc_real05*bj_DEGTORAD)
        set loc_real09=loc_real02+(loc_real07-25)*Sin(loc_real05*bj_DEGTORAD)
        call Func0044(loc_unit02,4405,1)
        call SetUnitX(loc_unit02,loc_real08)
        call SetUnitY(loc_unit02,loc_real09)
        call SetUnitFacing(loc_unit02,loc_real05)
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
        set loc_group01=Func0030()
        set real333=loc_real08
        set real334=loc_real09
        set unit330=loc_unit01
        set unit331=loc_unit02
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1400,Condition(function Func2891))
        call Func0029(loc_group01)
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),integer504,loc_real08,loc_real09,0)
        call KillUnit(loc_unit04)
    endif
    call KillUnit(loc_unit03)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_group01=null
endfunction

// 62913 ~ 62918
function Func2893 takes nothing returns boolean
    if GetSpellAbilityId()=='A0RW' then
        call Func2892()
    endif
    return false
endfunction
