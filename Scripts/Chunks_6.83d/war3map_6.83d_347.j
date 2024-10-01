
// 51058 ~ 51082
function Func2198 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local string loc_string01=(LoadStr(hashtable001,(loc_integer01),(206)))
    local string loc_string02=OrderId2String((LoadInteger(hashtable001,(loc_integer01),(211))))
    local real loc_real01
    local real loc_real02
    local unit loc_unit02
    local trigger loc_trigger01=(LoadTriggerHandle(hashtable001,(loc_integer01),(204)))
    local boolean loc_boolean01=not(LoadBoolean(hashtable001,(loc_integer01),(207)))
    local boolean loc_boolean02=(LoadBoolean(hashtable001,(loc_integer01),(208)))
    call DisableTrigger(loc_trigger01)
    call IssueImmediateOrder(loc_unit01,"stop")
    if loc_string01=="Target"and(loc_boolean01 or loc_boolean02)then
        set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(215)))
        call IssueTargetOrder(loc_unit01,loc_string02,loc_unit02)
    elseif loc_string01=="Point"and(loc_boolean01 or loc_boolean02)then
        set loc_real01=(LoadReal(hashtable001,(loc_integer01),(209)))
        set loc_real02=(LoadReal(hashtable001,(loc_integer01),(210)))
        call IssuePointOrder(loc_unit01,loc_string02,loc_real01,loc_real02)
    elseif(loc_boolean01 or loc_boolean02)then
        call IssueImmediateOrder(loc_unit01,"OrderString")
    endif
    call SaveBoolean(hashtable001,(loc_integer01),(208),(false))
    call EnableTrigger(loc_trigger01)
endfunction

// 51084 ~ 51113
function Func2199 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(212)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(213)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real04=GetUnitX(loc_unit01)+40*Cos(loc_real03*bj_DEGTORAD)
    local real loc_real05=GetUnitY(loc_unit01)+40*Sin(loc_real03*bj_DEGTORAD)
    local real loc_real06=200
    local real loc_real07=(1-loc_real01/loc_real02)*loc_real06*2
    if loc_real07>loc_real06 then
        set loc_real07=loc_real06*2-loc_real07
    endif
    call SetUnitFlyHeight(loc_unit01,Func0142(loc_real07,0),0)
    call SetUnitX(loc_unit01,Func0126(loc_real04))
    call SetUnitY(loc_unit01,Func0129(loc_real05))
    call SetUnitFacing(loc_unit01,loc_real03)
    call SaveReal(hashtable001,(loc_integer01),(212),((loc_real01-40)*1.0))
    if loc_real07<1 and loc_real01-loc_real02!=0 then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(214),(false))
        call SetUnitFacing(loc_unit01,loc_real03)
        call SetUnitAnimation(loc_unit01,"stand")
        call SetUnitPathing(loc_unit01,true)
        call Func2198(loc_unit01)
        call PauseTimer(loc_timer01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call DestroyTimer(loc_timer01)
    endif
endfunction

// 51115 ~ 51145
function Func2200 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,('A0LN'))
    local real loc_real01=500+100*loc_integer01
    local real loc_real02=GetUnitFacing(loc_unit01)
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=Func0126(loc_real03+loc_real01*Cos(loc_real02*bj_DEGTORAD))
    local real loc_real06=Func0129(loc_real04+loc_real01*Sin(loc_real02*bj_DEGTORAD))
    local timer loc_timer01=CreateTimer()
    local integer loc_integer02=GetHandleId(loc_timer01)
    local trigger loc_trigger01=(LoadTriggerHandle(hashtable001,(GetHandleId(loc_unit01)),(204)))
    set loc_real01=SquareRoot((loc_real03-loc_real05)*(loc_real03-loc_real05)+(loc_real04-loc_real06)*(loc_real04-loc_real06))
    call Func2197(loc_unit01)
    if loc_real01>100 then
        call Func0193(loc_unit01,'Amrf')
        call UnitRemoveAbility(loc_unit01,'Amrf')
        call SetUnitPathing(loc_unit01,false)
        call SetUnitAnimationByIndex(loc_unit01,6)
        call DisableTrigger(loc_trigger01)
        call IssueImmediateOrder(loc_unit01,"stop")
        call EnableTrigger(loc_trigger01)
        call SaveReal(hashtable001,(loc_integer02),(212),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer02),(213),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer02),(13),((loc_real02)*1.0))
        call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
        call TimerStart(loc_timer01,0.025,true,function Func2199)
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(214),(true))
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(208),(false))
    endif
endfunction
