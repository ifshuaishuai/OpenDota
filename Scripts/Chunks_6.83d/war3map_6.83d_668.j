
// 72975 ~ 72991
function Func3472 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2)))
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(672)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(673)))
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A06D')
    local integer loc_integer05=R2I(I2R(loc_integer02)*(0.5+0.5*loc_integer04))
    if loc_integer05>loc_integer03 then
        call ModifyHeroStat(0,loc_unit01,0,loc_integer05-loc_integer03)
        call SaveInteger(hashtable001,(loc_integer01),(673),(loc_integer05))
        call Func0173("+"+I2S(loc_integer05-loc_integer03)+" "+GetObjectName('n0MJ'),3,loc_unit01,0.023,0,255,0,230)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 72993 ~ 73002
function Func3473 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3472))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 73004 ~ 73009
function Func3474 takes nothing returns boolean
    if GetLearnedSkill()=='A06D' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A06D')==1 then
        call Func3473()
    endif
    return false
endfunction
