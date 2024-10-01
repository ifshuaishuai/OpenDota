
// 59962 ~ 59964
function Func2740 takes nothing returns boolean
    return(Func0098(GetFilterUnit())==false and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsHeroUnitId(GetUnitTypeId(GetFilterUnit()))
endfunction

// 59966 ~ 60007
function Func2741 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2WQ')
    local real loc_real01=25+loc_integer01*75
    local group loc_group01
    local real loc_real02
    local real loc_real03
    if loc_integer01>=3 then
        set loc_real01=loc_real01+25
    endif
    if loc_unit02==null then
        set loc_group01=Func0030()
        set loc_real02=GetSpellTargetX()
        set loc_real03=GetSpellTargetY()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,325+25,Condition(function Func2740))
        set loc_unit02=Func0253(loc_group01,loc_real02,loc_real03)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    if loc_unit02!=null then
        set loc_real02=GetUnitX(loc_unit02)
        set loc_real03=GetUnitY(loc_unit02)
        call Func0182(loc_unit01,loc_unit02)
        call Func0117(loc_unit01,loc_unit02,1,loc_real01,0.25)
    endif
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e000',loc_real02,loc_real03,0)
    call Func0193(loc_unit03,'A05S')
    call UnitApplyTimedLife(loc_unit03,'BTLF',4.5)
    call SetUnitPathing(loc_unit03,false)
    call Func0193(loc_unit03,'Aloc')
    if loc_unit02==null or IssueTargetOrder(loc_unit03,"chainlightning",loc_unit02)==false then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00C',loc_real02,loc_real03,0)
        call UnitApplyTimedLife(loc_unit02,'BTLF',0.2)
        call IssueTargetOrder(loc_unit03,"chainlightning",loc_unit02)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 60009 ~ 60014
function Func2742 takes nothing returns boolean
    if GetSpellAbilityId()=='A2WQ' and(GetSpellTargetUnit()==null or Func0028(GetSpellTargetUnit())==false)then
        call Func2741()
    endif
    return false
endfunction

// 60016 ~ 60021
function Func2743 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2742))
    set loc_trigger01=null
endfunction
