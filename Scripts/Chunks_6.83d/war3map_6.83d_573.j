
// 66282 ~ 66399
function Func3104 takes unit loc_unit01,integer loc_integer01,integer loc_integer02,integer loc_integer03 returns nothing
    local integer loc_integer04=0
    local integer loc_integer05=0
    local integer loc_integer06=0
    local integer loc_integer07
    local integer loc_integer08
    local integer loc_integer09
    local integer loc_integer10
    local integer loc_integer11
    local integer loc_integer12
    local integer loc_integer13
    local integer loc_integer14
    local integer loc_integer15
    call UnitRemoveAbility(loc_unit01,'A0DN')
    call UnitRemoveAbility(loc_unit01,'A0DG')
    call UnitRemoveAbility(loc_unit01,'A0IX')
    call UnitRemoveAbility(loc_unit01,'A0I1')
    call UnitRemoveAbility(loc_unit01,'A0I0')
    call UnitRemoveAbility(loc_unit01,'A0HZ')
    call UnitRemoveAbility(loc_unit01,'A0IC')
    call UnitRemoveAbility(loc_unit01,'A0IB')
    call UnitRemoveAbility(loc_unit01,'A0ID')
    call UnitRemoveAbility(loc_unit01,'A22C')
    call UnitRemoveAbility(loc_unit01,'A22D')
    call UnitRemoveAbility(loc_unit01,'A22E')
    call UnitRemoveAbility(loc_unit01,'A22F')
    call UnitRemoveAbility(loc_unit01,'A22G')
    call UnitRemoveAbility(loc_unit01,'A22H')
    call UnitRemoveAbility(loc_unit01,'A22I')
    call UnitRemoveAbility(loc_unit01,'A22J')
    call UnitRemoveAbility(loc_unit01,'A22K')
    if Func0397(loc_unit01,integer351)==null then
        set loc_integer07='A0DN'
        set loc_integer08='A0DG'
        set loc_integer09='A0IX'
        set loc_integer10='A0I1'
        set loc_integer11='A0I0'
        set loc_integer12='A0HZ'
        set loc_integer13='A0IC'
        set loc_integer14='A0IB'
        set loc_integer15='A0ID'
    else
        set loc_integer07='A22C'
        set loc_integer08='A22D'
        set loc_integer09='A22E'
        set loc_integer10='A22F'
        set loc_integer11='A22G'
        set loc_integer12='A22H'
        set loc_integer13='A22I'
        set loc_integer14='A22J'
        set loc_integer15='A22K'
    endif
    if loc_integer01==1 and loc_integer02==0 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer07)
    elseif loc_integer01==0 and loc_integer02==1 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer10)
    elseif loc_integer01==0 and loc_integer02==0 and loc_integer03==1 then
        call Func0193(loc_unit01,loc_integer13)
    elseif loc_integer01==2 and loc_integer02==0 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer08)
    elseif loc_integer01==1 and loc_integer02==1 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer11)
    elseif loc_integer01==1 and loc_integer02==0 and loc_integer03==1 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer14)
    elseif loc_integer01==0 and loc_integer02==2 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer10)
        call Func0193(loc_unit01,loc_integer11)
    elseif loc_integer01==0 and loc_integer02==1 and loc_integer03==1 then
        call Func0193(loc_unit01,loc_integer10)
        call Func0193(loc_unit01,loc_integer14)
    elseif loc_integer01==0 and loc_integer02==0 and loc_integer03==2 then
        call Func0193(loc_unit01,loc_integer13)
        call Func0193(loc_unit01,loc_integer14)
    elseif loc_integer01==3 and loc_integer02==0 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer08)
        call Func0193(loc_unit01,loc_integer09)
    elseif loc_integer01==2 and loc_integer02==1 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer08)
        call Func0193(loc_unit01,loc_integer12)
    elseif loc_integer01==2 and loc_integer02==0 and loc_integer03==1 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer08)
        call Func0193(loc_unit01,loc_integer15)
    elseif loc_integer01==1 and loc_integer02==2 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer11)
        call Func0193(loc_unit01,loc_integer12)
    elseif loc_integer01==1 and loc_integer02==1 and loc_integer03==1 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer11)
        call Func0193(loc_unit01,loc_integer15)
    elseif loc_integer01==1 and loc_integer02==0 and loc_integer03==2 then
        call Func0193(loc_unit01,loc_integer07)
        call Func0193(loc_unit01,loc_integer14)
        call Func0193(loc_unit01,loc_integer15)
    elseif loc_integer01==0 and loc_integer02==1 and loc_integer03==2 then
        call Func0193(loc_unit01,loc_integer13)
        call Func0193(loc_unit01,loc_integer14)
        call Func0193(loc_unit01,loc_integer12)
    elseif loc_integer01==0 and loc_integer02==2 and loc_integer03==1 then
        call Func0193(loc_unit01,loc_integer10)
        call Func0193(loc_unit01,loc_integer11)
        call Func0193(loc_unit01,loc_integer15)
    elseif loc_integer01==0 and loc_integer02==0 and loc_integer03==3 then
        call Func0193(loc_unit01,loc_integer13)
        call Func0193(loc_unit01,loc_integer14)
        call Func0193(loc_unit01,loc_integer15)
    elseif loc_integer01==0 and loc_integer02==3 and loc_integer03==0 then
        call Func0193(loc_unit01,loc_integer10)
        call Func0193(loc_unit01,loc_integer11)
        call Func0193(loc_unit01,loc_integer12)
    endif
