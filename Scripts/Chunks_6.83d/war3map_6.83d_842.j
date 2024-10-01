
// 87907 ~ 87940
function Func4211 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2H3')
    local integer loc_integer03=1
    local real loc_real01
    if loc_integer02==1 then
        set loc_integer03=1
        set loc_real01=80
    endif
    if loc_integer02==2 then
        set loc_integer03=2
        set loc_real01=60
    endif
    if loc_integer02==3 then
        set loc_integer03=2
        set loc_real01=120
    endif
    if loc_integer02==4 then
        set loc_integer03=3
        set loc_real01=100
    endif
    if GetTriggerEvalCount(loc_trigger01)==loc_integer03 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    call Func0115(loc_unit01,loc_unit02,1,loc_real01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 87942 ~ 87960
function Func4212 takes nothing returns nothing
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2H3')
    call UnitAddAbility(loc_unit03,'A2H4')
    call SetUnitAbilityLevel(loc_unit03,'A2H4',loc_integer02)
    call IssueTargetOrder(loc_unit03,"ensnare",loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4211))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    set loc_unit03=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 87962 ~ 88005
function Func4213 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=null
    local unit loc_unit03=null
    local unit loc_unit04=null
    local integer loc_integer01=0
    local unit loc_unit05
    local trigger loc_trigger01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,425,Condition(function Func0314))
    loop
        exitwhen FirstOfGroup(loc_group01)==null or loc_integer01==2
        set loc_unit05=GroupPickRandomUnit(loc_group01)
        if loc_unit05!=null then
            if loc_integer01==0 then
                set loc_unit02=loc_unit05
            elseif loc_integer01==1 then
                set loc_unit03=loc_unit05
            elseif loc_integer01==2 then
                set loc_unit04=loc_unit05
            endif
            set loc_integer01=loc_integer01+1
            call GroupRemoveUnit(loc_group01,loc_unit05)
        endif
    endloop
    call Func0029(loc_group01)
    if loc_unit02!=null then
        call Func0196(loc_unit01,loc_unit02,'h0E0',"Func4212",9000,false)
    endif
    if loc_unit03!=null then
        call Func0196(loc_unit01,loc_unit03,'h0E0',"Func4212",9000,false)
    endif
    if loc_unit04!=null then
    endif
    set loc_group01=null
    set loc_unit01=null
    set loc_unit05=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
endfunction

// 88007 ~ 88012
function Func4214 takes nothing returns boolean
    if GetSpellAbilityId()=='A2H3' then
        call Func4213()
    endif
    return false
endfunction

// 88014 ~ 88019
function Func4215 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4214))
    set loc_trigger01=null
endfunction
