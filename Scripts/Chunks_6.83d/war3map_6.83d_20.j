
// 6198 ~ 6249
function Func0364 takes real loc_real01 returns integer
    if loc_real01>=4.00 then
        return 24
    elseif loc_real01>=3.75 then
        return 23
    elseif loc_real01>=3.5 then
        return 22
    elseif loc_real01>=3.25 then
        return 21
    elseif loc_real01>=3 then
        return 20
    elseif loc_real01>=2.8 then
        return 19
    elseif loc_real01>=2.75 then
        return 18
    elseif loc_real01>=2.6 then
        return 17
    elseif loc_real01>=2.5 then
        return 16
    elseif loc_real01>=2.4 then
        return 15
    elseif loc_real01>=2.25 then
        return 14
    elseif loc_real01>=2.2 then
        return 13
    elseif loc_real01>=2 then
        return 12
    elseif loc_real01>=1.8 then
        return 11
    elseif loc_real01>=1.75 then
        return 10
    elseif loc_real01>=1.65 then
        return 9
    elseif loc_real01>=1.5 then
        return 8
    elseif loc_real01>=1.4 then
        return 7
    elseif loc_real01>=1.25 then
        return 6
    elseif loc_real01>=1.2 then
        return 5
    elseif loc_real01>=1 then
        return 4
    elseif loc_real01>=0.75 then
        return 3
    elseif loc_real01>=0.5 then
        return 2
    elseif loc_real01>=0.25 then
        return 1
    endif
    return 1
endfunction

// 6251 ~ 6258
function Func0365 takes unit loc_unit01,unit loc_unit02,real loc_real01 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer01=Func0364(loc_real01)
    call UnitAddAbility(loc_unit03,'A0X6')
    call SetUnitAbilityLevel(loc_unit03,'A0X6',loc_integer01)
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    set loc_unit03=null
endfunction

// 6260 ~ 6283
function Func0366 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(73)))
    local unit loc_unit01=Func0022(loc_integer02)
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local real loc_real01=(loc_integer03-13)*(loc_integer03-13)
    if loc_integer03<26 then
        if Func0100(loc_unit01)==false then
            call SetUnitFlyHeight(loc_unit01,375-loc_real01,0)
        endif
    else
        call PauseUnit(loc_unit01,false)
        if Func0100(loc_unit01)==false then
            call SetUnitFlyHeight(loc_unit01,GetUnitDefaultFlyHeight(loc_unit01),0)
        endif
        call Func0115((LoadUnitHandle(hashtable001,(loc_integer01),(2))),loc_unit01,1,(LoadReal(hashtable001,(loc_integer01),(20))))
        call Func0365((LoadUnitHandle(hashtable001,(loc_integer01),(2))),loc_unit01,(LoadReal(hashtable001,(loc_integer01),(57))))
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    return false
endfunction

// 6285 ~ 6300
function Func0367 takes unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02,real loc_real03 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call PauseUnit(loc_unit01,true)
    if Func0100(loc_unit01)==false then
        call UnitAddAbility(loc_unit01,'Amrf')
        call UnitRemoveAbility(loc_unit01,'Amrf')
    endif
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\Impale\\ImpaleHitTarget.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
    call SaveInteger(hashtable001,(loc_integer01),(73),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02/0.52*loc_real03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0366))
endfunction

// 6302 ~ 6307
function Func0368 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group002)==false and Func0098(GetEnumUnit())==false and((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4253))))==1)==false then
        call GroupAddUnit(group002,GetEnumUnit())
        call Func0367(GetEnumUnit(),unit124,real010,real009,real011)
    endif
endfunction

// 6309 ~ 6363
function Func0369 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(57)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(64)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(65)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(66)))
    local real loc_real06=(LoadReal(hashtable001,(loc_integer01),(67)))
    local real loc_real07=(LoadReal(hashtable001,(loc_integer01),(68)))
    local real loc_real08=(LoadReal(hashtable001,(loc_integer01),(44)))
    local real loc_real09=Atan2(loc_real06-loc_real04,loc_real05-loc_real03)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local group loc_group02=Func0030()
    local real loc_real10=loc_real08*0.0625
    local real loc_real11=(LoadReal(hashtable001,(loc_integer01),(71)))
    local real loc_real12=(LoadReal(hashtable001,(loc_integer01),(72)))
    local real loc_real13=(LoadReal(hashtable001,(loc_integer01),(70)))
    local real loc_real14=(LoadReal(hashtable001,(loc_integer01),(63)))
    if loc_real10>Func0149(loc_real03,loc_real04,loc_real05,loc_real06)then
        set loc_real03=loc_real05
        set loc_real04=loc_real06
    else
        set loc_real03=loc_real03+loc_real10*Cos(loc_real09)
        set loc_real04=loc_real04+loc_real10*Sin(loc_real09)
    endif
    set unit124=loc_unit01
    set real009=loc_real01
    set real010=loc_real02
    set real011=loc_real14
    set group002=loc_group01
    call GroupEnumUnitsInRange(loc_group02,loc_real03,loc_real04,loc_real07,Condition(function Func0305))
    call ForGroup(loc_group02,function Func0368)
    call Func0029(loc_group02)
    if Func0149(loc_real03,loc_real04,loc_real11,loc_real12)>=loc_real13 then
        call SaveReal(hashtable001,(loc_integer01),(71),((loc_real03)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(72),((loc_real04)*1.0))
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\Impale\\ImpaleMissTarget.mdl",loc_real03,loc_real04))
    endif
    call SaveReal(hashtable001,(loc_integer01),(64),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(65),((loc_real04)*1.0))
    if loc_real03==loc_real05 and loc_real04==loc_real06 then
        if(LoadBoolean(hashtable001,(loc_integer01),(69)))==true then
            call Func0029(loc_group01)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_group01=null
    set loc_group02=null
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 6365 ~ 6400
function Func0370 takes unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,real loc_real06,real loc_real07,real loc_real08,group loc_group01,boolean loc_boolean01,real loc_real09 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real10=Func0149(loc_real04,loc_real05,loc_real06,loc_real07)
    local integer loc_integer02=Func0234(loc_real10,real015)
    local real loc_real11=loc_real10/loc_integer02
    local group loc_group02
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(63),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(64),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(65),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(66),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(67),((loc_real07)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(68),((loc_real08)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(44),((loc_real09)*1.0))
    if loc_group01==null then
        set loc_group02=Func0030()
        if loc_unit02!=null and IsUnitIllusion(loc_unit02)==false then
            call GroupAddUnit(loc_group02,loc_unit02)
        endif
        call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group02))
        call SaveBoolean(hashtable001,(loc_integer01),(69),(loc_boolean01))
        set loc_group02=null
    else
        call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
        call SaveBoolean(hashtable001,(loc_integer01),(69),(loc_boolean01))
    endif
    call SaveReal(hashtable001,(loc_integer01),(70),((loc_real11)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(71),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(72),((loc_real05)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.0625,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0369))
    set loc_trigger01=null
endfunction
