
// 85374 ~ 85439
function Func4098 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(652)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(190)))
    local fogmodifier loc_fogmodifier01=(LoadFogModifierHandle(hashtable001,(loc_integer01),(42)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4294)),(2))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FogModifierStop(loc_fogmodifier01)
        call DestroyFogModifier(loc_fogmodifier01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0180(loc_real01,loc_real02,250)
        call Func0180(loc_real03,loc_real04,250)
        if GetTriggerEvalCount(loc_trigger01)==1 then
            if Func0194(loc_unit01)==false then
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
                call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
                call PanCameraToTimedForPlayer(GetOwningPlayer(loc_unit01),loc_real01,loc_real02,0)
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
            endif
            if loc_unit02!=null and Func0194(loc_unit02)==false and GetOwningPlayer(loc_unit02)!=players003[0]and GetOwningPlayer(loc_unit02)!=players004[0]and((LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer((loc_unit02)))),(139)))==false)then
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
                call Func0044(loc_unit02,4402,1)
                call SetUnitPosition(loc_unit02,loc_real01,loc_real02)
                if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and Func0194(loc_unit02)==false then
                    call PanCameraToTimedForPlayer(GetOwningPlayer(loc_unit02),loc_real01,loc_real02,0)
                endif
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
            endif
        else
            if Func0194(loc_unit01)==false then
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
                call SetUnitPosition(loc_unit01,loc_real03,loc_real04)
                call PanCameraToTimedForPlayer(GetOwningPlayer(loc_unit01),loc_real03,loc_real04,0)
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
            endif
            if loc_unit02!=null and Func0194(loc_unit02)==false and GetOwningPlayer(loc_unit02)!=players003[0]and GetOwningPlayer(loc_unit02)!=players004[0]and((LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer((loc_unit02)))),(139)))==false)then
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
                call Func0044(loc_unit02,4402,1)
                call SetUnitPosition(loc_unit02,loc_real03,loc_real04)
                if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and Func0194(loc_unit02)==false then
                    call PanCameraToTimedForPlayer(GetOwningPlayer(loc_unit02),loc_real03,loc_real04,0)
                endif
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
            endif
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4294)),(2))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FogModifierStop(loc_fogmodifier01)
            call DestroyFogModifier(loc_fogmodifier01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_fogmodifier01=null
    return false
endfunction

// 85441 ~ 85483
function Func4099 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local fogmodifier loc_fogmodifier01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1TB')
    if Func0270(loc_unit01)or Func0268(loc_unit01)or Func0194(loc_unit01)then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4294)),(2))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)==(2.75-0.25*loc_integer02)/.05 then
        set loc_fogmodifier01=CreateFogModifierRadius(GetOwningPlayer(loc_unit01),FOG_OF_WAR_VISIBLE,GetUnitX(loc_unit01),GetUnitY(loc_unit01),400,true,true)
        call FogModifierStart(loc_fogmodifier01)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
        call TriggerRegisterTimerEvent(loc_trigger01,12,false)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4098))
        call SaveReal(hashtable001,(loc_integer01),(189),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(190),((GetUnitY(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(47),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(48),((loc_real02)*1.0))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect("war3mapImported\\EarthlyEminence.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01))))
        call SaveFogModifierHandle(hashtable001,(loc_integer01),(42),(loc_fogmodifier01))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4097))
    endif
    set loc_unit01=null
    set loc_trigger01=null
    set loc_fogmodifier01=null
    return false
endfunction

// 85485 ~ 85509
function Func4100 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(652)))
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1TB')
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",loc_unit01,"chest"))
    if loc_unit02!=null then
    endif
    call PingMinimapEx(loc_real01,loc_real02,4.0,255,0,0,false)
    call Func0186(players003[1],2.5,loc_real01,loc_real02,300)
    call Func0186(players004[1],2.5,loc_real01,loc_real02,300)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4099))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real02)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffect("war3mapImported\\EarthlyEminence.mdl",loc_real01,loc_real02)))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4294)),(1))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 85511 ~ 85535
function Func4101 takes nothing returns boolean
    if GetSpellAbilityId()=='A1TB' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            call Func4100()
        else
            if Func4095(GetTriggerUnit(),GetSpellTargetX(),GetSpellTargetY())==false then
                call Func0123(GetTriggerUnit())
                call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0KX'))
            else
                if Func0056(GetOwningPlayer(GetTriggerUnit()))then
                    if IsPointInRegion(region011,GetSpellTargetX(),GetSpellTargetY())==true then
                        call Func0123(GetTriggerUnit())
                        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n03Y'))
                    endif
                else
                    if IsPointInRegion(region010,GetSpellTargetX(),GetSpellTargetY())==true then
                        call Func0123(GetTriggerUnit())
                        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n03Y'))
                    endif
                endif
            endif
        endif
    endif
    return false
endfunction

// 85537 ~ 85549
function Func4102 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4101))
    set region010=CreateRegion()
    call RegionAddRect(region010,rect017)
    call RegionAddRect(region010,rect044)
    set region011=CreateRegion()
    call RegionAddRect(region011,rect016)
    call RegionAddRect(region011,rect045)
    set loc_trigger01=null
endfunction
