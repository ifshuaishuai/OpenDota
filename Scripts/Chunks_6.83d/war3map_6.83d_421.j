
// 55548 ~ 55569
function Func2478 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetOwningPlayer(GetTriggerUnit()))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(334)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(333)))
    local integer loc_integer02
    local integer loc_integer03
    if loc_unit01==null then
        if Func0056(GetOwningPlayer(loc_unit02))then
            set loc_integer02=-6390
            set loc_integer03=-5615
        else
            set loc_integer02=5875
            set loc_integer03=5000
        endif
        set loc_unit01=CreateUnit(GetOwningPlayer(GetTriggerUnit()),'e01F',loc_integer02,loc_integer03,0)
        call SaveUnitHandle(hashtable001,(loc_integer01),(334),(loc_unit01))
    endif
    if Func0404(GetEnumItem())==false then
        call UnitAddItem(loc_unit01,GetEnumItem())
    endif
    call ShowUnit(loc_unit01,true)
endfunction

// 55571 ~ 55581
function Func2479 takes nothing returns nothing
    local integer loc_integer01=Func0380(GetEnumItem())
    if GetWidgetLife(GetEnumItem())>0 and loc_integer01!=integer198 then
        if boolean003==true then
            call Func2477()
        else
            call Func2478()
        endif
    else
    endif
endfunction

// 55583 ~ 55592
function Func2480 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    local rect loc_rect01=RectFromCenterSizeBJ(loc_location01,400.00,400.00)
    local unit loc_unit01=units001[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]
    call SetHeroXP(loc_unit01,(GetHeroXP(loc_unit01)-(GetHeroXP(loc_unit01)/(125-(25*GetUnitAbilityLevel(loc_unit01,'A0A5'))))),false)
    call Func0115(GetKillingUnit(),loc_unit01,3,0.1*GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))
    call EnumItemsInRectBJ(loc_rect01,function Func2479)
    call RemoveLocation(loc_location01)
    call RemoveRect(loc_rect01)
endfunction

// 55594 ~ 55599
function Func2481 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2476))
    call TriggerAddAction(loc_trigger01,function Func2480)
endfunction
