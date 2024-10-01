
// 75189 ~ 75212
function Func3606 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=Func3604()
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(7100+GetHandleId(loc_unit02))))
    local real loc_real01
    local real loc_real02
    if loc_unit02==null then
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n03Z'))
    else
        set loc_real01=GetUnitX(loc_unit02)
        set loc_real02=GetUnitY(loc_unit02)
        call KillUnit(loc_unit02)
        call Func0029(group027)
        set group027=null
        call SetUnitX(loc_unit01,loc_real01)
        call SetUnitY(loc_unit01,loc_real02)
        if Func0149(GetCameraEyePositionX(),GetCameraEyePositionY(),GetUnitX(loc_unit02),GetUnitY(loc_unit02))>1400 then
            call PanCameraToTimedForPlayer(GetOwningPlayer(loc_unit01),loc_real01,loc_real02,0)
        endif
        call IssueTargetOrder(loc_unit01,"attack",loc_unit03)
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 75214 ~ 75219
function Func3607 takes nothing returns boolean
    if GetSpellAbilityId()=='A0HA' then
        call Func3606()
    endif
    return false
endfunction

// 75221 ~ 75226
function Func3608 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3607))
    set loc_trigger01=null
endfunction
