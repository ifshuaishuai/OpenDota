
// 89976 ~ 89987
function Func4325 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2BE')
    local real loc_real01=40+20*loc_integer02+1.6*GetHeroInt(loc_unit01,true)
    set boolean156=true
    call Func0115(loc_unit01,loc_unit02,1,loc_real01)
    set boolean156=false
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 89989 ~ 89993
function Func4326 takes nothing returns nothing
    local trigger loc_trigger01=Func0196(GetTriggerUnit(),GetSpellTargetUnit(),'h0DQ',"Func4325",500,false)
    local integer loc_integer01=GetHandleId(loc_trigger01)
    set loc_trigger01=null
endfunction

// 89995 ~ 90000
function Func4327 takes nothing returns boolean
    if GetSpellAbilityId()=='A2BE' and Func0028(GetSpellTargetUnit())==false then
        call Func4326()
    endif
    return false
endfunction

// 90002 ~ 90007
function Func4328 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4327))
    set loc_trigger01=null
endfunction
