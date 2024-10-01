
// 80469 ~ 80584
function Func3903 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local player loc_player01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1IN')
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1IN')
    local real loc_real01=(TimerGetElapsed(timer001))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(415)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(416)))
    if Func0194(loc_unit01)then
        set loc_trigger01=null
        set loc_unit01=null
        return false
    endif
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_player01=players004[1]
    else
        set loc_player01=players003[1]
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED and GetOwningPlayer(GetEventDamageSource())==player001 then
        if GetUnitAbilityLevel(loc_unit01,'A1IE')>0 then
            call UnitRemoveAbility(loc_unit01,'A1IE')
            call UnitRemoveAbility(loc_unit01,'B0C9')
        endif
        if GetUnitAbilityLevel(loc_unit01,'A1IF')>0 then
            call UnitRemoveAbility(loc_unit01,'A1IF')
            call UnitRemoveAbility(loc_unit01,'B0C9')
        endif
        if GetUnitAbilityLevel(loc_unit01,'A1IG')>0 then
            call UnitRemoveAbility(loc_unit01,'A1IG')
            call UnitRemoveAbility(loc_unit01,'B0C9')
        endif
        call SaveReal(hashtable001,(loc_integer01),(414),((loc_real01+2)*1.0))
        set loc_trigger01=null
        set loc_unit01=null
        return false
    endif
    if(LoadReal(hashtable001,(loc_integer01),(414)))>loc_real01 then
        set loc_trigger01=null
        set loc_unit01=null
        return false
    endif
    if(IsUnitVisible(loc_unit01,loc_player01)and Func0278(loc_unit01)==false)or GetUnitAbilityLevel(loc_unit01,'BNdo')>0 then
        set loc_real03=0
        if GetUnitAbilityLevel(loc_unit01,'A1IE')>0 or GetUnitAbilityLevel(loc_unit01,'A1IF')>0 or GetUnitAbilityLevel(loc_unit01,'A1IG')>0 then
            set loc_real02=loc_real02+0.1
            if loc_real02>0.4 then
                set loc_real02=0
                if GetUnitAbilityLevel(loc_unit01,'A1IE')>0 then
                    call UnitRemoveAbility(loc_unit01,'A1IE')
                    call UnitRemoveAbility(loc_unit01,'B0C9')
                endif
                if GetUnitAbilityLevel(loc_unit01,'A1IF')>0 then
                    call UnitRemoveAbility(loc_unit01,'A1IF')
                    call UnitRemoveAbility(loc_unit01,'B0C9')
                endif
                if GetUnitAbilityLevel(loc_unit01,'A1IG')>0 then
                    call UnitRemoveAbility(loc_unit01,'A1IG')
                    call UnitRemoveAbility(loc_unit01,'B0C9')
                endif
            endif
        endif
        call SaveReal(hashtable001,(loc_integer01),(415),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(416),((loc_real03)*1.0))
    elseif IsUnitVisible(loc_unit01,loc_player01)==false or Func0278(loc_unit01)then
        set loc_real02=0
        if(loc_integer02==1 and GetUnitAbilityLevel(loc_unit01,'A1IE')==0)or(loc_integer02==2 and GetUnitAbilityLevel(loc_unit01,'A1IF')==0)or(loc_integer02==3 and GetUnitAbilityLevel(loc_unit01,'A1IG')==0)then
            set loc_real03=loc_real03+0.1
            if loc_real03>0.4 then
                set loc_real03=0
                if loc_integer02==1 then
                    if GetUnitAbilityLevel(loc_unit01,'A1IE')==0 then
                        call Func0193(loc_unit01,'A1IE')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1I7')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1I8')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1IC')
                    endif
                endif
                if loc_integer02==2 then
                    if GetUnitAbilityLevel(loc_unit01,'A1IE')>0 then
                        call UnitRemoveAbility(loc_unit01,'A1IE')
                        call UnitRemoveAbility(loc_unit01,'B0C9')
                    endif
                    if GetUnitAbilityLevel(loc_unit01,'A1IF')==0 then
                        call Func0193(loc_unit01,'A1IF')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1I7')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1I9')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1ID')
                    endif
                endif
                if loc_integer02==3 then
                    if GetUnitAbilityLevel(loc_unit01,'A1IE')>0 then
                        call UnitRemoveAbility(loc_unit01,'A1IE')
                        call UnitRemoveAbility(loc_unit01,'B0C9')
                    endif
                    if GetUnitAbilityLevel(loc_unit01,'A1IF')>0 then
                        call UnitRemoveAbility(loc_unit01,'A1IF')
                        call UnitRemoveAbility(loc_unit01,'B0C9')
                    endif
                    if GetUnitAbilityLevel(loc_unit01,'A1IG')==0 then
                        call Func0193(loc_unit01,'A1IG')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1I7')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1IA')
                        call UnitMakeAbilityPermanent(loc_unit01,true,'A1IB')
                    endif
                endif
            endif
        endif
        call SaveReal(hashtable001,(loc_integer01),(415),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(416),((loc_real03)*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 80586 ~ 80600
function Func3904 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveReal(hashtable001,(loc_integer01),(415),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(416),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(414),(((TimerGetElapsed(timer001)))*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3903))
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1IE',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1IF',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1IG',false)
    set loc_trigger01=null
endfunction

// 80602 ~ 80607
function Func3905 takes nothing returns boolean
    if GetLearnedSkill()=='A1IN' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A1IN')==1 then
        call Func3904()
    endif
    return false
endfunction

// 80609 ~ 80614
function Func3906 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3905))
    set loc_trigger01=null
endfunction
