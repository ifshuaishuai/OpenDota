
// 51237 ~ 51240
function Func2209 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns integer
    local real loc_real05=SquareRoot((loc_real03-loc_real01)*(loc_real03-loc_real01)+(loc_real04-loc_real02)*(loc_real04-loc_real02))
    return Func0138(R2I(loc_real05/150),11)
endfunction

// 51242 ~ 51285
function Func2210 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real04=GetUnitX(loc_unit02)
    local real loc_real05=GetUnitY(loc_unit02)
    local real loc_real06=Func0126(GetUnitX(loc_unit02)+30*Cos(loc_real03))
    local real loc_real07=Func0129(GetUnitY(loc_unit02)+30*Sin(loc_real03))
    local boolexpr loc_boolexpr01=Condition(function Func2208)
    local group loc_group01=Func0030()
    local unit loc_unit03
    local unit loc_unit04
    local real loc_real08
    local real loc_real09
    call SetUnitX(loc_unit02,loc_real06)
    call SetUnitY(loc_unit02,loc_real07)
    set unit002=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real06,loc_real07,140,loc_boolexpr01)
    set loc_unit04=FirstOfGroup(loc_group01)
    call Func0029(loc_group01)
    if loc_unit04!=null then
        if IsUnitType(loc_unit04,UNIT_TYPE_HERO)==true then
            set integers147[GetPlayerId(GetOwningPlayer(loc_unit01))]=integers147[GetPlayerId(GetOwningPlayer(loc_unit01))]+1
            call Func0415("AA_Hits"+I2S(GetPlayerId(GetOwningPlayer(loc_unit01))),integers147[GetPlayerId(GetOwningPlayer(loc_unit01))])
        endif
        set loc_real08=(LoadReal(hashtable001,(loc_integer01),(191)))
        set loc_real09=(LoadReal(hashtable001,(loc_integer01),(192)))
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit04),'e00E',loc_real04,loc_real05,0)
        call Func0193(loc_unit03,('A0L7'))
        call SetUnitAbilityLevel(loc_unit03,('A0L7'),Func2209(loc_real08,loc_real09,loc_real04,loc_real05))
        if IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit04)then
        endif
        call UnitDamageTarget(loc_unit01,loc_unit04,90*GetUnitAbilityLevel(loc_unit01,('A0L8'))-40+(Func2209(loc_real08,loc_real09,loc_real04,loc_real05)-1)*14,true,false,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
        call KillUnit(loc_unit02)
        call Func0166(loc_timer01)
    elseif(loc_real06-loc_real01)*(loc_real06-loc_real01)+(loc_real07-loc_real02)*(loc_real07-loc_real02)<1600 then
        call KillUnit(loc_unit02)
        call Func0166(loc_timer01)
    endif
endfunction

// 51287 ~ 51313
function Func2211 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=Func0126(GetUnitX(loc_unit01))
    local real loc_real02=Func0129(GetUnitY(loc_unit01))
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real03=GetLocationX(loc_location01)
    local real loc_real04=GetLocationY(loc_location01)
    local real loc_real05=Atan2(loc_real04-loc_real02,loc_real03-loc_real01)
    local timer loc_timer01=CreateTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),('h005'),loc_real01,loc_real02,loc_real05*bj_RADTODEG)
    set integers148[GetPlayerId(GetOwningPlayer(loc_unit01))]=integers148[GetPlayerId(GetOwningPlayer(loc_unit01))]+1
    call Func0415("AA_Total"+I2S(GetPlayerId(GetOwningPlayer(loc_unit01))),integers148[GetPlayerId(GetOwningPlayer(loc_unit01))])
    call RemoveLocation(loc_location01)
    call SetUnitFacing(loc_unit02,loc_real05*bj_RADTODEG)
    call SetUnitPathing(loc_unit02,false)
    set loc_real03=Func0126(loc_real01+3000*Cos(loc_real05))
    set loc_real04=Func0129(loc_real02+3000*Sin(loc_real05))
    call SaveReal(hashtable001,(loc_integer01),(191),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(192),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call TimerStart(loc_timer01,0.035,true,function Func2210)
endfunction
