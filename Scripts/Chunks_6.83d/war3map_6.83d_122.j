
// 23338 ~ 23341
function Func0956 takes nothing returns nothing
    call SetUnitState(GetEnumUnit(),UNIT_STATE_MANA,GetUnitState(GetEnumUnit(),UNIT_STATE_MANA)+135)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl",GetEnumUnit(),"origin"))
endfunction

// 23343 ~ 23358
function Func0957 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),25+600,Condition(function Func0332))
    call ForGroup(loc_group01,function Func0956)
    call Func0029(loc_group01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_group01=null
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 23360 ~ 23376
function Func0958 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01
    local trigger loc_trigger01
    if GetSpellAbilityId()=='A0K7' then
        if GetUnitTypeId(loc_unit01)!='H00J' then
            set loc_trigger01=CreateTrigger()
            call TriggerRegisterTimerEvent(loc_trigger01,0,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func0957))
            call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
            set loc_trigger01=null
        elseif GetUnitTypeId(loc_unit01)=='H00J' then
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+25)
        endif
    endif
    set loc_unit01=null
endfunction

// 23378 ~ 23439
function Func0959 takes nothing returns boolean
    if GetUnitTypeId(GetTriggerUnit())=='e00E' then
        return false
    endif
    call Func0761()
    call Func0772()
    call Func0776()
    call Func0786()
    call Func0804()
    call Func0809()
    call Func0812()
    call Func0817()
    call Func0820()
    call Func0810()
    call Func0828()
    call Func0832()
    call Func0838()
    call Func0844()
    call Func0840()
    call Func0851()
    call Func0846()
    call Func0705()
    call Func0703()
    call Func0857()
    call Func0858()
    call Func0861()
    call Func0864()
    call Func0875()
    call Func0881()
    call Func0781()
    call Func0827()
    call Func0883()
    call Func0888()
    call Func0878()
    call Func0872()
    call Func0958()
    call Func0955()
    call Func0952()
    call Func0950()
    call Func0946()
    call Func0892()
    call Func0900()
    call Func0904()
    call Func0908()
    call Func0944()
    call Func0943()
    call Func0913()
    call Func0941()
    call Func0938()
    call Func0934()
    call Func0918()
    call Func0922()
    call Func0931()
    call Func0926()
    call Func0925()
    call Func0824()
    call Func0929()
    if GetSpellAbilityId()=='A2K7' and Func0028(GetSpellTargetUnit())==false then
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\LevelerStunFX.mdx",GetSpellTargetUnit(),"head"))
    endif
    return false
endfunction
