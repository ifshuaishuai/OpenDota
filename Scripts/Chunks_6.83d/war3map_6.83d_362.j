
// 52169 ~ 52244
function Func2265 takes unit loc_unit01 returns integer
    local real loc_real01=GetRandomReal(0,100)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A088')
    local boolean loc_boolean01=Func0394(loc_unit01,integers089[integer331])!=null
    local integer loc_integer02=0
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit01))
    set loc_boolean01=false
    if loc_integer01==1 then
        set integers153[loc_integer03]=integers153[loc_integer03]+1
        if loc_boolean01 then
            if loc_real01<30 then
                set integers150[loc_integer03]=integers150[loc_integer03]+1
                set loc_integer02=3
            elseif loc_real01<60 then
                set integers149[loc_integer03]=integers149[loc_integer03]+1
                set loc_integer02=2
            endif
        else
            if loc_real01<40 then
                set loc_integer02=2
                set integers149[loc_integer03]=integers149[loc_integer03]+1
            endif
        endif
    elseif loc_integer01==2 then
        set integers153[loc_integer03]=integers153[loc_integer03]+1
        if loc_boolean01 then
            if loc_real01<17.5 then
                set loc_integer02=4
                set integers151[loc_integer03]=integers151[loc_integer03]+1
            elseif loc_real01<35 then
                set loc_integer02=3
                set integers150[loc_integer03]=integers150[loc_integer03]+1
            elseif loc_real01<70 then
                set loc_integer02=2
                set integers149[loc_integer03]=integers149[loc_integer03]+1
            endif
        else
            if loc_real01<20 then
                set loc_integer02=3
                set integers150[loc_integer03]=integers150[loc_integer03]+1
            elseif loc_real01<50 then
                set loc_integer02=2
                set integers149[loc_integer03]=integers149[loc_integer03]+1
            endif
        endif
    elseif loc_integer01==3 then
        set integers153[loc_integer03]=integers153[loc_integer03]+1
        if loc_boolean01 then
            if loc_real01<10 then
                set loc_integer02=5
                set integers152[loc_integer03]=integers152[loc_integer03]+1
            elseif loc_real01<20 then
                set loc_integer02=4
                set integers151[loc_integer03]=integers151[loc_integer03]+1
            elseif loc_real01<40 then
                set loc_integer02=3
                set integers150[loc_integer03]=integers150[loc_integer03]+1
            elseif loc_real01<80 then
                set loc_integer02=2
                set integers149[loc_integer03]=integers149[loc_integer03]+1
            endif
        else
            if loc_real01<12.5 then
                set loc_integer02=4
                set integers151[loc_integer03]=integers151[loc_integer03]+1
            elseif loc_real01<25 then
                set loc_integer02=3
                set integers150[loc_integer03]=integers150[loc_integer03]+1
            elseif loc_real01<60 then
                set loc_integer02=2
                set integers149[loc_integer03]=integers149[loc_integer03]+1
            endif
        endif
    endif
    return loc_integer02
endfunction
