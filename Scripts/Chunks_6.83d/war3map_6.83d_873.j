
// 90232 ~ 90236
function Func4343 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2E3')
    call Func0115(loc_unit01,loc_unit02,3,60+40*loc_integer01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl",loc_unit02,"origin"))
endfunction

// 90238 ~ 90243
function Func4344 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group002)==false then
        call GroupAddUnit(group002,GetEnumUnit())
        call Func4343(unit124,GetEnumUnit())
    endif
endfunction

// 90245 ~ 90290
function Func4345 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(18)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit03
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(16)))
    local group loc_group02
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(727)))
    local boolean loc_boolean02=(LoadBoolean(hashtable001,(loc_integer01),(740)))
    if Func0270(loc_unit01)then
        set loc_boolean02=true
        call SaveBoolean(hashtable001,(loc_integer01),(740),(loc_boolean02))
    endif
    if loc_boolean01==false then
        set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(700+loc_integer02+1-loc_integer03)))
        call RemoveUnit(loc_unit03)
    else
        set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(700+loc_integer03)))
        if loc_boolean02==false then
            call SetUnitX(loc_unit01,GetUnitX(loc_unit03))
            call SetUnitY(loc_unit01,GetUnitY(loc_unit03))
        endif
        call RemoveUnit(loc_unit03)
        set loc_group02=Func0030()
        set unit124=loc_unit01
        set group002=loc_group01
        call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),250,Condition(function Func0312))
        call ForGroup(loc_group02,function Func4344)
        call Func0029(loc_group02)
    endif
    if loc_integer03==(loc_integer02)then
        call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),90)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction
