
// 69459 ~ 69470
function Func3272 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call UnitRemoveAbility(loc_unit01,'A1Q6')
    call UnitRemoveAbility(loc_unit01,'B0CX')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 69472 ~ 69486
function Func3273 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SetUnitPathing(loc_unit02,true)
    call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3272))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call Func0193(loc_unit02,'A1Q6')
    call UnitMakeAbilityPermanent(loc_unit02,true,'A1Q6')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1Q6',false)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodKnight.mdl",loc_unit02,"chest"))
    call Func0115(loc_unit01,loc_unit02,1,70*loc_integer01)
    set loc_trigger01=null
endfunction

// 69488 ~ 69723
function Func3274 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(394)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(395)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(396)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(397)))
    local unit loc_unit07=(LoadUnitHandle(hashtable001,(loc_integer01),(398)))
    local unit loc_unit08=(LoadUnitHandle(hashtable001,(loc_integer01),(399)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real06=Func0127(loc_real04+19*Cos(loc_real03))
    local real loc_real07=Func0130(loc_real05+19*Sin(loc_real03))
    local group loc_group01
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(12)))
    local location loc_location01
    call SetUnitPosition(loc_unit01,loc_real06,loc_real07)
    call SetUnitFacing(loc_unit01,loc_real03*bj_RADTODEG)
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real07)*1.0))
    if ModuloInteger(GetTriggerEvalCount(loc_trigger01),4)==0 then
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",loc_real06,loc_real07))
    endif
    if GetTriggerEvalCount(loc_trigger01)==2 then
        call SetUnitAnimationByIndex(loc_unit01,3)
    endif
    if loc_unit02==null or loc_unit03==null or loc_unit04==null or loc_unit05==null or loc_unit06==null or loc_unit07==null or loc_unit08==null then
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real06,loc_real07,125+25,Condition(function Func0344))
        if FirstOfGroup(loc_group01)!=null then
            if loc_unit02!=null then
                call GroupRemoveUnit(loc_group01,loc_unit02)
            endif
            if loc_unit03!=null then
                call GroupRemoveUnit(loc_group01,loc_unit03)
            endif
            if loc_unit04!=null then
                call GroupRemoveUnit(loc_group01,loc_unit04)
            endif
            if loc_unit05!=null then
                call GroupRemoveUnit(loc_group01,loc_unit05)
            endif
            if loc_unit06!=null then
                call GroupRemoveUnit(loc_group01,loc_unit06)
            endif
            if loc_unit07!=null then
                call GroupRemoveUnit(loc_group01,loc_unit07)
            endif
            if loc_unit08!=null then
                call GroupRemoveUnit(loc_group01,loc_unit08)
            endif
            if FirstOfGroup(loc_group01)!=null then
                if loc_unit02==null then
                    set loc_unit02=FirstOfGroup(loc_group01)
                    call SetUnitPathing(loc_unit02,false)
                    call Func0044(loc_unit02,4404,5)
                elseif loc_unit03==null then
                    set loc_unit03=FirstOfGroup(loc_group01)
                    call SetUnitPathing(loc_unit03,false)
                    call Func0044(loc_unit03,4404,5)
                elseif loc_unit04==null then
                    set loc_unit04=FirstOfGroup(loc_group01)
                    call SetUnitPathing(loc_unit04,false)
                    call Func0044(loc_unit04,4404,5)
                elseif loc_unit05==null then
                    set loc_unit05=FirstOfGroup(loc_group01)
                    call SetUnitPathing(loc_unit05,false)
                    call Func0044(loc_unit05,4404,5)
                elseif loc_unit06==null then
                    set loc_unit06=FirstOfGroup(loc_group01)
                    call SetUnitPathing(loc_unit06,false)
                    call Func0044(loc_unit06,4404,5)
                elseif loc_unit07==null then
                    set loc_unit07=FirstOfGroup(loc_group01)
                    call SetUnitPathing(loc_unit07,false)
                    call Func0044(loc_unit07,4404,5)
                elseif loc_unit08==null then
                    set loc_unit08=FirstOfGroup(loc_group01)
                    call SetUnitPathing(loc_unit08,false)
                    call Func0044(loc_unit08,4404,5)
                endif
            endif
        endif
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(393),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(394),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(395),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(396),(loc_unit05))
    call SaveUnitHandle(hashtable001,(loc_integer01),(397),(loc_unit06))
    call SaveUnitHandle(hashtable001,(loc_integer01),(398),(loc_unit07))
    call SaveUnitHandle(hashtable001,(loc_integer01),(399),(loc_unit08))
    if loc_unit02!=null then
        call SetUnitPosition(loc_unit02,loc_real06,loc_real07)
    endif
    if loc_unit03!=null then
        call SetUnitPosition(loc_unit03,loc_real06,loc_real07)
    endif
    if loc_unit04!=null then
        call SetUnitPosition(loc_unit04,loc_real06,loc_real07)
    endif
    if loc_unit05!=null then
        call SetUnitPosition(loc_unit05,loc_real06,loc_real07)
    endif
    if loc_unit06!=null then
        call SetUnitPosition(loc_unit06,loc_real06,loc_real07)
    endif
    if loc_unit07!=null then
        call SetUnitPosition(loc_unit07,loc_real06,loc_real07)
    endif
    if loc_unit08!=null then
        call SetUnitPosition(loc_unit08,loc_real06,loc_real07)
    endif
    if ModuloInteger(GetTriggerEvalCount(loc_trigger01),3)==0 then
        call Func0180(loc_real06,loc_real07,200)
    endif
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>loc_integer03 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call SetUnitAnimationByIndex(loc_unit01,0)
        call SetUnitTimeScale(loc_unit01,1.0)
        call SetUnitPathing(loc_unit01,true)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if loc_unit02!=null then
            if IsPointInRegion(region006,GetUnitX(loc_unit02),GetUnitY(loc_unit02))==true then
                set loc_location01=Func0279(GetUnitX(loc_unit02),GetUnitY(loc_unit02))
                call SetUnitX(loc_unit02,Func0127(GetLocationX(loc_location01)))
                call SetUnitY(loc_unit02,Func0130(GetLocationY(loc_location01)))
                call RemoveLocation(loc_location01)
                set loc_location01=null
            endif
            call Func3273(loc_unit01,loc_unit02,loc_integer02)
            call Func0180(GetUnitX(loc_unit02),GetUnitY(loc_unit02),300)
        endif
        if loc_unit03!=null then
            if IsPointInRegion(region006,GetUnitX(loc_unit03),GetUnitY(loc_unit03))==true then
                set loc_location01=Func0279(GetUnitX(loc_unit03),GetUnitY(loc_unit03))
                call SetUnitX(loc_unit03,Func0127(GetLocationX(loc_location01)))
                call SetUnitY(loc_unit03,Func0130(GetLocationY(loc_location01)))
                call RemoveLocation(loc_location01)
                set loc_location01=null
            endif
            call Func3273(loc_unit01,loc_unit03,loc_integer02)
            call Func0180(GetUnitX(loc_unit03),GetUnitY(loc_unit03),300)
        endif
        if loc_unit04!=null then
            if IsPointInRegion(region006,GetUnitX(loc_unit04),GetUnitY(loc_unit04))==true then
                set loc_location01=Func0279(GetUnitX(loc_unit04),GetUnitY(loc_unit04))
                call SetUnitX(loc_unit04,Func0127(GetLocationX(loc_location01)))
                call SetUnitY(loc_unit04,Func0130(GetLocationY(loc_location01)))
                call RemoveLocation(loc_location01)
                set loc_location01=null
            endif
            call Func3273(loc_unit01,loc_unit04,loc_integer02)
            call Func0180(GetUnitX(loc_unit04),GetUnitY(loc_unit04),300)
        endif
        if loc_unit05!=null then
            if IsPointInRegion(region006,GetUnitX(loc_unit05),GetUnitY(loc_unit05))==true then
                set loc_location01=Func0279(GetUnitX(loc_unit05),GetUnitY(loc_unit05))
                call SetUnitX(loc_unit05,Func0127(GetLocationX(loc_location01)))
                call SetUnitY(loc_unit05,Func0130(GetLocationY(loc_location01)))
                call RemoveLocation(loc_location01)
                set loc_location01=null
            endif
            call Func3273(loc_unit01,loc_unit05,loc_integer02)
            call Func0180(GetUnitX(loc_unit05),GetUnitY(loc_unit05),300)
        endif
        if loc_unit06!=null then
            if IsPointInRegion(region006,GetUnitX(loc_unit06),GetUnitY(loc_unit06))==true then
                set loc_location01=Func0279(GetUnitX(loc_unit06),GetUnitY(loc_unit06))
                call SetUnitX(loc_unit06,Func0127(GetLocationX(loc_location01)))
                call SetUnitY(loc_unit06,Func0130(GetLocationY(loc_location01)))
                call RemoveLocation(loc_location01)
                set loc_location01=null
            endif
            call Func3273(loc_unit01,loc_unit06,loc_integer02)
            call Func0180(GetUnitX(loc_unit06),GetUnitY(loc_unit06),300)
        endif
        if loc_unit07!=null then
            if IsPointInRegion(region006,GetUnitX(loc_unit07),GetUnitY(loc_unit07))==true then
                set loc_location01=Func0279(GetUnitX(loc_unit07),GetUnitY(loc_unit07))
                call SetUnitX(loc_unit07,Func0127(GetLocationX(loc_location01)))
                call SetUnitY(loc_unit07,Func0130(GetLocationY(loc_location01)))
                call RemoveLocation(loc_location01)
                set loc_location01=null
            endif
            call Func3273(loc_unit01,loc_unit07,loc_integer02)
            call Func0180(GetUnitX(loc_unit07),GetUnitY(loc_unit07),300)
        endif
        if loc_unit08!=null then
            if IsPointInRegion(region006,GetUnitX(loc_unit08),GetUnitY(loc_unit08))==true then
                set loc_location01=Func0279(GetUnitX(loc_unit08),GetUnitY(loc_unit08))
                call SetUnitX(loc_unit08,Func0127(GetLocationX(loc_location01)))
                call SetUnitY(loc_unit08,Func0130(GetLocationY(loc_location01)))
                call RemoveLocation(loc_location01)
                set loc_location01=null
            endif
            call Func3273(loc_unit01,loc_unit08,loc_integer02)
            call Func0180(GetUnitX(loc_unit08),GetUnitY(loc_unit08),300)
        endif
        if loc_unit02!=null and Func0194(loc_unit02)==false then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
        elseif loc_unit03!=null and Func0194(loc_unit03)==false then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit03)
        elseif loc_unit04!=null and Func0194(loc_unit04)==false then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit04)
        elseif loc_unit05!=null and Func0194(loc_unit05)==false then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit05)
        elseif loc_unit06!=null and Func0194(loc_unit06)==false then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit06)
        elseif loc_unit07!=null and Func0194(loc_unit07)==false then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit07)
        elseif loc_unit08!=null and Func0194(loc_unit08)==false then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit08)
        endif
        call Func0180(loc_real06,loc_real07,375)
        if IsPointInRegion(region006,GetUnitX(loc_unit01),GetUnitY(loc_unit01))==true then
            set loc_location01=Func0279(GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call SetUnitX(loc_unit01,Func0127(GetLocationX(loc_location01)))
            call SetUnitY(loc_unit01,Func0130(GetLocationY(loc_location01)))
            call RemoveLocation(loc_location01)
            set loc_location01=null
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 69725 ~ 69764
function Func3275 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=Func0127(GetSpellTargetX())
    local real loc_real02=Func0130(GetSpellTargetY())
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real03=GetUnitX(loc_unit01)
    local real loc_real04=GetUnitY(loc_unit01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1RD')
    local real loc_real05=Func0169(loc_real03,loc_real04,loc_real01,loc_real02)*bj_DEGTORAD
    local real loc_real06=600+150*loc_integer02+25
    if Func0149(loc_real03,loc_real04,loc_real01,loc_real02)>loc_real06 then
        set loc_real01=Func0127(loc_real03+loc_real06*Cos(loc_real05))
        set loc_real02=Func0130(loc_real04+loc_real06*Sin(loc_real05))
    endif
    call SetUnitPathing(loc_unit01,false)
    call SetUnitAnimationByIndex(loc_unit01,3)
    call SetUnitTimeScale(loc_unit01,1.5)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3274))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(393),(null))
    call SaveUnitHandle(hashtable001,(loc_integer01),(394),(null))
    call SaveUnitHandle(hashtable001,(loc_integer01),(395),(null))
    call SaveUnitHandle(hashtable001,(loc_integer01),(396),(null))
    call SaveUnitHandle(hashtable001,(loc_integer01),(397),(null))
    call SaveUnitHandle(hashtable001,(loc_integer01),(398),(null))
    call SaveUnitHandle(hashtable001,(loc_integer01),(399),(null))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((Atan2(loc_real02-loc_real04,loc_real01-loc_real03))*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(12),(R2I(Func0149(loc_real03,loc_real04,loc_real01,loc_real02)/19.0)))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("war3mapImported\\SkewerTuskGlow_1.mdx",loc_unit01,"head")))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 69766 ~ 69771
function Func3276 takes nothing returns boolean
    if GetSpellAbilityId()=='A1RD' then
        call Func3275()
    endif
    return false
endfunction
