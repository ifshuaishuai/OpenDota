
// 44829 ~ 44831
function Func1794 takes nothing returns boolean
    return GetUnitAbilityLevel(GetTriggerUnit(),'A00V')>0 and GetUnitAbilityLevel(GetAttacker(),'A04R')!=1 and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))==false and GetUnitTypeId(GetAttacker())!='n0F5'
endfunction

// 44833 ~ 44842
function Func1795 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A00V')
    local integer loc_integer02=GetHeroStr(loc_unit01,true)
    local real loc_real01=(14+2*loc_integer01)+(0.18+0.08*loc_integer01)*loc_integer02
    call Func0115(loc_unit01,loc_unit02,2,loc_real01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 44844 ~ 44849
function Func1796 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1794))
    call TriggerAddAction(loc_trigger01,function Func1795)
endfunction
