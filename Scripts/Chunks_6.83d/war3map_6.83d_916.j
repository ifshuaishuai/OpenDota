
// 93474 ~ 93476
function Func4520 takes integer loc_integer01 returns boolean
    return integers181[0]==loc_integer01 or integers181[1]==loc_integer01 or integers181[2]==loc_integer01 or integers181[3]==loc_integer01 or integers181[4]==loc_integer01 or integers181[5]==loc_integer01 or integers181[6]==loc_integer01
endfunction

// 93478 ~ 93480
function Func4521 takes nothing returns boolean
    return Func0194(GetFilterUnit())==false and IsUnitEnemy(unit423,GetOwningPlayer(GetFilterUnit()))and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((809))))==1)
endfunction

// 93482 ~ 93484
function Func4522 takes nothing returns nothing
    call Func0246((GetEnumUnit()),'A2QN',1,2,'B0GK')
endfunction

// 93486 ~ 93495
function Func4523 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((809))))==1)==true then
        call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func4521))
    endif
    call GroupAddUnit(loc_group01,loc_unit01)
    call ForGroup(loc_group01,function Func4522)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 93497 ~ 93503
function Func4524 takes nothing returns nothing
    local real loc_real01=Func0147(GetEnumUnit(),unit425)
    if loc_real01<real009 then
        set real009=loc_real01
        set unit424=GetEnumUnit()
    endif
endfunction

// 93505 ~ 93528
function Func4525 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group045)==false then
        call GroupAddUnit(group045,GetEnumUnit())
        if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
            set boolean157=true
            set unit424=GetEnumUnit()
            if((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((809))))==1)then
                set unit425=GetEnumUnit()
            endif
            if integer565==1 then
                call Func0115(unit423,GetEnumUnit(),1,real416)
                call Func4523(GetEnumUnit())
            else
                call Func0115(unit423,GetEnumUnit(),1,real416)
            endif
        else
            if integer565==1 then
                call Func0115(unit423,GetEnumUnit(),1,real416)
            else
                call Func0115(unit423,GetEnumUnit(),1,real416)
            endif
        endif
    endif
endfunction
