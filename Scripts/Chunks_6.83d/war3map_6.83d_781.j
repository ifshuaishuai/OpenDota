
// 81339 ~ 81359
function Func3945 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetTriggerEvalCount(loc_trigger01)==4 or Func0098(loc_unit02)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A2O7')
        call UnitRemoveAbility(loc_unit02,'B0GC')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
        call Func0115(loc_unit01,loc_unit02,1,20*loc_integer02-10)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 81361 ~ 81373
function Func3946 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call Func0193(loc_unit02,'A2O7')
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3945))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",loc_unit02,"chest")))
    set loc_trigger01=null
endfunction

// 81375 ~ 81382
function Func3947 takes nothing returns boolean
    if IsUnitInGroup(GetEnumUnit(),group030)==false and Func0098(GetEnumUnit())==false then
        call GroupAddUnit(group030,GetEnumUnit())
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\FireBlast.mdx",GetEnumUnit(),"chest"))
        call Func3946(unit377,GetEnumUnit(),integer529)
    endif
    return false
endfunction

// 81384 ~ 81435
function Func3948 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(190)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real06=(1-I2R(loc_integer02)/50)*bj_PI
    local real loc_real07=1400/2*Cos(loc_real06)
    local real loc_real08=500/2*Sin(loc_real06)
    local real loc_real09=Func0126(loc_real03+loc_real07*Cos(loc_real05)-loc_real08*Sin(loc_real05))
    local real loc_real10=Func0129(loc_real04+loc_real07*Sin(loc_real05)+loc_real08*Cos(loc_real05))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local group loc_group02
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1RJ')
    if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and loc_integer02>0 and(GetSpellAbilityId()=='A20N' or GetSpellAbilityId()=='A1RK'))or loc_integer02>100 or Func0271(loc_unit01)then
        call Func0180(loc_real09,loc_real10,300)
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A1RJ' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1RJ',true)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A20N',false)
        call SetUnitPathing(loc_unit01,true)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if ModuloInteger(loc_integer02,10)==0 then
            call Func0180(loc_real09,loc_real10,200)
        endif
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02+1))
        call SetUnitX(loc_unit01,loc_real09)
        call SetUnitY(loc_unit01,loc_real10)
        call SetUnitFacing(loc_unit01,(loc_real05+loc_real06-bj_PI/2)*bj_RADTODEG)
        set loc_group02=Func0030()
        set group030=loc_group01
        set unit124=loc_unit01
        set unit377=loc_unit01
        set integer529=GetUnitAbilityLevel(loc_unit01,'A1RJ')
        call GroupEnumUnitsInRange(loc_group02,loc_real09,loc_real10,200+25,Condition(function Func0313))
        call ForGroup(loc_group02,function Func3947)
        call Func0029(loc_group02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group02=null
    set loc_group01=null
    return false
endfunction

// 81437 ~ 81467
function Func3949 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=Func0169(loc_real01,loc_real02,GetSpellTargetX(),GetSpellTargetY())*bj_DEGTORAD
    local real loc_real04=loc_real01+1400/2*Cos(loc_real03)
    local real loc_real05=loc_real02+1400/2*Sin(loc_real03)
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)-GetUnitState(loc_unit01,UNIT_STATE_LIFE)*0.15)
    call Func0044(loc_unit01,4301,2)
    call Func0044(loc_unit01,4415,2)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3948))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(189),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(190),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real03)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(133),(Func0030()))
    call SetUnitPathing(loc_unit01,false)
    call SetUnitVertexColor(loc_unit01,255,255,255,50)
    call Func0193(loc_unit01,'A20N')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1RJ',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A20N',true)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 81469 ~ 81474
function Func3950 takes nothing returns boolean
    if GetSpellAbilityId()=='A1RJ' then
        call Func3949()
    endif
    return false
endfunction

// 81476 ~ 81481
function Func3951 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3950))
    set loc_trigger01=null
endfunction
