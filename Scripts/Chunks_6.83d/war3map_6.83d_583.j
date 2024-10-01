
// 66904 ~ 66927
function Func3134 takes unit loc_unit01,integer loc_integer01 returns boolean
    local item loc_item01
    local boolean loc_boolean01=false
    local boolean loc_boolean02=true
    set loc_item01=CreateItem(loc_integer01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    if GetUnitAbilityLevel(loc_unit01,'AInv')==0 then
        set loc_boolean01=true
        call Func0193(loc_unit01,'AInv')
    endif
    if UnitAddItem(loc_unit01,loc_item01)==false then
        call RemoveItem(loc_item01)
        set loc_boolean02=false
    elseif GetWidgetLife(loc_item01)>0 then
        call RemoveItem(loc_item01)
        set loc_boolean02=false
    else
        call RemoveItem(loc_item01)
    endif
    if loc_boolean01 then
        call UnitRemoveAbility(loc_unit01,'AInv')
    endif
    set loc_item01=null
    return loc_boolean02
endfunction

// 66929 ~ 66943
function Func3135 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    if Func3128(loc_unit01)or IsUnitIllusion(loc_unit01)==true then
        call UnitRemoveAbility(loc_unit01,'B0H4')
        call Func0193(loc_unit01,'A2VL')
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(819),(integer513))
    else
        call UnitRemoveAbility(loc_unit01,'A2VL')
        call UnitRemoveAbility(loc_unit01,'B0GY')
        call DisableTrigger(trigger057)
        call Func3134(loc_unit01,integers166[integer513])
        call EnableTrigger(trigger057)
    endif
    set loc_unit01=null
endfunction

// 66945 ~ 66975
function Func3136 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local group loc_group02
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_unit01==null then
        set boolean148=true
        call ForGroup(loc_group01,function Func3132)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set group022=loc_group01
        set integer513=GetUnitAbilityLevel(loc_unit01,'AUav')
        set boolean148=false
        set unit341=loc_unit01
        set unit124=loc_unit01
        call ForGroup(loc_group01,function Func3132)
        set loc_group02=Func0030()
        call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),900+25,Condition(function Func0332))
        call ForGroup(loc_group02,function Func3133)
        call Func0029(loc_group02)
        set loc_group02=null
        call ForGroup(loc_group01,function Func3135)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 66977 ~ 66992
function Func3137 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    if IsUnitIllusion(loc_unit01)then
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    else
        call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    endif
    call TriggerAddCondition(loc_trigger01,Condition(function Func3136))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(Func0030()))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 66994 ~ 66999
function Func3138 takes nothing returns boolean
    if GetLearnedSkill()=='AUav' and GetUnitAbilityLevel(GetTriggerUnit(),'AUav')==1 then
        call Func3137()
    endif
    return false
endfunction

// 67001 ~ 67013
function Func3139 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3138))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3131))
    set integers166[1]='I0QA'
    set integers166[2]='I0QB'
    set integers166[3]='I0QC'
    set integers166[4]='I0QD'
    set loc_trigger01=null
endfunction
