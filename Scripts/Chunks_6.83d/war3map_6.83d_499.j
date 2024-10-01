
// 61219 ~ 61237
function Func2813 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(675)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(281)))
    if(TimerGetElapsed(timer001))-loc_real01>=8 then
        call SetUnitTurnSpeed(loc_unit02,GetUnitDefaultTurnSpeed(loc_unit02))
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(281),(0))
        call Func0371(loc_unit02,0,0)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 61239 ~ 61278
function Func2814 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1EL')
    local integer loc_integer03=IMinBJ((LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(281)))+1,10)
    if Func0098(loc_unit02)then
        set loc_unit01=null
        set loc_unit02=null
        return
    endif
    call Func0371(loc_unit02,loc_integer02,loc_integer03)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(281),(loc_integer03))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(675),(((TimerGetElapsed(timer001)))*1.0))
    call SetUnitTurnSpeed(loc_unit02,GetUnitDefaultTurnSpeed(loc_unit02)*0.3)
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        call Func0174(GetOwningPlayer(loc_unit01),I2S(loc_integer03)+"!",2,loc_unit02,0.026,50,0,255,216)
    endif
    if loc_integer03==1 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveBoolean(hashtable001,(loc_integer01),(280),(false))
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2812))
    endif
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,8,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2813))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 61280 ~ 61303
function Func2815 takes nothing returns nothing
    local group loc_group01=Func0030()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit01=GetTriggerUnit()
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,400,Condition(function Func0298))
    call ForGroup(loc_group01,function Func2814)
    call Func0186(GetOwningPlayer(loc_unit01),2,loc_real01,loc_real02,500)
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01,loc_real02))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01,loc_real02+130))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01,loc_real02-130))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01+130,loc_real02))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01+130,loc_real02+130))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01+130,loc_real02-130))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01-130,loc_real02))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01-130,loc_real02+130))
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodGargoyle.mdl",loc_real01-130,loc_real02-130))
    call RemoveLocation(loc_location01)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_location01=null
    set loc_unit01=null
endfunction

// 61305 ~ 61310
function Func2816 takes nothing returns boolean
    if GetSpellAbilityId()=='A1EL' then
        call Func2815()
    endif
    return false
endfunction

// 61312 ~ 61382
function Func2817 takes nothing returns nothing
    local integer loc_integer01
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2816))
    set integers158[1]='A1XC'
    set integers158[2]='A1XB'
    set integers158[3]='A1X4'
    set integers158[4]='A1X5'
    set integers158[5]='A1X6'
    set integers158[6]='A1X7'
    set integers158[7]='A1XA'
    set integers158[8]='A1X8'
    set integers158[9]='A1X9'
    set integers158[10]='A1XD'
    set integers159[1]='A1XM'
    set integers159[2]='A1XE'
    set integers159[3]='A1XF'
    set integers159[4]='A1XG'
    set integers159[5]='A1XH'
    set integers159[6]='A1XI'
    set integers159[7]='A1XJ'
    set integers159[8]='A1XK'
    set integers159[9]='A1XN'
    set integers159[10]='A1XL'
    set integers160[1]='A1XO'
    set integers160[2]='A1XV'
    set integers160[3]='A1XW'
    set integers160[4]='A1XQ'
    set integers160[5]='A1XR'
    set integers160[6]='A1XS'
    set integers160[7]='A1XX'
    set integers160[8]='A1XT'
    set integers160[9]='A1XU'
    set integers160[10]='A1XP'
    set integers161[1]='A1XY'
    set integers161[2]='A1XZ'
    set integers161[3]='A1Y5'
    set integers161[4]='A1Y6'
    set integers161[5]='A1Y7'
    set integers161[6]='A1Y1'
    set integers161[7]='A1Y2'
    set integers161[8]='A1Y3'
    set integers161[9]='A1Y4'
    set integers161[10]='A1Y0'
    set loc_integer01=1
    loop
        exitwhen loc_integer01>10
        call Func0132(integers158[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    loop
        exitwhen loc_integer01>10
        call Func0132(integers159[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    loop
        exitwhen loc_integer01>10
        call Func0132(integers160[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    loop
        exitwhen loc_integer01>10
        call Func0132(integers161[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    set loc_trigger01=null
endfunction
