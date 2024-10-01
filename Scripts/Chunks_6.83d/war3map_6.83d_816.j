
// 85328 ~ 85342
function Func4095 takes unit loc_unit01,real loc_real01,real loc_real02 returns boolean
    local boolean loc_boolean01=false
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local unit loc_unit02=CreateUnit(loc_player01,'e02Q',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,'A1V4')
    if IssuePointOrder(loc_unit02,"blink",loc_real01,loc_real02)==true then
        call KillUnit(loc_unit02)
        set loc_unit02=null
        return true
    else
        call KillUnit(loc_unit02)
        set loc_unit02=null
        return false
    endif
endfunction

// 85344 ~ 85355
function Func4096 takes string loc_string01,unit loc_unit01 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetTextTagText(loc_texttag01,loc_string01,0.033)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,64)
    call SetTextTagColor(loc_texttag01,0,50,255,255)
    call SetTextTagVelocity(loc_texttag01,0,0.0355)
    call SetTextTagFadepoint(loc_texttag01,0.15)
    call SetTextTagPermanent(loc_texttag01,false)
    call SetTextTagLifespan(loc_texttag01,0.85)
    call SetTextTagVisibility(loc_texttag01,true)
    set loc_texttag01=null
endfunction

// 85357 ~ 85372
function Func4097 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    if Func0194(loc_unit01)==false and loc_integer02<12 then
        call Func4096(I2S(12-loc_integer02),loc_unit01)
    endif
    if loc_integer02==12 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
