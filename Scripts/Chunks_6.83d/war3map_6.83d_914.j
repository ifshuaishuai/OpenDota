
// 93260 ~ 93267
function Func4508 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    if GetUnitTypeId(loc_unit01)!='o01X' then
        call SetUnitPathing(loc_unit01,true)
    endif
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4336)),(2))
    set loc_unit01=null
endfunction

// 93269 ~ 93277
function Func4509 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group044)==false then
        call GroupAddUnit(group044,GetEnumUnit())
        call Func4507(GetEnumUnit())
        if integer563==1 then
            call Func0115(unit422,GetEnumUnit(),1,75*integer562-25)
        endif
    endif
endfunction

// 93279 ~ 93297
function Func4510 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(801)))
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(802)))
    local real loc_real03=real412+loc_real02*Cos(loc_real01)
    local real loc_real04=real413+loc_real02*Sin(loc_real01)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",loc_real03,loc_real04))
    if GetUnitTypeId(loc_unit01)=='o01X' or GetUnitTypeId(loc_unit01)=='o020' then
        set integer563=1
        call SetUnitPosition(loc_unit01,loc_real03,loc_real04)
        call SetUnitX(loc_unit01,loc_real03)
        call SetUnitY(loc_unit01,loc_real04)
    else
        call SetUnitX(loc_unit01,loc_real03)
        call SetUnitY(loc_unit01,loc_real04)
        call Func0180(loc_real03,loc_real04,100)
    endif
    set loc_unit01=null
endfunction

// 93299 ~ 93309
function Func4511 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    if Func0194(loc_unit01)==true or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4306))))==1)==true or GetUnitAbilityLevel(loc_unit01,'B08V')>0 or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4335))))==1)==true then
        call GroupRemoveUnit(group044,loc_unit01)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4336)),(2))
        if GetUnitTypeId(loc_unit01)!='o01X' then
            call SetUnitPathing(loc_unit01,true)
        endif
    endif
    set loc_unit01=null
endfunction

// 93311 ~ 93370
function Func4512 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(803)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real05=bj_DEGTORAD*Func0169(loc_real03,loc_real04,loc_real01,loc_real02)
    local real loc_real06
    local real loc_real07
    local boolean loc_boolean01=false
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group03
    set integer563=0
    set group044=loc_group01
    call ForGroup(loc_group01,function Func4511)
    if GetTriggerEvalCount(loc_trigger01)>200 or FirstOfGroup(loc_group01)==null then
        set loc_boolean01=true
    else
        set loc_real06=loc_real03+real411*0.03*Cos(loc_real05)
        set loc_real07=loc_real04+real411*0.03*Sin(loc_real05)
        if Func0149(loc_real06,loc_real07,loc_real01,loc_real02)<30 then
            set loc_real06=loc_real01
            set loc_real07=loc_real02
            set loc_boolean01=true
        endif
        set loc_real06=Func0126(loc_real06)
        set loc_real07=Func0129(loc_real07)
        set group044=loc_group01
        set real412=loc_real06
        set real413=loc_real07
        call ForGroup(loc_group01,function Func4510)
        call SaveReal(hashtable001,(loc_integer01),(23),((loc_real06)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(24),((loc_real07)*1.0))
        set loc_group03=Func0030()
        set unit124=loc_unit01
        set group044=loc_group02
        set unit422=loc_unit01
        set integer562=GetUnitAbilityLevel(loc_unit01,'A2QI')
        call GroupEnumUnitsInRange(loc_group03,loc_real06,loc_real07,180+25,Condition(function Func0305))
        call ForGroup(loc_group03,function Func4509)
        call Func0029(loc_group03)
        set loc_group03=null
    endif
    if loc_boolean01 then
        call ForGroup(loc_group01,function Func4508)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0029(loc_group02)
        call Func0029(loc_group01)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    set loc_group02=null
    set loc_group01=null
    return false
endfunction

// 93372 ~ 93374
function Func4513 takes nothing returns boolean
    return((GetUnitTypeId(GetFilterUnit())=='o01X' or GetUnitTypeId(GetFilterUnit())=='o020')or(IsUnitEnemy(unit422,GetOwningPlayer(GetFilterUnit()))==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0))and Func0194(GetFilterUnit())==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((4336))))==1)==false
endfunction

// 93376 ~ 93378
function Func4514 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='o01X'
endfunction

// 93380 ~ 93387
function Func4515 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    call SetUnitPathing(loc_unit01,false)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4336)),(1))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(801),((bj_DEGTORAD*Func0169(real412,real413,GetUnitX(loc_unit01),GetUnitY(loc_unit01)))*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(802),((Func0149(real412,real413,GetUnitX(loc_unit01),GetUnitY(loc_unit01)))*1.0))
    set loc_unit01=null
endfunction

// 93389 ~ 93437
function Func4516 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=GetUnitX(GetSpellTargetUnit())
    local real loc_real02=GetUnitY(GetSpellTargetUnit())
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)
    local unit loc_unit02=GetSpellTargetUnit()
    local group loc_group01
    if loc_unit02==null then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetSpellTargetX(),GetSpellTargetY(),240+25,Condition(function Func4514))
        if FirstOfGroup(loc_group01)==null then
            call Func0029(loc_group01)
            set loc_unit01=null
            set loc_group01=null
            return
        endif
        set loc_unit02=FirstOfGroup(loc_group01)
        call Func0029(loc_group01)
    endif
    set loc_group01=Func0030()
    call GroupAddUnit(loc_group01,loc_unit02)
    set loc_real01=GetUnitX(loc_unit02)
    set loc_real02=GetUnitY(loc_unit02)
    set loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    set real412=loc_real01
    set real413=loc_real02
    call ForGroup(loc_group01,function Func4515)
    set loc_real03=loc_real03+100*Cos(loc_real05*bj_DEGTORAD)
    set loc_real04=loc_real04+100*Sin(loc_real05*bj_DEGTORAD)
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4512))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(23),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((loc_real02)*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call SaveGroupHandle(hashtable001,(loc_integer01),(803),(loc_group01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\MagneticGripTarget.mdx",loc_unit02,"chest")))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_group01=null
endfunction
