
// 44760 ~ 44766
function Func1789 takes unit loc_unit01 returns nothing
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,'A0GP')
    call SetUnitAbilityLevel(loc_unit02,'A0GP',GetUnitAbilityLevel(loc_unit01,'A0GP'))
    call IssueImmediateOrder(loc_unit02,"fanofknives")
    set loc_unit02=null
endfunction

// 44768 ~ 44777
function Func1790 takes unit loc_unit01,real loc_real01 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(278)))
    if loc_real02+loc_real01>250 then
        call SaveReal(hashtable001,(loc_integer01),(278),((0)*1.0))
        call Func1789(loc_unit01)
    else
        call SaveReal(hashtable001,(loc_integer01),(278),((loc_real02+loc_real01)*1.0))
    endif
endfunction

// 44779 ~ 44810
function Func1791 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEventDamageSource()
    local real loc_real01=Func0168(loc_unit02,loc_unit01)
    local real loc_real02=GetUnitFacing(loc_unit01)
    local real loc_real03
    local real loc_real04=GetEventDamage()
    local real loc_real05
    local real loc_real06
    if(loc_real04>5)and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 and GetUnitAbilityLevel(loc_unit01,'BNdo')==0 then
        if((loc_real02-loc_real01)<(-180.00))then
            set loc_real03=(loc_real02-loc_real01+360)
        else
            if((loc_real02-loc_real01)>180.00)then
                set loc_real03=(loc_real02-loc_real01-360)
            else
                set loc_real03=(loc_real02-loc_real01)
            endif
        endif
        set loc_real06=RAbsBJ(loc_real03)
        if loc_real06<=70 then
            set loc_real05=(GetUnitAbilityLevel(loc_unit01,'A0M3')*0.08+0.08)*loc_real04
            call Func1790(loc_unit01,loc_real04-loc_real05)
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real05)
        elseif loc_real06<=110 then
            set loc_real05=(GetUnitAbilityLevel(loc_unit01,'A0M3')*0.04+0.04)*loc_real04
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real05)
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 44812 ~ 44820
function Func1792 takes nothing returns nothing
    local trigger loc_trigger01
    if GetUnitAbilityLevel(GetTriggerUnit(),'A0M3')==1 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1788))
        call TriggerAddAction(loc_trigger01,function Func1791)
    endif
endfunction

// 44822 ~ 44827
function Func1793 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1787))
    call TriggerAddAction(loc_trigger01,function Func1792)
endfunction