endfunction

// 66401 ~ 66444
function Func3105 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=GetSpellAbilityId()
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(3010)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(3011)))
    local integer loc_integer05=(LoadInteger(hashtable001,(loc_integer01),(3012)))
    local integer loc_integer06=0
    local integer loc_integer07=0
    local integer loc_integer08=0
    set loc_integer03=loc_integer04
    set loc_integer04=loc_integer05
    set loc_integer05=loc_integer02
    if loc_integer03=='A21X' then
        set loc_integer06=loc_integer06+1
    elseif loc_integer03=='A21W' then
        set loc_integer07=loc_integer07+1
    elseif loc_integer03=='A21V' then
        set loc_integer08=loc_integer08+1
    endif
    if loc_integer04=='A21X' then
        set loc_integer06=loc_integer06+1
    elseif loc_integer04=='A21W' then
        set loc_integer07=loc_integer07+1
    elseif loc_integer04=='A21V' then
        set loc_integer08=loc_integer08+1
    endif
    if loc_integer05=='A21X' then
        set loc_integer06=loc_integer06+1
    elseif loc_integer05=='A21W' then
        set loc_integer07=loc_integer07+1
    elseif loc_integer05=='A21V' then
        set loc_integer08=loc_integer08+1
    endif
    call SaveInteger(hashtable001,(loc_integer01),(3010),(loc_integer03))
    call SaveInteger(hashtable001,(loc_integer01),(3011),(loc_integer04))
    call SaveInteger(hashtable001,(loc_integer01),(3012),(loc_integer05))
    call SaveInteger(hashtable001,(loc_integer01),(3013),(loc_integer06))
    call SaveInteger(hashtable001,(loc_integer01),(3014),(loc_integer07))
    call SaveInteger(hashtable001,(loc_integer01),(3015),(loc_integer08))
    call Func3104(loc_unit01,loc_integer06,loc_integer07,loc_integer08)
    call Func3103(loc_unit01)
    call Func3049(loc_unit01)
endfunction

// 66446 ~ 66478
function Func3106 takes nothing returns nothing
    local unit loc_unit01=unit124
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(3010)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(3011)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(3012)))
    local integer loc_integer05=0
    local integer loc_integer06=0
    local integer loc_integer07=0
    if loc_integer02=='A21X' then
        set loc_integer05=loc_integer05+1
    elseif loc_integer02=='A21W' then
        set loc_integer06=loc_integer06+1
    elseif loc_integer02=='A21V' then
        set loc_integer07=loc_integer07+1
    endif
    if loc_integer03=='A21X' then
        set loc_integer05=loc_integer05+1
    elseif loc_integer03=='A21W' then
        set loc_integer06=loc_integer06+1
    elseif loc_integer03=='A21V' then
        set loc_integer07=loc_integer07+1
    endif
    if loc_integer04=='A21X' then
        set loc_integer05=loc_integer05+1
    elseif loc_integer04=='A21W' then
        set loc_integer06=loc_integer06+1
    elseif loc_integer04=='A21V' then
        set loc_integer07=loc_integer07+1
    endif
    call Func3104(loc_unit01,loc_integer05,loc_integer06,loc_integer07)
    set loc_unit01=null
endfunction
