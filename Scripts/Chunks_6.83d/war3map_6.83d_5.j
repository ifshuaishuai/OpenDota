
// 3927 ~ 3957
function Func0115 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,real loc_real01 returns nothing
    if loc_integer01==0 then
        return
    endif
    if loc_integer01==1 then
        call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_FIRE,WEAPON_TYPE_WHOKNOWS)
    elseif loc_integer01==2 then
        call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,true,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
    elseif loc_integer01==3 then
        call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,true,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
    elseif loc_integer01==4 then
        call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,true,true,ATTACK_TYPE_PIERCE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
    elseif loc_integer01==5 then
        call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
    elseif loc_integer01==6 then
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,RMaxBJ(GetUnitState(loc_unit02,UNIT_STATE_LIFE)-loc_real01,1))
        if GetUnitState(loc_unit02,UNIT_STATE_LIFE)<2 then
            call UnitRemoveBuffs(loc_unit02,true,true)
            call UnitRemoveAbility(loc_unit02,'Aetl')
            call UnitDamageTarget(CreateUnit(GetOwningPlayer(loc_unit01),'e00E',0,0,0),loc_unit02,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
        endif
    elseif loc_integer01==7 then
        if GetUnitAbilityLevel(loc_unit02,'Aetl')>0 or GetUnitAbilityLevel(loc_unit02,'B01N')>0 then
            call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,true,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
        else
            call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,true,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_UNIVERSAL,WEAPON_TYPE_WHOKNOWS)
        endif
    elseif loc_integer01==8 then
        call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_UNIVERSAL,WEAPON_TYPE_WHOKNOWS)
    endif
endfunction

// 3959 ~ 3975
function Func0116 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(36)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    call Func0115(loc_unit01,loc_unit02,loc_integer03,loc_real01)
    call Func0021(loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 3977 ~ 3987
function Func0117 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,real loc_real01,real loc_real02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(30),(Func0024(loc_unit02)))
    call SaveInteger(hashtable001,(loc_integer02),(36),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(20),((loc_real01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real02,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0116))
    set loc_trigger01=null
endfunction
