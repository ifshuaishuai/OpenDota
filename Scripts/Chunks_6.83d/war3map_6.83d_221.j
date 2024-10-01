
// 42872 ~ 42887
function Func1675 takes string loc_string01,unit loc_unit01,unit loc_unit02 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetTextTagText(loc_texttag01,loc_string01,0.033)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,64)
    call SetTextTagColor(loc_texttag01,255,0,0,255)
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
