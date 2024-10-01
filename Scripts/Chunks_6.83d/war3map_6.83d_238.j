
// 44023 ~ 44034
function Func1742 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call UnitRemoveAbility(loc_unit01,'A1IW')
    call UnitRemoveAbility(loc_unit01,'B0CA')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 44036 ~ 44048
function Func1743 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,3,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1742))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call Func0193(loc_unit02,'A1IW')
    call UnitMakeAbilityPermanent(loc_unit02,true,'A1IW')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1IW',false)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodKnight.mdl",loc_unit02,"chest"))
    set loc_trigger01=null
endfunction

// 44050 ~ 44081
function Func1744 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 and(GetEventDamage()>40 or IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)==true or GetUnitTypeId(loc_unit01)=='umtw' or GetUnitTypeId(loc_unit01)=='ebal')and(LoadBoolean(hashtable001,(GetHandleId(loc_unit02)),(183)))==true then
            call Func1743(loc_unit02,loc_unit01)
            call SaveBoolean(hashtable001,(GetHandleId(loc_unit02)),(183),(false))
            call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(184),(((TimerGetElapsed(timer001)))*1.0))
            call UnitRemoveAbility(loc_unit02,'A1IS')
            call UnitRemoveAbility(loc_unit02,'A1J4')
            call UnitRemoveAbility(loc_unit02,'A1J3')
            call UnitRemoveAbility(loc_unit02,'A1J5')
            call UnitRemoveAbility(loc_unit02,'A1IU')
            call FlushChildHashtable(hashtable001,(GetHandleId((LoadTriggerHandle(hashtable001,(loc_integer01),(35))))))
            call Func0035((LoadTriggerHandle(hashtable001,(loc_integer01),(35))))
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 44083 ~ 44140
function Func1745 takes nothing returns boolean
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit01
    local unit loc_unit02
    local integer loc_integer02
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(183),(false))
        call SaveReal(hashtable001,(GetHandleId(GetTriggerUnit())),(184),(((TimerGetElapsed(timer001)))*1.0))
        call UnitRemoveAbility(GetTriggerUnit(),'A1IS')
        call UnitRemoveAbility(GetTriggerUnit(),'A1J4')
        call UnitRemoveAbility(GetTriggerUnit(),'A1J3')
        call UnitRemoveAbility(GetTriggerUnit(),'A1J5')
        call UnitRemoveAbility(GetTriggerUnit(),'A1IU')
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    elseif GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(182)))then
        if IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            set loc_unit01=GetTriggerUnit()
            set loc_unit02=GetAttacker()
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
            call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func1744))
            call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
            call SaveTriggerHandle(hashtable001,(loc_integer01),(35),(GetTriggeringTrigger()))
            set loc_integer02=GetUnitAbilityLevel(GetAttacker(),'A1IQ')
            if loc_integer02==0 then
                call UnitRemoveAbility(GetAttacker(),'A1J4')
                call UnitRemoveAbility(GetAttacker(),'A1J3')
                call UnitRemoveAbility(GetAttacker(),'A1J5')
                call UnitRemoveAbility(GetAttacker(),'A1IU')
            elseif loc_integer02==1 then
                call UnitRemoveAbility(GetAttacker(),'A1J3')
                call UnitRemoveAbility(GetAttacker(),'A1J5')
                call UnitRemoveAbility(GetAttacker(),'A1IU')
            elseif loc_integer02==2 then
                call UnitRemoveAbility(GetAttacker(),'A1J4')
                call UnitRemoveAbility(GetAttacker(),'A1J5')
                call UnitRemoveAbility(GetAttacker(),'A1IU')
            elseif loc_integer02==3 then
                call UnitRemoveAbility(GetAttacker(),'A1J4')
                call UnitRemoveAbility(GetAttacker(),'A1J3')
                call UnitRemoveAbility(GetAttacker(),'A1IU')
            elseif loc_integer02==4 then
                call UnitRemoveAbility(GetAttacker(),'A1J4')
                call UnitRemoveAbility(GetAttacker(),'A1J3')
                call UnitRemoveAbility(GetAttacker(),'A1J5')
            endif
            set loc_unit01=null
            set loc_unit02=null
            set loc_trigger01=null
        endif
    endif
    return false
endfunction

// 44142 ~ 44184
function Func1746 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(TimerGetElapsed(timer001))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1IQ')
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(184)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(183)))
    if loc_real01-loc_real02>14-loc_integer02*2 and loc_boolean01==false and GetUnitTypeId(loc_unit01)=='Naka' and Func0194(loc_unit01)==false then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(183),(true))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1745))
        call SaveUnitHandle(hashtable001,(loc_integer01),(182),(loc_unit01))
        call Func0193(loc_unit01,'A1IS')
        if GetUnitAbilityLevel(loc_unit01,'B068')==0 then
            if loc_integer02==1 then
                call Func0193(loc_unit01,'A1J4')
            elseif loc_integer02==2 then
                call Func0193(loc_unit01,'A1J3')
            elseif loc_integer02==3 then
                call Func0193(loc_unit01,'A1J5')
            elseif loc_integer02==4 then
                call Func0193(loc_unit01,'A1IU')
            endif
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1J4',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1J3',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1J5',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1IU',false)
    elseif loc_boolean01==false and GetUnitAbilityLevel(loc_unit01,'B068')==0 then
        call UnitRemoveAbility(loc_unit01,'A1IS')
        call UnitRemoveAbility(loc_unit01,'A1J4')
        call UnitRemoveAbility(loc_unit01,'A1J3')
        call UnitRemoveAbility(loc_unit01,'A1J5')
        call UnitRemoveAbility(loc_unit01,'A1IU')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 44186 ~ 44196
function Func1747 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1746))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(181),(0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 44198 ~ 44203
function Func1748 takes nothing returns boolean
    if GetLearnedSkill()=='A1IQ' and GetUnitAbilityLevel(GetTriggerUnit(),'A1IQ')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func1747()
    endif
    return false
endfunction

// 44205 ~ 44210
function Func1749 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1748))
    set loc_trigger01=null
endfunction
