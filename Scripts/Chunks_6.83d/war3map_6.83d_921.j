
// 93791 ~ 93825
function Func4537 takes nothing returns nothing
    local unit loc_unit01
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit02)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(279)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(1400+1)))
    local real loc_real01
    local real loc_real02
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(800)))
    if loc_integer03>0 then
        if GetSpellTargetUnit()==null then
            set loc_real01=GetSpellTargetX()
            set loc_real02=GetSpellTargetY()
        else
            set loc_real01=GetUnitX(GetSpellTargetUnit())
            set loc_real02=GetUnitY(GetSpellTargetUnit())
        endif
        call UnitRemoveAbility(loc_unit02,integers181[loc_integer03])
        set loc_integer03=IMaxBJ(0,loc_integer03-1)
        call Func0193(loc_unit02,integers181[loc_integer03])
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(800),(loc_integer03))
        set loc_unit01=CreateUnit(GetOwningPlayer(loc_unit02),'o01X',loc_real01,loc_real02,0)
        call UnitApplyTimedLife(loc_unit01,'BTLF',120)
        call SetUnitPathing(loc_unit01,false)
        set loc_integer02=loc_integer02+1
        call SaveUnitHandle(hashtable001,(loc_integer01),(1400+loc_integer02),(loc_unit01))
        call SaveInteger(hashtable001,(loc_integer01),(279),(loc_integer02))
        if(loc_integer02>6)then
            call KillUnit(loc_unit03)
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 93827 ~ 93832
function Func4538 takes nothing returns boolean
    if Func4520(GetSpellAbilityId())then
        call Func4537()
    endif
    return false
endfunction

// 93834 ~ 93849
function Func4539 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4538))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4536))
    set integers181[0]='A31H'
    set integers181[1]='A31J'
    set integers181[2]='A31G'
    set integers181[3]='A2TH'
    set integers181[4]='A31L'
    set integers181[5]='A31I'
    set integers181[6]='A31K'
    set loc_trigger01=null
endfunction
