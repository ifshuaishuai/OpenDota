
// 78046 ~ 78119
function Func3769 takes unit loc_unit01,integer loc_integer01,integer loc_integer02 returns nothing
    local string loc_string01="|c0000cc00"
    local string loc_string02="||"
    local string loc_string03=" "
    local string loc_string04=loc_string01+"|||r"
    local string loc_string05
    local boolean loc_boolean01=false
    local texttag loc_texttag01=(LoadTextTagHandle(hashtable001,(GetHandleId(loc_unit01)),(451)))
    if loc_integer01==0 then
        set loc_string05=" "
    elseif loc_integer02==1 then
        if loc_integer01==0 then
            set loc_string05=loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==1 then
            set loc_string05=loc_string04+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==2 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string02
        elseif loc_integer01==3 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04
        endif
    elseif loc_integer02==2 then
        if loc_integer01==0 then
            set loc_string05=loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==1 then
            set loc_string05=loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==2 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==3 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02
        elseif loc_integer01==4 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04
        endif
    elseif loc_integer02==3 then
        if loc_integer01==0 then
            set loc_string05=loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==1 then
            set loc_string05=loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==2 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==3 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==4 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02
        elseif loc_integer01==5 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04
        endif
    elseif loc_integer02==4 then
        if loc_integer01==0 then
            set loc_string05=loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==1 then
            set loc_string05=loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==2 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==3 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==4 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02+loc_string03+loc_string02
        elseif loc_integer01==5 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string02
        elseif loc_integer01==6 then
            set loc_string05=loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04+loc_string03+loc_string04
        endif
    endif
    call SetTextTagText(loc_texttag01,loc_string05,0.023)
    if GetOwningPlayer(loc_unit01)==GetLocalPlayer()then
        set loc_boolean01=true
    endif
    if Func0194(loc_unit01)then
        set loc_boolean01=false
    endif
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagVisibility(loc_texttag01,loc_boolean01)
    call SetTextTagPermanent(loc_texttag01,true)
endfunction

