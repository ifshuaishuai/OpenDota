
// 74817 ~ 74825
function Func3578 takes unit loc_unit01,integer loc_integer01 returns boolean
    if(GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer01))=='pspd')then
        return true
    endif
    if(GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer01))=='oflg')then
        return true
    endif
    return false
endfunction

// 74827 ~ 74873
function Func3579 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(57)))
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02>5
        if Func3578(loc_unit01,loc_integer02)then
            if GetUnitAbilityLevel(loc_unit01,('B047'))==0 then
                call SetItemDropOnDeath(UnitItemInSlot(loc_unit01,loc_integer02),true)
                if GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer02))=='oflg' then
                    call SetItemDroppable(UnitItemInSlot(loc_unit01,loc_integer02),true)
                endif
            else
                call SetItemDropOnDeath(UnitItemInSlot(loc_unit01,loc_integer02),false)
                if GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer02))=='oflg' then
                    call SetItemDroppable(UnitItemInSlot(loc_unit01,loc_integer02),false)
                endif
            endif
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_real01=loc_real01+0.2
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real01)*1.0))
    if GetUnitAbilityLevel(loc_unit01,('B047'))==0 then
        call SetUnitPathing(loc_unit01,true)
    else
        call SetUnitPathing(loc_unit01,false)
    endif
    if loc_real01>30 then
        call PauseTimer(loc_timer01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call SetUnitPathing(loc_unit01,true)
        set loc_integer02=0
        loop
            exitwhen loc_integer02>5
            if Func3578(loc_unit01,loc_integer02)then
                call SetItemDropOnDeath(UnitItemInSlot(loc_unit01,loc_integer02),true)
                if GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer02))=='oflg' then
                    call SetItemDroppable(UnitItemInSlot(loc_unit01,loc_integer02),true)
                endif
            endif
            set loc_integer02=loc_integer02+1
        endloop
    endif
endfunction

// 74875 ~ 74877
function Func3580 takes nothing returns boolean
    return GetSpellAbilityId()==('A0HW')
endfunction

// 74879 ~ 74917
function Func3581 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=Func0126(GetUnitX(loc_unit01))
    local real loc_real02=Func0129(GetUnitY(loc_unit01))
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),('h003'),loc_real01,loc_real02,0)
    local timer loc_timer01=CreateTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local group loc_group01=Func0030()
    local location loc_location01
    local real loc_real03
    local real loc_real04
    local real loc_real05
    call SetUnitPathing(loc_unit03,false)
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(loc_group01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit03))
    if loc_unit02!=null then
        call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
        call TimerStart(loc_timer01,0.0375,true,function Func3576)
    else
        set loc_location01=GetSpellTargetLoc()
        set loc_real04=GetLocationX(loc_location01)
        set loc_real05=GetLocationY(loc_location01)
        set loc_real03=Atan2(loc_real05-loc_real02,loc_real04-loc_real01)
        call SetUnitFacing(loc_unit03,loc_real03*bj_RADTODEG)
        set loc_real04=Func0126(loc_real01+2100*Cos(loc_real03))
        set loc_real05=Func0129(loc_real02+2100*Sin(loc_real03))
        call SaveReal(hashtable001,(loc_integer01),(47),((loc_real04)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(48),((loc_real05)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(13),((loc_real03)*1.0))
        call TimerStart(loc_timer01,0.035,true,function Func3577)
    endif
    set loc_timer01=CreateTimer()
    set loc_integer01=GetHandleId(loc_timer01)
    call SetUnitPathing(loc_unit01,false)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TimerStart(loc_timer01,0.2,true,function Func3579)
endfunction

// 74919 ~ 74927
function Func3582 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3580))
    call TriggerAddAction(loc_trigger01,function Func3581)
    call CreateSound("Sounds\\Spectral Dagger.mp3",false,false,false,10,10,"DefaultEAXON")
    call Func0132(('A0I2'))
    call Func0132(('A0HY'))
endfunction

// 74933 ~ 74935
function Func3583 takes nothing returns boolean
    return IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and GetUnitAbilityLevel(GetAttacker(),('A0FX'))>0
endfunction
