
// 93530 ~ 93532
function Func4526 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='o01X' or GetUnitTypeId(GetFilterUnit())=='o020'
endfunction

// 93534 ~ 93644
function Func4527 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local group loc_group02
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=Func0149(loc_real01,loc_real02,loc_real03,loc_real04)
    local real loc_real06
    local real loc_real07
    local real loc_real08=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real09=real415
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real10=(LoadReal(hashtable001,(loc_integer01),(138)))
    local boolean loc_boolean01=false
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(810)))
    set boolean157=false
    call SetUnitTimeScale(loc_unit01,3)
    call SetUnitFacing(loc_unit01,loc_real08)
    call SetUnitAnimationByIndex(loc_unit01,0)
    if GetTriggerEvalCount(loc_trigger01)>30 then
        if loc_integer02==0 then
            set loc_group02=Func0030()
            call GroupEnumUnitsInRange(loc_group02,loc_real03,loc_real04,150+25,Condition(function Func4526))
            if FirstOfGroup(loc_group02)!=null then
                if(GetUnitTypeId((FirstOfGroup(loc_group02)))=='o020')==false then
                    call KillUnit(FirstOfGroup(loc_group02))
                endif
                set loc_integer02=1
                call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
            endif
            call Func0029(loc_group02)
        endif
        if loc_integer02==1 then
            set loc_real09=loc_real09*2
        endif
        if loc_unit03!=null then
            set loc_real08=Func0168(loc_unit01,loc_unit03)
            call SaveReal(hashtable001,(loc_integer01),(137),((loc_real08)*1.0))
        endif
        set loc_real06=loc_real01+0.02*loc_real09*Cos(loc_real08*bj_DEGTORAD)
        set loc_real07=loc_real02+0.02*loc_real09*Sin(loc_real08*bj_DEGTORAD)
        call SetUnitX(loc_unit01,Func0126(loc_real06))
        call SetUnitY(loc_unit01,Func0129(loc_real07))
        call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
        call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
        call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),100)
        set loc_real05=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        set loc_real10=loc_real10+loc_real05
        call SaveReal(hashtable001,(loc_integer01),(138),((loc_real10)*1.0))
        set loc_group02=Func0030()
        set unit124=loc_unit01
        set unit423=loc_unit01
        set group045=loc_group01
        set integer564=1
        set unit424=null
        set real416=100
        set integer565=loc_integer02
        set unit425=null
        call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),150+25,Condition(function Func0305))
        call ForGroup(loc_group02,function Func4525)
        call Func0029(loc_group02)
        if unit425!=null then
            set loc_group02=Func0030()
            set unit424=null
            set real009=9999
            call GroupEnumUnitsInRange(loc_group02,GetUnitX(unit425),GetUnitY(unit425),600+25,Condition(function Func4521))
            call Func0029(loc_group02)
            if unit424==null then
                set loc_boolean01=true
                set unit424=unit425
            else
                set loc_unit03=unit424
                call SaveUnitHandle(hashtable001,(loc_integer01),(810),(loc_unit03))
            endif
        endif
    else
        call SetUnitX(loc_unit01,loc_real01)
        call SetUnitY(loc_unit01,loc_real02)
        if Func0270(loc_unit01)then
            set loc_boolean01=true
        endif
    endif
    if Func0270(loc_unit01)or GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_boolean01 or(loc_unit03==null and(GetTriggerEvalCount(loc_trigger01)>130 or boolean157 or(loc_integer02==0 and loc_real10>800)or(loc_integer02==1 and loc_real10>1600)))then
        call KillUnit(loc_unit02)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitAddAbility(loc_unit01,'A2QR')
        call UnitRemoveAbility(loc_unit01,'A2QR')
        call SetUnitTimeScale(loc_unit01,1)
        if boolean157==true then
            set loc_real06=GetUnitX(unit424)+50*Cos(loc_real08*bj_DEGTORAD)
            set loc_real07=GetUnitY(unit424)+50*Sin(loc_real08*bj_DEGTORAD)
            call SetUnitX(loc_unit01,Func0126(loc_real06))
            call SetUnitY(loc_unit01,Func0129(loc_real07))
            call IssueTargetOrder(loc_unit01,"attack",unit424)
        endif
    endif
    set loc_unit01=null
    set loc_trigger01=null
    set loc_group02=null
    set loc_group01=null
    return false
endfunction

// 93646 ~ 93670
function Func4528 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o01P',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local real loc_real01=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetSpellTargetX(),GetSpellTargetY())
    call UnitAddAbility(loc_unit01,'A2QQ')
    call UnitRemoveAbility(loc_unit01,'A2QQ')
    call SetUnitTimeScale(loc_unit01,3)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4527))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real01)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveReal(hashtable001,(loc_integer01),(138),((0)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(810),(null))
    if loc_unit02!=null and GetUnitTypeId(loc_unit02)=='o01X' then
        call KillUnit(loc_unit02)
    endif
    set loc_trigger01=null
endfunction
