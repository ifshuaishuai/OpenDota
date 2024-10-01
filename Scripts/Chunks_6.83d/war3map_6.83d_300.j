
// 47834 ~ 47847
function Func1993 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call Func0193(loc_unit01,'A17Z')
    call SetUnitAbilityLevel(loc_unit01,'A17Z',loc_integer02)
    call IssueImmediateOrder(loc_unit01,"slimemonster")
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 47849 ~ 47866
function Func1994 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A180')
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,1)
    call Func0115(loc_unit01,loc_unit02,2,20)
    call Func0115(loc_unit01,loc_unit02,1,20)
    call Func0115(loc_unit01,loc_unit02,3,20)
    call Func0193(loc_unit03,'A17Z')
    call SetUnitAbilityLevel(loc_unit03,'A17Z',loc_integer01)
    call IssueImmediateOrder(loc_unit03,"lavamonster")
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 47868 ~ 47878
function Func1995 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitLevel(loc_unit02)
    if GetOwningPlayer(loc_unit02)!=players003[0]and GetOwningPlayer(loc_unit02)!=players004[0]and loc_integer01>4 then
        call Func0123(loc_unit01)
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n0CX'))
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 47880 ~ 47889
function Func1996 takes nothing returns boolean
    if GetSpellAbilityId()=='A180' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            call Func1994()
        else
            call Func1995()
        endif
    endif
    return false
endfunction

// 47891 ~ 47897
function Func1997 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetTriggerUnit())
    if loc_integer01=='hwat' or loc_integer01=='hwt2' or loc_integer01=='hwt3' or loc_integer01=='h006' then
        call SetUnitVertexColor(GetSummonedUnit(),0,0,50,255)
    endif
    return false
endfunction

// 47899 ~ 47906
function Func1998 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local region loc_region01=CreateRegion()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1996))
    set loc_trigger01=null
endfunction

// 47908 ~ 47918
function Func1999 takes real loc_real01 returns real
    local real loc_real02=GetRectMinX(bj_mapInitialPlayableArea)+150
    if(loc_real01<loc_real02)then
        return loc_real02
    endif
    set loc_real02=GetRectMaxX(bj_mapInitialPlayableArea)-150
    if(loc_real01>loc_real02)then
        return loc_real02
    endif
    return loc_real01
endfunction

// 47920 ~ 47930
function Func2000 takes real loc_real01 returns real
    local real loc_real02=GetRectMinY(bj_mapInitialPlayableArea)+150
    if(loc_real01<loc_real02)then
        return loc_real02
    endif
    set loc_real02=GetRectMaxY(bj_mapInitialPlayableArea)-150
    if(loc_real01>loc_real02)then
        return loc_real02
    endif
    return loc_real01
endfunction

// 47932 ~ 47935
function Func2001 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    return loc_integer01=='npn3' or loc_integer01=='npn6' or loc_integer01=='n010' or loc_integer01=='n0GZ' or loc_integer01=='npn1' or loc_integer01=='npn4' or loc_integer01=='n011' or loc_integer01=='n0H0' or loc_integer01=='npn2' or loc_integer01=='npn5' or loc_integer01=='n012' or loc_integer01=='n0H1'
endfunction

// 47937 ~ 47939
function Func2002 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func2001(GetFilterUnit())or Func0286(GetFilterUnit())or GetUnitTypeId(GetFilterUnit())=='n00U' or GetUnitTypeId(GetFilterUnit())=='n00Y' or GetUnitTypeId(GetFilterUnit())=='n00Z' or GetUnitTypeId(GetFilterUnit())=='n0KU' or GetUnitTypeId(GetFilterUnit())=='n0KV' or GetUnitTypeId(GetFilterUnit())=='n0KW' or Func0110(GetUnitTypeId(GetFilterUnit())))and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer((LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(318)))))==true
endfunction
