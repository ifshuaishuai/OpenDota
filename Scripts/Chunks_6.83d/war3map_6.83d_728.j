
// 76950 ~ 76965
function Func3710 takes string loc_string01,unit loc_unit01,unit loc_unit02 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetTextTagText(loc_texttag01,loc_string01,0.033)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,64)
    call SetTextTagColor(loc_texttag01,160,0,255,255)
    call SetTextTagVelocity(loc_texttag01,0,0.0355)
    call SetTextTagFadepoint(loc_texttag01,0.15)
    call SetTextTagPermanent(loc_texttag01,false)
    call SetTextTagLifespan(loc_texttag01,0.65)
    if IsUnitAlly(loc_unit02,GetLocalPlayer())or Func0107(GetLocalPlayer())then
        call SetTextTagVisibility(loc_texttag01,true)
    else
        call SetTextTagVisibility(loc_texttag01,false)
    endif
    set loc_texttag01=null
endfunction

// 76967 ~ 76992
function Func3711 takes real loc_real01 returns string
    if loc_real01>4.5 then
        return"5.0"
    elseif loc_real01>4.0 then
        return"4.5"
    elseif loc_real01>3.5 then
        return"4.0"
    elseif loc_real01>3.0 then
        return"3.5"
    elseif loc_real01>2.5 then
        return"3.0"
    elseif loc_real01>2.0 then
        return"2.5"
    elseif loc_real01>1.5 then
        return"2.0"
    elseif loc_real01>1.0 then
        return"1.5"
    elseif loc_real01>0.5 then
        return"1.0"
    elseif loc_real01>0.0 then
        return"0.5"
    else
        return"0.0"
    endif
    return" "
endfunction

// 76994 ~ 77008
function Func3712 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    if loc_integer02>11 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func3710(Func3711(5.5-0.5*loc_integer02),loc_unit01,loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
