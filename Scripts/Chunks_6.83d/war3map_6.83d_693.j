
// 74650 ~ 74652
function Func3567 takes nothing returns integer
    return 'A0HW'
endfunction

// 74654 ~ 74656
function Func3568 takes nothing returns integer
    return 'A0I2'
endfunction

// 74658 ~ 74660
function Func3569 takes nothing returns integer
    return 'A0HY'
endfunction

// 74662 ~ 74664
function Func3570 takes nothing returns integer
    return 'B047'
endfunction

// 74666 ~ 74668
function Func3571 takes nothing returns integer
    return 'h002'
endfunction

// 74670 ~ 74672
function Func3572 takes nothing returns integer
    return 'h003'
endfunction

// 74674 ~ 74700
function Func3573 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(221)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(383)))
    local unit loc_unit03
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(57)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,('A0HW'))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    if(loc_real04-loc_real02)*(loc_real04-loc_real02)+(loc_real05-loc_real03)*(loc_real05-loc_real03)>900 then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),('h002'),GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call SetUnitAbilityLevel(loc_unit03,('A0I2'),loc_integer02)
        call SetUnitAbilityLevel(loc_unit03,('A0HY'),loc_integer02)
        call UnitApplyTimedLife(loc_unit03,'BTLF',7)
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real04)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real05)*1.0))
    endif
    set loc_real01=loc_real01+0.2
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real01)*1.0))
    if loc_real01>7 or GetUnitState(loc_unit01,UNIT_STATE_LIFE)<1 then
        call PauseTimer(loc_timer01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
    endif
endfunction

// 74702 ~ 74723
function Func3574 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local sound loc_sound01
    local timer loc_timer01
    local integer loc_integer01
    call UnitDamageTarget(unit002,loc_unit01,real002,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
    call GroupAddUnit(group001,loc_unit01)
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
        set loc_timer01=CreateTimer()
        set loc_integer01=GetHandleId(loc_timer01)
        set loc_sound01=CreateSound("Sounds\\Spectral Dagger.mp3",false,true,true,10,10,"DefaultEAXON")
        call SetSoundPosition(loc_sound01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call SetSoundDistanceCutoff(loc_sound01,700)
        call StartSound(loc_sound01)
        call KillSoundWhenDone(loc_sound01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(221),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(383),(unit002))
        call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
        call TimerStart(loc_timer01,0.2,true,function Func3573)
    endif
endfunction
