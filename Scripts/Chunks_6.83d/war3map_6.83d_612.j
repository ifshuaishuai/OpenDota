
// 69270 ~ 69293
function Func3259 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if Func0147(loc_unit01,loc_unit02)>900 or Func0194(loc_unit01)==true then
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
    endif
    if loc_integer02>16*10 then
        call UnitRemoveAbility(loc_unit02,'BNdo')
        call UnitRemoveAbility(loc_unit02,'B0HM')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetUnitAbilityLevel(loc_unit02,'BNdo')==0 and GetUnitAbilityLevel(loc_unit02,'B0HM')==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
