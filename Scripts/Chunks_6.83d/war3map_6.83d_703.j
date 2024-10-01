
// 75344 ~ 75377
function Func3618 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(193)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(12)))
    if loc_integer02>35 then
        call SaveReal(hashtable001,(loc_integer01),(193),((loc_real04*0.98)*1.0))
    endif
    if GetTriggerEventId()==EVENT_UNIT_DEATH or loc_integer02>loc_integer03 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",loc_real02,loc_real03))
        call Func0180(loc_real02,loc_real03,150)
        set loc_real02=Func0126(loc_real02+loc_real04*Cos(loc_real01))
        set loc_real03=Func0129(loc_real03+loc_real04*Sin(loc_real01))
        if(IsPointInRegion(region006,((loc_real02)*1.0),((loc_real03)*1.0)))==false then
            call SetUnitX(loc_unit01,loc_real02)
            call SetUnitY(loc_unit01,loc_real03)
        endif
        if loc_integer02==1 and(LoadBoolean(hashtable001,(loc_integer01),(698)))==false then
            call IssueTargetOrder(loc_unit02,"attack",loc_unit01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 75379 ~ 75415
function Func3619 takes unit loc_unit01,unit loc_unit02,boolean loc_boolean01,boolean loc_boolean02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0G5')
    local unit loc_unit03
    if loc_boolean01 then
    endif
    if loc_integer02>0 and GetUnitAbilityLevel(loc_unit01,'BNdo')==0 then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call Func0193(loc_unit03,'A1WQ')
        call SetUnitAbilityLevel(loc_unit03,'A1WQ',loc_integer02)
        if IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)then
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile_mini.mdl",loc_unit01,"weapon"))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
            call SaveReal(hashtable001,(loc_integer01),(13),((loc_real01)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(193),((2)*1.0))
            call SaveBoolean(hashtable001,(loc_integer01),(698),(loc_boolean02))
            call SaveInteger(hashtable001,(loc_integer01),(12),(80+20*loc_integer02))
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
            call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
            call TriggerAddCondition(loc_trigger01,Condition(function Func3618))
            call Func0115(loc_unit01,loc_unit02,1,GetUnitMoveSpeed(loc_unit01)*(0.16+0.06*loc_integer02))
            call Func3617(loc_unit01)
        endif
        if loc_boolean02==false then
            call Func0044(loc_unit01,4276,1.5)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 75417 ~ 75422
function Func3620 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A0G5')>0 and IsUnitIllusion(GetAttacker())==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitTypeId(GetTriggerUnit())!='n00L' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))and GetRandomInt(1,100)<=17 and((LoadInteger(hashtable001,(GetHandleId((GetAttacker()))),((4276))))==1)==false then
        call Func3619(GetAttacker(),GetTriggerUnit(),false,false)
    endif
    return false
endfunction

// 75424 ~ 75429
function Func3621 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3620))
    set loc_trigger01=null
endfunction
