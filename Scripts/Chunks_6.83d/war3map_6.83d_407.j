
// 54785 ~ 54803
function Func2422 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0DZ')
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(332)))
    local real loc_real01=RAbsBJ(GetUnitFacing(loc_unit02)-GetUnitFacing(loc_unit01))
    if loc_real01>180 then
        set loc_real01=360-loc_real01
    endif
    if loc_real01<=105 or loc_boolean01 then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(332),(false))
        if GetUnitAbilityLevel(loc_unit02,'A04R')==0 then
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",loc_unit02,"chest"))
            call Func0115(loc_unit01,loc_unit02,2,GetHeroAgi(loc_unit01,true)*(0.25*loc_integer01+0.25))
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 54805 ~ 54812
function Func2423 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A0DZ')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
        if IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))==false or(IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==false and GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)/GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)<0.5)then
            call Func2422()
        endif
    endif
    return false
endfunction

// 54814 ~ 54819
function Func2424 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2423))
    set loc_trigger01=null
endfunction
