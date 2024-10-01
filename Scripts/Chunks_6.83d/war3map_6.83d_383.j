
// 53306 ~ 53308
function Func2335 takes nothing returns nothing
    call Func0193(unit124,'A01V')
endfunction

// 53310 ~ 53334
function Func2336 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(686)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))or Func0098(loc_unit02)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(686),((0)*1.0))
        call UnitRemoveAbility(loc_unit02,'A24P')
        call UnitRemoveAbility(loc_unit02,'A24P')
        call UnitRemoveAbility(loc_unit02,'A24P')
        call UnitRemoveAbility(loc_unit02,'A24P')
        call UnitRemoveAbility(loc_unit02,'B0EG')
    else
        call Func0115(loc_unit01,loc_unit02,1,15+15*loc_integer02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 53336 ~ 53369
function Func2337 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(686)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1G7')
    if loc_real01>(TimerGetElapsed(timer001))then
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(686),(((TimerGetElapsed(timer001))+4)*1.0))
    else
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(686),(((TimerGetElapsed(timer001))+4)*1.0))
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2336))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\AcidBomb\\BottleImpact.mdl",loc_unit02,"overhead")))
        if loc_integer02==1 then
            call Func0193(loc_unit02,'A24P')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A24P',false)
        elseif loc_integer02==2 then
            call Func0193(loc_unit02,'A24P')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A24P',false)
        elseif loc_integer02==3 then
            call Func0193(loc_unit02,'A24P')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A24P',false)
        elseif loc_integer02==4 then
            call Func0193(loc_unit02,'A24P')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A24P',false)
        endif
    endif
    set loc_trigger01=null
endfunction

// 53371 ~ 53379
function Func2338 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(unit298)and(GetUnitTypeId(GetFilterUnit())=='h0BT' or GetUnitTypeId(GetFilterUnit())=='h0BU')then
        if Func0149(GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()),real301,real302)<real303 then
            set unit297=GetFilterUnit()
            set real303=Func0149(GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()),real301,real302)
        endif
    endif
    return false
endfunction
