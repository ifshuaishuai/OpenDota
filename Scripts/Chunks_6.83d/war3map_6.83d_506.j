
// 61844 ~ 61898
function Func2840 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=SquareRoot((loc_real01-loc_real03)*(loc_real01-loc_real03)+(loc_real02-loc_real04)*(loc_real02-loc_real04))
    local real loc_real06=0.2*loc_integer02*loc_real05
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(25)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call UnitRemoveAbility(loc_unit02,'A0IH')
        call UnitRemoveAbility(loc_unit02,'B08L')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=null
        set loc_unit01=null
        set loc_unit02=null
        return false
    endif
    if loc_real05>1300 then
        set loc_real06=0
    endif
    if loc_real06>5 then
        call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",loc_unit02,"origin"))
    endif
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((2485))))==1)and loc_real06>=GetUnitState(loc_unit02,UNIT_STATE_LIFE)-2 then
        set loc_real06=GetUnitState(loc_unit02,UNIT_STATE_LIFE)-2
    endif
    if Func0096(loc_unit02)then
        set loc_real06=0
    endif
    if loc_real06>0 and Func0194(loc_unit02)==false and Func0277(loc_unit02)==false then
        call Func0115(loc_unit01,loc_unit02,6,loc_real06)
    endif
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real04)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(25),(loc_integer03+1))
    if Func0194(loc_unit02)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif loc_integer03>4*(12)then
        call UnitRemoveAbility(loc_unit02,'A0IH')
        call UnitRemoveAbility(loc_unit02,'B08L')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 61900 ~ 61922
function Func2841 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0LH')
    local real loc_real01=50+100*loc_integer02
    call Func0193(loc_unit02,'A0IH')
    call SetUnitAbilityLevel(loc_unit02,'A0IH',loc_integer02)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",loc_unit02,"chest"))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit02))*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(25),(0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2840))
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 61924 ~ 61929
function Func2842 takes nothing returns boolean
    if GetSpellAbilityId()=='A0LH' and Func0028(GetSpellTargetUnit())==false then
        call Func2841()
    endif
    return false
endfunction

// 61931 ~ 61936
function Func2843 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2842))
    set loc_trigger01=null
endfunction
