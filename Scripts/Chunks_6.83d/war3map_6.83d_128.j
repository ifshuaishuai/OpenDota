
// 24723 ~ 24727
function Func1043 takes real loc_real01,real loc_real02 returns nothing
    call SetUnitPosition(CreateUnit(player001,'ndtr',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'ndtr',loc_real01,loc_real02,0),loc_real01,loc_real02)
    call SetUnitPosition(CreateUnit(player001,'ndtw',loc_real01,loc_real02,0),loc_real01,loc_real02)
endfunction

// 24729 ~ 24742
function Func1044 takes real loc_real01,real loc_real02 returns nothing
    local integer loc_integer01=Func1022(3,1,5)
    if loc_integer01==1 then
        call Func1031(loc_real01,loc_real02)
    elseif loc_integer01==2 then
        call Func1032(loc_real01,loc_real02)
    elseif loc_integer01==3 then
        call Func1042(loc_real01,loc_real02)
    elseif loc_integer01==4 then
        call Func1043(loc_real01,loc_real02)
    elseif loc_integer01==5 then
        call Func1038(loc_real01,loc_real02)
    endif
endfunction

// 24744 ~ 24757
function Func1045 takes real loc_real01,real loc_real02 returns nothing
    local integer loc_integer01=Func1022(12,1,5)
    if loc_integer01==1 then
        call Func1031(loc_real01,loc_real02)
    elseif loc_integer01==2 then
        call Func1032(loc_real01,loc_real02)
    elseif loc_integer01==3 then
        call Func1042(loc_real01,loc_real02)
    elseif loc_integer01==4 then
        call Func1043(loc_real01,loc_real02)
    elseif loc_integer01==5 then
        call Func1038(loc_real01,loc_real02)
    endif
endfunction

// 24759 ~ 24772
function Func1046 takes real loc_real01,real loc_real02 returns nothing
    local integer loc_integer01=Func1022(4,1,5)
    if loc_integer01==1 then
        call Func1031(loc_real01,loc_real02)
    elseif loc_integer01==2 then
        call Func1032(loc_real01,loc_real02)
    elseif loc_integer01==3 then
        call Func1042(loc_real01,loc_real02)
    elseif loc_integer01==4 then
        call Func1043(loc_real01,loc_real02)
    elseif loc_integer01==5 then
        call Func1038(loc_real01,loc_real02)
    endif
endfunction

// 24774 ~ 24787
function Func1047 takes real loc_real01,real loc_real02 returns nothing
    local integer loc_integer01=Func1022(9,1,5)
    if loc_integer01==1 then
        call Func1031(loc_real01,loc_real02)
    elseif loc_integer01==2 then
        call Func1032(loc_real01,loc_real02)
    elseif loc_integer01==3 then
        call Func1042(loc_real01,loc_real02)
    elseif loc_integer01==4 then
        call Func1043(loc_real01,loc_real02)
    elseif loc_integer01==5 then
        call Func1038(loc_real01,loc_real02)
    endif
endfunction
