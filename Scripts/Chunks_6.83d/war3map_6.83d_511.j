
// 62201 ~ 62203
function Func2856 takes nothing returns nothing
    call Func0115(unit329,GetEnumUnit(),1,80+40*integer503)
endfunction

// 62205 ~ 62236
function Func2857 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2X9')
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local group loc_group01=Func0030()
    call Func0193(loc_unit02,'A30A')
    call SetUnitAbilityLevel(loc_unit02,'A30A',loc_integer02)
    call IssuePointOrder(loc_unit02,"silence",loc_real01,loc_real02)
    set unit124=loc_unit01
    set unit329=loc_unit01
    set integer503=loc_integer02
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,600+25,Condition(function Func0305))
    call ForGroup(loc_group01,function Func2856)
    call Func0184(sound077,loc_real01,loc_real02)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffect(string039,loc_real01,loc_real02))
    call DestroyEffect(AddSpecialEffect(string039,loc_real01+200,loc_real02))
    call DestroyEffect(AddSpecialEffect(string039,loc_real01+200,loc_real02-200))
    call DestroyEffect(AddSpecialEffect(string039,loc_real01+200,loc_real02+200))
    call DestroyEffect(AddSpecialEffect(string039,loc_real01-200,loc_real02-200))
    call DestroyEffect(AddSpecialEffect(string039,loc_real01,loc_real02+200))
    call DestroyEffect(AddSpecialEffect(string039,loc_real01-200,loc_real02+200))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 62238 ~ 62254
function Func2858 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0186(GetOwningPlayer(loc_unit01),3,loc_real01,loc_real02,600)
    call TriggerRegisterTimerEvent(loc_trigger01,3,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2857))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call DestroyEffect(AddSpecialEffect("war3mapImported\\Bloodrite.mdx",loc_real01,loc_real02))
    call Func0184(sound076,loc_real01,loc_real02)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 62256 ~ 62261
function Func2859 takes nothing returns boolean
    if GetSpellAbilityId()=='A2X9' then
        call Func2858()
    endif
    return false
endfunction

// 62263 ~ 62268
function Func2860 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2859))
    set loc_trigger01=null
endfunction
