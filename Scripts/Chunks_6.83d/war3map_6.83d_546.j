
// 64112 ~ 64117
function Func2975 takes nothing returns boolean
    if GetUnitTypeId(GetFilterUnit())=='n0F5' and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 then
        call KillUnit(GetFilterUnit())
    endif
    return false
endfunction

// 64119 ~ 64124
function Func2976 takes player loc_player01 returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func2975))
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 64126 ~ 64173
function Func2977 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(266)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(267)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(268)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01
    local player loc_player01
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_player01=players004[0]
    else
        set loc_player01=players003[0]
    endif
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        if(LoadBoolean(hashtable001,(loc_integer01),(265)))then
            call Func0186(loc_player01,.4,GetUnitX(loc_unit01),GetUnitY(loc_unit01),600)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call ShowUnit(loc_unit01,false)
        call RemoveUnit(loc_unit02)
        call RemoveUnit(loc_unit03)
        call RemoveUnit(loc_unit04)
        call Func2976(GetOwningPlayer(loc_unit01))
    else
        if IsUnitVisible(loc_unit01,loc_player01)then
            call SaveBoolean(hashtable001,(loc_integer01),(265),(true))
        endif
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set player023=GetOwningPlayer(loc_unit01)
        set integer509=loc_integer02
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),25+400+200*loc_integer02,Condition(function Func0303))
        if boolean036==false then
            call ForGroup(loc_group01,function Func2974)
        endif
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    return false
endfunction

// 64175 ~ 64305
function Func2978 takes nothing returns nothing
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit01
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local unit loc_unit02
    local unit loc_unit03
    local unit loc_unit04
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(GetTriggerUnit(),'A15V')
    local integer loc_integer03
    if loc_integer02==1 then
        set loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'n0FJ',loc_real01,loc_real02,0)
    elseif loc_integer02==2 then
        set loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'n0FI',loc_real01,loc_real02,0)
    elseif loc_integer02==3 then
        set loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'n0F6',loc_real01,loc_real02,0)
    else
        set loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'n0FH',loc_real01,loc_real02,0)
    endif
    call Func0184(sound071,loc_real01,loc_real02)
    set loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit01))
    if units028[loc_integer03]==null then
        set units028[loc_integer03]=CreateUnit(GetOwningPlayer(loc_unit01),'e01V',loc_real01,loc_real02,0)
        call Func0193(units028[loc_integer03],'A176')
    endif
    call SetUnitPosition(loc_unit01,Func0126(loc_real01),Func0129(loc_real02))
    call UnitApplyTimedLife(loc_unit01,'BTLF',10+5*loc_integer02)
    call RemoveLocation(loc_location01)
    call Func0180(loc_real01,loc_real02,300)
    set loc_real03=loc_real01+200*Cos(0*bj_DEGTORAD)
    set loc_real04=loc_real02+200*Sin(0*bj_DEGTORAD)
    set loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h07H',loc_real03,loc_real04,loc_real05)
    call SetUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit02,"Stand Work Gold")
    set loc_real03=loc_real01+200*Cos(120*bj_DEGTORAD)
    set loc_real04=loc_real02+200*Sin(120*bj_DEGTORAD)
    set loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h07H',loc_real03,loc_real04,loc_real05)
    call SetUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit03,"Stand Work Gold")
    set loc_real03=loc_real01+200*Cos(240*bj_DEGTORAD)
    set loc_real04=loc_real02+200*Sin(240*bj_DEGTORAD)
    set loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)
    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'h07H',loc_real03,loc_real04,loc_real05)
    call SetUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call QueueUnitAnimation(loc_unit04,"Stand Work Gold")
    call SetUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call QueueUnitAnimation(loc_unit01,"Stand Work")
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,3,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2977))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(266),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(267),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(268),(loc_unit04))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveBoolean(hashtable001,(loc_integer01),(265),(false))
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_location01=null
endfunction

// 64307 ~ 64312
function Func2979 takes nothing returns boolean
    if GetSpellAbilityId()=='A15V' then
        call Func2978()
    endif
    return false
endfunction

// 64314 ~ 64319
function Func2980 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2979))
    set loc_trigger01=null
endfunction
