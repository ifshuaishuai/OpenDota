
// 7761 ~ 7772
function Func0441 takes unit loc_unit01,real loc_real01 returns real
    loop
        if loc_real01>25 then
            set loc_real01=loc_real01-25
        else
            set loc_real01=loc_real01-5
        endif
        call SetUnitMoveSpeed(loc_unit01,loc_real01)
        exitwhen GetUnitMoveSpeed(loc_unit01)<522
    endloop
    return loc_real01
endfunction

// 7774 ~ 7799
function Func0442 takes unit loc_unit01 returns real
    local real loc_real01
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(814)))
    local integer loc_integer02
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07
    if GetUnitMoveSpeed(loc_unit01)==522 and loc_integer01>0 then
        set loc_real01=GetUnitDefaultMoveSpeed(loc_unit01)
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0I8')
        set loc_real02=Func0441(loc_unit01,loc_real01)
        set loc_real03=GetUnitMoveSpeed(loc_unit01)
        set loc_real04=Func0441(loc_unit01,loc_real02)
        set loc_real05=GetUnitMoveSpeed(loc_unit01)
        set loc_real06=(loc_real03-loc_real05)/(loc_real02-loc_real04)-1
        set loc_real07=loc_real03/(1+loc_real06)-loc_real02
        set loc_real06=Func0141(loc_real06,0.05*loc_integer01+1)
        call SetUnitMoveSpeed(loc_unit01,loc_real01)
        return(loc_real01+loc_real07)*(1+loc_real06)
    else
        return GetUnitMoveSpeed(loc_unit01)
    endif
endfunction

// 7801 ~ 7813
function Func0443 takes unit loc_unit01 returns real
    local real loc_real01=GetUnitMoveSpeed(loc_unit01)
    if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(814)))>0 then
        set loc_real01=Func0442(loc_unit01)
    endif
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4423))))==1)==true then
        set loc_real01=1000.
    endif
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4424))))==1)==true then
        set loc_real01=650
    endif
    return loc_real01
endfunction
