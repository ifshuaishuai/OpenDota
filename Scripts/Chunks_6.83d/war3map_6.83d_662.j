
// 72555 ~ 72565
function Func3447 takes unit loc_unit01,real loc_real01,real loc_real02 returns boolean
    local real loc_real03=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(690)))
    local real loc_real04=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(691)))
    if loc_real03==0 and loc_real04==0 then
        return false
    endif
    if Func0149(loc_real01,loc_real02,loc_real03,loc_real04)<425 then
        return true
    endif
    return false
endfunction

// 72567 ~ 72636
function Func3448 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A261')
    local integer loc_integer04=1
    local unit loc_unit02
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03
    local real loc_real04
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(137)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(688)))
    local boolean loc_boolean02=(LoadBoolean(hashtable001,(loc_integer01),(689)))
    local real loc_real06=(LoadReal(hashtable001,(loc_integer01),(549)))
    local real loc_real07=(LoadReal(hashtable001,(loc_integer01),(567)))
    set loc_real06=Func0126(loc_real06+10*Cos(loc_real05))
    set loc_real07=Func0129(loc_real07+10*Sin(loc_real05))
    call SaveReal(hashtable001,(loc_integer01),(549),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(567),((loc_real07)*1.0))
    if loc_boolean01==false then
        set loc_boolean01=Func3447(loc_unit01,loc_real06,loc_real07)
        if loc_boolean01==true then
            call SaveBoolean(hashtable001,(loc_integer01),(688),(loc_boolean01))
        endif
    endif
    if loc_boolean01 and loc_boolean02==false then
        set loc_boolean02=true
        call SaveBoolean(hashtable001,(loc_integer01),(689),(loc_boolean02))
        loop
            exitwhen loc_integer04>loc_integer02
            set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393+loc_integer04)))
            call SaveEffectHandle(hashtable001,(loc_integer01),(609+loc_integer04),(AddSpecialEffectTarget("war3mapImported\\CorpseFire.mdx",loc_unit02,"origin")))
            set loc_integer04=loc_integer04+1
        endloop
    endif
    set loc_integer04=1
    if Func0149(loc_real06,loc_real07,loc_real01,loc_real02)<15 then
        loop
            exitwhen loc_integer04>loc_integer02
            if loc_boolean01 then
                call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(609+loc_integer04))))
            endif
            call KillUnit((LoadUnitHandle(hashtable001,(loc_integer01),(393+loc_integer04))))
            set loc_integer04=loc_integer04+1
        endloop
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func3446(loc_unit01,loc_integer03,loc_real01,loc_real02,loc_integer02,loc_boolean01)
    else
        loop
            exitwhen loc_integer04>loc_integer02
            set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393+loc_integer04)))
            set loc_real03=(LoadReal(hashtable001,(loc_integer01),(549+loc_integer04)))
            set loc_real04=(LoadReal(hashtable001,(loc_integer01),(567+loc_integer04)))
            set loc_real03=Func0126(loc_real03+10*Cos(loc_real05))
            set loc_real04=Func0129(loc_real04+10*Sin(loc_real05))
            call SaveReal(hashtable001,(loc_integer01),(549+loc_integer04),((loc_real03)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(567+loc_integer04),((loc_real04)*1.0))
            call SetUnitX(loc_unit02,loc_real03)
            call SetUnitY(loc_unit02,loc_real04)
            set loc_integer04=loc_integer04+1
        endloop
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 72638 ~ 72674
function Func3449 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A261')
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(687)))
    local integer loc_integer03=1
    local unit loc_unit02
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer04=GetHandleId(loc_trigger01)
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local real loc_real05=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)*bj_DEGTORAD
    call SaveUnitHandle(hashtable001,(loc_integer04),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer04),(34),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer04),(47),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer04),(48),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer04),(137),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer04),(549),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer04),(567),((loc_real04)*1.0))
    call SaveBoolean(hashtable001,(loc_integer04),(688),(false))
    call SaveBoolean(hashtable001,(loc_integer04),(689),(false))
    loop
        exitwhen loc_integer03>loc_integer02
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0D7',loc_real03+GetRandomInt(-200,200),loc_real04+GetRandomInt(-200,200),0)
        call SaveUnitHandle(hashtable001,(loc_integer04),(393+loc_integer03),(loc_unit02))
        call SaveReal(hashtable001,(loc_integer04),(549+loc_integer03),((GetUnitX(loc_unit02))*1.0))
        call SaveReal(hashtable001,(loc_integer04),(567+loc_integer03),((GetUnitY(loc_unit02))*1.0))
        set loc_integer03=loc_integer03+1
    endloop
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3448))
    call Func3442(loc_unit01,0)
    set loc_unit01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 72676 ~ 72681
function Func3450 takes nothing returns boolean
    if GetSpellAbilityId()=='A261' then
        call Func3449()
    endif
    return false
endfunction
