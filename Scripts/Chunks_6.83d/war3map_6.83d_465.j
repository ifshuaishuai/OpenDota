
// 58994 ~ 59000
function Func2680 takes unit loc_unit01,real loc_real01,real loc_real02,real loc_real03,real loc_real04,real loc_real05 returns boolean
    local real loc_real06=loc_real03-loc_real01
    local real loc_real07=loc_real04-loc_real02
    local real loc_real08=GetUnitX(loc_unit01)-loc_real01
    local real loc_real09=GetUnitY(loc_unit01)-loc_real02
    return loc_real05>=RAbsBJ(loc_real06*loc_real09-loc_real07*loc_real08)/RAbsBJ(Pow(Pow(loc_real06,2)+Pow(loc_real07,2),0.5))
endfunction

// 59002 ~ 59039
function Func2681 takes unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02,real loc_real03 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0RO')
    local real loc_real04=(300+20*loc_integer01)*2
    local real loc_real05=80+25
    local unit loc_unit03
    local real loc_real06
    local real loc_real07
    local real loc_real08
    local real loc_real09
    local real loc_real10
    local group loc_group01=Func0030()
    local boolean loc_boolean01
    local boolean loc_boolean02
    set loc_real06=GetUnitX(loc_unit02)-GetUnitX(loc_unit01)
    set loc_real07=GetUnitY(loc_unit02)-GetUnitY(loc_unit01)
    set loc_real08=Pow(Pow(loc_real06,2)+Pow(loc_real07,2),0.5)
    set loc_real09=GetUnitX(loc_unit02)+(loc_real04/2-25)*(loc_real06/loc_real08)
    set loc_real10=GetUnitY(loc_unit02)+(loc_real04/2-25)*(loc_real07/loc_real08)
    set unit124=loc_unit01
    set real009=loc_real01
    call GroupEnumUnitsInRange(loc_group01,loc_real09,loc_real10,Pow(Pow(loc_real04/2,2)+Pow(loc_real05/2,2),0.5),Condition(function Func0305))
    call GroupRemoveUnit(loc_group01,loc_unit02)
    set loc_unit03=FirstOfGroup(loc_group01)
    loop
        exitwhen loc_unit03==null
        set loc_boolean01=Func2680(loc_unit03,GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02),loc_real05/2)
        set loc_boolean02=Func2680(loc_unit03,loc_real09,loc_real10,loc_real09-100,loc_real10+100*loc_real09*Pow(loc_real10,-1),0.01+loc_real04/2)
        if loc_boolean01 and loc_boolean02 then
            call Func0115(loc_unit01,loc_unit03,3,loc_real01)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\PriestMissile\\PriestMissile.mdl",loc_unit03,"chest"))
        endif
        call GroupRemoveUnit(loc_group01,loc_unit03)
        set loc_unit03=FirstOfGroup(loc_group01)
    endloop
    call Func0029(loc_group01)
    set loc_unit03=null
    set loc_group01=null
endfunction

// 59041 ~ 59062
function Func2682 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 and GetEventDamage()>1 and IsUnitIllusion(loc_unit01)==false then
            call DisableTrigger(loc_trigger01)
            call Func2681(loc_unit02,loc_unit01,GetEventDamage(),(LoadReal(hashtable001,(loc_integer01),(349))),(LoadReal(hashtable001,(loc_integer01),(350))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 59064 ~ 59079
function Func2683 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,2.0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2682))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(349),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(350),((GetUnitY(loc_unit02))*1.0))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 59081 ~ 59087
function Func2684 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4272))))==1)==false then
        call Func0044(loc_unit01,4272,0.4)
        call Func2683()
    endif
endfunction

// 59089 ~ 59094
function Func2685 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A0RO')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))then
        call Func2684()
    endif
    return false
endfunction

// 59096 ~ 59106
function Func2686 takes nothing returns nothing
    local trigger loc_trigger01
    if GetUnitAbilityLevel(GetTriggerUnit(),'A0RO')==1 then
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2685))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    endif
    call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),'Repb',GetUnitAbilityLevel(GetTriggerUnit(),'A0RO'))
    set loc_trigger01=null
endfunction

// 59108 ~ 59113
function Func2687 takes nothing returns boolean
    if GetLearnedSkill()=='A0RO' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2686()
    endif
    return false
endfunction

// 59115 ~ 59120
function Func2688 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2687))
    set loc_trigger01=null
endfunction
