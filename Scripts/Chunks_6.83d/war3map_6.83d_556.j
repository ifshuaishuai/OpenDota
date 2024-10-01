
// 64911 ~ 64953
function Func3019 takes unit loc_unit01,real loc_real01 returns nothing
    local integer loc_integer01=R2I(loc_real01)
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    local real loc_real02
    set integers164[0]='A23H'
    set integers164[1]='A23K'
    set integers164[2]='A23L'
    set integers164[3]='A23J'
    set integers164[4]='A23I'
    set integers164[5]='A23M'
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers164[0])
        call UnitRemoveAbility(loc_unit01,integers164[1])
        call UnitRemoveAbility(loc_unit01,integers164[2])
        call UnitRemoveAbility(loc_unit01,integers164[3])
        call UnitRemoveAbility(loc_unit01,integers164[4])
        call UnitRemoveAbility(loc_unit01,integers164[5])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=5
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call Func0193(loc_unit01,integers164[loc_integer04])
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),integers164[loc_integer04],false)
        else
            call UnitRemoveAbility(loc_unit01,integers164[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 64955 ~ 64971
function Func3020 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A23G')
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(682)))
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(683)))-1
    call Func3019(loc_unit02,loc_integer03*loc_integer02)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(683),(loc_integer03))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 64973 ~ 64988
function Func3021 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A23G')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(683)))+1
    call Func3019(loc_unit02,loc_integer03*loc_integer01)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(683),(loc_integer03))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(682),(((TimerGetElapsed(timer001))+real341-0.01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,real341,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3020))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",loc_unit02,"origin"))
    set loc_trigger01=null
endfunction

// 64990 ~ 65015
function Func3022 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 then
            call DisableTrigger(loc_trigger01)
            if GetUnitAbilityLevel(loc_unit01,'A04R')==0 then
                call Func3021(loc_unit02,loc_unit01)
            endif
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 65017 ~ 65030
function Func3023 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3022))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 65032 ~ 65038
function Func3024 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4307))))==1)==false then
        call Func0044(loc_unit01,4307,0.3)
        call Func3023()
    endif
endfunction

// 65040 ~ 65045
function Func3025 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A23G')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))and GetUnitTypeId(GetTriggerUnit())!='n00L' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
        call Func3024()
    endif
    return false
endfunction

// 65047 ~ 65053
function Func3026 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3025))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 65055 ~ 65060
function Func3027 takes nothing returns boolean
    if GetLearnedSkill()=='A23G' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A23G')==1 then
        call Func3026()
    endif
    return false
endfunction

// 65062 ~ 65067
function Func3028 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3027))
    set loc_trigger01=null
endfunction
