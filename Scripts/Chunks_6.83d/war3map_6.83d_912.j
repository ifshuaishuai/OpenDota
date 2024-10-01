
// 93225 ~ 93231
function Func4503 takes nothing returns nothing
    local real loc_real01=Func0147(GetEnumUnit(),unit428)
    if loc_real01<real009 then
        set real009=loc_real01
        set unit427=GetEnumUnit()
    endif
endfunction

// 93233 ~ 93235
function Func4504 takes nothing returns boolean
    return Func0194(GetFilterUnit())==false and IsUnitEnemy(unit422,GetOwningPlayer(GetFilterUnit()))and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((809))))==1)
endfunction
