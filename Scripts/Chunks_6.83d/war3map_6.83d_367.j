
// 52474 ~ 52493
function Func2277 takes nothing returns boolean
    local unit loc_unit01=GetFilterUnit()
    local unit loc_unit02=GetTriggerUnit()
    if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>0 and GetUnitAbilityLevel(loc_unit01,'Bblo')==0 then
        if(GetOwningPlayer(loc_unit01)==players003[0]or GetOwningPlayer(loc_unit01)==players004[0])then
            if(GetUnitTypeId(loc_unit01)=='ugho' or GetUnitTypeId(loc_unit01)=='u001' or GetUnitTypeId(loc_unit01)=='unec' or GetUnitTypeId(loc_unit01)=='u002')then
                return true
            endif
            if(GetUnitTypeId(loc_unit01)=='esen' or GetUnitTypeId(loc_unit01)=='e00V' or GetUnitTypeId(loc_unit01)=='edry' or GetUnitTypeId(loc_unit01)=='e00W')then
                return true
            endif
            return false
        elseif IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
            return true
        elseif GetOwningPlayer(loc_unit01)==GetOwningPlayer(loc_unit02)then
            return true
        endif
    endif
    return false
endfunction

// 52495 ~ 52532
function Func2278 takes integer loc_integer01 returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=loc_integer01
    local group loc_group01=Func0030()
    local unit loc_unit02
    local unit loc_unit03
    local integer loc_integer03=GetSpellAbilityId()
    local integer loc_integer04=1
    if loc_integer01==2 then
        call Func0173(GetObjectName('n0K7'),5,GetTriggerUnit(),0.03,255,0,0,255)
    elseif loc_integer01==3 then
        call Func0173(GetObjectName('n0JT'),5,GetTriggerUnit(),0.03,255,0,0,255)
    elseif loc_integer01==4 then
        call Func0173(GetObjectName('n0K8'),5,GetTriggerUnit(),0.03,255,0,0,255)
    elseif loc_integer01==5 then
        call Func0173(GetObjectName('n0JO'),5,GetTriggerUnit(),0.03,255,0,0,255)
    endif
    set loc_integer01=loc_integer01-1
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),600,Condition(function Func2277))
    if loc_unit01!=GetSpellTargetUnit()then
        call GroupAddUnit(loc_group01,loc_unit01)
    endif
    loop
        exitwhen loc_integer04>loc_integer02
        set loc_integer04=loc_integer04+1
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00C',GetUnitX(loc_unit01),GetUnitY(loc_unit01),270)
        call Func0193(loc_unit02,loc_integer03)
        call SetUnitAbilityLevel(loc_unit02,loc_integer03,GetUnitAbilityLevel(loc_unit01,loc_integer03))
        call UnitApplyTimedLife(loc_unit02,'BTLF',1.0)
        set loc_unit03=GroupPickRandomUnit(loc_group01)
        call IssueTargetOrder(loc_unit02,"bloodlust",loc_unit03)
        call SetUnitPathing(loc_unit02,false)
        call SetUnitInvulnerable(loc_unit02,true)
        call Func0193(loc_unit02,'Aloc')
        call GroupRemoveUnit(loc_group01,loc_unit03)
    endloop
    call Func0029(loc_group01)
endfunction

// 52534 ~ 52543
function Func2279 takes nothing returns boolean
    local integer loc_integer01
    if GetUnitAbilityLevel(GetTriggerUnit(),'A088')>0 and(GetSpellAbilityId()=='A083' or GetSpellAbilityId()=='A08I' or GetSpellAbilityId()=='A08G' or GetSpellAbilityId()=='A08F')then
        set loc_integer01=Func2265(GetTriggerUnit())
        if loc_integer01>1 then
            call Func2278(loc_integer01)
        endif
    endif
    return false
endfunction

// 52545 ~ 52550
function Func2280 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2279))
    set loc_trigger01=null
endfunction
