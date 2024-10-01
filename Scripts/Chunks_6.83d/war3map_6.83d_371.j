
// 52606 ~ 52622
function Func2287 takes player loc_player01,unit loc_unit01,integer loc_integer01 returns nothing
    local unit loc_unit02=CreateUnit(loc_player01,'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer02
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit02)),(303),(loc_unit01))
    if loc_integer01==1 then
        set loc_integer02='A10H'
    elseif loc_integer01==2 then
        set loc_integer02='A10G'
    elseif loc_integer01==3 then
        set loc_integer02='A10I'
    else
        set loc_integer02='A10F'
    endif
    call Func0193(loc_unit02,loc_integer02)
    call IssueTargetOrderById(loc_unit02,852274,units001[GetPlayerId(loc_player01)])
    set loc_unit02=null
endfunction

// 52624 ~ 52640
function Func2288 takes player loc_player01,unit loc_unit01,integer loc_integer01,boolean loc_boolean01,boolean loc_boolean02 returns nothing
    local real loc_real01=50+50*loc_integer01
    local unit loc_unit02
    local integer loc_integer02
    if loc_boolean02 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call Func0193(loc_unit02,'A10C')
        call SetUnitAbilityLevel(loc_unit02,'A10C',loc_integer01)
        call IssueTargetOrder(loc_unit02,"cripple",loc_unit01)
        call Func0115(units001[GetPlayerId(loc_player01)],loc_unit01,1,loc_real01)
        if loc_boolean01 then
            call Func2287(loc_player01,loc_unit01,loc_integer01)
        endif
    endif
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\IllidanMissile\\IllidanMissile.mdl",loc_unit01,"origin"))
    set loc_unit02=null
endfunction

// 52642 ~ 52680
function Func2289 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(302)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=1000*0.035
    local real loc_real06=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    local real loc_real07=loc_real01+loc_real05*Cos(loc_real06*bj_DEGTORAD)
    local real loc_real08=loc_real02+loc_real05*Sin(loc_real06*bj_DEGTORAD)
    local boolean loc_boolean02=(LoadBoolean(hashtable001,(loc_integer01),(249)))
    call SetUnitX(loc_unit02,loc_real07)
    call SetUnitY(loc_unit02,loc_real08)
    call SetUnitFacing(loc_unit02,loc_real06)
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4422))))==1)==true then
        set loc_boolean02=false
        call SaveBoolean(hashtable001,(loc_integer01),(249),(loc_boolean02))
    endif
    if Func0178(loc_real03,loc_real04,loc_real07,loc_real08)<=loc_real05 then
        if loc_boolean02 then
            call Func2288(loc_player01,loc_unit01,loc_integer03,true,loc_boolean01)
        endif
        call KillUnit(loc_unit02)
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 52682 ~ 52695
function Func2290 takes unit loc_unit01,integer loc_integer01,unit loc_unit02,boolean loc_boolean01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'h06L',GetUnitX(loc_unit01),GetUnitY(loc_unit01),Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    call SavePlayerHandle(hashtable001,(loc_integer02),(54),(GetOwningPlayer(loc_unit01)))
    call SaveInteger(hashtable001,(loc_integer02),(30),(Func0024(loc_unit02)))
    call SaveBoolean(hashtable001,(loc_integer02),(302),(loc_boolean01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(45),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveBoolean(hashtable001,(loc_integer02),(249),(true))
    call TriggerRegisterTimerEvent(loc_trigger01,0.035,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2289))
    set loc_trigger01=null
endfunction

// 52697 ~ 52702
function Func2291 takes nothing returns boolean
    if IsUnitIllusion(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())=='Ogrh' and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
        call Func2290(GetFilterUnit(),GetUnitAbilityLevel(GetTriggerUnit(),'A10D'),GetSpellTargetUnit(),false)
    endif
    return false
endfunction

// 52704 ~ 52720
function Func2292 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A10D')
    local unit loc_unit02=GetSpellTargetUnit()
    local group loc_group01=Func0030()
    local boolean loc_boolean01=Func0028(GetSpellTargetUnit())
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),700,Condition(function Func2291))
    if loc_boolean01 then
        call Func2290(loc_unit01,loc_integer01,loc_unit02,false)
    else
        call Func2290(loc_unit01,loc_integer01,loc_unit02,true)
    endif
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction
