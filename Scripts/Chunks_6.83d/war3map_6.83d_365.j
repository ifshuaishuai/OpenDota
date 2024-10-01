
// 52344 ~ 52370
function Func2272 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(300)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(299)))
    local unit loc_unit03
    if GetTriggerEvalCount(loc_trigger01)>loc_integer02 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        if loc_integer04=='A2KQ' then
            set loc_integer04='A2KR'
        endif
        call Func0193(loc_unit03,loc_integer04)
        call SetUnitAbilityLevel(loc_unit03,loc_integer04,loc_integer03)
        call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 52372 ~ 52399
function Func2273 takes integer loc_integer01 returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetSpellAbilityId()
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,loc_integer02)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer04=GetHandleId(loc_trigger01)
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
    call SaveUnitHandle(hashtable001,(loc_integer04),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer04),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer04),(300),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer04),(5),(loc_integer03))
    call SaveInteger(hashtable001,(loc_integer04),(299),(loc_integer02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.4,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2272))
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
endfunction

// 52401 ~ 52420
function Func2274 takes nothing returns boolean
    local integer loc_integer01
    if GetUnitAbilityLevel(GetTriggerUnit(),'A088')>0 and Func0028(GetSpellTargetUnit())==false then
        if GetSpellAbilityId()=='A04W' or GetSpellAbilityId()=='A08D' or GetSpellAbilityId()=='A08A' or GetSpellAbilityId()=='A089' or GetSpellAbilityId()=='A2KQ' then
            set loc_integer01=Func2265(GetTriggerUnit())
            if loc_integer01>1 and((LoadInteger(hashtable001,(GetHandleId((GetSpellTargetUnit()))),((4322))))==1)==false then
                call Func2273(loc_integer01)
            endif
        elseif GetSpellAbilityId()=='A011' or GetSpellAbilityId()=='A007' or GetSpellAbilityId()=='A17W' or GetSpellAbilityId()=='A01T' or GetSpellAbilityId()=='A17X' or GetSpellAbilityId()=='A00F' or GetSpellAbilityId()=='A17Y' or GetSpellAbilityId()=='A17V' then
            set loc_integer01=Func2265(GetTriggerUnit())
            if loc_integer01>1 and((LoadInteger(hashtable001,(GetHandleId((GetSpellTargetUnit()))),((4322))))==1)==false then
                call Func2268(loc_integer01)
            endif
        endif
    endif
    if Func0028(GetSpellTargetUnit())==false and GetSpellAbilityId()=='A2KQ' then
        call Func2269()
    endif
    return false
endfunction
