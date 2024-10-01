
// 4711 ~ 4734
function Func0197 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(44)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real06=loc_real01*0.03
    local real loc_real07=Func0169(loc_real02,loc_real03,loc_real04,loc_real05)
    local real loc_real08=loc_real02+loc_real06*Cos(loc_real07*bj_DEGTORAD)
    local real loc_real09=loc_real03+loc_real06*Sin(loc_real07*bj_DEGTORAD)
    call SetUnitX(loc_unit01,loc_real08)
    call SetUnitY(loc_unit01,loc_real09)
    if Func0178(loc_real04,loc_real05,loc_real08,loc_real09)<=loc_real06 then
        call KillUnit(loc_unit01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 4736 ~ 4764
function Func0198 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(44)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real02=GetUnitX(loc_unit02)
    local real loc_real03=GetUnitY(loc_unit02)
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local real loc_real06=loc_real01*0.03
    local real loc_real07=Func0169(loc_real02,loc_real03,loc_real04,loc_real05)
    local real loc_real08=loc_real02+loc_real06*Cos(loc_real07*bj_DEGTORAD)
    local real loc_real09=loc_real03+loc_real06*Sin(loc_real07*bj_DEGTORAD)
    call SetUnitX(loc_unit02,loc_real08)
    call SetUnitY(loc_unit02,loc_real09)
    call SetUnitFacing(loc_unit02,loc_real07)
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif Func0178(loc_real04,loc_real05,loc_real08,loc_real09)<=loc_real06 then
        call Func0115((LoadUnitHandle(hashtable001,(loc_integer01),(2))),loc_unit01,(LoadInteger(hashtable001,(loc_integer01),(36))),(LoadReal(hashtable001,(loc_integer01),(20))))
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    return false
endfunction

// 4766 ~ 4774
function Func0199 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call UnitAddAbility((LoadUnitHandle(hashtable001,(loc_integer01),(26))),'Aloc')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 4776 ~ 4792
function Func0200 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(49)))
    local real loc_real02=loc_real01-(loc_real01-Func0050(loc_unit01))*loc_integer02/40
    if loc_integer02>40 or Func0194(loc_unit01)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitScale(loc_unit01,loc_real02,loc_real02,loc_real02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 4794 ~ 4810
function Func0201 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(50)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0200))
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveReal(hashtable001,(loc_integer01),(49),((loc_real01)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 4812 ~ 4828
function Func0202 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=((LoadReal(hashtable001,(loc_integer01),(51)))-Func0050(loc_unit01))*loc_integer02/40
    local real loc_real02=Func0050(loc_unit01)+loc_real01
    if loc_integer02>40 or Func0194(loc_unit01)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitScale(loc_unit01,loc_real02,loc_real02,loc_real02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 4830 ~ 4850
function Func0203 takes unit loc_unit01,real loc_real01,real loc_real02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real03=loc_real02*Func0050(loc_unit01)
    local real loc_real04=loc_real03
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(50),((loc_real04)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0201))
    if loc_real01>3 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0202))
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveReal(hashtable001,(loc_integer01),(51),((loc_real03)*1.0))
        call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    else
        call SetUnitScale(loc_unit01,loc_real04,loc_real04,loc_real04)
    endif
    set loc_trigger01=null
endfunction

// 4852 ~ 4865
function Func0204 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(52)))
    if loc_unit01!=null then
        call UnitRemoveAbility(loc_unit01,loc_integer02)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 4867 ~ 4876
function Func0205 takes unit loc_unit01,integer loc_integer01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call Func0193(loc_unit01,loc_integer01)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0204))
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(52),(loc_integer01))
    set loc_trigger01=null
endfunction

// 4878 ~ 4890
function Func0206 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(53)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    call UnitShareVision(loc_unit01,loc_player01,false)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_player01=null
    return false
endfunction

// 4892 ~ 4910
function Func0207 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    call UnitShareVision(loc_unit01,loc_player01,true)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0206))
    call SavePlayerHandle(hashtable001,(loc_integer01),(54),(loc_player01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(53),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_player01=null
    return false
endfunction

// 4912 ~ 4914
function Func0208 takes nothing returns nothing
    set bj_groupCountUnits=bj_groupCountUnits+1
endfunction

// 4916 ~ 4920
function Func0209 takes group loc_group01 returns integer
    set bj_groupCountUnits=0
    call ForGroup(loc_group01,function Func0208)
    return bj_groupCountUnits
endfunction

// 4922 ~ 4932
function Func0210 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local fogmodifier loc_fogmodifier01=(LoadFogModifierHandle(hashtable001,(loc_integer01),(42)))
    call FogModifierStop(loc_fogmodifier01)
    call DestroyFogModifier(loc_fogmodifier01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 4934 ~ 4942
function Func0211 takes fogmodifier loc_fogmodifier01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call FogModifierStart(loc_fogmodifier01)
    call SaveFogModifierHandle(hashtable001,(loc_integer01),(42),(loc_fogmodifier01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0210))
    set loc_trigger01=null
endfunction

// 4944 ~ 4958
function Func0212 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(55)))
    local destructable loc_destructable01=Func0023(loc_integer02)
    if loc_destructable01!=null then
        call RemoveDestructable(loc_destructable01)
    endif
    call Func0025(loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_destructable01=null
    set loc_trigger01=null
    return false
endfunction

// 4960 ~ 4967
function Func0213 takes destructable loc_destructable01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0212))
    call SaveInteger(hashtable001,(loc_integer01),(55),(Func0026(loc_destructable01)))
    set loc_trigger01=null
