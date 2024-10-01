
// 4644 ~ 4646
function Func0194 takes unit loc_unit01 returns boolean
    return GetUnitTypeId(loc_unit01)<1 or IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==true
endfunction

// 4648 ~ 4689
function Func0195 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(43)))
    local unit loc_unit02=Func0022(loc_integer03)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(44)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real02=GetUnitX(loc_unit03)
    local real loc_real03=GetUnitY(loc_unit03)
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local real loc_real06=loc_real01*0.03
    local real loc_real07=Func0169(loc_real02,loc_real03,loc_real04,loc_real05)
    local real loc_real08=loc_real02+loc_real06*Cos(loc_real07*bj_DEGTORAD)
    local real loc_real09=loc_real03+loc_real06*Sin(loc_real07*bj_DEGTORAD)
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(698)))
    local boolean loc_boolean02=(LoadBoolean(hashtable001,(loc_integer01),(818)))
    call SetUnitX(loc_unit03,loc_real08)
    call SetUnitY(loc_unit03,loc_real09)
    call SetUnitFacing(loc_unit03,loc_real07)
    if Func0194(loc_unit01)and loc_boolean01==false or(((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4422))))==1)==true and loc_boolean02==true)then
        call KillUnit(loc_unit03)
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif Func0178(loc_real04,loc_real05,loc_real08,loc_real09)<=loc_real06 then
        call KillUnit(loc_unit03)
        set unit124=loc_unit02
        set unit125=loc_unit01
        call ExecuteFunc((LoadStr(hashtable001,(loc_integer01),(46))))
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 4691 ~ 4709
function Func0196 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,string loc_string01,real loc_real01,boolean loc_boolean01 returns trigger
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local real loc_real04=GetUnitFacing(loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0195))
    call SaveReal(hashtable001,(loc_integer02),(44),((loc_real01)*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(30),(Func0024(loc_unit02)))
    call SaveStr(hashtable001,(loc_integer02),(46),(loc_string01))
    call SaveInteger(hashtable001,(loc_integer02),(43),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer02),(45),(CreateUnit(GetOwningPlayer(loc_unit01),loc_integer01,loc_real02,loc_real03,loc_real04)))
    call SaveBoolean(hashtable001,(loc_integer02),(698),(false))
    call SaveBoolean(hashtable001,(loc_integer02),(818),(loc_boolean01))
    set trigger046=loc_trigger01
    set loc_trigger01=null
    return trigger046
endfunction
