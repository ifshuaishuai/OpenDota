
// 69793 ~ 69803
function Func3280 takes nothing returns boolean
    local real loc_real01
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit346))==true and IsUnitInGroup(GetFilterUnit(),group024)==false and Func0285(GetFilterUnit(),GetOwningPlayer(unit347))==true then
        set loc_real01=Func0149(GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()),GetUnitX(unit346),GetUnitY(unit346))
        if loc_real01<real349 then
            set unit345=GetFilterUnit()
            set real349=loc_real01
        endif
    endif
    return false
endfunction

// 69805 ~ 69883
function Func3281 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit03=Func0022(loc_integer03)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(222)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(223)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(224)))
    local real loc_real04
    local group loc_group02
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A1AT')
    set loc_real05=Atan2(GetUnitY(loc_unit03)-GetUnitY(loc_unit02),GetUnitX(loc_unit03)-GetUnitX(loc_unit02))
    if loc_unit01==loc_unit03 then
        set loc_real06=GetUnitX(loc_unit02)+24*Cos(loc_real05)
        set loc_real07=GetUnitY(loc_unit02)+24*Sin(loc_real05)
    else
        set loc_real06=GetUnitX(loc_unit02)+24*Cos(loc_real05)
        set loc_real07=GetUnitY(loc_unit02)+24*Sin(loc_real05)
    endif
    call SetUnitX(loc_unit02,loc_real06)
    call SetUnitY(loc_unit02,loc_real07)
    if Func0149(loc_real06,loc_real07,GetUnitX(loc_unit03),GetUnitY(loc_unit03))<60 then
        call SetUnitX(loc_unit02,GetUnitX(loc_unit03))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit03))
        if loc_unit01==loc_unit03 then
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+loc_real01)
            call KillUnit(loc_unit02)
            call Func0029(loc_group01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            if Func0284(loc_unit03)==false or IsUnitVisible(loc_unit03,GetOwningPlayer(loc_unit02))==true then
                if(GetUnitAbilityLevel(loc_unit03,'A2TL')>0)then
                    call Func0115(loc_unit01,loc_unit03,3,((40+40*loc_integer02)+0.25*loc_real03*(40+40*loc_integer02))/(1.2+0.1*loc_integer04))
                else
                    call Func0115(loc_unit01,loc_unit03,1,(40+40*loc_integer02)+0.25*loc_real03*(40+40*loc_integer02))
                endif
                set loc_real03=loc_real03+1
                if GetUnitState(loc_unit03,UNIT_STATE_MANA)>0 then
                    set loc_real04=RMinBJ(GetUnitState(loc_unit03,UNIT_STATE_MANA),(5+15*loc_integer02)+0.25*loc_real02*(10+10*loc_integer02))
                    call SetUnitState(loc_unit03,UNIT_STATE_MANA,GetUnitState(loc_unit03,UNIT_STATE_MANA)-loc_real04)
                    call Func0184(sound050,GetUnitX(loc_unit03),GetUnitY(loc_unit03))
                    set loc_real01=loc_real01+loc_real04
                    set loc_real02=loc_real02+1
                endif
            endif
            call SaveReal(hashtable001,(loc_integer01),(222),((loc_real01)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(224),((loc_real03)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(223),((loc_real02)*1.0))
            set loc_group02=Func0030()
            set unit345=null
            set unit346=loc_unit03
            set group024=loc_group01
            set real349=99999
            set unit347=loc_unit01
            call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit03),GetUnitY(loc_unit03),500,Condition(function Func3280))
            call Func0029(loc_group02)
            if unit345==null or loc_real03==(2+loc_integer02)then
                call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
            else
                call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(unit345)))
                call GroupAddUnit(loc_group01,unit345)
            endif
        endif
        call Func0021(loc_integer03)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
    set loc_group02=null
    return false
endfunction

// 69885 ~ 69914
function Func3282 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0G2')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local real loc_real01=0
    local real loc_real02=0
    local real loc_real03=0
    local real loc_real04=0
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h090',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    call Func0184(sound049,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3281))
    call SaveGroupHandle(hashtable001,(loc_integer02),(187),(loc_group01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(30),(Func0024(loc_unit02)))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    call SaveReal(hashtable001,(loc_integer02),(222),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(224),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(223),((loc_real02)*1.0))
    call GroupAddUnit(loc_group01,loc_unit02)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    set loc_group01=null
endfunction

// 69916 ~ 69921
function Func3283 takes nothing returns boolean
    if GetSpellAbilityId()=='A0G2' then
        call Func3282()
    endif
    return false
endfunction

// 69923 ~ 69928
function Func3284 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3283))
    set loc_trigger01=null
endfunction
