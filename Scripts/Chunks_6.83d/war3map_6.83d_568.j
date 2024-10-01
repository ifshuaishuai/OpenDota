
// 65855 ~ 65873
function Func3081 takes unit loc_unit01 returns integer
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001)))
    if loc_integer01==1 then
        return 'A230'
    elseif loc_integer01==2 then
        return 'A22Z'
    elseif loc_integer01==3 then
        return 'A22Y'
    elseif loc_integer01==4 then
        return 'A22U'
    elseif loc_integer01==5 then
        return 'A22V'
    elseif loc_integer01==6 then
        return 'A22W'
    elseif loc_integer01==7 then
        return 'A22X'
    endif
    return 'A230'
endfunction
