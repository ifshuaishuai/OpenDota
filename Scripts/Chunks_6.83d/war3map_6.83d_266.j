
// 46171 ~ 46173
function Func1869 takes nothing returns nothing
    call Func0115(unit276,GetEnumUnit(),1,integer466)
endfunction

// 46175 ~ 46192
function Func1870 takes unit loc_unit01,real loc_real01,real loc_real02,integer loc_integer01 returns nothing
    local group loc_group01=Func0030()
    if loc_integer01==1 then
        set integer466=105
    elseif loc_integer01==2 then
        set integer466=170
    elseif loc_integer01==3 then
        set integer466=250
    elseif loc_integer01==4 then
        set integer466=310
    endif
    set unit276=loc_unit01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,300+25,Condition(function Func0305))
    call ForGroup(loc_group01,function Func1869)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