// 78121 ~ 78271
function Func3770 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1NA')
    call Func3769(loc_unit01,loc_integer01,loc_integer02)
    if loc_integer01==0 or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((2484))))==1)==true then
        call UnitRemoveAbility(loc_unit01,'A1O7')
        call UnitRemoveAbility(loc_unit01,'A1O8')
        call UnitRemoveAbility(loc_unit01,'A1O9')
        call Func0193(loc_unit01,'A1O1')
        call UnitRemoveAbility(loc_unit01,'A1O2')
        call UnitRemoveAbility(loc_unit01,'A1NZ')
        call UnitRemoveAbility(loc_unit01,'A1N9')
        call UnitRemoveAbility(loc_unit01,'A1NY')
        call UnitRemoveAbility(loc_unit01,'A1O0')
        call UnitRemoveAbility(loc_unit01,'A1O3')
        call UnitRemoveAbility(loc_unit01,'A0LR')
        call UnitRemoveAbility(loc_unit01,'A0YP')
        call UnitRemoveAbility(loc_unit01,'A0OG')
        call UnitRemoveAbility(loc_unit01,'A0YO')
        call UnitRemoveAbility(loc_unit01,'A0NF')
        call UnitRemoveAbility(loc_unit01,'A0MD')
    elseif loc_integer01==1 then
        call UnitRemoveAbility(loc_unit01,'A1O7')
        call UnitRemoveAbility(loc_unit01,'A1O8')
        call UnitRemoveAbility(loc_unit01,'A1O9')
        call UnitRemoveAbility(loc_unit01,'A1O1')
        call Func0193(loc_unit01,'A1O2')
        call UnitRemoveAbility(loc_unit01,'A1NZ')
        call UnitRemoveAbility(loc_unit01,'A1N9')
        call UnitRemoveAbility(loc_unit01,'A1NY')
        call UnitRemoveAbility(loc_unit01,'A1O0')
        call UnitRemoveAbility(loc_unit01,'A1O3')
        call Func0193(loc_unit01,'A0LR')
        call UnitRemoveAbility(loc_unit01,'A0YP')
        call UnitRemoveAbility(loc_unit01,'A0OG')
        call UnitRemoveAbility(loc_unit01,'A0YO')
        call UnitRemoveAbility(loc_unit01,'A0NF')
        call UnitRemoveAbility(loc_unit01,'A0MD')
    elseif loc_integer01==2 then
        call UnitRemoveAbility(loc_unit01,'A1O7')
        call UnitRemoveAbility(loc_unit01,'A1O8')
        call UnitRemoveAbility(loc_unit01,'A1O9')
        call UnitRemoveAbility(loc_unit01,'A1O1')
        call UnitRemoveAbility(loc_unit01,'A1O2')
        call Func0193(loc_unit01,'A1NZ')
        call UnitRemoveAbility(loc_unit01,'A1N9')
        call UnitRemoveAbility(loc_unit01,'A1NY')
        call UnitRemoveAbility(loc_unit01,'A1O0')
        call UnitRemoveAbility(loc_unit01,'A1O3')
        call UnitRemoveAbility(loc_unit01,'A0LR')
        call Func0193(loc_unit01,'A0YP')
        call UnitRemoveAbility(loc_unit01,'A0OG')
        call UnitRemoveAbility(loc_unit01,'A0YO')
        call UnitRemoveAbility(loc_unit01,'A0NF')
        call UnitRemoveAbility(loc_unit01,'A0MD')
    elseif loc_integer01==3 then
        call UnitRemoveAbility(loc_unit01,'A1O7')
        call UnitRemoveAbility(loc_unit01,'A1O8')
        call UnitRemoveAbility(loc_unit01,'A1O9')
        call UnitRemoveAbility(loc_unit01,'A0LR')
        call UnitRemoveAbility(loc_unit01,'A0YP')
        call Func0193(loc_unit01,'A0OG')
        call UnitRemoveAbility(loc_unit01,'A0YO')
        call UnitRemoveAbility(loc_unit01,'A0NF')
        call UnitRemoveAbility(loc_unit01,'A0MD')
        call UnitRemoveAbility(loc_unit01,'A1O1')
        call UnitRemoveAbility(loc_unit01,'A1O2')
        call UnitRemoveAbility(loc_unit01,'A1NZ')
        call UnitRemoveAbility(loc_unit01,'A1N9')
        call UnitRemoveAbility(loc_unit01,'A1NY')
        call UnitRemoveAbility(loc_unit01,'A1O0')
        call UnitRemoveAbility(loc_unit01,'A1O3')
        if loc_integer02==1 then
            call Func0193(loc_unit01,'A1O7')
        else
            call Func0193(loc_unit01,'A1N9')
        endif
    elseif loc_integer01==4 then
        call UnitRemoveAbility(loc_unit01,'A1O7')
        call UnitRemoveAbility(loc_unit01,'A1O8')
        call UnitRemoveAbility(loc_unit01,'A1O9')
        call UnitRemoveAbility(loc_unit01,'A0LR')
        call UnitRemoveAbility(loc_unit01,'A0YP')
        call UnitRemoveAbility(loc_unit01,'A0OG')
        call Func0193(loc_unit01,'A0YO')
        call UnitRemoveAbility(loc_unit01,'A0NF')
        call UnitRemoveAbility(loc_unit01,'A0MD')
        call UnitRemoveAbility(loc_unit01,'A1O1')
        call UnitRemoveAbility(loc_unit01,'A1O2')
        call UnitRemoveAbility(loc_unit01,'A1NZ')
        call UnitRemoveAbility(loc_unit01,'A1N9')
        call UnitRemoveAbility(loc_unit01,'A1NY')
        call UnitRemoveAbility(loc_unit01,'A1O0')
        call UnitRemoveAbility(loc_unit01,'A1O3')
        if loc_integer02==2 then
            call Func0193(loc_unit01,'A1O8')
        else
            call Func0193(loc_unit01,'A1NY')
        endif
    elseif loc_integer01==5 then
        call UnitRemoveAbility(loc_unit01,'A1O7')
        call UnitRemoveAbility(loc_unit01,'A1O8')
        call UnitRemoveAbility(loc_unit01,'A1O9')
        call UnitRemoveAbility(loc_unit01,'A1O1')
        call UnitRemoveAbility(loc_unit01,'A1O2')
        call UnitRemoveAbility(loc_unit01,'A1NZ')
        call UnitRemoveAbility(loc_unit01,'A1N9')
        call UnitRemoveAbility(loc_unit01,'A1NY')
        call Func0193(loc_unit01,'A1O0')
        call UnitRemoveAbility(loc_unit01,'A1O3')
        call UnitRemoveAbility(loc_unit01,'A0LR')
        call UnitRemoveAbility(loc_unit01,'A0YP')
        call UnitRemoveAbility(loc_unit01,'A0OG')
        call UnitRemoveAbility(loc_unit01,'A0YO')
        call Func0193(loc_unit01,'A0NF')
        call UnitRemoveAbility(loc_unit01,'A0MD')
        call UnitRemoveAbility(loc_unit01,'A1O1')
        call UnitRemoveAbility(loc_unit01,'A1O2')
        call UnitRemoveAbility(loc_unit01,'A1NZ')
        call UnitRemoveAbility(loc_unit01,'A1N9')
        call UnitRemoveAbility(loc_unit01,'A1NY')
        call UnitRemoveAbility(loc_unit01,'A1O0')
        call UnitRemoveAbility(loc_unit01,'A1O3')
        if loc_integer02==3 then
            call Func0193(loc_unit01,'A1O9')
        else
            call Func0193(loc_unit01,'A1O0')
        endif
    elseif loc_integer01==6 then
        call UnitRemoveAbility(loc_unit01,'A1O7')
        call UnitRemoveAbility(loc_unit01,'A1O8')
        call UnitRemoveAbility(loc_unit01,'A1O9')
        call UnitRemoveAbility(loc_unit01,'A1O1')
        call UnitRemoveAbility(loc_unit01,'A1O2')
        call UnitRemoveAbility(loc_unit01,'A1NZ')
        call UnitRemoveAbility(loc_unit01,'A1N9')
        call UnitRemoveAbility(loc_unit01,'A1NY')
        call UnitRemoveAbility(loc_unit01,'A1O0')
        call Func0193(loc_unit01,'A1O3')
        call UnitRemoveAbility(loc_unit01,'A0LR')
        call UnitRemoveAbility(loc_unit01,'A0YP')
        call UnitRemoveAbility(loc_unit01,'A0OG')
        call UnitRemoveAbility(loc_unit01,'A0YO')
        call UnitRemoveAbility(loc_unit01,'A0NF')
        call Func0193(loc_unit01,'A0MD')
    endif
    if(GetUnitAbilityLevel(loc_unit01,'A1NA')+2)==loc_integer01 then
        call Func0193(loc_unit01,'A1NJ')
    else
        call UnitRemoveAbility(loc_unit01,'A1NJ')
    endif
endfunction

// 78273 ~ 78292
function Func3771 takes unit loc_unit01,real loc_real01 returns nothing
    local integer loc_integer01=0
    local real loc_real02=110
    if loc_real01>loc_real02*6 then
        set loc_integer01=6
    elseif loc_real01>loc_real02*5 then
        set loc_integer01=5
    elseif loc_real01>loc_real02*4 then
        set loc_integer01=4
    elseif loc_real01>loc_real02*3 then
        set loc_integer01=3
    elseif loc_real01>loc_real02*2 then
        set loc_integer01=2
    elseif loc_real01>loc_real02*1 then
        set loc_integer01=1
    endif
    set loc_integer01=Func0138(loc_integer01,2+GetUnitAbilityLevel(loc_unit01,'A1NA'))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(450),(loc_integer01))
    call Func3770(loc_unit01,loc_integer01)
endfunction

// 78294 ~ 78304
function Func3772 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1NA')
    call Func3769(loc_unit01,(LoadInteger(hashtable001,(GetHandleId((loc_unit01))),(450))),loc_integer02)
    call Func3771(loc_unit01,(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(443))))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