endfunction

// 4969 ~ 4982
function Func0214 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(52)))
    if loc_unit01!=null and GetUnitAbilityLevel(loc_unit01,loc_integer02)>0 then
        call UnitRemoveAbility(loc_unit01,loc_integer02)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 4984 ~ 4992
function Func0215 takes unit loc_unit01,integer loc_integer01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0214))
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(52),(loc_integer01))
    set loc_trigger01=null
endfunction

// 4994 ~ 5002
function Func0216 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SetUnitAnimation((LoadUnitHandle(hashtable001,(loc_integer01),(53))),"stand")
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 5004 ~ 5011
function Func0217 takes unit loc_unit01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(53),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0216))
    set loc_trigger01=null
endfunction

// 5013 ~ 5024
function Func0218 takes real loc_real01,boolean loc_boolean01,real loc_real02,real loc_real03,real loc_real04,real loc_real05,real loc_real06,real loc_real07,real loc_real08 returns nothing
    local real loc_real09
    local real loc_real10
    local real loc_real11
    if(loc_real05<=0 or loc_real08<=0 or loc_real07<=0)then
        return
    endif
    set loc_real10=2.0*loc_real01/loc_real07
    set loc_real09=2.0*loc_real05/loc_real08
    set loc_real11=loc_real04/loc_real05
    call TerrainDeformRipple(loc_real02,loc_real03,loc_real05,loc_real06,R2I(loc_real01*1000),1,loc_real09,loc_real10,loc_real11,loc_boolean01)
endfunction

// 5026 ~ 5041
function Func0219 takes player loc_player01,unit loc_unit01,integer loc_integer01 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetTextTagText(loc_texttag01,"+"+I2S(loc_integer01),0.025)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagColor(loc_texttag01,255,220,0,255)
    call SetTextTagVelocity(loc_texttag01,0,0.03)
    if GetLocalPlayer()==loc_player01 then
        call SetTextTagVisibility(loc_texttag01,true)
    else
        call SetTextTagVisibility(loc_texttag01,false)
    endif
    call SetTextTagFadepoint(loc_texttag01,2)
    call SetTextTagLifespan(loc_texttag01,3)
    call SetTextTagPermanent(loc_texttag01,false)
endfunction

// 5043 ~ 5052
function Func0220 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call FlushChildHashtable(hashtable001,(GetHandleId((LoadUnitHandle(hashtable001,(loc_integer01),(26))))))
    call ShowUnit((LoadUnitHandle(hashtable001,(loc_integer01),(26))),false)
    call RemoveUnit((LoadUnitHandle(hashtable001,(loc_integer01),(26))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    return false
endfunction

// 5054 ~ 5061
function Func0221 takes unit loc_unit01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0220))
    call SaveUnitHandle(hashtable001,(loc_integer01),(26),(loc_unit01))
    set loc_trigger01=null
endfunction

