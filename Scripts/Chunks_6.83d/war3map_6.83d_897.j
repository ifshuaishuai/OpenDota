
// 92047 ~ 92054
function Func4446 takes nothing returns nothing
    call Func0159("war3mapImported\\FortunesEndTarget.mdx",GetEnumUnit(),"origin",3)
    call IssueTargetOrder(unit420,"purge",GetEnumUnit())
    if trigger072!=null and GetUnitAbilityLevel(GetEnumUnit(),'A2T4')>0 then
        call TriggerEvaluate(trigger072)
    endif
    call Func0115(unit419,GetEnumUnit(),1,75*integer559)
endfunction

// 92056 ~ 92084
function Func4447 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(796)))
    local real loc_real01=Func0141((TimerGetElapsed(timer001))-(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(358))),3)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2QT')
    local integer loc_integer02=R2I(2.0*loc_real01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    local unit loc_unit04
    local group loc_group01
    if loc_unit02!=null then
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'o00Z',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call UnitApplyTimedLife(loc_unit04,'BTLF',0.5)
        call UnitAddAbility(loc_unit03,'A2T2')
        call SetUnitAbilityLevel(loc_unit03,'A2T2',loc_integer02)
        set unit124=loc_unit01
        set unit419=loc_unit01
        set unit420=loc_unit03
        set integer559=loc_integer01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),215+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func4446)
        call Func0029(loc_group01)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_group01=null
endfunction
