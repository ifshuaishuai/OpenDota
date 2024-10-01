
// 71739 ~ 71747
function Func3406 takes unit loc_unit01,boolean loc_boolean01 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A03P')
    if loc_boolean01==false then
        call UnitRemoveAbility(loc_unit01,'A13F')
        call UnitRemoveAbility(loc_unit01,'B0A2')
    else
        call Func0193(loc_unit01,'A13F')
    endif
endfunction

// 71749 ~ 71805
function Func3407 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(674)))
    set loc_integer02=loc_integer02+1
    call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
    if loc_unit01!=null and Func0194(loc_unit01)==false and GetUnitAbilityLevel(loc_unit01,'A03P')>0 then
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1625,Condition(function Func0307))
        if FirstOfGroup(loc_group01)!=null then
            if loc_boolean01==true and loc_integer02>7 then
                set loc_boolean01=false
                call SaveBoolean(hashtable001,(loc_integer01),(674),(loc_boolean01))
                set loc_integer02=0
                call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
            endif
            if loc_boolean01==false then
                set loc_integer02=0
                call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
                call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4302)),(2))
                call Func3406(loc_unit01,false)
                call SetUnitVertexColorBJ(loc_unit01,100,100,100,0)
                if GetUnitAbilityLevel(loc_unit01,'A20S')==0 then
                    call UnitSetUsesAltIcon(loc_unit01,false)
                endif
            endif
        else
            if loc_boolean01==false and loc_integer02>7 then
                set loc_boolean01=true
                set loc_integer02=0
                call SaveBoolean(hashtable001,(loc_integer01),(674),(loc_boolean01))
                call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
            endif
            if loc_boolean01==true then
                set loc_integer02=0
                call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
                call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4302)),(1))
                call Func3406(loc_unit01,true)
                call SetUnitVertexColorBJ(loc_unit01,100,100,100,75)
                if IsPlayerEnemy(GetOwningPlayer(loc_unit01),GetLocalPlayer())==true and Func0107(GetLocalPlayer())==false then
                    call UnitSetUsesAltIcon(loc_unit01,true)
                else
                    call UnitSetUsesAltIcon(loc_unit01,false)
                endif
            endif
        endif
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 71807 ~ 71818
function Func3408 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3407))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveBoolean(hashtable001,(loc_integer01),(674),(false))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 71820 ~ 71825
function Func3409 takes nothing returns boolean
    if GetLearnedSkill()=='A03P' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A03P')==1 then
        call Func3408()
    endif
    return false
endfunction

// 71827 ~ 71832
function Func3410 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3409))
    set loc_trigger01=null
endfunction
