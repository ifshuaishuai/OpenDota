
// 93970 ~ 93975
function Func4543 takes nothing returns boolean
    if GetUnitTypeId(GetFilterUnit())=='o01X' then
        return true
    endif
    return false
endfunction

// 93977 ~ 94037
function Func4544 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit02,'A2UU')
    local trigger loc_trigger01
    local integer loc_integer02
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local integer loc_integer03=-1
    local boolean loc_boolean01=false
    local real loc_real04=400+100*loc_integer01
    local group loc_group01
    if loc_unit01==null then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetSpellTargetX(),GetSpellTargetY(),180+25,Condition(function Func4543))
        set loc_unit01=FirstOfGroup(loc_group01)
        call Func0029(loc_group01)
        set loc_group01=null
        set loc_real01=GetUnitFacing(loc_unit02)
    else
        set loc_real01=Func0168(loc_unit02,loc_unit01)
    endif
    if loc_unit01==null then
        return
    endif
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    if loc_unit02==loc_unit01 then
        set loc_real01=GetUnitFacing(loc_unit02)
    endif
    if GetUnitTypeId(loc_unit01)=='o01X' or GetUnitTypeId(loc_unit01)=='o020' then
        set loc_real04=2000
    endif
    loop
        exitwhen loc_boolean01 or loc_integer03==23
        set loc_integer03=loc_integer03+1
        set loc_real02=Func0126(GetUnitX(loc_unit01)+(loc_real04-loc_integer03*25)*Cos(loc_real01*bj_DEGTORAD))
        set loc_real03=Func0129(GetUnitY(loc_unit01)+(loc_real04-loc_integer03*25)*Sin(loc_real01*bj_DEGTORAD))
        if(IsPointInRegion(region006,((loc_real02)*1.0),((loc_real03)*1.0)))==false then
            set loc_boolean01=true
        endif
    endloop
    call SetUnitPathing(loc_unit01,false)
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4542))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(23),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(24),((GetUnitY(loc_unit01))*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    call SaveGroupHandle(hashtable001,(loc_integer02),(187),(Func0030()))
    call SaveUnitHandle(hashtable001,(loc_integer02),(810),(null))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4335)),(1))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 94039 ~ 94058
function Func4545 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local group loc_group01
    if GetUnitTypeId(loc_unit02)=='n00L' then
        call Func0123(loc_unit01)
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n0K9'))
    elseif loc_unit02==null then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetSpellTargetX(),GetSpellTargetY(),180+25,Condition(function Func4543))
        if FirstOfGroup(loc_group01)==null then
            call Func0123(loc_unit01)
            call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n0K9'))
        endif
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 94060 ~ 94071
function Func4546 takes nothing returns boolean
    if GetSpellAbilityId()=='A2UU' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false or Func0028(GetSpellTargetUnit())==false then
                call Func4544()
            endif
        else
            call Func4545()
        endif
    endif
    return false
endfunction

// 94073 ~ 94079
function Func4547 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4546))
    set loc_trigger01=null
endfunction
