
// 63643 ~ 63670
function Func2950 takes boolean loc_boolean01 returns boolean
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(259)))
    local unit loc_unit02=GetTriggerUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e01S',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local unit loc_unit04=units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit04,'A0QK')
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit04,'A21Q')
    endif
    call SetUnitAbilityLevel(loc_unit01,'A0QL',loc_integer02)
    set real338=GetUnitX(loc_unit02)
    set real339=GetUnitY(loc_unit02)
    set unit333=loc_unit02
    if loc_boolean01 then
        call SetUnitAbilityLevel(loc_unit01,'A0QL',3+loc_integer02)
        call IssueTargetOrderById(loc_unit01,852274,loc_unit02)
        call Func0115(loc_unit01,loc_unit02,1,150)
    else
        call IssueTargetOrderById(loc_unit01,852274,loc_unit02)
        call Func0115(loc_unit01,loc_unit02,1,150)
    endif
    call UnitApplyTimedLife(loc_unit03,'BTLF',0.5)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageCaster.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 63672 ~ 63683
function Func2951 takes nothing returns boolean
    local group loc_group01
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer((LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(259)))))and Func0468(GetUnitTypeId(GetFilterUnit()))==false then
        set loc_group01=(LoadGroupHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(257)))
        if IsUnitInGroup(GetFilterUnit(),loc_group01)==false then
            call GroupAddUnit(loc_group01,GetFilterUnit())
            call Func2950(false)
        endif
    endif
    set loc_group01=null
    return false
endfunction

// 63685 ~ 63696
function Func2952 takes nothing returns boolean
    local group loc_group01
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer((LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(259)))))and Func0468(GetUnitTypeId(GetFilterUnit()))==false then
        set loc_group01=(LoadGroupHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(257)))
        if IsUnitInGroup(GetFilterUnit(),loc_group01)==false then
            call GroupAddUnit(loc_group01,GetFilterUnit())
            call Func2950(true)
        endif
    endif
    set loc_group01=null
    return false
endfunction
