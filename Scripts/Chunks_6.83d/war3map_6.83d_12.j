
// 4521 ~ 4523
function Func0178 takes real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns real
    return SquareRoot(((loc_real01-loc_real03)*(loc_real01-loc_real03))+((loc_real02-loc_real04)*(loc_real02-loc_real04)))
endfunction

// 4525 ~ 4530
function Func0179 takes nothing returns nothing
    if Func0097(GetEnumDestructable())and IsDestructableAliveBJ(GetEnumDestructable())then
        set integer021=integer021+1
        call KillDestructable(GetEnumDestructable())
    endif
endfunction

// 4532 ~ 4539
function Func0180 takes real loc_real01,real loc_real02,real loc_real03 returns integer
    local rect loc_rect01=Rect(loc_real01-loc_real03,loc_real02-loc_real03,loc_real01+loc_real03,loc_real02+loc_real03)
    set integer021=0
    call EnumDestructablesInRect(loc_rect01,Condition(function Func0011),function Func0179)
    call RemoveRect(loc_rect01)
    set loc_rect01=null
    return integer021
endfunction

// 4541 ~ 4546
function Func0181 takes real loc_real01,real loc_real02 returns boolean
    if IsTerrainPathable(loc_real01,loc_real02,PATHING_TYPE_WALKABILITY)then
        return false
    endif
    return true
endfunction

// 4548 ~ 4553
function Func0182 takes unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitAddAbility(loc_unit03,'A0R9')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    set loc_unit03=null
endfunction

// 4555 ~ 4564
function Func0183 takes player loc_player01,sound loc_sound01,real loc_real01,real loc_real02 returns nothing
    call SetSoundPosition(loc_sound01,loc_real01,loc_real02,0)
    call SetSoundVolume(loc_sound01,127)
    set bj_lastPlayedSound=loc_sound01
    if(loc_sound01!=null)then
        if(GetLocalPlayer()==loc_player01)then
            call StartSound(loc_sound01)
        endif
    endif
endfunction

// 4566 ~ 4573
function Func0184 takes sound loc_sound01,real loc_real01,real loc_real02 returns nothing
    call SetSoundPosition(loc_sound01,loc_real01,loc_real02,0)
    call SetSoundVolume(loc_sound01,127)
    set bj_lastPlayedSound=loc_sound01
    if(loc_sound01!=null)then
        call StartSound(loc_sound01)
    endif
endfunction

// 4575 ~ 4586
function Func0185 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local fogmodifier loc_fogmodifier01=(LoadFogModifierHandle(hashtable001,(loc_integer01),(42)))
    call FogModifierStop(loc_fogmodifier01)
    call DestroyFogModifier(loc_fogmodifier01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_fogmodifier01=null
    return false
endfunction

// 4588 ~ 4597
function Func0186 takes player loc_player01,real loc_real01,real loc_real02,real loc_real03,real loc_real04 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local fogmodifier loc_fogmodifier01=CreateFogModifierRadius(loc_player01,FOG_OF_WAR_VISIBLE,loc_real02,loc_real03,loc_real04,true,true)
    call FogModifierStart(loc_fogmodifier01)
    call SaveFogModifierHandle(hashtable001,(GetHandleId(loc_trigger01)),(42),(loc_fogmodifier01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0185))
    set loc_fogmodifier01=null
    set loc_trigger01=null
endfunction

// 4599 ~ 4601
function Func0187 takes nothing returns nothing
    set bj_groupCountUnits=bj_groupCountUnits+1
endfunction

// 4603 ~ 4607
function Func0188 takes nothing returns nothing
    if(Func0097(GetEnumDestructable())or GetDestructableTypeId(GetEnumDestructable())=='B005')and GetDestructableLife(GetEnumDestructable())>0 then
        set boolean045=true
    endif
endfunction

// 4609 ~ 4616
function Func0189 takes real loc_real01,real loc_real02,real loc_real03 returns boolean
    local rect loc_rect01=Rect(loc_real01-loc_real03,loc_real02-loc_real03,loc_real01+loc_real03,loc_real02+loc_real03)
    set boolean045=false
    call EnumDestructablesInRect(loc_rect01,Condition(function Func0011),function Func0188)
    call RemoveRect(loc_rect01)
    set loc_rect01=null
    return boolean045
endfunction
