
// 91827 ~ 91834
function Func4431 takes nothing returns nothing
    local unit loc_unit01=unit418
    local unit loc_unit02=GetEnumUnit()
    call Func0243(loc_unit02,'A2F3',1,10)
    call Func0115(loc_unit01,loc_unit02,2,50*integer558+2*GetHeroAgi(loc_unit01,true))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 91836 ~ 91855
function Func4432 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=Func0141((TimerGetElapsed(timer001))-(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(358))),5.0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2EE')
    local real loc_real02=(40+80*loc_integer01)*(loc_real01)
    local group loc_group01=Func0030()
    local real loc_real03=loc_real01*600
    local real loc_real04=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(736)))
    local real loc_real05=GetUnitX(loc_unit01)+loc_real03*Cos(loc_real04)
    local real loc_real06=GetUnitY(loc_unit01)+loc_real03*Sin(loc_real04)
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real05,loc_real06,325,Condition(function Func0305))
    set integer558=loc_integer01
    set unit418=loc_unit01
    call ForGroup(loc_group01,function Func4431)
    call Func0029(loc_group01)
    call Func0163("effects\\BasicWaterFlash.mdx",loc_real05,loc_real06,1)
    set loc_unit01=null
    set loc_group01=null
endfunction
