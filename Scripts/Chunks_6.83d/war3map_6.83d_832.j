
// 86996 ~ 87017
function Func4170 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if Func4162(GetSpellAbilityId())==true then
        else
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 87019 ~ 87038
function Func4171 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(705)))
    if loc_integer02!=0 then
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Nebula.mdx",loc_unit02,"origin"))
        set loc_integer01=Func4160(loc_integer02)
        if loc_integer01!=-1 then
            if GetSpellAbilityId()=='A27H' then
                set loc_integer02=integers175[loc_integer01]
            else
                set loc_integer02=integers176[loc_integer01]
            endif
        endif
        call Func4169(loc_unit01,loc_unit02,loc_integer02,(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(712))))
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 87040 ~ 87058
function Func4172 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local string loc_string01=""
    if IsPlayerAlly(GetOwningPlayer(loc_unit01),GetLocalPlayer())or Func0107(GetLocalPlayer())then
        set loc_string01="war3mapImported\\Nebula.mdx"
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget(loc_string01,loc_unit02,"origin")))
    call TriggerRegisterTimerEvent(loc_trigger01,20,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4170))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 87060 ~ 87065
function Func4173 takes nothing returns boolean
    if(GetSpellAbilityId()=='A27H' or GetSpellAbilityId()=='A2V9')and Func0028(GetSpellTargetUnit())==false then
        call Func4171()
    endif
    return false
endfunction

