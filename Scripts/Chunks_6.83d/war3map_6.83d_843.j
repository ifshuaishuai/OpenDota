
// 88021 ~ 88041
function Func4216 takes nothing returns boolean
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=0
    local real loc_real01=(TimerGetElapsed(timer001))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(749)))
    local real loc_real02
    local real loc_real03
    local real loc_real04
    loop
        exitwhen loc_integer02>loc_integer03
        set loc_real04=(LoadReal(hashtable001,(loc_integer01),(10000+loc_integer02)))
        if loc_real04+10>loc_real01 then
            set loc_real02=(LoadReal(hashtable001,(loc_integer01),(11000+loc_integer02)))
            set loc_real03=(LoadReal(hashtable001,(loc_integer01),(12000+loc_integer02)))
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_unit01=null
    return false
endfunction

// 88043 ~ 88062
function Func4217 takes integer loc_integer01,integer loc_integer02,real loc_real01,real loc_real02 returns boolean
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local integer loc_integer03=0
    local real loc_real06=(TimerGetElapsed(timer001))
    loop
        exitwhen loc_integer03>loc_integer02
        set loc_real05=(LoadReal(hashtable001,(loc_integer01),(10000+loc_integer03)))
        if loc_real05+10>loc_real06 then
            set loc_real03=(LoadReal(hashtable001,(loc_integer01),(11000+loc_integer03)))
            set loc_real04=(LoadReal(hashtable001,(loc_integer01),(12000+loc_integer03)))
            if Func0149(loc_real03,loc_real04,loc_real01,loc_real02)<75 then
                return true
            endif
        endif
        set loc_integer03=loc_integer03+1
    endloop
    return false
endfunction

// 88064 ~ 88077
function Func4218 takes integer loc_integer01,integer loc_integer02 returns integer
    local real loc_real01
    local integer loc_integer03=0
    local real loc_real02=(TimerGetElapsed(timer001))
    loop
        exitwhen loc_integer03>loc_integer02
        set loc_real01=(LoadReal(hashtable001,(loc_integer01),(10000+loc_integer03)))
        if loc_real01+10<loc_real02 then
            return loc_integer03
        endif
        set loc_integer03=loc_integer03+1
    endloop
    return-1
endfunction

// 88079 ~ 88096
function Func4219 takes unit loc_unit01,integer loc_integer01,real loc_real01,real loc_real02 returns nothing
    local integer loc_integer02=GetHandleId(loc_unit01)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer02),(749)))
    local integer loc_integer04
    if Func4217(loc_integer02,loc_integer03,loc_real01,loc_real02)then
        return
    endif
    set loc_integer04=Func4218(loc_integer02,loc_integer03)
    if loc_integer04==-1 then
        set loc_integer04=loc_integer03
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer02),(749),(loc_integer03))
    endif
    call SaveInteger(hashtable001,(loc_integer02),(13000),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(10000),(((TimerGetElapsed(timer001)))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(11000),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(11000),((loc_real02)*1.0))
endfunction

// 88098 ~ 88107
function Func4220 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4216))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 88109 ~ 88112
function Func4221 takes nothing returns nothing
    call Func0115(unit405,GetEnumUnit(),1,50+integer544*50)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\LordofFlameMissile\\LordofFlameMissile.mdl",GetEnumUnit(),"origin"))
endfunction

// 88114 ~ 88128
function Func4222 takes unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02 returns nothing
    local group loc_group01
    call KillUnit(loc_unit02)
    call Func0163("war3mapImported\\Firaga_2.mdx",loc_real01,loc_real02,2)
    set loc_group01=Func0030()
    set unit124=loc_unit01
    set unit405=loc_unit01
    set integer544=GetUnitAbilityLevel(loc_unit01,'A2JK')
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450+25,Condition(function Func0305))
    call UnitRemoveAbility(loc_unit01,'A04R')
    call ForGroup(loc_group01,function Func4221)
    call Func0193(loc_unit01,'A04R')
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
