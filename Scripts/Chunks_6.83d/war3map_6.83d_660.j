
// 72431 ~ 72498
function Func3442 takes unit loc_unit01,integer loc_integer01 returns nothing
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(687),(loc_integer01))
    call UnitRemoveAbility(loc_unit01,'A25X')
    call UnitRemoveAbility(loc_unit01,'A25Y')
    call UnitRemoveAbility(loc_unit01,'A25Z')
    call UnitRemoveAbility(loc_unit01,'A25T')
    call UnitRemoveAbility(loc_unit01,'A25V')
    call UnitRemoveAbility(loc_unit01,'A25U')
    call UnitRemoveAbility(loc_unit01,'A25S')
    call UnitRemoveAbility(loc_unit01,'A25R')
    call UnitRemoveAbility(loc_unit01,'A25W')
    call UnitRemoveAbility(loc_unit01,'A260')
    call UnitRemoveAbility(loc_unit01,'A26M')
    call UnitRemoveAbility(loc_unit01,'A26L')
    call UnitRemoveAbility(loc_unit01,'A26G')
    call UnitRemoveAbility(loc_unit01,'A26H')
    call UnitRemoveAbility(loc_unit01,'A26F')
    call UnitRemoveAbility(loc_unit01,'A26E')
    call UnitRemoveAbility(loc_unit01,'A256')
    call UnitRemoveAbility(loc_unit01,'A26I')
    call UnitRemoveAbility(loc_unit01,'A26J')
    call UnitRemoveAbility(loc_unit01,'A26K')
    call UnitRemoveAbility(loc_unit01,'A26D')
    if loc_integer01==0 then
        call UnitAddAbility(loc_unit01,'A26M')
    endif
    if loc_integer01==1 then
        call Func0193(loc_unit01,'A25X')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25X',false)
        call UnitAddAbility(loc_unit01,'A26L')
    elseif loc_integer01==2 then
        call Func0193(loc_unit01,'A25Y')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25Y',false)
        call UnitAddAbility(loc_unit01,'A26G')
    elseif loc_integer01==3 then
        call Func0193(loc_unit01,'A25Z')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25Z',false)
        call UnitAddAbility(loc_unit01,'A26H')
    elseif loc_integer01==4 then
        call Func0193(loc_unit01,'A25T')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25T',false)
        call UnitAddAbility(loc_unit01,'A26F')
    elseif loc_integer01==5 then
        call Func0193(loc_unit01,'A25V')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25V',false)
        call UnitAddAbility(loc_unit01,'A26E')
    elseif loc_integer01==6 then
        call Func0193(loc_unit01,'A25U')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25U',false)
        call UnitAddAbility(loc_unit01,'A256')
    elseif loc_integer01==7 then
        call Func0193(loc_unit01,'A25S')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25S',false)
        call UnitAddAbility(loc_unit01,'A26I')
    elseif loc_integer01==8 then
        call Func0193(loc_unit01,'A25R')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25R',false)
        call UnitAddAbility(loc_unit01,'A26J')
    elseif loc_integer01==9 then
        call Func0193(loc_unit01,'A25W')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A25W',false)
        call UnitAddAbility(loc_unit01,'A26K')
    elseif loc_integer01==10 then
        call Func0193(loc_unit01,'A260')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A260',false)
        call UnitAddAbility(loc_unit01,'A26D')
    endif
endfunction

// 72500 ~ 72525
function Func3443 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(687)))
    local group loc_group01
    local unit loc_unit02
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A261')
    local integer loc_integer04=2+2*loc_integer03
    if loc_integer02<loc_integer04 and Func0194(loc_unit01)==false then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),925,Condition(function Func0361))
        set loc_unit02=FirstOfGroup(loc_group01)
        call Func0029(loc_group01)
        if loc_unit02!=null then
            set loc_integer02=loc_integer02+1
            call Func3442(loc_unit01,loc_integer02)
            call Func0196((loc_unit02),(loc_unit01),'h0D6',"CorpseCollector_FX_Nothing",400,false)
            call RemoveUnit(loc_unit02)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 72527 ~ 72536
function Func3444 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,4,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3443))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction
