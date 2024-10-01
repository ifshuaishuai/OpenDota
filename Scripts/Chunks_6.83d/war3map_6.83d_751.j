
// 78971 ~ 78987
function Func3825 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(138)))
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(508)))-loc_real01
    local fogmodifier loc_fogmodifier01=(LoadFogModifierHandle(hashtable001,(loc_integer01),(42)))
    call FogModifierStop(loc_fogmodifier01)
    call DestroyFogModifier(loc_fogmodifier01)
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(508),((loc_real02)*1.0))
    call Func0420(loc_unit01,R2I(loc_real02/100.0*(0.3*GetUnitAbilityLevel(loc_unit01,'A1Q7'))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 78989 ~ 79003
function Func3826 takes unit loc_unit01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(508)))+loc_real01
    local fogmodifier loc_fogmodifier01=CreateFogModifierRadius(GetOwningPlayer(loc_unit01),FOG_OF_WAR_VISIBLE,GetUnitX(loc_unit01),GetUnitY(loc_unit01),400,true,true)
    call FogModifierStart(loc_fogmodifier01)
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(508),((loc_real02)*1.0))
    call Func0420(loc_unit01,R2I(loc_real02/100.0*(0.6*GetUnitAbilityLevel(loc_unit01,'A1Q7'))))
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3825))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(138),((loc_real01)*1.0))
    call SaveFogModifierHandle(hashtable001,(loc_integer01),(42),(loc_fogmodifier01))
    set loc_trigger01=null
endfunction

// 79005 ~ 79024
function Func3827 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=Func0149(loc_real01,loc_real02,loc_real03,loc_real04)
    if loc_real05<1500 then
        call Func3826(loc_unit01,loc_real05)
    else
        call Func3826(loc_unit01,1500)
    endif
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real04)*1.0))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 79026 ~ 79038
function Func3828 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3827))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(508),((0)*1.0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 79040 ~ 79045
function Func3829 takes nothing returns boolean
    if GetLearnedSkill()=='A1Q7' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A1Q7')==1 then
        call Func3828()
    endif
    return false
endfunction

// 79047 ~ 79052
function Func3830 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3829))
    set loc_trigger01=null
endfunction
