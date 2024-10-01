
// 62427 ~ 62534
function Func2870 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(366)))
    local integer loc_integer02=GetHandleId(units001[GetPlayerId(GetOwningPlayer(loc_unit01))])
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer02),(279)))
    local integer loc_integer04=1
    local boolean loc_boolean01=false
    local player loc_player01
    local boolean loc_boolean02=false
    local integer loc_integer05=GetUnitAbilityLevel(units001[GetPlayerId(GetOwningPlayer(loc_unit01))],'A2ZS')
    local integer loc_integer06='A304'
    if loc_integer05==2 then
        set loc_integer06='A305'
    elseif loc_integer05==3 then
        set loc_integer06='A303'
    elseif loc_integer05==4 then
        set loc_integer06='A302'
    endif
    if loc_unit01==null then
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    else
        if(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(785)))+6>(TimerGetElapsed(timer001))then
            set loc_boolean02=true
        endif
        loop
            exitwhen loc_integer04>loc_integer03 or loc_boolean01==true
            set loc_boolean01=IsUnitInRange(loc_unit01,(LoadUnitHandle(hashtable001,(loc_integer02),(1400+loc_integer04))),900)
            set loc_integer04=loc_integer04+1
        endloop
        if loc_boolean01==false then
            call UnitRemoveAbility(loc_unit01,'B01C')
        endif
        if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true then
            if GetUnitAbilityLevel(loc_unit01,'B01C')>0 then
                call Func0193(loc_unit01,'A021')
                if Func0056(GetOwningPlayer(loc_unit01))then
                    set loc_player01=players004[0]
                else
                    set loc_player01=players003[0]
                endif
                if loc_boolean02==false then
                    call Func0193(loc_unit01,'Aeth')
                    call Func0193(loc_unit01,loc_integer06)
                    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer06,false)
                    call SetUnitPathing(loc_unit01,false)
                    if Func0128(GetUnitX(loc_unit01))!=GetUnitX(loc_unit01)or Func0131(GetUnitY(loc_unit01))!=GetUnitY(loc_unit01)then
                        call SetUnitX(loc_unit01,Func0128(GetUnitX(loc_unit01)))
                        call SetUnitY(loc_unit01,Func0131(GetUnitY(loc_unit01)))
                    endif
                else
                    call UnitRemoveAbility(loc_unit01,'Aeth')
                    call UnitRemoveAbility(loc_unit01,'A304')
                    call UnitRemoveAbility(loc_unit01,'A305')
                    call UnitRemoveAbility(loc_unit01,'A303')
                    call UnitRemoveAbility(loc_unit01,'A302')
                    call UnitRemoveAbility(loc_unit01,'B0HI')
                    call SetUnitPathing(loc_unit01,true)
                    call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),50)
                endif
                set loc_player01=null
            else
                call UnitRemoveAbility(loc_unit01,'A021')
                call UnitRemoveAbility(loc_unit01,'Aeth')
                call SetUnitPathing(loc_unit01,true)
                call UnitRemoveAbility(loc_unit01,'A304')
                call UnitRemoveAbility(loc_unit01,'A305')
                call UnitRemoveAbility(loc_unit01,'A303')
                call UnitRemoveAbility(loc_unit01,'A302')
                call UnitRemoveAbility(loc_unit01,'B0HI')
                call Func0180(GetUnitX(loc_unit01),GetUnitY(loc_unit01),50)
            endif
        else
            if GetUnitAbilityLevel(loc_unit01,'B01C')>0 then
                call Func0193(loc_unit01,'A29C')
                if loc_boolean02==false then
                    call Func0193(loc_unit01,'Aeth')
                    call Func0193(loc_unit01,loc_integer06)
                    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer06,false)
                    call SetUnitPathing(loc_unit01,false)
                    if Func0128(GetUnitX(loc_unit01))!=GetUnitX(loc_unit01)or Func0131(GetUnitY(loc_unit01))!=GetUnitY(loc_unit01)then
                        call SetUnitX(loc_unit01,Func0128(GetUnitX(loc_unit01)))
                        call SetUnitY(loc_unit01,Func0131(GetUnitY(loc_unit01)))
                    endif
                else
                    call UnitRemoveAbility(loc_unit01,'Aeth')
                    call UnitRemoveAbility(loc_unit01,'A304')
                    call UnitRemoveAbility(loc_unit01,'A305')
                    call UnitRemoveAbility(loc_unit01,'A303')
                    call UnitRemoveAbility(loc_unit01,'A302')
                    call UnitRemoveAbility(loc_unit01,'B0HI')
                    call SetUnitPathing(loc_unit01,true)
                endif
            else
                call UnitRemoveAbility(loc_unit01,'A29C')
                call UnitRemoveAbility(loc_unit01,'Aeth')
                call UnitRemoveAbility(loc_unit01,'A304')
                call UnitRemoveAbility(loc_unit01,'A305')
                call UnitRemoveAbility(loc_unit01,'A303')
                call UnitRemoveAbility(loc_unit01,'A302')
                call UnitRemoveAbility(loc_unit01,'B0HI')
                call SetUnitPathing(loc_unit01,true)
            endif
        endif
    endif
    set loc_unit01=null
endfunction

// 62536 ~ 62543
function Func2871 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddAction(loc_trigger01,function Func2870)
    call SaveUnitHandle(hashtable001,(loc_integer01),(366),(loc_unit01))
    set loc_trigger01=null
endfunction

// 62545 ~ 62550
function Func2872 takes nothing returns boolean
    if GetUnitTypeId(GetSummonedUnit())=='n01E' or GetUnitTypeId(GetSummonedUnit())=='n019' then
        call Func2871(GetSummonedUnit())
    endif
    return false
endfunction

// 62552 ~ 62561
function Func2873 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    if(GetUnitAbilityLevel(loc_unit01,'A2ZS')==1)then
        call Func2871(loc_unit01)
    else
        call Func2868(loc_unit01)
    endif
    set loc_unit01=null
endfunction
