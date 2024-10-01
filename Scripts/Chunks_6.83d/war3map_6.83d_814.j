
// 85112 ~ 85119
function Func4087 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group034)==false then
        call GroupAddUnit(group034,GetEnumUnit())
        call Func0193(GetEnumUnit(),'A2TP')
        call Func0246(GetEnumUnit(),'A2TP',1,0.25+0.5*integer536,'B0GU')
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl",GetEnumUnit(),"chest"))
    endif
endfunction

// 85121 ~ 85148
function Func4088 takes unit loc_unit01,unit loc_unit02,group loc_group01 returns nothing
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)*bj_DEGTORAD
    local real loc_real06
    local real loc_real07
    local real loc_real08=Func0149(loc_real01,loc_real02,loc_real03,loc_real04)
    local group loc_group02=Func0030()
    local integer loc_integer01=1
    set group034=loc_group01
    set unit393=loc_unit01
    set integer536=GetUnitAbilityLevel(loc_unit01,'A1TA')
    set real389=integer536*50+50
    loop
        exitwhen loc_integer01>8
        set unit124=loc_unit01
        set loc_real06=loc_real01+loc_real08*loc_integer01/8*Cos(loc_real05)
        set loc_real07=loc_real02+loc_real08*loc_integer01/8*Sin(loc_real05)
        call GroupEnumUnitsInRange(loc_group02,loc_real06,loc_real07,100,Condition(function Func0305))
        call ForGroup(loc_group02,function Func4087)
        call GroupClear(loc_group02)
        set loc_integer01=loc_integer01+1
    endloop
    call Func0029(loc_group02)
    set loc_group02=null
endfunction

// 85150 ~ 85152
function Func4089 takes unit loc_unit01,unit loc_unit02 returns boolean
    return((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4294))))==1)
endfunction

// 85154 ~ 85185
function Func4090 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=Func0147(loc_unit01,loc_unit02)
    local real loc_real02=Func0168(loc_unit01,loc_unit02)*bj_DEGTORAD
    local real loc_real03=GetUnitX(loc_unit01)+20*Cos(loc_real02)
    local real loc_real04=GetUnitY(loc_unit01)+20*Sin(loc_real02)
    local location loc_location01
    if loc_real01<300 or loc_real01>2150 then
        set loc_location01=Func0279(loc_real03,loc_real04)
        set loc_real03=GetLocationX(loc_location01)
        set loc_real04=GetLocationY(loc_location01)
        call SetUnitX(loc_unit01,Func0126(loc_real03))
        call SetUnitY(loc_unit01,Func0129(loc_real04))
        call Func0180(loc_real03,loc_real04,350)
        call RemoveLocation(loc_location01)
        set loc_location01=null
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4295)),(2))
    else
        call SetUnitX(loc_unit01,loc_real03)
        call SetUnitY(loc_unit01,loc_real04)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
