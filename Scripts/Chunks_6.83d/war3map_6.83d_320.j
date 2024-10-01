
// 49288 ~ 49298
function Func2086 takes nothing returns nothing
    local unit loc_unit01=unit286
    local unit loc_unit02=GetEnumUnit()
    local unit loc_unit03
    if IsUnitInGroup(loc_unit02,group009)==false then
        call GroupAddUnit(group009,loc_unit02)
        call Func0365(loc_unit01,loc_unit02,real292)
        call Func0115(loc_unit01,loc_unit02,1,50)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathMissile.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    endif
endfunction

// 49300 ~ 49342
function Func2087 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(137)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real04
    local real loc_real05
    local group loc_group01
    local integer loc_integer03
    local group loc_group02=(LoadGroupHandle(hashtable001,(loc_integer01),(187)))
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A0O6')
    set loc_integer03=0
    loop
        exitwhen loc_integer03>10
        set loc_real04=loc_real01+100*loc_integer03*Cos(loc_real03*bj_DEGTORAD)
        set loc_real05=loc_real02+100*loc_integer03*Sin(loc_real03*bj_DEGTORAD)
        if ModuloInteger(loc_integer02,10)==0 then
        endif
        set unit124=loc_unit01
        set unit286=loc_unit01
        set group009=loc_group02
        set real292=(0.6+0.4*loc_integer04)-(loc_integer02*0.05)
        set integer475=loc_integer04
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real04,loc_real05,150+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func2086)
        call Func0029(loc_group01)
        set loc_integer03=loc_integer03+1
    endloop
    if loc_integer02==20*(0.6+0.4*loc_integer04)then
        call Func0029(loc_group02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 49344 ~ 49388
function Func2088 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(137)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real04=loc_real01+100*loc_integer02*Cos(loc_real03*bj_DEGTORAD)
    local real loc_real05=loc_real02+100*loc_integer02*Sin(loc_real03*bj_DEGTORAD)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A0O6')
    local ubersplat loc_ubersplat01
    local integer loc_integer04
    if loc_integer02<10 then
        call SaveEffectHandle(hashtable001,(loc_integer01),(609+loc_integer02),(AddSpecialEffect("effects\\IcePath.mdx",loc_real04,loc_real05)))
        set loc_ubersplat01=CreateUbersplat(loc_real04,loc_real05,"IPTH",255,255,255,255,false,false)
        call SetUbersplatRenderAlways(loc_ubersplat01,true)
        call SaveUbersplatHandle(hashtable001,(loc_integer01),(760+loc_integer02),(loc_ubersplat01))
    endif
    if loc_integer02==10 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2087))
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveGroupHandle(hashtable001,(loc_integer01),(187),(Func0030()))
        call TriggerEvaluate(loc_trigger01)
    elseif loc_integer02>=(0.4+0.6+0.4*loc_integer03)/.05 then
        set loc_integer04=0
        loop
            exitwhen loc_integer04==10
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(609+loc_integer04))))
            call DestroyUbersplat((LoadUbersplatHandle(hashtable001,(loc_integer01),(760+loc_integer04))))
            set loc_integer04=loc_integer04+1
        endloop
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 49390 ~ 49406
function Func2089 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=Func0169(loc_real01,loc_real02,GetSpellTargetX(),GetSpellTargetY())
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2088))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 49408 ~ 49413
function Func2090 takes nothing returns boolean
    if GetSpellAbilityId()=='A0O6' then
        call Func2089()
    endif
    return false
endfunction

// 49415 ~ 49420
function Func2091 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2090))
    set loc_trigger01=null
endfunction
