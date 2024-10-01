
// 16058 ~ 16061
function Func0620 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitCurrentOrder(loc_unit01)
    return(loc_integer01==0)or(loc_integer01==851973)or(loc_integer01==851975)or(loc_integer01==851987)or(loc_integer01==851993)
endfunction

// 16063 ~ 16101
function Func0621 takes trigger loc_trigger01 returns nothing
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(92)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local real loc_real10=GetUnitX(loc_unit02)
    local real loc_real11=GetUnitY(loc_unit02)
    if(Func0620(loc_unit02)==false)then
        set loc_real01=GetUnitX(loc_unit02)
        set loc_real02=GetUnitY(loc_unit02)
        set loc_real06=(LoadReal(hashtable001,(loc_integer01),(677)))
        set loc_real07=(LoadReal(hashtable001,(loc_integer01),(678)))
        call SaveReal(hashtable001,(loc_integer01),(677),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(678),((loc_real02)*1.0))
        set loc_real05=Atan2(loc_real02-loc_real07,loc_real01-loc_real06)
        set loc_real03=SquareRoot((loc_real01-loc_real06)*(loc_real01-loc_real06)+(loc_real02-loc_real07)*(loc_real02-loc_real07))/0.2
        set loc_real04=GetUnitMoveSpeed(loc_unit01)
        set loc_real08=Func0149(GetUnitX(loc_unit02),GetUnitY(loc_unit02),GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        set loc_real09=RAbsBJ(loc_real05*bj_RADTODEG-GetUnitFacing(loc_unit01))
        if(loc_real08<loc_real04-loc_real03 and loc_real04>loc_real03)or(loc_real08<RMaxBJ(loc_real04,loc_real03)and loc_real09>=90)then
        else
            set loc_real10=loc_real01+loc_real03*Cos(loc_real05)
            set loc_real11=loc_real02+loc_real03*Sin(loc_real05)
        endif
    endif
    call SaveInteger(hashtable001,(loc_integer01),(679),(1))
    call IssuePointOrder(loc_unit01,"move",loc_real10,loc_real11)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 16103 ~ 16140
function Func0622 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(92)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01
    local real loc_real02
    local integer loc_integer02
    local player loc_player01=GetOwningPlayer(loc_unit02)
    local item loc_item01
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        if GetTriggerUnit()==loc_unit02 then
            call Func0615(loc_unit01)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER then
        if(LoadInteger(hashtable001,(loc_integer01),(679)))==1 then
            call SaveInteger(hashtable001,(loc_integer01),(679),(0))
        elseif GetIssuedOrderId()!=852100 and GetIssuedOrderId()!=852090 then
            call Func0035(loc_trigger01)
        endif
    else
        if Func0147(loc_unit01,loc_unit02)<300 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func0619(loc_unit01,loc_unit02)
            call Func0615(loc_unit01)
        else
            call Func0621(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_item01=null
    return false
endfunction

// 16142 ~ 16168
function Func0623 takes unit loc_unit01,boolean loc_boolean01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=GetSellingUnit()
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(8000)))
    if loc_unit01!=null then
        if loc_unit01!=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit02)),(8002+loc_integer02)))and loc_boolean01 then
            set loc_integer02=loc_integer02+1
            call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(8000),(loc_integer02))
            call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit02)),(8002+loc_integer02),(loc_unit01))
        endif
        call SaveReal(hashtable001,(loc_integer01),(677),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(678),((GetUnitY(loc_unit01))*1.0))
        call IssueTargetOrder(loc_unit02,"move",loc_unit01)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_ORDER)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_TARGET_ORDER)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_POINT_ORDER)
        call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0622))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(92),(loc_unit02))
    endif
    set loc_trigger01=null
    set loc_unit02=null
endfunction