// 87067 ~ 87308
function Func4174 takes nothing returns nothing
    call Func4161('A1WH')
    call Func4161('ANcr')
    call Func4161('A03G')
    call Func4161('A093')
    call Func4161('A15J')
    call Func4161('A0AG')
    call Func4161('A0BE')
    call Func4161('A1TX')
    call Func4161('A229')
    call Func4161('A1RI')
    call Func4161('A1C0')
    call Func4161('A11T')
    call Func4161('A19Z')
    call Func4161('A2NE')
    call Func4161('A13D')
    call Func4161('A2NI')
    call Func4161('A1QV')
    call Func4161('A1TU')
    call Func4161('A24A')
    call Func4161('A24B')
    call Func4161('A1NH')
    call Func4161('A20N')
    call Func4161('A1Z2')
    call Func4161('A1Z3')
    call Func4161('A205')
    call Func4161('A1VU')
    call Func4161('A0GC')
    call Func4161('A24E')
    call Func4161('A0RT')
    call Func4161('A1RA')
    call Func4161('A0HA')
    call Func4161('A0SA')
    call Func4161('A121')
    call Func4161('A1WF')
    call Func4161('A02T')
    call Func4161('A1S9')
    call Func4161('A21H')
    call Func4161('A1MN')
    call Func4161('A0KX')
    call Func4161('A0KW')
    call Func4161('A0A5')
    call Func4161('A0BG')
    call Func4161('A21W')
    call Func4161('A21X')
    call Func4161('A21V')
    call Func4161('A21Y')
    call Func4161('A1GU')
    call Func4161('A1VH')
    call Func4161('A1VG')
    call Func4161('A2M0')
    call Func4161('A2MB')
    call Func4161('A2O2')
    call Func4161('A2O9')
    call Func4161('A1S7')
    call Func4161('A2XK')
    call Func4161('A0QN')
    call Func4161('A026')
    call Func4161('AHfa')
    call Func4161('A09V')
    call Func4161('A0DY')
    call Func4161('A1WB')
    call Func4161('A0LZ')
    call Func4161('A0OI')
    call Func4161('A2UM')
    call Func4161('A1NA')
    call Func4161('A1EA')
    call Func4161('A0NS')
    call Func4161('A1DA')
    call Func4161('A28Q')
    call Func4161('A0WQ')
    call Func4161('A1T8')
    call Func4161('A10R')
    call Func4161('A11N')
    call Func4161('A0EY')
    call Func4161('A0FH')
    call Func4161('A0VK')
    call Func4161('A0VQ')
    call Func4161('A073')
    call Func4161('A03J')
    call Func4161('A04J')
    call Func4161('A04M')
    call Func4161('A04N')
    call Func4161('A27F')
    call Func4161('A27X')
    call Func4161('A27G')
    call Func4161('A27H')
    call Func4161('A0Q5')
    call Func4161('A0TK')
    call Func4161('AIbk')
    call Func4161('A0JY')
    call Func4161('A1AC')
    call Func4161('AIpl')
    call Func4161('AIpr')
    call Func4161('Aeat')
    call Func4161('A0K0')
    call Func4161('A0H7')
    call Func4161('A0H6')
    call Func4161('A0FO')
    call Func4161('A02X')
    call Func4161('AIsw')
    call Func4161('AItb')
    call Func4161('A0B6')
    call Func4161('A1R5')
    call Func4161('A206')
    call Func4161('A1FD')
    call Func4161('A1FO')
    call Func4161('A1FQ')
    call Func4161('A1IO')
    call Func4161('A0B8')
    call Func4161('A1WE')
    call Func4161('A0T8')
    call Func4161('A0T7')
    call Func4161('A017')
    call Func4161('A1QD')
    call Func4161('A1FP')
    call Func4161('A0JL')
    call Func4161('ACch')
    call Func4161('AIxk')
    call Func4161('AIpg')
    call Func4161('A11F')
    call Func4161('A11E')
    call Func4161('A0S3')
    call Func4161('A11D')
    call Func4161('A11G')
    call Func4161('A11H')
    call Func4161('A0T9')
    call Func4161('A15W')
    call Func4161('AChx')
    call Func4161('A0FD')
    call Func4161('A0TE')
    call Func4161('A1T7')
    call Func4161('A19M')
    call Func4161('A02O')
    call Func4161('A08Y')
    call Func4161('A08Z')
    call Func4161('A090')
    call Func4161('A092')
    call Func4161('A0HB')
    call Func4161('A0D3')
    call Func4161('A0DF')
    call Func4161('A02W')
    call Func4161('A0CK')
    call Func4161('A0K7')
    call Func4161('A0JT')
    call Func4161('AIda')
    call Func4161('A269')
    call Func4161('A1WO')
    call Func4161('A1EW')
    call Func4161('A1MO')
    call Func4161('A1ZI')
    call Func4161('A1ZH')
    call Func4161('A1ZW')
    call Func4161('A231')
    call Func4161('A12W')
    call Func4161('A14A')
    call Func4161('A1Q8')
    call Func4161('A28Y')
    call Func4161('A28D')
    call Func4161('A28F')
    call Func4161('A2N1')
    call Func4161('A2VE')
    call Func4161('A2WH')
    call Func4161('A2WI')
    call Func4161('A2JO')
    call Func4161('A2JQ')
    call Func4161('A2JP')
    call Func4161('A2JR')
    call Func4161('A2JL')
    call Func4161('A2FX')
    call Func4161('A2K1')
    call Func4161('A2K4')
    call Func4161('A2K7')
    call Func4161('A2KG')
    call Func4161('A2KE')
    call Func4161('A2KH')
    call Func4161('A2K9')
    call Func4161('A2EA')
    call Func4161('A2TH')
    call Func4161('A2TJ')
    call Func4161('A2TK')
    call Func4161('A2LI')
    call Func4159('A1W8','A1W9')
    call Func4159('A21F','A21G')
    call Func4159('A05T','A08H')
    call Func4159('A01P','A09Z')
    call Func4159('A095','A09W')
    call Func4159('A0MU','A0A2')
    call Func4159('A054','A00U')
    call Func4159('A067','A08P')
    call Func4159('A0CC','A02Z')
    call Func4159('A28R','A28S')
    call Func4159('A00H','A0A1')
    call Func4159('A03R','A0AV')
    call Func4159('A013','A0A6')
    call Func4159('A0NT','A0NX')
    call Func4159('A29G','A29H')
    call Func4159('A04P','A1AU')
    call Func4159('A0Z8','A1CV')
    call Func4159('A0IN','A1AW')
    call Func4159('A0M1','A1AX')
    call Func4159('A03O','A1AY')
    call Func4159('A0LT','A1CS')
    call Func4159('A03K','A1B0')
    call Func4159('A0O5','A1B1')
    call Func4159('A06R','A1B4')
    call Func4159('A0QR','A1B3')
    call Func4159('A21Y','A1GU')
    call Func4159('A01Y','A1AZ')
    call Func4159('A0MQ','A1B6')
    call Func4159('A0FL','A1CX')
    call Func4159('A12P','A1D6')
    call Func4159('A0J1','A1D7')
    call Func4159('A0G4','A1D8')
    call Func4159('A02Q','A1D9')
    call Func4159('A0NS','A1DA')
    call Func4159('A10Q','A1DB')
    call Func4159('A0AK','A1FY')
    call Func4159('A0E2','A1MR')
    call Func4159('A19O','A1MV')
    call Func4159('A0DH','A1OB')
    call Func4159('A0S8','A1QP')
    call Func4159('S008','S00U')
    call Func4159('A1AO','A1UV')
    call Func4159('A080','A1UZ')
    call Func4159('A0OK','A1VW')
    call Func4159('A0DY','A1WB')
    call Func4159('A0QK','A21Q')
    call Func4159('A1T5','A235')
    call Func4159('A0MW','A27C')
    call Func4159('A0O2','A289')
    call Func4159('A1NE','A2IG')
    call Func4159('A0L3','A2QC')
    call Func4159('A1MI','A2QE')
    call Func4159('A0ER','A2S8')
    call Func4159('A2BG','A2TU')
    call Func4159('A1BX','A2TX')
    call Func4159('A27H','A2V9')
    call Func4159('A1U6','A2V8')
    call Func4159('A049','A2WB')
    call Func4159('A05E','A2WA')
endfunction

// 87310 ~ 87322
function Func4175 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4173))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4163))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4158))
    set loc_trigger01=null
    call Func4174()
endfunction

// 87324 ~ 87340
function Func4176 takes nothing returns nothing
    if Func0275(GetEnumUnit())then
        return
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A27S')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A27S')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A27Q')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A27Q')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A27R')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A27R')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A27T')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A27T')
    endif
endfunction