// 5063 ~ 5072
function Func0222 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call FlushChildHashtable(hashtable001,(GetHandleId((LoadUnitHandle(hashtable001,(loc_integer01),(26))))))
    call ShowUnit((LoadUnitHandle(hashtable001,(loc_integer01),(26))),false)
    call KillUnit((LoadUnitHandle(hashtable001,(loc_integer01),(26))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    return false
endfunction

// 5074 ~ 5082
function Func0223 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call FlushChildHashtable(hashtable001,(GetHandleId((LoadUnitHandle(hashtable001,(loc_integer01),(26))))))
    call ShowUnit((LoadUnitHandle(hashtable001,(loc_integer01),(26))),false)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    return false
endfunction

// 5084 ~ 5091
function Func0224 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call RemoveUnit((LoadUnitHandle(hashtable001,(loc_integer01),(26))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    return false
endfunction

// 5093 ~ 5100
function Func0225 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call KillUnit((LoadUnitHandle(hashtable001,(loc_integer01),(26))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    return false
endfunction

// 5102 ~ 5114
function Func0226 takes unit loc_unit01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0225))
    call SaveUnitHandle(hashtable001,(loc_integer01),(26),(loc_unit01))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01+0.01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0224))
    call SaveUnitHandle(hashtable001,(loc_integer01),(26),(loc_unit01))
    set loc_trigger01=null
endfunction

// 5116 ~ 5120
function Func0227 takes sound loc_sound01 returns nothing
    if loc_sound01!=null and booleans013[GetPlayerId(GetLocalPlayer())]==false then
        call StartSound(loc_sound01)
    endif
endfunction

// 5122 ~ 5126
function Func0228 takes sound loc_sound01,player loc_player01 returns nothing
    if GetLocalPlayer()==loc_player01 and booleans013[GetPlayerId(loc_player01)]==false then
        call StartSound(loc_sound01)
    endif
endfunction

// 5128 ~ 5130
function Func0229 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false
endfunction

// 5132 ~ 5134
function Func0230 takes nothing returns nothing
    call Func0228(sound080,GetOwningPlayer(GetEnumUnit()))
endfunction

// 5136 ~ 5145
function Func0231 takes unit loc_unit01,sound loc_sound01,real loc_real01,real loc_real02,real loc_real03 returns nothing
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set sound080=loc_sound01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,loc_real03,Condition(function Func0229))
    call GroupRemoveUnit(loc_group01,loc_unit01)
    call ForGroup(loc_group01,function Func0230)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 5147 ~ 5157
function Func0232 takes unit loc_unit01,item loc_item01 returns integer
    local integer loc_integer01=0
    loop
        exitwhen loc_integer01>5
        if UnitItemInSlot(loc_unit01,loc_integer01)==loc_item01 then
            return loc_integer01
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return-1
endfunction

// 5159 ~ 5171
function Func0233 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(56)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    call SetUnitPosition(loc_unit01,loc_real01,loc_real02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 5173 ~ 5178
function Func0234 takes real loc_real01,real loc_real02 returns integer
    if loc_real01/loc_real02-R2I(loc_real01/loc_real02)>=0.5 then
        return R2I(loc_real01/loc_real02)+1
    endif
    return R2I(loc_real01/loc_real02)
endfunction

// 5180 ~ 5184
function Func0235 takes player loc_player01 returns nothing
    if GetLocalPlayer()==loc_player01 then
        call ClearTextMessages()
    endif
endfunction

// 5186 ~ 5188
function Func0236 takes unit loc_unit01,real loc_real01 returns nothing
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,Func0142(GetUnitState(loc_unit01,UNIT_STATE_LIFE)-loc_real01,1))
endfunction

// 5190 ~ 5194
function Func0237 takes integer loc_integer01 returns nothing
    local unit loc_unit01=CreateUnit(Player(15),loc_integer01,0,0,0)
    call RemoveUnit(loc_unit01)
    set loc_unit01=null
endfunction

// 5196 ~ 5212
function Func0238 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(53)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(57)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(58)))
    if GetTriggerEvalCount(loc_trigger01)/10>R2I(loc_real01)then
        call SetUnitVertexColor(loc_unit01,255,100,255,255)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif Func0194(loc_unit01)==false then
        call SetUnitVertexColor(loc_unit01,255,100,255,loc_integer02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 5214 ~ 5223
function Func0239 takes unit loc_unit01,real loc_real01,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0238))
    call SaveUnitHandle(hashtable001,(loc_integer02),(53),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(57),((loc_real01)*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(58),(loc_integer01))
    set loc_trigger01=null
endfunction

// 5225 ~ 5246
function Func0240 takes player loc_player01,integer loc_integer01,unit loc_unit01 returns nothing
    local texttag loc_texttag01=CreateTextTag()
    local string loc_string01
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)+loc_integer01)
    call SetTextTagText(loc_texttag01,"+"+I2S(loc_integer01),0.025)
    call SetTextTagPosUnit(loc_texttag01,loc_unit01,0)
    call SetTextTagColor(loc_texttag01,255,220,0,255)
    call SetTextTagVelocity(loc_texttag01,0,0.03)
    if GetLocalPlayer()==loc_player01 then
        call SetTextTagVisibility(loc_texttag01,true)
        set loc_string01="UI\\Feedback\\GoldCredit\\GoldCredit.mdl"
    else
        call SetTextTagVisibility(loc_texttag01,false)
        set loc_string01=""
    endif
    if GetUnitState(loc_unit01,UNIT_STATE_LIFE)>0.5 then
        call DestroyEffect(AddSpecialEffectTarget(loc_string01,loc_unit01,"overhead"))
    endif
    call SetTextTagFadepoint(loc_texttag01,2)
    call SetTextTagLifespan(loc_texttag01,3)
    call SetTextTagPermanent(loc_texttag01,false)
endfunction
