
// 31335 ~ 31373
function Func1281 takes nothing returns boolean
    local unit loc_unit01=units001[GetPlayerId(GetTriggerPlayer())]
    if boolean128 then
        call Func0120(GetTriggerPlayer(),GetObjectName('n030'))
        return false
    endif
    if boolean039==false then
        if boolean113==false and boolean035==false and boolean109==false and boolean060==false and boolean115==false and boolean117==false and boolean040==false and boolean027==false then
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,"-repick "+GetObjectName('n05B'))
        endif
        return false
    endif
    if(booleans003[GetPlayerId(GetTriggerPlayer())]==true)then
        return false
    endif
    if(units001[GetPlayerId(GetTriggerPlayer())]==null)then
        return false
    endif
    if boolean003 or boolean035 or boolean040 then
        return false
    endif
    if(boolean042==true)then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n050'))
        return false
    endif
    if(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)<integer003)then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n059'))
        return false
    endif
    if GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)<350 and boolean006 or boolean034 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n05U'))
        return false
    endif
    if GetUnitState(loc_unit01,UNIT_STATE_MANA)!=GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA)or GetUnitState(loc_unit01,UNIT_STATE_LIFE)!=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n05J'))
        return false
    endif
    return true
endfunction
