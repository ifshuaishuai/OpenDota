
// 23836 ~ 23849
function Func0974 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if Func0748(loc_unit01)then
        call Func0407(loc_unit01,'I0HM')
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(129),(false))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 23851 ~ 23865
function Func0975 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=Func0399(loc_item01)
    local trigger loc_trigger01
    if(loc_integer01==integer199 or loc_integer01==integer200)and(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(129)))==true then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,0.41,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0974))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
        set loc_trigger01=null
    endif
    set loc_unit01=null
    set loc_item01=null
endfunction

// 23867 ~ 23882
function Func0976 takes nothing returns boolean
    local real loc_real01
    local real loc_real02
    local real loc_real03
    call Func0967()
    call Func0968()
    call Func0966()
    call Func0764()
    call Func0965()
    call Func0971()
    call Func0973()
    call Func0970()
    call Func0969()
    call Func0975()
    return false
endfunction
