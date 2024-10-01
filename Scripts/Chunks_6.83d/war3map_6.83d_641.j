
// 71141 ~ 71169
function Func3366 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=loc_integer01
    local integer loc_integer03
    local integer loc_integer04
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    local location loc_location02
    local integer loc_integer05=GetUnitAbilityLevelSwapped('A29J',GetTriggerUnit())
    if loc_integer05==0 then
        return
    endif
    set loc_integer02=loc_integer02/2
    set loc_integer03=1
    set loc_integer04=loc_integer02
    loop
        exitwhen loc_integer03>loc_integer04
        set loc_location02=Func0002(loc_location01,50.00,(I2R(loc_integer03)*(360/loc_integer02)))
        call CreateNUnitsAtLoc(1,'e00C',GetOwningPlayer(loc_unit01),loc_location01,bj_UNIT_FACING)
        call UnitAddAbility(bj_lastCreatedUnit,'A0HG')
        call SetUnitAbilityLevelSwapped('A0HG',bj_lastCreatedUnit,loc_integer05)
        call UnitApplyTimedLifeBJ(2.00,'BTLF',bj_lastCreatedUnit)
        call IssuePointOrderLoc(bj_lastCreatedUnit,"carrionswarm",loc_location02)
        call SetUnitPathing(bj_lastCreatedUnit,false)
        call SetUnitInvulnerable(bj_lastCreatedUnit,true)
        call UnitAddAbility(bj_lastCreatedUnit,'Aloc')
        call RemoveLocation(loc_location02)
        set loc_integer03=loc_integer03+1
    endloop
    call RemoveLocation(loc_location01)
endfunction

// 71171 ~ 71176
function Func3367 takes nothing returns nothing
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(710)))
    local unit loc_unit01=GetTriggerUnit()
    call Func3366(loc_unit01,loc_integer01)
    set loc_unit01=null
endfunction

// 71178 ~ 71183
function Func3368 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3365))
    call TriggerAddAction(loc_trigger01,function Func3367)
endfunction
