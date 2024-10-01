
// 76881 ~ 76886
function Func3706 takes nothing returns nothing
    call Func0161(string027,GetEnumUnit(),"chest",3)
    call Func0161(string027,GetEnumUnit(),"chest",3)
    call Func0161(string027,GetEnumUnit(),"right hand",3)
    call Func0161(string027,GetEnumUnit(),"left hand",3)
endfunction

// 76888 ~ 76932
function Func3707 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local group loc_group01=Func0030()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A10Q')
    local integer loc_integer03=24
    local real loc_real01=0.5+0.25*loc_integer02
    local real loc_real02=GetLocationX(loc_location01)
    local real loc_real03=GetLocationY(loc_location01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h007',loc_real02,loc_real03,0)
    local integer loc_integer04=0
    local boolean loc_boolean01=false
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1DB')
        set loc_integer03=24
        set loc_real01=1.0+0.25*loc_integer02
        set loc_boolean01=true
    endif
    call RemoveLocation(loc_location01)
    set string027=""
    set integer022=loc_integer03
    set loc_integer04=255
    set string027="Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl"
    call SetUnitVertexColor(loc_unit02,255,255,255,loc_integer04)
    call UnitApplyTimedLife(loc_unit02,'BTLF',5)
    if loc_boolean01 then
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,800,Condition(function Func0349))
    else
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,600,Condition(function Func0349))
    endif
    call ForGroup(loc_group01,function Func3706)
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SavePlayerHandle(hashtable001,(loc_integer01),(54),(GetOwningPlayer(loc_unit01)))
    call SaveInteger(hashtable001,(loc_integer01),(188),(loc_integer03))
    call SaveReal(hashtable001,(loc_integer01),(68),((loc_real01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,1.0,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3705))
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_location01=null
    set loc_group01=null
    set loc_trigger01=null
endfunction

// 76934 ~ 76939
function Func3708 takes nothing returns boolean
    if GetSpellAbilityId()=='A10Q' or GetSpellAbilityId()=='A1DB' then
        call Func3707()
    endif
    return false
endfunction

// 76941 ~ 76948
function Func3709 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3708))
    call Func0132('A0NU')
    call Func0132('A0NW')
    set loc_trigger01=null
endfunction
