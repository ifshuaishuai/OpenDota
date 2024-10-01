
// 20544 ~ 20564
function Func0783 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='Aeat' then
            call SaveInteger(hashtable001,(loc_integer01),(34),(16))
        endif
    elseif Func0194(loc_unit01)or GetTriggerEventId()==EVENT_UNIT_DEATH or loc_integer02==0 then
        call UnitRemoveAbility(loc_unit01,'A0PV')
        call UnitRemoveAbility(loc_unit01,'B07L')
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4255)),(2))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+115/16)
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02-1))
    endif
    return false
endfunction

// 20566 ~ 20581
function Func0784 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4255)),(1))
    call Func0193(loc_unit01,'A0PV')
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(16))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0783))
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 20583 ~ 20585
function Func0785 takes nothing returns nothing
    call UnitAddItemById(GetSpellTargetUnit(),'I0Q6')
endfunction

// 20587 ~ 20595
function Func0786 takes nothing returns nothing
    if GetSpellAbilityId()=='Aeat' or GetSpellAbilityId()=='A2VG' then
        if((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4255))))==1)==false and GetSpellTargetDestructable()!=null then
            call Func0784()
        elseif GetSpellTargetUnit()!=null then
            call UnitAddItemById(GetSpellTargetUnit(),'I0Q6')
        endif
    endif
endfunction

// 20597 ~ 20605
function Func0787 takes integer loc_integer01,real loc_real01,real loc_real02 returns nothing
    if IsPointInRegion(region008,loc_real01,loc_real02)==false then
        set integer402=integer402+1
        set players006[integer402]=Player(loc_integer01)
        set reals013[integer402]=loc_real01
        set reals014[integer402]=loc_real02
        set reals015[integer402]=(TimerGetElapsed(timer001))
    endif
endfunction

// 20607 ~ 20622
function Func0788 takes integer loc_integer01,real loc_real01,real loc_real02 returns integer
    local real loc_real03=(TimerGetElapsed(timer001))
    local integer loc_integer02=0
    local integer loc_integer03=0
    if IsPointInRegion(region008,loc_real01,loc_real02)==true then
        return loc_integer03
    endif
    loop
        exitwhen loc_integer02>integer402
        if(loc_real03<reals015[loc_integer02]+real201)and(Func0149(loc_real01,loc_real02,reals013[loc_integer02],reals014[loc_integer02])<real202*2+50)and IsPlayerAlly(Player(loc_integer01),players006[loc_integer02])==true then
            set loc_integer03=loc_integer03+1
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return loc_integer03
endfunction

// 20624 ~ 20647
function Func0789 takes integer loc_integer01 returns integer
    if loc_integer01==GetPlayerId(players003[1])then
        return 'h0BI'
    elseif loc_integer01==GetPlayerId(players003[2])then
        return 'h0BK'
    elseif loc_integer01==GetPlayerId(players003[3])then
        return 'h0BG'
    elseif loc_integer01==GetPlayerId(players003[4])then
        return 'h0BF'
    elseif loc_integer01==GetPlayerId(players003[5])then
        return 'h0BL'
    elseif loc_integer01==GetPlayerId(players004[1])then
        return 'h0BH'
    elseif loc_integer01==GetPlayerId(players004[2])then
        return 'h0BJ'
    elseif loc_integer01==GetPlayerId(players004[3])then
        return 'h0BM'
    elseif loc_integer01==GetPlayerId(players004[4])then
        return 'h0A5'
    elseif loc_integer01==GetPlayerId(players004[5])then
        return 'h0BN'
    endif
    return 'h0BN'
endfunction

// 20649 ~ 20651
function Func0790 takes integer loc_integer01 returns integer
    return 'h0AX'
endfunction

// 20653 ~ 20676
function Func0791 takes integer loc_integer01 returns string
    if loc_integer01==GetPlayerId(players003[1])then
        return"war3mapImported\\TeleportTarget_Blue.mdx"
    elseif loc_integer01==GetPlayerId(players003[2])then
        return"war3mapImported\\TeleportTarget_Teal.mdx"
    elseif loc_integer01==GetPlayerId(players003[3])then
        return"war3mapImported\\TeleportTarget_Purple.mdx"
    elseif loc_integer01==GetPlayerId(players003[4])then
        return"war3mapImported\\TeleportTarget_Yellow.mdx"
    elseif loc_integer01==GetPlayerId(players003[5])then
        return"war3mapImported\\TeleportTarget_Orange.mdx"
    elseif loc_integer01==GetPlayerId(players004[1])then
        return"war3mapImported\\TeleportTarget_Pink.mdx"
    elseif loc_integer01==GetPlayerId(players004[2])then
        return"war3mapImported\\TeleportTarget_Gray.mdx"
    elseif loc_integer01==GetPlayerId(players004[3])then
        return"war3mapImported\\TeleportTarget_LightBlue.mdx"
    elseif loc_integer01==GetPlayerId(players004[4])then
        return"war3mapImported\\TeleportTarget_DarkGreen.mdx"
    elseif loc_integer01==GetPlayerId(players004[5])then
        return"war3mapImported\\TeleportTarget_Brown.mdx"
    endif
    return"Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl"
endfunction

// 20678 ~ 20680
function Func0792 takes integer loc_integer01 returns string
    return"Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdl"
endfunction

// 20682 ~ 20692
function Func0793 takes nothing returns boolean
    local real loc_real01
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0 and GetUnitAbilityLevel(GetFilterUnit(),'Asud')==0 and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit125))==true and GetUnitTypeId(GetFilterUnit())!='u00S' and GetUnitTypeId(GetFilterUnit())!='ncop' and GetUnitTypeId(GetFilterUnit())!='emow' and GetUnitTypeId(GetFilterUnit())!='uzig' and IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false then
        set loc_real01=Func0149(real010,real011,GetUnitX(GetFilterUnit()),GetUnitY(GetFilterUnit()))
        if loc_real01<real009 then
            set real009=loc_real01
            set unit124=GetFilterUnit()
        endif
    endif
    return false
endfunction

// 20694 ~ 20705
function Func0794 takes unit loc_unit01,real loc_real01,real loc_real02 returns unit
    local group loc_group01=Func0030()
    set unit124=null
    set unit125=loc_unit01
    set real009=99999
    set real010=loc_real01
    set real011=loc_real02
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,99999,Condition(function Func0793))
    call Func0029(loc_group01)
    set loc_group01=null
    return unit124
endfunction

// 20707 ~ 20710
function Func0795 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return loc_integer01=='n0FH' or loc_integer01=='n0F6' or loc_integer01=='n0FI' or loc_integer01=='n0FJ'
endfunction
