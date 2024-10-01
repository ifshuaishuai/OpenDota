
// 91109 ~ 91124
function Func4389 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=unit124
    local unit loc_unit03=unit125
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2LA')
    if Func0098(loc_unit03)==false then
        call Func0115(loc_unit01,loc_unit03,1,20+80*loc_integer02)
        call Func0246(loc_unit03,'A2MK',1,4,'B0G4')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit03),'A2MK',false)
        call UnitMakeAbilityPermanent(loc_unit03,true,'A2MJ')
    endif
    set loc_unit01=null
    set loc_unit03=null
    set loc_unit02=null
endfunction

// 91126 ~ 91135
function Func4390 takes nothing returns nothing
    local unit loc_unit01=unit413
    local unit loc_unit02=GetEnumUnit()
    local trigger loc_trigger01=Func0196(unit414,loc_unit02,'h0EE',"Func4389",600,false)
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 91137 ~ 91150
function Func4391 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2LA')
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set unit413=loc_unit01
    set unit414=loc_unit02
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),500+25,Condition(function Func0305))
    call GroupRemoveUnit(loc_group01,loc_unit02)
    call ForGroup(loc_group01,function Func4390)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 91152 ~ 91187
function Func4392 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=GetUnitX(loc_unit03)
    local real loc_real02=GetUnitY(loc_unit03)
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=Func0178(loc_real03,loc_real04,loc_real01,loc_real02)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real06=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    local real loc_real07
    local real loc_real08
    local real loc_real09=loc_real05/((real404/.02)-loc_integer02)
    if loc_real09<real405*0.02 then
        set loc_real09=real405*0.02
    endif
    set loc_real07=loc_real01+loc_real09*Cos(loc_real06*bj_DEGTORAD)
    set loc_real08=loc_real02+loc_real09*Sin(loc_real06*bj_DEGTORAD)
    call SetUnitX(loc_unit03,loc_real07)
    call SetUnitY(loc_unit03,loc_real08)
    call SetUnitFacing(loc_unit03,loc_real06)
    if Func0178(loc_real03,loc_real04,loc_real07,loc_real08)<=loc_real09 then
        call KillUnit(loc_unit03)
        call Func4391(loc_unit01,loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    set loc_unit03=null
    return false
endfunction

// 91189 ~ 91204
function Func4393 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h0EJ',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4392))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit03))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
endfunction

// 91206 ~ 91211
function Func4394 takes nothing returns boolean
    if GetSpellAbilityId()=='A2LA' and Func0028(GetSpellTargetUnit())==false then
        call Func4393()
    endif
    return false
endfunction

// 91213 ~ 91218
function Func4395 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4394))
    set loc_trigger01=null
endfunction
