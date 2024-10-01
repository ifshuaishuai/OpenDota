
// 48956 ~ 48969
function Func2067 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02>24
        if loc_integer02!=loc_integer01/4 and GetUnitAbilityLevel(loc_unit01,integers146[loc_integer02])>0 then
            call UnitRemoveAbility(loc_unit01,integers146[loc_integer02])
        endif
        set loc_integer02=loc_integer02+1
    endloop
    if GetUnitAbilityLevel(loc_unit01,integers146[loc_integer01/4])==0 then
        call Func0193(loc_unit01,integers146[loc_integer01/4])
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),integers146[loc_integer01/4],false)
    endif
endfunction

// 48971 ~ 49006
function Func2068 takes nothing returns boolean
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A0QQ')
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(319)))
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true and loc_integer04>0 then
        set loc_integer02=R2I(100*GetUnitState(loc_unit01,UNIT_STATE_LIFE)/GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))
        set loc_integer03=Func0139(Func0138(R2I(100-loc_integer02)/7,14),1)
        if Func0194(loc_unit01)==false then
            if(GetUnitAbilityLevel(loc_unit01,'BNdo')>0)then
                set loc_integer03=0
            endif
            call Func0423(loc_unit01,(12+loc_integer04*2)*loc_integer03)
            call Func2067(loc_unit01,(3+loc_integer04)*loc_integer03)
            if loc_integer02<40 then
                if loc_boolean01==false then
                    call SaveBoolean(hashtable001,(loc_integer01),(319),(true))
                    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\TrollBerserk\\HeadhunterWEAPONSLeft.mdl",loc_unit01,"left weapon")))
                    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("effects\\HeadhunterWEAPONSRight_NoSound.mdx",loc_unit01,"right weapon")))
                endif
            else
                if loc_boolean01==true then
                    call SaveBoolean(hashtable001,(loc_integer01),(319),(false))
                    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
                    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
                endif
            endif
        endif
    endif
    set loc_unit01=null
    return false
endfunction

// 49008 ~ 49015
function Func2069 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2068))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    call SaveBoolean(hashtable001,(GetHandleId(loc_trigger01)),(319),(false))
    set loc_trigger01=null
endfunction

// 49017 ~ 49022
function Func2070 takes nothing returns boolean
    if GetLearnedSkill()=='A0QQ' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0QQ')==1 then
        call Func2069()
    endif
    return false
endfunction

// 49024 ~ 49053
function Func2071 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2070))
    set integers146[1]='A2PM'
    set integers146[2]='A2PN'
    set integers146[3]='A2PO'
    set integers146[4]='A2PP'
    set integers146[5]='A2PQ'
    set integers146[6]='A2PJ'
    set integers146[7]='A2PR'
    set integers146[8]='A2PI'
    set integers146[9]='A2PL'
    set integers146[10]='A2PT'
    set integers146[11]='A2Q1'
    set integers146[12]='A2PU'
    set integers146[13]='A2PH'
    set integers146[14]='A2PV'
    set integers146[15]='A2PW'
    set integers146[16]='A2PX'
    set integers146[17]='A2PY'
    set integers146[18]='A2PZ'
    set integers146[19]='A2Q0'
    set integers146[20]='A2PK'
    set integers146[21]='A2PS'
    set integers146[22]='A2TA'
    set integers146[23]='A2TB'
    set integers146[24]='A2TC'
    set loc_trigger01=null
endfunction
