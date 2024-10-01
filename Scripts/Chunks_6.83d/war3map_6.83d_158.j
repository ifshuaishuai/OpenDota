
// 32023 ~ 32025
function Func1297 takes nothing returns boolean
    return GetSpellAbilityId()=='A0FI'
endfunction

// 32027 ~ 32035
function Func1298 takes integer loc_integer01,unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer02=1
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,loc_integer01)
    loop
        exitwhen loc_integer02>loc_integer03
        call SelectHeroSkill(loc_unit02,loc_integer01)
        set loc_integer02=loc_integer02+1
    endloop
endfunction

// 32037 ~ 32091
function Func1299 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local unit loc_unit01
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    set loc_unit01=CreateUnitAtLoc(GetOwningPlayer(GetTriggerUnit()),GetUnitTypeId(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
    call SetHeroXP(loc_unit01,GetHeroXP(GetTriggerUnit()),false)
    set loc_integer01=1
    set loc_integer02=GetUnitAbilityLevel(GetTriggerUnit(),'Aamk')
    loop
        exitwhen loc_integer01>loc_integer02
        call SelectHeroSkill(bj_lastCreatedUnit,'Aamk')
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=0
    set loc_integer02=5
    loop
        exitwhen loc_integer01>loc_integer02
        call UnitAddItem(loc_unit01,UnitItemInSlot(GetTriggerUnit(),loc_integer01))
        set loc_integer01=loc_integer01+1
    endloop
    if(GetUnitTypeId(GetTriggerUnit())=='Eevi')then
        call Func1298('A04L',GetTriggerUnit(),loc_unit01)
        call Func1298('A0H4',GetTriggerUnit(),loc_unit01)
        call Func1298('AEvi',GetTriggerUnit(),loc_unit01)
        call Func1298('A07Q',GetTriggerUnit(),loc_unit01)
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='U008')then
        call Func1298('A03D',GetTriggerUnit(),loc_unit01)
        call Func1298('A02G',GetTriggerUnit(),loc_unit01)
        call Func1298('A03E',GetTriggerUnit(),loc_unit01)
        call Func1298('A093',GetTriggerUnit(),loc_unit01)
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='U007')then
        call Func1298('A0F9',GetTriggerUnit(),loc_unit01)
        call Func1298('A06Y',GetTriggerUnit(),loc_unit01)
        call Func1298('A01E',GetTriggerUnit(),loc_unit01)
        call Func1298('A028',GetTriggerUnit(),loc_unit01)
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='Hlgr')then
        call Func1298('A03G',GetTriggerUnit(),loc_unit01)
        call Func1298('A03F',GetTriggerUnit(),loc_unit01)
        call Func1298('A0O3',GetTriggerUnit(),loc_unit01)
        call Func1298('AEim',GetTriggerUnit(),loc_unit01)
    endif
    if(GetUnitTypeId(GetTriggerUnit())=='Ekee')then
        call Func1298('A035',GetTriggerUnit(),loc_unit01)
        call Func1298('A06W',GetTriggerUnit(),loc_unit01)
        call Func1298('A06V',GetTriggerUnit(),loc_unit01)
        call Func1298('A06X',GetTriggerUnit(),loc_unit01)
    endif
    call Func0136(GetTriggerUnit())
    call RemoveLocation(loc_location01)
    set units001[GetPlayerId(GetOwningPlayer(loc_unit01))]=loc_unit01
endfunction

// 32093 ~ 32096
function Func1300 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(units001[GetPlayerId(GetTriggerPlayer())])
    return(loc_integer01=='U008' or loc_integer01=='U007' or loc_integer01=='Hlgr' or loc_integer01=='Eevi' or loc_integer01=='Ekee')and(RectContainsUnit(rect044,units001[GetPlayerId(GetTriggerPlayer())])or RectContainsUnit(rect045,units001[GetPlayerId(GetTriggerPlayer())]))
endfunction

// 32098 ~ 32103
function Func1301 takes nothing returns nothing
    local unit loc_unit01=units001[GetPlayerId(GetTriggerPlayer())]
    call UnitAddAbility(loc_unit01,'A0FI')
    call IssueImmediateOrder(loc_unit01,"chemicalrage")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,120.00,"|c00ff0303"+GetObjectName('n08I')+" "+Func0040(GetEnumUnit())+". "+GetObjectName('n08J')+"|r")
endfunction

// 32105 ~ 32109
function Func1302 takes nothing returns nothing
    if Func1300()then
        call Func1301()
    endif
endfunction
