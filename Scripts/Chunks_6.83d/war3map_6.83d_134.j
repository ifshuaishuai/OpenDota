
// 29563 ~ 29565
function Func1182 takes real loc_real01 returns boolean
    return(100*GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)/GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE))<loc_real01
endfunction

// 29567 ~ 29569
function Func1183 takes nothing returns boolean
    return Func1182(10)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==true and GetUnitTypeId(GetTriggerUnit())!='etol' and GetUnitTypeId(GetTriggerUnit())!='unpl'
endfunction

// 29571 ~ 29573
function Func1184 takes nothing returns boolean
    return Func1182(25)and(GetUnitAbilityLevel(GetTriggerUnit(),'BNdo')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'BEsh')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B001')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B0AQ')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B0AP')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B05D')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B05M')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B05N')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B05O')>0)
endfunction

// 29575 ~ 29577
function Func1185 takes nothing returns boolean
    return Func1182(50)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==false and(IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false or GetUnitTypeId(GetTriggerUnit())=='ebal' or GetUnitTypeId(GetTriggerUnit())=='e026' or GetUnitTypeId(GetTriggerUnit())=='umtw' or GetUnitTypeId(GetTriggerUnit())=='u00R')
endfunction
