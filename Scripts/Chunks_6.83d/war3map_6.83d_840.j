
// 87733 ~ 87748
function Func4204 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2H0')
    if loc_integer01==1 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2JH',false)
        call Func0193(loc_unit01,'A2JH')
    elseif loc_integer01==2 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2JG',false)
        call Func0193(loc_unit01,'A2JG')
    elseif loc_integer01==3 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2JJ',false)
        call Func0193(loc_unit01,'A2JJ')
    elseif loc_integer01==4 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2JI',false)
        call Func0193(loc_unit01,'A2JI')
    endif
endfunction

// 87750 ~ 87767
function Func4205 takes unit loc_unit01,unit loc_unit02 returns nothing
    local real loc_real01=GetRandomReal(0,360)
    local real loc_real02=GetUnitX(loc_unit02)+50*Cos(loc_real01*bj_DEGTORAD)
    local real loc_real03=GetUnitY(loc_unit02)+50*Sin(loc_real01*bj_DEGTORAD)
    call SetUnitPosition(loc_unit01,loc_real02,loc_real03)
    call SetUnitFacing(loc_unit01,bj_RADTODEG*Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01)))
    call SetUnitAnimation(loc_unit01,"Attack")
    call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Fire_Blink_2.mdx",loc_unit01,"chest"))
    call Func4202(loc_unit01)
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true or IsUnitIllusion(loc_unit02)==true then
        call Func4204(loc_unit01)
        call UnitRemoveAbility(loc_unit01,'A2JF')
    else
        call Func0193(loc_unit01,'A2JF')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2JF',false)
    endif
    call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
endfunction

// 87769 ~ 87832
function Func4206 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(190)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local unit loc_unit02=null
    local boolean loc_boolean01=false
    local fogmodifier loc_fogmodifier01=(LoadFogModifierHandle(hashtable001,(loc_integer01),(42)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2H0')
    loop
        exitwhen FirstOfGroup(loc_group02)==null or loc_boolean01
        set loc_unit02=FirstOfGroup(loc_group02)
        call GroupRemoveUnit(loc_group02,loc_unit02)
        if IsUnitInGroup(loc_unit02,loc_group01)and loc_unit02!=null then
            set loc_unit02=null
            set loc_boolean01=false
        else
            set loc_boolean01=true
        endif
    endloop
    call SetUnitPathing(loc_unit01,false)
    call SetUnitInvulnerable(loc_unit01,true)
    call Func0269(loc_unit01)
    if loc_boolean01==false or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4319))))==1)==true then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4318)),(2))
        call Func4201(loc_unit01)
        call UnitRemoveAbility(loc_unit01,'A2JF')
        call Func4202(loc_unit01)
        call Func0269(loc_unit01)
        call Func4200(loc_unit01)
        call UnitAddAbility(loc_unit01,'A2H2')
        call UnitRemoveAbility(loc_unit01,'A2H2')
        call Func0269(loc_unit01)
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4319))))==1)==false then
            call SetUnitX(loc_unit01,loc_real03)
            call SetUnitY(loc_unit01,loc_real04)
        endif
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
        call SetUnitPathing(loc_unit01,true)
        call SetUnitInvulnerable(loc_unit01,false)
        call SetUnitTimeScale(loc_unit01,1)
        call Func0029(loc_group01)
        call Func0029(loc_group02)
        call RemoveUnit((LoadUnitHandle(hashtable001,(loc_integer01),(19))))
        call FogModifierStop(loc_fogmodifier01)
        call DestroyFogModifier(loc_fogmodifier01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call GroupAddUnit(loc_group01,loc_unit02)
        call Func4205(loc_unit01,loc_unit02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group02=null
    set loc_group01=null
    return false
endfunction

// 87834 ~ 87875
function Func4207 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local fogmodifier loc_fogmodifier01=CreateFogModifierRadius(GetOwningPlayer(loc_unit01),FOG_OF_WAR_VISIBLE,loc_real01,loc_real02,600,true,true)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0E7',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    local group loc_group01=Func0030()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2H0')
    call SetUnitVertexColor(loc_unit02,255,255,255,100)
    call FogModifierStart(loc_fogmodifier01)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4318)),(1))
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,150+100*loc_integer02+25,Condition(function Func0317))
    call Func0269(loc_unit01)
    call Func4200(loc_unit01)
    call UnitAddAbility(loc_unit01,'A2H1')
    call UnitRemoveAbility(loc_unit01,'A2H1')
    call SetUnitVertexColor(loc_unit01,255,255,255,125)
    call SetUnitPathing(loc_unit01,false)
    call SetUnitInvulnerable(loc_unit01,true)
    call SetUnitTimeScale(loc_unit01,3)
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4206))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(189),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(190),((GetUnitY(loc_unit01))*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveFogModifierHandle(hashtable001,(loc_integer01),(42),(loc_fogmodifier01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call Func4203(loc_unit01)
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
    set loc_fogmodifier01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 87877 ~ 87882
function Func4208 takes nothing returns boolean
    if GetSpellAbilityId()=='A2H0' then
        call Func4207()
    endif
    return false
endfunction
