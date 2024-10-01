
// 68812 ~ 68821
function Func3233 takes nothing returns nothing
    local unit loc_unit01=unit128
    local unit loc_unit02=unit129
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(219)))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(219),(loc_unit03))
    call SetUnitOwner(loc_unit03,GetOwningPlayer(loc_unit02),true)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 68823 ~ 68829
function Func3234 takes nothing returns nothing
    local unit loc_unit01=unit127
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(219)))
    if loc_unit02!=null and GetUnitTypeId(loc_unit02)=='e01V' then
        call RemoveUnit(loc_unit02)
    endif
endfunction
