
// 76824 ~ 76834
function Func3703 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    if Func0194(loc_unit01)==false then
        call UnitRemoveAbility(loc_unit01,'A0NU')
        call UnitRemoveAbility(loc_unit01,'A0NW')
    elseif IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
        call Func0215(loc_unit01,'A0NU',5.1)
        call Func0215(loc_unit01,'A0NW',5.1)
    endif
    set loc_unit01=null
endfunction

// 76836 ~ 76854
function Func3704 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    if Func0194(loc_unit01)==false then
        if IsUnitAlly(loc_unit01,player005)==false then
            if integer022==0 then
                call Func0193(loc_unit01,'A0NU')
            else
                call SetUnitAbilityLevel(loc_unit01,'A0NU',R2I(real364*(integer022+1)))
            endif
        else
            if integer022==0 then
                call Func0193(loc_unit01,'A0NW')
            else
                call SetUnitAbilityLevel(loc_unit01,'A0NW',R2I(real364*(integer022+1)))
            endif
        endif
    endif
    set loc_unit01=null
endfunction

// 76856 ~ 76879
function Func3705 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(188)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(68)))
    set real364=loc_real01
    set player005=loc_player01
    set integer022=loc_integer02
    if loc_integer02>=loc_integer03/1.0 then
        call ForGroup(loc_group01,function Func3703)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call ForGroup(loc_group01,function Func3704)
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_player01=null
    return false
endfunction
