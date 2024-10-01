
// 71534 ~ 71536
function Func3393 takes nothing returns boolean
    return(GetLearnedSkill()=='A086' or GetLearnedSkill()=='A08E')and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 71538 ~ 71553
function Func3394 takes nothing returns boolean
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(304)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(305)))
    if loc_unit01==null or Func0194(loc_unit01)or Func0124()or Func0394(loc_unit01,integers089[integer347])==null then
        call ShowUnit(loc_unit02,false)
    else
        call ShowUnit(loc_unit02,true)
        call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    endif
    if GetOwningPlayer(loc_unit02)!=GetOwningPlayer(loc_unit01)then
        call SetUnitOwner(loc_unit02,GetOwningPlayer(loc_unit01),true)
    endif
    return false
endfunction
