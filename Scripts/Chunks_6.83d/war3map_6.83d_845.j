
// 88246 ~ 88248
function Func4227 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='h0E8'
endfunction

// 88250 ~ 88256
function Func4228 takes nothing returns nothing
    local real loc_real01=Func0149(GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),real394,real395)
    if loc_real01>real396 and Func0194(GetEnumUnit())==false then
        set unit406=GetEnumUnit()
        set real396=loc_real01
    endif
endfunction

// 88258 ~ 88269
function Func4229 takes unit loc_unit01,real loc_real01,real loc_real02 returns unit
    local group loc_group01=Func0030()
    set unit406=null
    set real396=-1
    set real394=loc_real01
    set real395=loc_real02
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),Condition(function Func4227))
    call ForGroup(loc_group01,function Func4228)
    call Func0029(loc_group01)
    set loc_group01=null
    return unit406
endfunction

// 88271 ~ 88277
function Func4230 takes nothing returns nothing
    local real loc_real01=Func0149(GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),real394,real395)
    if loc_real01<real396 and Func0194(GetEnumUnit())==false then
        set unit406=GetEnumUnit()
        set real396=loc_real01
    endif
endfunction

// 88279 ~ 88286
function Func4231 takes unit loc_unit01,unit loc_unit02 returns real
    local real loc_real01=Func0147(loc_unit01,loc_unit02)
    local real loc_real02=loc_real01/1300.0
    if loc_real02>0.4 then
        return loc_real01/0.4
    endif
    return 1300.0
endfunction

// 88288 ~ 88369
function Func4232 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real06=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local real loc_real10
    local real loc_real11=(LoadReal(hashtable001,(loc_integer01),(44)))
    local real loc_real12=loc_real11*0.02
    local group loc_group01
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if loc_unit02!=null then
        set loc_real05=GetUnitX(loc_unit02)
        set loc_real06=GetUnitY(loc_unit02)
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real05)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real06)*1.0))
    endif
    set loc_real07=Func0169(loc_real03,loc_real04,loc_real05,loc_real06)*bj_DEGTORAD
    set loc_real10=Func0149(loc_real03,loc_real04,loc_real05,loc_real06)
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4319)),(2))
        call SetUnitVertexColor(loc_unit01,255,255,255,255)
        call SetUnitTimeScale(loc_unit01,1)
        call SetUnitAnimationByIndex(loc_unit01,0)
        call SetUnitPathing(loc_unit01,true)
        call SetUnitInvulnerable(loc_unit01,false)
        call UnitRemoveAbility(loc_unit01,'A04R')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif loc_real10<loc_real12 then
        call SetUnitX(loc_unit01,loc_real05)
        call SetUnitY(loc_unit01,loc_real06)
        call Func4222(loc_unit01,loc_unit02,loc_real05,loc_real06)
        set loc_unit02=Func4229(loc_unit01,loc_real01,loc_real02)
        if loc_unit02==null then
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4319)),(2))
            call Func0180(loc_real05,loc_real06,100)
            call SetUnitVertexColor(loc_unit01,255,255,255,255)
            call SetUnitTimeScale(loc_unit01,1)
            call SetUnitAnimationByIndex(loc_unit01,1)
            call SetUnitPathing(loc_unit01,true)
            call SetUnitInvulnerable(loc_unit01,false)
            call UnitRemoveAbility(loc_unit01,'A04R')
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        else
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02+1))
            call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
            call SaveReal(hashtable001,(loc_integer01),(44),((Func4231(loc_unit01,loc_unit02))*1.0))
            call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit02))*1.0))
            call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit02))*1.0))
        endif
    else
        call SetUnitAnimationByIndex(loc_unit01,0)
        call SetUnitPathing(loc_unit01,false)
        set loc_real08=loc_real03+loc_real12*Cos(loc_real07)
        set loc_real09=loc_real04+loc_real12*Sin(loc_real07)
        call SetUnitX(loc_unit01,loc_real08)
        call SetUnitY(loc_unit01,loc_real09)
        call SetUnitFacing(loc_unit01,loc_real07*bj_RADTODEG)
        call Func0180(loc_real08,loc_real09,100)
    endif
    call Func4219(loc_unit01,loc_integer02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
