
// 86670 ~ 86694
function Func4152 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A27G')
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        if loc_integer01==1 then
            call Func0243(loc_unit02,'A27W',1,10)
        elseif loc_integer01==2 then
            call Func0243(loc_unit02,'A286',1,10)
        elseif loc_integer01==3 then
            call Func0243(loc_unit02,'A285',1,10)
        elseif loc_integer01==4 then
            call Func0243(loc_unit02,'A287',1,10)
        endif
    else
        if loc_integer01==1 then
            call Func0243(loc_unit02,'A291',1,10)
        elseif loc_integer01==2 then
            call Func0243(loc_unit02,'A28Z',1,10)
        elseif loc_integer01==3 then
            call Func0243(loc_unit02,'A292',1,10)
        elseif loc_integer01==4 then
            call Func0243(loc_unit02,'A290',1,10)
        endif
    endif
    call Func0184(sound073,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
endfunction
