
// 23505 ~ 23536
function Func0963 takes unit loc_unit01,real loc_real01,real loc_real02 returns nothing
    local integer loc_integer01=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(700)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(701)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(702)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(703)))
    call DisableTrigger(trigger003)
    if loc_unit02!=null then
        call SetUnitX(loc_unit02,loc_real01)
        call SetUnitY(loc_unit02,loc_real02)
        call KillUnit(loc_unit02)
    endif
    if loc_unit03!=null then
        call SetUnitX(loc_unit03,loc_real01)
        call SetUnitY(loc_unit03,loc_real02)
        call KillUnit(loc_unit03)
    endif
    if loc_unit04!=null then
        call SetUnitX(loc_unit04,loc_real01)
        call SetUnitY(loc_unit04,loc_real02)
        call KillUnit(loc_unit04)
    endif
    if loc_unit05!=null then
        call SetUnitX(loc_unit05,loc_real01)
        call SetUnitY(loc_unit05,loc_real02)
        call KillUnit(loc_unit05)
    endif
    call EnableTrigger(trigger003)
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
endfunction

// 23538 ~ 23555
function Func0964 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01
    local real loc_real02
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0415("AegisOff",GetPlayerId(GetOwningPlayer(loc_unit01)))
    if GetUnitTypeId(loc_unit01)=='H00I' then
        call Func0963(loc_unit01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    endif
    set unit243=null
    call TriggerRegisterTimerEvent(loc_trigger01,5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0962))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call Func0044(loc_unit01,4304,5)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 23557 ~ 23561
function Func0965 takes nothing returns nothing
    if Func0399(GetManipulatedItem())==integer198 then
        call Func0964()
    endif
endfunction
