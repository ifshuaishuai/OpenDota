
// 21898 ~ 21920
function Func0862 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(138)))
    local real loc_real03=Func0126(GetUnitX(loc_unit01)+loc_real02/10*Cos(loc_real01*bj_DEGTORAD))
    local real loc_real04=Func0129(GetUnitY(loc_unit01)+loc_real02/10*Sin(loc_real01*bj_DEGTORAD))
    if GetTriggerEvalCount(loc_trigger01)==11 or GetTriggerEventId()==EVENT_UNIT_DEATH or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4260))))==1)==true then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",loc_real03,loc_real04))
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4306))))==1)==false and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4324))))==1)==false and GetUnitAbilityLevel(loc_unit01,'B08V')==0 and GetUnitAbilityLevel(loc_unit01,'B0FG')==0 then
            call Func0180(loc_real03,loc_real04,150)
            call SetUnitX(loc_unit01,loc_real03)
            call SetUnitY(loc_unit01,loc_real04)
        endif
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 21922 ~ 21955
function Func0863 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local integer loc_integer02=-1
    local boolean loc_boolean01=false
    if GetSpellTargetItem()!=null then
        set loc_unit01=GetTriggerUnit()
    endif
    call Func0044(loc_unit01,4414,3)
    set loc_real04=GetUnitFacing(loc_unit01)
    loop
        exitwhen loc_boolean01 or loc_integer02==23
        set loc_integer02=loc_integer02+1
        set loc_real01=Func0126(GetUnitX(loc_unit01)+(600-loc_integer02*25)*Cos(loc_real04*bj_DEGTORAD))
        set loc_real02=Func0129(GetUnitY(loc_unit01)+(600-loc_integer02*25)*Sin(loc_real04*bj_DEGTORAD))
        if(IsPointInRegion(region006,((loc_real01)*1.0),((loc_real02)*1.0)))==false then
            set loc_boolean01=true
        endif
    endloop
    set loc_real03=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.04,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0862))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(138),((loc_real03)*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 21957 ~ 21963
function Func0864 takes nothing returns nothing
    if GetSpellAbilityId()=='A19M' and GetUnitTypeId(GetSpellTargetUnit())!='n00L' then
        if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true or(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))==false then
            call Func0863()
        endif
    endif
endfunction
