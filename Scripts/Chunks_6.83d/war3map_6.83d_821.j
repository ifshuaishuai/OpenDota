
// 85874 ~ 85894
function Func4116 takes nothing returns nothing
    call ShowUnit(GetEnumUnit(),true)
    call UnitRemoveAbility(GetEnumUnit(),'A04R')
    call SetUnitInvulnerable(GetEnumUnit(),false)
    call PauseUnit(GetEnumUnit(),false)
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
        call SetUnitPosition(GetEnumUnit(),real390,real391)
        call SelectUnitForPlayerSingle(GetEnumUnit(),GetOwningPlayer(GetEnumUnit()))
    else
        call SetUnitX(GetEnumUnit(),real390)
        call SetUnitY(GetEnumUnit(),real391)
    endif
    if GetEnumUnit()==unit396 and unit397!=null then
        call IssueTargetOrder(unit396,"attack",unit397)
    endif
    if GetUnitTypeId(GetEnumUnit())=='E02I' then
        call SetUnitVertexColor(GetEnumUnit(),255,255,255,255)
    endif
    call DestroyEffect(AddSpecialEffect("war3mapImported\\ChainFreeze_F6.mdx",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl",GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit())))
endfunction

// 85896 ~ 85912
function Func4117 takes nothing returns nothing
    local integer loc_integer01
    if integer538==1 then
        set loc_integer01='A20F'
    elseif integer538==2 then
        set loc_integer01='A20E'
    elseif integer538==3 then
        set loc_integer01='A1SL'
    elseif integer538==4 then
        set loc_integer01='A20D'
    endif
    if IsUnitInGroup(GetEnumUnit(),group036)==false then
        call GroupAddUnit(group036,GetEnumUnit())
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),loc_integer01,false)
        call Func0246(GetEnumUnit(),loc_integer01,1,5,'B0DC')
    endif
endfunction

// 85914 ~ 85923
function Func4118 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group036)==false then
        call GroupAddUnit(group036,GetEnumUnit())
        call Func0115(unit396,GetEnumUnit(),1,40*integer538+40+integer539*(10+10*integer538))
        call SetUnitAbilityLevel(unit398,'A0X6',Func0364(0.25*integer538+0.25))
        call SetUnitX(unit398,GetUnitX(GetEnumUnit()))
        call SetUnitY(unit398,GetUnitY(GetEnumUnit()))
        call IssueTargetOrder(unit398,"thunderbolt",GetEnumUnit())
    endif
endfunction

// 85925 ~ 85928
function Func4119 takes nothing returns nothing
    call SetUnitX(GetEnumUnit(),real390)
    call SetUnitY(GetEnumUnit(),real391)
endfunction

// 85930 ~ 86001
function Func4120 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(671)))
    local real loc_real04=Func0169(GetUnitX(loc_unit03),GetUnitY(loc_unit03),loc_real01,loc_real02)*bj_DEGTORAD
    local real loc_real05=GetUnitX(loc_unit03)+loc_real03*Cos(loc_real04)
    local real loc_real06=GetUnitY(loc_unit03)+loc_real03*Sin(loc_real04)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local group loc_group02
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real07=RMinBJ(2.5+(loc_integer02*0.02),10)
    local real loc_real08=225+40*(loc_integer02*0.02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    set integer539=loc_integer03
    set integer538=GetUnitAbilityLevel(loc_unit01,'A1S7')
    set unit124=loc_unit01
    set group036=loc_group01
    set unit396=loc_unit01
    set unit397=loc_unit02
    set unit398=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call SetUnitX(loc_unit03,loc_real05)
    call SetUnitY(loc_unit03,loc_real06)
    call SetUnitX(loc_unit01,loc_real05)
    call SetUnitY(loc_unit01,loc_real06)
    call SetUnitFacing(loc_unit03,loc_real04*bj_RADTODEG-180)
    call SetUnitScale(loc_unit03,loc_real07,loc_real07,loc_real07)
    set real390=loc_real05
    set real391=loc_real06
    call ForGroup((LoadGroupHandle(hashtable001,(loc_integer01),(22))),function Func4119)
    if Func0149(loc_real05,loc_real06,loc_real01,loc_real02)<loc_real03*2 or loc_integer02==150 then
        call Func0180(loc_real05,loc_real06,300)
        set loc_group02=Func0030()
        call GroupEnumUnitsInRange(loc_group02,loc_real05,loc_real06,loc_real08,Condition(function Func0305))
        call ForGroup(loc_group02,function Func4118)
        call Func0029(loc_group02)
        set loc_group02=null
        set real390=loc_real05
        set real391=loc_real06
        call ForGroup((LoadGroupHandle(hashtable001,(loc_integer01),(22))),function Func4116)
        call Func0029((LoadGroupHandle(hashtable001,(loc_integer01),(22))))
        call Func0029(loc_group01)
        call KillUnit(loc_unit03)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetUnitInvulnerable(loc_unit01,false)
        call UnitRemoveAbility(loc_unit01,'Abun')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YO',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YQ',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1YR',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1S7',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2XK',false)
    else
        if ModuloInteger(GetTriggerEvalCount(loc_trigger01),5)==0 then
            call Func0180(loc_real05,loc_real06,300)
            set loc_group02=Func0030()
            call GroupEnumUnitsInRange(loc_group02,loc_real05,loc_real06,loc_real08,Condition(function Func0305))
            call ForGroup(loc_group02,function Func4118)
            call Func0029(loc_group02)
            set loc_group02=null
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit03=null
    set loc_group01=null
    return false
endfunction

// 86003 ~ 86018
function Func4121 takes unit loc_unit01,group loc_group01,unit loc_unit02 returns nothing
    if IsUnitInGroup(loc_unit02,loc_group01)==false then
        call GroupAddUnit(loc_group01,loc_unit02)
        call DestroyEffect(AddSpecialEffect("war3mapImported\\ChainFreeze_F6.mdx",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
        call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
        if loc_unit01!=loc_unit02 then
            call ShowUnit(loc_unit02,false)
            call Func0193(loc_unit02,'A04R')
            call SetUnitInvulnerable(loc_unit02,true)
            call PauseUnit(loc_unit02,true)
        endif
        if loc_unit01!=loc_unit02 then
            set integer539=integer539+1
        endif
    endif
endfunction

// 86020 ~ 86022
function Func4122 takes nothing returns nothing
    call Func4121(unit396,group037,GetEnumUnit())
endfunction

// 86024 ~ 86026
function Func4123 takes nothing returns boolean
    return((IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))or(GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(unit124)and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit()))))and((LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetFilterUnit()))),(139)))==false or unit396==GetFilterUnit())
endfunction
