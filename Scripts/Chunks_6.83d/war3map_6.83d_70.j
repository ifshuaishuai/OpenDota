
// 20712 ~ 20715
function Func0796 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return loc_integer01=='u00R' or loc_integer01=='umtw' or loc_integer01=='e026' or loc_integer01=='ebal'
endfunction

// 20717 ~ 20727
function Func0797 takes nothing returns boolean
    local real loc_real01
    if(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 or Func0796(GetFilterUnit())or GetUnitTypeId(GetFilterUnit())=='nfoh' or GetUnitTypeId(GetFilterUnit())=='ndfl' or Func0795(GetFilterUnit()))and Func0194(GetFilterUnit())==false and GetUnitAbilityLevel(GetFilterUnit(),'Asud')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit125))==true and GetOwningPlayer(GetFilterUnit())!=player002 and IsUnitIllusion(GetFilterUnit())==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING)==false and GetUnitTypeId(GetFilterUnit())!='n0F5' then
        set loc_real01=Func0149(real010,real011,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
        if loc_real01<real009 then
            set real009=loc_real01
            set unit124=GetFilterUnit()
        endif
    endif
    return false
endfunction

// 20729 ~ 20739
function Func0798 takes nothing returns boolean
    local real loc_real01
    if(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 or Func0796(GetFilterUnit())or GetUnitTypeId(GetFilterUnit())=='nfoh' or GetUnitTypeId(GetFilterUnit())=='ndfl' or Func0795(GetFilterUnit()))and Func0194(GetFilterUnit())==false and GetUnitAbilityLevel(GetFilterUnit(),'Asud')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit125))==true and GetOwningPlayer(GetFilterUnit())!=player002 and IsUnitIllusion(GetFilterUnit())==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING)==false and GetUnitTypeId(GetFilterUnit())!='n0F5' then
        set loc_real01=Func0149(real010,real011,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
        if loc_real01<real009 and loc_real01<325 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true then
            set real009=loc_real01
            set unit124=GetFilterUnit()
        endif
    endif
    return false
endfunction

// 20741 ~ 20755
function Func0799 takes unit loc_unit01,real loc_real01,real loc_real02 returns unit
    local group loc_group01=Func0030()
    set unit124=null
    set unit125=loc_unit01
    set real009=99999
    set real010=loc_real01
    set real011=loc_real02
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,99999,Condition(function Func0798))
    if unit124==null then
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,99999,Condition(function Func0797))
    endif
    call Func0029(loc_group01)
    set loc_group01=null
    return unit124
endfunction
