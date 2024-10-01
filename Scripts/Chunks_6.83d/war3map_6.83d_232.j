
// 43577 ~ 43595
function Func1719 takes nothing returns nothing
    local real loc_real01=GetUnitX(GetEnumUnit())
    local real loc_real02=GetUnitY(GetEnumUnit())
    local real loc_real03=bj_RADTODEG*Atan2(loc_real02-real010,loc_real01-real009)
    local real loc_real04
    local real loc_real05
    if Sin((loc_real03-real011)*bj_DEGTORAD)<0 then
        set loc_real04=GetUnitX(GetEnumUnit())+15*Cos((real011-90)*bj_DEGTORAD)
        set loc_real05=GetUnitY(GetEnumUnit())+15*Sin((real011-90)*bj_DEGTORAD)
        call SetUnitPosition(GetEnumUnit(),loc_real04,loc_real05)
        call SetUnitFacingTimed(GetEnumUnit(),real011+90,0.3)
    else
        set loc_real04=GetUnitX(GetEnumUnit())+15*Cos((real011+90)*bj_DEGTORAD)
        set loc_real05=GetUnitY(GetEnumUnit())+15*Sin((real011+90)*bj_DEGTORAD)
        call SetUnitPosition(GetEnumUnit(),loc_real04,loc_real05)
        call SetUnitFacingTimed(GetEnumUnit(),real011-90,0.3)
    endif
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",GetEnumUnit(),"origin"))
endfunction

// 43597 ~ 43617
function Func1720 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    if GetTriggerEvalCount(loc_trigger01)>20 then
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set real009=loc_real02
        set real010=loc_real03
        set real011=loc_real01
        call ForGroup(loc_group01,function Func1719)
    endif
    set loc_trigger01=null
    set loc_group01=null
    return false
endfunction
