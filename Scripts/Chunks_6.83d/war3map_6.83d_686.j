
// 74080 ~ 74088
function Func3532 takes nothing returns boolean
    if(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false))and GetUnitTypeId(GetFilterUnit())!='emow' and GetUnitTypeId(GetFilterUnit())!='uzig' and GetUnitTypeId(GetFilterUnit())!='n00L' then
        if GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)<real358 then
            set real358=GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)
            set unit359=GetFilterUnit()
        endif
    endif
    return false
endfunction

// 74090 ~ 74107
function Func3533 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local group loc_group01=Func0030()
    set unit359=null
    set real358=999999
    set real357=30+30*loc_integer01
    set unit358=loc_unit01
    set unit124=loc_unit01
    if GetUnitAbilityLevel(loc_unit01,'A1UV')>0 then
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),525,Condition(function Func3532))
    else
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),525,Condition(function Func3531))
    endif
    call Func0029(loc_group01)
    if unit359!=null then
        call Func3530(loc_unit01,loc_unit02,unit359,loc_integer01)
    endif
    set loc_group01=null
endfunction

// 74109 ~ 74153
function Func3534 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call Func3525(loc_integer01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if GetTriggerUnit()==loc_unit01 then
            call KillUnit(loc_unit02)
        endif
    else
        if GetUnitAbilityLevel(loc_unit01,'A1UV')>0 then
            if loc_integer02==1 then
                set loc_real01=0.55
            elseif loc_integer02==2 then
                set loc_real01=0.45
            else
                set loc_real01=0.35
            endif
        else
            if loc_integer02==1 then
                set loc_real01=0.7
            elseif loc_integer02==2 then
                set loc_real01=0.6
            else
                set loc_real01=0.5
            endif
        endif
        set loc_real01=loc_real01/0.05
        if ModuloInteger(loc_integer03,R2I(loc_real01))==0 or loc_integer03==1 then
            set integer521=loc_integer01
            call Func3533(loc_unit01,loc_unit02,loc_integer02)
        endif
        call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 74155 ~ 74175
function Func3535 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1AO')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h081',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1UV')
    endif
    call UnitApplyTimedLife(loc_unit02,'BTLF',30)
    call SetUnitAbilityLevel(loc_unit02,'A1DJ',loc_integer01)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3534))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 74177 ~ 74182
function Func3536 takes nothing returns boolean
    if GetSpellAbilityId()=='A1AO' or GetSpellAbilityId()=='A1UV' then
        call Func3535()
    endif
    return false
endfunction

// 74184 ~ 74194
function Func3537 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3536))
    set loc_trigger01=null
    set integers052[0]='A1DK'
    set integers052[1]='A1DL'
    set integers052[2]='A1DN'
    set integers052[3]='A1DM'
    set integers052[4]='A1DO'
endfunction
