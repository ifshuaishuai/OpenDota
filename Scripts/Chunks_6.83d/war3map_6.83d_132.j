
// 29116 ~ 29126
function Func1159 takes nothing returns boolean
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>integer426
        call ExecuteFunc(strings013[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    call ExecuteFunc("Func0520")
    call ExecuteFunc("Func0710")
    return false
endfunction

// 29128 ~ 29134
function Func1160 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(38),(true))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1159))
    set loc_trigger01=null
endfunction

// 29136 ~ 29143
function Func1161 takes nothing returns boolean
    if GetUnitTypeId(GetTriggerUnit())!='H0B8' and GetUnitTypeId(GetTriggerUnit())!='H00M' and GetUnitTypeId(GetTriggerUnit())!='H07G' and GetUnitTypeId(GetTriggerUnit())!='H00Y' and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and IsUnitIllusion(GetTriggerUnit())==false and HaveSavedBoolean(hashtable001,GetHandleId(GetTriggerUnit()),38)==false then
        if boolean092 and(GetUnitTypeId(GetTriggerUnit())!='O00P' or(GetUnitTypeId(GetTriggerUnit())=='O00P' and boolean093))then
            call Func1160(GetTriggerUnit())
        endif
    endif
    return false
endfunction
