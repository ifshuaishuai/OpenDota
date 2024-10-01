
// 29579 ~ 29581
function Func1186 takes nothing returns boolean
    return GetUnitTypeId(GetTriggerUnit())=='u00S' or GetUnitTypeId(GetTriggerUnit())=='o01V' or((LoadInteger(hashtable001,(GetHandleId((GetAttacker()))),((4328))))==1)==true
endfunction

// 29583 ~ 29587
function Func1187 takes nothing returns nothing
    if not((Func1182(10)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==true and GetUnitTypeId(GetTriggerUnit())!='etol' and GetUnitTypeId(GetTriggerUnit())!='unpl')or(Func1182(25)and(GetUnitAbilityLevel(GetTriggerUnit(),'BNdo')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'BEsh')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B001')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B0AQ')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B0AP')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B05D')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B05M')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B05N')>0 or GetUnitAbilityLevel(GetTriggerUnit(),'B05O')>0))or(Func1182(50)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==false and(IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false or GetUnitTypeId(GetTriggerUnit())=='ebal' or GetUnitTypeId(GetTriggerUnit())=='e026' or GetUnitTypeId(GetTriggerUnit())=='umtw' or GetUnitTypeId(GetTriggerUnit())=='u00R'))or(GetUnitTypeId(GetTriggerUnit())=='u00S' or GetUnitTypeId(GetTriggerUnit())=='o01V' or((LoadInteger(hashtable001,(GetHandleId((GetAttacker()))),((4328))))==1)==true))then
        call IssueImmediateOrder(GetAttacker(),"stop")
    endif
endfunction

// 29589 ~ 29616
function Func1188 takes nothing returns boolean
    if IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
        call Func1187()
    elseif IsUnitType(GetAttacker(),UNIT_TYPE_HERO)==true or Func0262(GetAttacker())or IsUnitIllusion(GetAttacker())==true then
        set integer428=GetPlayerId(GetOwningPlayer(GetAttacker()))
        if IsUnitIllusion(GetAttacker())==false then
            if integers102[integer428]>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitTypeId(GetTriggerUnit())!='n00L' and IsUnitIllusion(GetAttacker())==false and Func0379(GetAttacker(),integers089[integer113])==true then
                call Func0720()
            endif
            if integers105[integer428]>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitIllusion(GetAttacker())==false and(Func0379(GetAttacker(),integers089[integer173])==true or Func0379(GetAttacker(),integers089[integer258])==true)then
                call Func0732()
            endif
            if integers107[integer428]>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitIllusion(GetAttacker())==false and Func0379(GetAttacker(),integers089[integer187])==true then
                call Func0724()
            elseif(integers108[integer428]>0 or integers109[integer428]>0)and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitIllusion(GetAttacker())==false and(Func0379(GetAttacker(),integers089[integer172])==true or Func0379(GetAttacker(),integers089[integer257])==true)then
                call Func0731()
            endif
        endif
        if integers110[integer428]>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and(Func0379(GetAttacker(),integers089[integer177])==true or Func0379(GetAttacker(),integers089[integer178])==true or Func0379(GetAttacker(),integers089[integer179])==true or Func0379(GetAttacker(),integers089[integer180])==true)then
            if IsUnitIllusion(GetAttacker())==false or IsUnitType(GetAttacker(),UNIT_TYPE_MELEE_ATTACKER)==true then
                call Func0727()
            endif
        endif
    elseif GetUnitAbilityLevel(GetAttacker(),'A17S')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
        call Func1155()
    endif
    return false
endfunction

// 29618 ~ 29623
function Func1189 takes nothing returns boolean
    if Func0272(GetSpellAbilityId())and Func0273(GetTriggerUnit())then
        call Func0123(GetTriggerUnit())
    endif
    return false
endfunction

// 29625 ~ 29628
function Func1190 takes nothing returns nothing
    call Func0604()
    call Func0606()
endfunction
