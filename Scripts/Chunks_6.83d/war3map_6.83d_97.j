
// 22198 ~ 22211
function Func0879 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01
    local real loc_real02
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_real01=GetRectCenterX(rect011)
        set loc_real02=GetRectCenterY(rect011)
    else
        set loc_real01=GetRectCenterX(rect004)
        set loc_real02=GetRectCenterY(rect004)
    endif
    call IssuePointOrder(loc_unit01,"move",loc_real01,loc_real02)
    set loc_unit01=null
endfunction

// 22213 ~ 22226
function Func0880 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01
    local real loc_real02
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_real01=-4533
        set loc_real02=1158
    else
        set loc_real01=3190
        set loc_real02=-35
    endif
    call IssuePointOrder(loc_unit01,"move",loc_real01,loc_real02)
    set loc_unit01=null
endfunction

// 22228 ~ 22234
function Func0881 takes nothing returns nothing
    if GetSpellAbilityId()=='A1AS' then
        call Func0879()
    elseif GetSpellAbilityId()=='A2KS' then
        call Func0880()
    endif
endfunction

// 22236 ~ 22240
function Func0882 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(129),(true))
    set loc_unit01=null
endfunction

// 22242 ~ 22246
function Func0883 takes nothing returns nothing
    if(GetSpellAbilityId()=='A0B8' or GetSpellAbilityId()=='A1WE')and Func0028(GetTriggerUnit())==true then
        call Func0882()
    endif
endfunction

// 22248 ~ 22250
function Func0884 takes integer loc_integer01 returns boolean
    return loc_integer01=='ugho' or loc_integer01=='unec' or loc_integer01=='esen' or loc_integer01=='edry' or loc_integer01=='u001' or loc_integer01=='u002' or loc_integer01=='e00V' or loc_integer01=='e00W' or loc_integer01=='ebal' or loc_integer01=='e026' or loc_integer01=='umtw' or loc_integer01=='u00R'
endfunction

// 22252 ~ 22268
function Func0885 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>8 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0115(loc_unit01,loc_unit02,3,150.0/8.0)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
