
// 48050 ~ 48066
function Func2007 takes nothing returns boolean
    local location loc_location01
    local real loc_real01
    local real loc_real02
    if GetSpellAbilityId()=='A1BX' or GetSpellAbilityId()=='A2TX' then
        set loc_location01=GetSpellTargetLoc()
        set loc_real01=GetLocationX(loc_location01)
        set loc_real02=GetLocationY(loc_location01)
        call RemoveLocation(loc_location01)
        set loc_location01=null
        if(loc_real01!=Func1999(loc_real01)and loc_real02!=Func2000(loc_real02))or RectContainsCoords(rect165,loc_real01,loc_real02)or RectContainsCoords(rect166,loc_real01,loc_real02)or RectContainsCoords(rect167,loc_real01,loc_real02)or RectContainsCoords(rect168,loc_real01,loc_real02)or RectContainsCoords(rect169,loc_real01,loc_real02)or RectContainsCoords(rect170,loc_real01,loc_real02)then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),"Cannot cast Blackhole here")
        endif
    endif
    return false
endfunction

// 48068 ~ 48076
function Func2008 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2006))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2007))
    call Func0132('A0C0')
endfunction
