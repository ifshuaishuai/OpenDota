
// 64321 ~ 64326
function Func2981 takes unit loc_unit01 returns boolean
    if Func0394(loc_unit01,integers089[integer333])!=null then
        return true
    endif
    return false
endfunction

// 64328 ~ 64333
function Func2982 takes nothing returns boolean
    if GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==true then
        set integer510=integer510+1
    endif
    return false
endfunction

// 64335 ~ 64346
function Func2983 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A15J')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A17A',false)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 64348 ~ 64362
function Func2984 takes nothing returns nothing
    if IsUnitType(unit124,UNIT_TYPE_HERO)==true then
        if Func2981(unit125)then
            call SetUnitState(unit125,UNIT_STATE_LIFE,GetUnitState(unit125,UNIT_STATE_LIFE)+GetUnitState(unit125,UNIT_STATE_MAX_LIFE)*0.10)
        else
            call SetUnitState(unit125,UNIT_STATE_LIFE,GetUnitState(unit125,UNIT_STATE_LIFE)+GetUnitState(unit125,UNIT_STATE_MAX_LIFE)*0.06)
        endif
    else
        if Func2981(unit125)then
            call SetUnitState(unit125,UNIT_STATE_LIFE,GetUnitState(unit125,UNIT_STATE_LIFE)+GetUnitState(unit125,UNIT_STATE_MAX_LIFE)*0.03)
        else
            call SetUnitState(unit125,UNIT_STATE_LIFE,GetUnitState(unit125,UNIT_STATE_LIFE)+GetUnitState(unit125,UNIT_STATE_MAX_LIFE)*0.02)
        endif
    endif
endfunction

// 64364 ~ 64405
function Func2985 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(274)))
    local integer loc_integer02=GetHandleId(loc_trigger02)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02
    local real loc_real01
    local real loc_real02
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(273)))
    if(GetTriggerEventId()==EVENT_UNIT_DEATH and GetTriggerUnit()==loc_unit01)or(GetTriggerEventId()!=EVENT_UNIT_DAMAGED and GetTriggerEventId()!=EVENT_UNIT_DEATH)then
        call FlushChildHashtable(hashtable001,(loc_integer02))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger02)
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DEATH then
        if IsUnitIllusion(GetDyingUnit())==false then
            call Func0196(GetDyingUnit(),loc_unit01,'h07Y',"Func2984",600,false)
        endif
    elseif loc_boolean01==false then
        set loc_unit02=GetTriggerUnit()
        set loc_real01=Func0147(loc_unit01,loc_unit02)
        if loc_real01<775 and GetEventDamage()>4 then
            if Func2981(loc_unit01)then
                set loc_real02=25+5*integer511
            else
                set loc_real02=15+5*integer511
            endif
            if loc_real01>200 then
                set loc_real02=loc_real02-15*((loc_real01-150)/(775-150))
            endif
            call SaveBoolean(hashtable001,(loc_integer01),(273),(true))
            call Func0115(GetEventDamageSource(),GetTriggerUnit(),7,GetEventDamage()*loc_real02/100)
            call SaveBoolean(hashtable001,(loc_integer01),(273),(false))
        endif
    endif
    set loc_trigger01=null
    set loc_trigger02=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
