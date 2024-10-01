
// 89752 ~ 89756
function Func4312 takes nothing returns nothing
    set boolean156=true
    call Func0115(unit409,GetEnumUnit(),1,((200+400*integer550)/integer549)/22)
    set boolean156=false
endfunction

// 89758 ~ 89786
function Func4313 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01
    if GetTriggerEvalCount(loc_trigger01)>22 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,170+25,Condition(function Func0342))
        set integer550=GetUnitAbilityLevel(loc_unit01,'A2BG')
        if integer550==0 then
            set integer550=GetUnitAbilityLevel(loc_unit01,'A2TU')
        endif
        set unit409=loc_unit01
        set integer549=CountUnitsInGroup(loc_group01)
        call ForGroup(loc_group01,function Func4312)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 89788 ~ 89806
function Func4314 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local string loc_string01="war3mapImported\\DivineWrathTarget.mdx"
    local location loc_location01=GetSpellTargetLoc()
    call PlaySoundAtPointBJ(sound081,100,loc_location01,0)
    call RemoveLocation(loc_location01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4313))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    call DestroyEffect(AddSpecialEffect(loc_string01,loc_real01,loc_real02))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 89808 ~ 89813
function Func4315 takes nothing returns boolean
    if GetSpellAbilityId()=='A2BG' or GetSpellAbilityId()=='A2TU' then
        call Func4314()
    endif
    return false
endfunction

// 89815 ~ 89823
function Func4316 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4315))
    set loc_trigger01=null
    set sound081=CreateSound("Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget2.wav",false,true,true,10,10,"SpellsEAX")
    call SetSoundParamsFromLabel(sound081,"StarfallTarget")
    call SetSoundDuration(sound081,3000)
endfunction
