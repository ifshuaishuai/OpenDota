
// 79548 ~ 79553
function Func3861 takes nothing returns boolean
    if GetUnitTypeId(GetSummonedUnit())=='o000' or GetUnitTypeId(GetSummonedUnit())=='o001' or GetUnitTypeId(GetSummonedUnit())=='o00A' or GetUnitTypeId(GetSummonedUnit())=='o00X' then
        call Func0044(GetSummoningUnit(),4265,8)
    endif
    return false
endfunction

// 79555 ~ 79563
function Func3862 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3861))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3860))
    set loc_trigger01=null
endfunction

// 79565 ~ 79616
function Func3863 takes nothing returns boolean
    local integer loc_integer01=0
    local unit loc_unit01
    local real loc_real01=(TimerGetElapsed(timer001))
    local real loc_real02
    local real loc_real03
    loop
        exitwhen loc_integer01>12
        set loc_unit01=units001[loc_integer01]
        if loc_unit01!=null and GetUnitAbilityLevel(loc_unit01,'B0CD')==0 and reals029[loc_integer01]>loc_real01 then
            set reals029[loc_integer01]=0
        endif
        if loc_unit01!=null and GetUnitAbilityLevel(loc_unit01,'B0CD')>0 then
            if reals029[loc_integer01]>loc_real01 and Func0194(loc_unit01)==false then
                set loc_real03=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
                set loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MANA)
                if loc_real03<reals030[loc_integer01]then
                    set reals030[loc_integer01]=loc_real03
                else
                endif
                if loc_real02<reals031[loc_integer01]then
                    set reals031[loc_integer01]=loc_real02
                else
                endif
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,reals030[loc_integer01])
                set integers171[loc_integer01]=integers171[loc_integer01]+1
                if integers171[loc_integer01]==10 then
                    set integers171[loc_integer01]=0
                    if integers172[loc_integer01]==1 then
                        call Func0115(units031[loc_integer01],loc_unit01,1,12.5)
                    elseif integers172[loc_integer01]==2 then
                        call Func0115(units031[loc_integer01],loc_unit01,1,20)
                    elseif integers172[loc_integer01]==3 then
                        call Func0115(units031[loc_integer01],loc_unit01,1,32)
                    endif
                endif
            elseif reals029[loc_integer01]>loc_real01 and Func0194(loc_unit01)==true then
                set reals029[loc_integer01]=0
                set reals030[loc_integer01]=9999
                set reals031[loc_integer01]=9999
            endif
            if(GetUnitAbilityLevel(loc_unit01,'B0CD')>0 and reals029[loc_integer01]<loc_real01)then
                call UnitRemoveAbility(loc_unit01,'A1JA')
                call UnitRemoveAbility(loc_unit01,'B0CD')
                call UnitRemoveAbility(loc_unit01,'A1LD')
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_unit01=null
    return false
endfunction
