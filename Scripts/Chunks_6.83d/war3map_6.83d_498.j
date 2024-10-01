
// 61171 ~ 61217
function Func2812 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(281)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(280)))
    local real loc_real01
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call SetUnitTurnSpeed(loc_unit02,GetUnitDefaultTurnSpeed(loc_unit02))
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(281),(0))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0371(loc_unit02,0,0)
    elseif loc_integer02==0 then
        call SetUnitTurnSpeed(loc_unit02,GetUnitDefaultTurnSpeed(loc_unit02))
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(281),(0))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED and loc_boolean01==false then
        if loc_integer02>0 and GetUnitAbilityLevel(GetEventDamageSource(),'A1EL')>0 and(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
            call SaveBoolean(hashtable001,(loc_integer01),(280),(true))
            if boolean146 then
                call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\LordofFlameMissile\\LordofFlameMissile.mdl",loc_unit02,"chest"))
                set loc_real01=0.5*(5+5*GetUnitAbilityLevel(loc_unit01,'A1EL'))*loc_integer02
            elseif boolean069==false and GetEventDamage()>12 then
                call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\LordofFlameMissile\\LordofFlameMissile.mdl",loc_unit02,"chest"))
                set loc_real01=(5+5*GetUnitAbilityLevel(loc_unit01,'A1EL'))*loc_integer02
            endif
            if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false then
                set loc_real01=loc_real01*0.5
            endif
            if boolean146 then
                call Func0115(loc_unit01,loc_unit02,1,loc_real01)
            elseif boolean069==false and GetEventDamage()>12 then
                call Func0115(loc_unit01,loc_unit02,1,loc_real01)
            endif
            call SaveBoolean(hashtable001,(loc_integer01),(280),(false))
        endif
    else
        call SetUnitTurnSpeed(loc_unit02,GetUnitDefaultTurnSpeed(loc_unit02)*0.3)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
