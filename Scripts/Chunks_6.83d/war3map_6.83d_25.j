
// 7815 ~ 7827
function Func0444 takes unit loc_unit01,real loc_real01,real loc_real02,real loc_real03 returns nothing
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local real loc_real06=Atan2(loc_real05-loc_real02,loc_real04-loc_real01)
    local real loc_real07=Func0149(loc_real04,loc_real05,loc_real01,loc_real02)
    local real loc_real08=GetUnitMoveSpeed(loc_unit01)
    if Func0109(loc_unit01)==false and loc_real03>loc_real08 and loc_real07>10*0.005 then
        set loc_real04=Func0126(loc_real04+(loc_real03-loc_real08)*0.005*Cos(loc_real06))
        set loc_real05=Func0129(loc_real05+(loc_real03-loc_real08)*0.005*Sin(loc_real06))
        call SetUnitX(loc_unit01,loc_real04)
        call SetUnitY(loc_unit01,loc_real05)
    endif
endfunction

// 7829 ~ 7894
function Func0445 takes nothing returns nothing
    set hashtable001=InitHashtable()
    set timer001=CreateTimer()
    set rect218=Rect(-7040,-7680,7040,7168)
    call SetFloatGameState(GAME_STATE_TIME_OF_DAY,6.00)
    call SuspendTimeOfDay(false)
    call SetTimeOfDayScale(0.5)
    call SetSkyModel("Environment\\Sky\\FoggedSky\\FoggedSky.mdl")
    call SetCreepCampFilterState(true)
    set string002="Normal Mode"
    call TimerStart(timer001,99999.00,false,null)
    set weathereffect002=AddWeatherEffect(bj_mapInitialPlayableArea,'RAhr')
    set weathereffect001=AddWeatherEffect(bj_mapInitialPlayableArea,'SNbs')
    set weathereffect003=AddWeatherEffect(bj_mapInitialPlayableArea,'LRma')
    set weathereffect004=AddWeatherEffect(bj_mapInitialPlayableArea,'WOlw')
    set players003[0]=Player(0)
    set players003[1]=Player(1)
    set players003[2]=Player(2)
    set players003[3]=Player(3)
    set players003[4]=Player(4)
    set players003[5]=Player(5)
    set players004[0]=Player(6)
    set players004[1]=Player(7)
    set players004[2]=Player(8)
    set players004[3]=Player(9)
    set players004[4]=Player(10)
    set players004[5]=Player(11)
    set player001=Player(12)
    set player002=Player(15)
    call SetUnitPathing(unit009,false)
    call SetUnitPathing(unit010,false)
    call SetUnitPathing(unit015,false)
    call SetUnitPathing(unit008,false)
    call SetUnitPathing(unit006,false)
    call Func0276(unit006,true)
    call Func0276(unit008,true)
    call Func0276(unit015,true)
    call Func0276(unit010,true)
    call Func0276(unit009,true)
    set location001=GetUnitLoc(unit006)
    set location002=GetUnitLoc(unit009)
    set location003=GetUnitLoc(unit015)
    set location004=GetUnitLoc(unit008)
    set location005=GetUnitLoc(unit010)
    set integer012='A06G'
    set locations001[1]=location002
    set locations001[2]=location004
    set locations001[3]=location003
    set locations001[4]=location005
    set locations001[5]=location001
    set location006=GetRectCenter(rect002)
    set location007=GetRectCenter(rect003)
    set location008=GetRectCenter(rect001)
    set location009=GetRectCenter(rect009)
    set location011=GetRectCenter(rect010)
    set location010=GetRectCenter(rect008)
    set location012=GetRectCenter(rect014)
    set location014=GetRectCenter(rect013)
    set location013=GetRectCenter(rect012)
    set location015=GetRectCenter(rect007)
    set location017=GetRectCenter(rect006)
    set location016=GetRectCenter(rect005)
    set location018=GetRectCenter(rect018)
    set location019=GetRectCenter(rect015)
    set boolean034=true
endfunction

// 7896 ~ 7898
function Func0446 takes nothing returns nothing
    call Func0445()
endfunction

// 7900 ~ 8123
function Func0447 takes nothing returns nothing
    set real016=GetUnitX(unit031)
    set real017=GetUnitY(unit031)
    set real018=GetUnitX(unit035)
    set real019=GetUnitY(unit035)
    set real020=GetUnitX(unit033)
    set real021=GetUnitY(unit033)
    set real022=GetUnitX(unit032)
    set real023=GetUnitY(unit032)
    set real024=GetUnitX(unit065)
    set real025=GetUnitY(unit065)
    set real026=GetUnitX(unit014)
    set real027=GetUnitY(unit014)
    set real028=GetUnitX(unit012)
    set real029=GetUnitY(unit012)
    set real030=GetUnitX(unit007)
    set real031=GetUnitY(unit007)
    set real032=GetUnitX(unit016)
    set real033=GetUnitY(unit016)
    set real034=GetUnitX(unit036)
    set real035=GetUnitY(unit036)
    set real034=GetUnitX(unit036)
    set real035=GetUnitY(unit036)
    set real036=GetUnitX(unit116)
    set real037=GetUnitY(unit116)
    set real038=GetUnitX(unit004)
    set real039=GetUnitY(unit004)
    set real040=GetUnitX(unit040)
    set real041=GetUnitY(unit040)
    set real042=GetUnitX(unit039)
    set real043=GetUnitY(unit039)
    set real044=GetUnitX(unit037)
    set real045=GetUnitY(unit037)
    set real046=GetUnitX(unit041)
    set real047=GetUnitY(unit041)
    set real048=GetUnitX(unit017)
    set real049=GetUnitY(unit017)
    set real050=GetUnitX(unit038)
    set real051=GetUnitY(unit038)
    set real052=GetUnitX(unit043)
    set real053=GetUnitY(unit043)
    set real054=GetUnitX(unit042)
    set real055=GetUnitY(unit042)
    set real056=GetUnitX(unit050)
    set real057=GetUnitY(unit050)
    set real058=GetUnitX(unit045)
    set real059=GetUnitY(unit045)
    set real060=GetUnitX(unit044)
    set real061=GetUnitY(unit044)
    set real062=GetUnitX(unit046)
    set real063=GetUnitY(unit046)
    set real064=GetUnitX(unit049)
    set real065=GetUnitY(unit049)
    set real066=GetUnitX(unit048)
    set real067=GetUnitY(unit048)
    set real068=GetUnitX(unit047)
    set real069=GetUnitY(unit047)
    set real070=GetUnitX(unit052)
    set real071=GetUnitY(unit052)
    set real072=GetUnitX(unit051)
    set real073=GetUnitY(unit051)
    set real074=GetUnitX(unit055)
    set real075=GetUnitY(unit055)
    set real076=GetUnitX(unit054)
    set real077=GetUnitY(unit054)
    set real078=GetUnitX(unit056)
    set real079=GetUnitY(unit056)
    set real080=GetUnitX(unit057)
    set real081=GetUnitY(unit057)
    set real082=GetUnitX(unit058)
    set real083=GetUnitY(unit058)
    set real084=GetUnitX(unit053)
    set real085=GetUnitY(unit053)
    set real086=GetUnitX(unit060)
    set real087=GetUnitY(unit060)
    set real088=GetUnitX(unit061)
    set real089=GetUnitY(unit061)
    set real090=GetUnitX(unit059)
    set real091=GetUnitY(unit059)
    set real092=GetUnitX(unit062)
    set real093=GetUnitY(unit062)
    set real094=GetUnitX(unit063)
    set real095=GetUnitY(unit063)
    set real096=GetUnitX(unit034)
    set real097=GetUnitY(unit034)
    set real098=GetUnitX(unit064)
    set real099=GetUnitY(unit064)
    set real100=GetUnitX(unit067)
    set real101=GetUnitY(unit067)
    set real102=GetUnitX(unit066)
    set real103=GetUnitY(unit066)
    call RemoveUnit(unit043)
    call RemoveUnit(unit047)
    call RemoveUnit(unit046)
    call RemoveUnit(unit042)
    call RemoveUnit(unit052)
    call RemoveUnit(unit049)
    call RemoveUnit(unit050)
    call RemoveUnit(unit051)
    call RemoveUnit(unit048)
    call RemoveUnit(unit034)
    call RemoveUnit(unit064)
    call RemoveUnit(unit004)
    call RemoveUnit(unit045)
    call RemoveUnit(unit044)
    call RemoveUnit(unit055)
    call RemoveUnit(unit054)
    call RemoveUnit(unit056)
    call RemoveUnit(unit057)
    call RemoveUnit(unit058)
    call RemoveUnit(unit053)
    call RemoveUnit(unit060)
    call RemoveUnit(unit061)
    call RemoveUnit(unit059)
    call RemoveUnit(unit062)
    call RemoveUnit(unit063)
    call RemoveUnit(unit036)
    call RemoveUnit(unit116)
    call RemoveUnit(unit016)
    call RemoveUnit(unit007)
    call RemoveUnit(unit012)
    call RemoveUnit(unit014)
    call RemoveUnit(unit033)
    call RemoveUnit(unit032)
    call RemoveUnit(unit031)
    call RemoveUnit(unit035)
    call RemoveUnit(unit065)
    call RemoveUnit(unit040)
    call RemoveUnit(unit039)
    call RemoveUnit(unit037)
    call RemoveUnit(unit041)
    call RemoveUnit(unit017)
    call RemoveUnit(unit038)
    call RemoveUnit(unit067)
    call RemoveUnit(unit066)
    set unit130=CreateUnit(players003[0],'nfoh',real016,real017,270)
    set unit131=CreateUnit(player002,'hC95',real018,real019,270)
    set unit132=CreateUnit(player002,'n01K',real020,real021,270)
    set unit133=CreateUnit(player002,'nC38',real022,real023,270)
    set unit134=CreateUnit(player002,'e025',real024,real025,270)
    set unit135=CreateUnit(player002,'n00V',real026,real027,270)
    set unit136=CreateUnit(player002,'n00W',real028,real029,270)
    set unit137=CreateUnit(player002,'n002',real030,real031,270)
    set unit138=CreateUnit(player002,'n00X',real032,real033,270)
    set unit139=CreateUnit(player002,'n009',real034,real035,270)
    set unit140=CreateUnit(player002,'n0HE',real036,real037,270)
    set unit141=CreateUnit(players003[0],'etol',real038,real039,270)
    set unit142=CreateUnit(players003[0],'e00R',real040,real041,90)
    set unit143=CreateUnit(players003[0],'e00R',real042,real043,45)
    set unit144=CreateUnit(players003[0],'e00R',real044,real045,0)
    set unit145=CreateUnit(players003[0],'e011',real046,real047,90)
    set unit146=CreateUnit(players003[0],'e011',real048,real049,45)
    set unit147=CreateUnit(players003[0],'e011',real050,real051,0)
    set unit148=CreateUnit(players003[0],'e00S',real052,real053,90)
    set unit149=CreateUnit(players003[0],'e00S',real054,real055,45)
    set unit150=CreateUnit(players003[0],'e00S',real056,real057,0)
    set unit151=CreateUnit(players003[0],'e019',real058,real059,45)
    set unit152=CreateUnit(players003[0],'e019',real060,real061,45)
    set unit153=CreateUnit(players003[0],'eaom',real062,real063,90)
    set unit154=CreateUnit(players003[0],'eaom',real064,real065,45)
    set unit155=CreateUnit(players003[0],'eaom',real066,real067,0)
    set unit156=CreateUnit(players003[0],'eaoe',real068,real069,90)
    set unit157=CreateUnit(players003[0],'eaoe',real070,real071,45)
    set unit158=CreateUnit(players003[0],'eaoe',real072,real073,0)
    set unit159=CreateUnit(players003[0],'emow',real074,real075,270)
    set unit160=CreateUnit(players003[0],'emow',real076,real077,270)
    set unit161=CreateUnit(players003[0],'emow',real078,real079,270)
    set unit162=CreateUnit(players003[0],'emow',real080,real081,270)
    set unit163=CreateUnit(players003[0],'emow',real082,real083,270)
    set unit164=CreateUnit(players003[0],'emow',real084,real085,270)
    set unit165=CreateUnit(players003[0],'emow',real086,real087,270)
    set unit166=CreateUnit(players003[0],'emow',real088,real089,270)
    set unit167=CreateUnit(players003[0],'emow',real090,real091,270)
    set unit168=CreateUnit(players003[0],'emow',real092,real093,270)
    set unit169=CreateUnit(players003[0],'emow',real094,real095,270)
    set unit170=CreateUnit(players003[0],'eaow',real096,real097,270)
    set unit171=CreateUnit(players003[0],'eaow',real098,real099,270)
    set unit172=CreateUnit(players003[0],'edob',real100,real101,270)
    set unit173=CreateUnit(players003[0],'edob',real102,real103,270)
    call SetPlayerAbilityAvailable(player002,'Aro1',false)
    call SetUnitColor(unit131,playercolor001)
    call SetUnitColor(unit134,playercolor001)
    call SetUnitColor(unit133,playercolor002)
    call SetUnitColor(unit132,playercolor002)
    call SetUnitColor(unit135,playercolor002)
    call SetUnitColor(unit136,playercolor002)
    call SetUnitColor(unit137,playercolor002)
    call SetUnitColor(unit138,playercolor002)
    call SetUnitColor(unit139,playercolor002)
    call Func0276(unit142,true)
    call Func0276(unit143,true)
    call Func0276(unit144,true)
    call Func0276(unit145,true)
    call Func0276(unit146,true)
    call Func0276(unit147,true)
    call Func0276(unit148,true)
    call Func0276(unit149,true)
    call Func0276(unit150,true)
    call Func0276(unit151,true)
    call Func0276(unit152,true)
    call Func0276(unit141,true)
    call Func0276(unit153,true)
    call Func0276(unit154,true)
    call Func0276(unit155,true)
    call Func0276(unit156,true)
    call Func0276(unit157,true)
    call Func0276(unit158,true)
    call Func0276(unit170,true)
    call Func0276(unit171,true)
    call Func0276(unit172,true)
    call Func0276(unit173,true)
    call Func0276(unit159,true)
    call Func0276(unit160,true)
    call Func0276(unit161,true)
    call Func0276(unit162,true)
    call Func0276(unit163,true)
    call Func0276(unit164,true)
    call Func0276(unit165,true)
    call Func0276(unit166,true)
    call Func0276(unit167,true)
    call Func0276(unit168,true)
    call Func0276(unit169,true)
    call AddUnitToStock(unit134,'h02C',0,0)
endfunction

// 8125 ~ 8127
function Func0448 takes nothing returns nothing
    call Func0447()
endfunction

// 8129 ~ 8348
function Func0449 takes nothing returns nothing
    set real104=GetUnitX(unit088)
    set real105=GetUnitY(unit088)
    set real106=GetUnitX(unit080)
    set real107=GetUnitY(unit080)
    set real108=GetUnitX(unit081)
    set real109=GetUnitY(unit081)
    set real110=GetUnitX(unit082)
    set real111=GetUnitY(unit082)
    set real112=GetUnitX(unit078)
    set real113=GetUnitY(unit078)
    set real114=GetUnitX(unit076)
    set real115=GetUnitY(unit076)
    set real116=GetUnitX(unit075)
    set real117=GetUnitY(unit075)
    set real118=GetUnitX(unit074)
    set real119=GetUnitY(unit074)
    set real120=GetUnitX(unit077)
    set real121=GetUnitY(unit077)
    set real122=GetUnitX(unit079)
    set real123=GetUnitY(unit079)
    set real124=GetUnitX(unit020)
    set real125=GetUnitY(unit020)
    set real126=GetUnitX(unit096)
    set real127=GetUnitY(unit096)
    set real128=GetUnitX(unit013)
    set real129=GetUnitY(unit013)
    set real130=GetUnitX(unit098)
    set real131=GetUnitY(unit098)
    set real132=GetUnitX(unit019)
    set real133=GetUnitY(unit019)
    set real134=GetUnitX(unit025)
    set real135=GetUnitY(unit025)
    set real136=GetUnitX(unit099)
    set real137=GetUnitY(unit099)
    set real138=GetUnitX(unit018)
    set real139=GetUnitY(unit018)
    set real140=GetUnitX(unit073)
    set real141=GetUnitY(unit073)
    set real142=GetUnitX(unit100)
    set real143=GetUnitY(unit100)
    set real144=GetUnitX(unit113)
    set real145=GetUnitY(unit113)
    set real146=GetUnitX(unit101)
    set real147=GetUnitY(unit101)
    set real148=GetUnitX(unit093)
    set real149=GetUnitY(unit093)
    set real150=GetUnitX(unit072)
    set real151=GetUnitY(unit072)
    set real152=GetUnitX(unit092)
    set real153=GetUnitY(unit092)
    set real154=GetUnitX(unit112)
    set real155=GetUnitY(unit112)
    set real156=GetUnitX(unit071)
    set real157=GetUnitY(unit071)
    set real158=GetUnitX(unit097)
    set real159=GetUnitY(unit097)
    set real160=GetUnitX(unit111)
    set real161=GetUnitY(unit111)
    set real162=GetUnitX(unit106)
    set real163=GetUnitY(unit106)
    set real164=GetUnitX(unit103)
    set real165=GetUnitY(unit103)
    set real166=GetUnitX(unit109)
    set real167=GetUnitY(unit109)
    set real168=GetUnitX(unit070)
    set real169=GetUnitY(unit070)
    set real170=GetUnitX(unit108)
    set real171=GetUnitY(unit108)
    set real172=GetUnitX(unit102)
    set real173=GetUnitY(unit102)
    set real174=GetUnitX(unit104)
    set real175=GetUnitY(unit104)
    set real176=GetUnitX(unit107)
    set real177=GetUnitY(unit107)
    set real178=GetUnitX(unit114)
    set real179=GetUnitY(unit114)
    set real180=GetUnitX(unit068)
    set real181=GetUnitY(unit068)
    set real182=GetUnitX(unit094)
    set real183=GetUnitY(unit094)
    set real184=GetUnitX(unit069)
    set real185=GetUnitY(unit069)
    set real186=GetUnitX(unit110)
    set real187=GetUnitY(unit110)
    set real188=GetUnitX(unit105)
    set real189=GetUnitY(unit105)
    set real190=GetUnitX(unit095)
    set real191=GetUnitY(unit095)
    call RemoveUnit(unit106)
    call RemoveUnit(unit103)
    call RemoveUnit(unit109)
    call RemoveUnit(unit070)
    call RemoveUnit(unit108)
    call RemoveUnit(unit102)
    call RemoveUnit(unit104)
    call RemoveUnit(unit107)
    call RemoveUnit(unit114)
    call RemoveUnit(unit068)
    call RemoveUnit(unit094)
    call RemoveUnit(unit013)
    call RemoveUnit(unit025)
    call RemoveUnit(unit073)
    call RemoveUnit(unit098)
    call RemoveUnit(unit099)
    call RemoveUnit(unit100)
    call RemoveUnit(unit019)
    call RemoveUnit(unit018)
    call RemoveUnit(unit113)
    call RemoveUnit(unit101)
    call RemoveUnit(unit093)
    call RemoveUnit(unit072)
    call RemoveUnit(unit092)
    call RemoveUnit(unit112)
    call RemoveUnit(unit071)
    call RemoveUnit(unit097)
    call RemoveUnit(unit111)
    call RemoveUnit(unit069)
    call RemoveUnit(unit110)
    call RemoveUnit(unit105)
    call RemoveUnit(unit095)
    call RemoveUnit(unit096)
    call RemoveUnit(unit076)
    call RemoveUnit(unit075)
    call RemoveUnit(unit074)
    call RemoveUnit(unit077)
    call RemoveUnit(unit079)
    call RemoveUnit(unit020)
    call RemoveUnit(unit082)
    call RemoveUnit(unit081)
    call RemoveUnit(unit088)
    call RemoveUnit(unit080)
    call RemoveUnit(unit078)
    set unit174=CreateUnit(players004[0],'ndfl',real104,real105,270)
    set unit175=CreateUnit(player002,'nC35',real106,real107,270)
    set unit176=CreateUnit(player002,'n01K',real108,real109,270)
    set unit177=CreateUnit(player002,'nC38',real110,real111,270)
    set unit178=CreateUnit(player002,'u00Q',real112,real113,270)
    set unit179=CreateUnit(player002,'n00V',real114,real115,0)
    set unit180=CreateUnit(player002,'n00W',real116,real117,0)
    set unit181=CreateUnit(player002,'n002',real118,real119,0)
    set unit182=CreateUnit(player002,'n00X',real120,real121,0)
    set unit183=CreateUnit(player002,'n009',real122,real123,0)
    set unit184=CreateUnit(player002,'n0HE',real124,real125,0)
    set unit185=CreateUnit(players004[0],'unpl',real126,real127,220)
    set unit186=CreateUnit(players004[0],'u00M',real128,real129,270)
    set unit187=CreateUnit(players004[0],'u00M',real130,real131,270)
    set unit188=CreateUnit(players004[0],'u00M',real132,real133,270)
    set unit189=CreateUnit(players004[0],'u00D',real134,real135,270)
    set unit190=CreateUnit(players004[0],'u00D',real136,real137,270)
    set unit191=CreateUnit(players004[0],'u00D',real138,real139,270)
    set unit192=CreateUnit(players004[0],'u00N',real140,real141,270)
    set unit193=CreateUnit(players004[0],'u00N',real142,real143,270)
    set unit194=CreateUnit(players004[0],'u00N',real144,real145,270)
    set unit195=CreateUnit(players004[0],'u00T',real146,real147,270)
    set unit196=CreateUnit(players004[0],'u00T',real148,real149,270)
    set unit197=CreateUnit(players004[0],'usep',real150,real151,270)
    set unit198=CreateUnit(players004[0],'usep',real152,real153,270)
    set unit199=CreateUnit(players004[0],'usep',real154,real155,270)
    set unit200=CreateUnit(players004[0],'utod',real156,real157,270)
    set unit201=CreateUnit(players004[0],'utod',real158,real159,270)
    set unit202=CreateUnit(players004[0],'utod',real160,real161,270)
    set unit203=CreateUnit(players004[0],'uzig',real162,real163,270)
    set unit204=CreateUnit(players004[0],'uzig',real164,real165,270)
    set unit205=CreateUnit(players004[0],'uzig',real166,real167,270)
    set unit206=CreateUnit(players004[0],'uzig',real168,real169,270)
    set unit207=CreateUnit(players004[0],'uzig',real170,real171,270)
    set unit208=CreateUnit(players004[0],'uzig',real172,real173,270)
    set unit209=CreateUnit(players004[0],'uzig',real174,real175,270)
    set unit210=CreateUnit(players004[0],'uzig',real176,real177,270)
    set unit211=CreateUnit(players004[0],'uzig',real178,real179,270)
    set unit212=CreateUnit(players004[0],'uzig',real180,real181,270)
    set unit213=CreateUnit(players004[0],'uzig',real182,real183,270)
    set unit214=CreateUnit(players004[0],'usap',real184,real185,270)
    set unit215=CreateUnit(players004[0],'usap',real186,real187,270)
    set unit216=CreateUnit(players004[0],'ubon',real188,real189,270)
    set unit217=CreateUnit(players004[0],'ubon',real190,real191,270)
    call SetUnitColor(unit175,playercolor003)
    call SetUnitColor(unit177,playercolor004)
    call SetUnitColor(unit176,playercolor004)
    call SetUnitColor(unit179,playercolor004)
    call SetUnitColor(unit180,playercolor004)
    call SetUnitColor(unit181,playercolor004)
    call SetUnitColor(unit182,playercolor004)
    call SetUnitColor(unit183,playercolor004)
    call Func0276(unit186,true)
    call Func0276(unit187,true)
    call Func0276(unit188,true)
    call Func0276(unit189,true)
    call Func0276(unit190,true)
    call Func0276(unit191,true)
    call Func0276(unit192,true)
    call Func0276(unit193,true)
    call Func0276(unit194,true)
    call Func0276(unit195,true)
    call Func0276(unit196,true)
    call Func0276(unit185,true)
    call Func0276(unit197,true)
    call Func0276(unit198,true)
    call Func0276(unit199,true)
    call Func0276(unit200,true)
    call Func0276(unit201,true)
    call Func0276(unit202,true)
    call Func0276(unit214,true)
    call Func0276(unit215,true)
    call Func0276(unit216,true)
    call Func0276(unit217,true)
    call Func0276(unit203,true)
    call Func0276(unit204,true)
    call Func0276(unit205,true)
    call Func0276(unit206,true)
    call Func0276(unit207,true)
    call Func0276(unit208,true)
    call Func0276(unit209,true)
    call Func0276(unit210,true)
    call Func0276(unit211,true)
    call Func0276(unit212,true)
    call Func0276(unit213,true)
    call AddUnitToStock(unit178,'h02C',0,0)
endfunction

// 8350 ~ 8352
function Func0450 takes nothing returns nothing
    call Func0449()
endfunction

// 8354 ~ 8506
function Func0451 takes nothing returns nothing
    local real loc_real01=GetUnitX(unit026)
    local real loc_real02=GetUnitY(unit026)
    local real loc_real03=GetUnitX(unit030)
    local real loc_real04=GetUnitY(unit030)
    local real loc_real05=GetUnitX(unit029)
    local real loc_real06=GetUnitY(unit029)
    local real loc_real07=GetUnitX(unit027)
    local real loc_real08=GetUnitY(unit027)
    local real loc_real09=GetUnitX(unit028)
    local real loc_real10=GetUnitY(unit028)
    local real loc_real11=GetUnitX(unit084)
    local real loc_real12=GetUnitY(unit084)
    local real loc_real13=GetUnitX(unit083)
    local real loc_real14=GetUnitY(unit083)
    local real loc_real15=GetUnitX(unit087)
    local real loc_real16=GetUnitY(unit087)
    local real loc_real17=GetUnitX(unit085)
    local real loc_real18=GetUnitY(unit085)
    local real loc_real19=GetUnitX(unit086)
    local real loc_real20=GetUnitY(unit086)
    local integer loc_integer01=25
    call RemoveUnit(unit026)
    call RemoveUnit(unit030)
    call RemoveUnit(unit029)
    call RemoveUnit(unit027)
    call RemoveUnit(unit028)
    call RemoveUnit(unit084)
    call RemoveUnit(unit083)
    call RemoveUnit(unit087)
    call RemoveUnit(unit085)
    call RemoveUnit(unit086)
    set unit218=CreateUnit(Player(1),'ncop',loc_real01,loc_real02,270)
    call UnitAddAbility(unit218,'A141')
    call ClearSelectionForPlayer(Player(1))
    call SelectUnitAddForPlayer(unit218,Player(1))
    if GetLocalPlayer()==Player(1)then
        call SetUnitVertexColor(unit218,255,255,255,255)
    else
        call SetUnitVertexColor(unit218,255,255,255,loc_integer01)
    endif
    set unit219=CreateUnit(Player(2),'ncop',loc_real03,loc_real04,270)
    call UnitAddAbility(unit219,'A141')
    call ClearSelectionForPlayer(Player(2))
    call SelectUnitAddForPlayer(unit219,Player(2))
    if GetLocalPlayer()==Player(2)then
        call SetUnitVertexColor(unit219,255,255,255,255)
    else
        call SetUnitVertexColor(unit219,255,255,255,loc_integer01)
    endif
    set unit220=CreateUnit(Player(3),'ncop',loc_real05,loc_real06,270)
    call UnitAddAbility(unit220,'A141')
    call ClearSelectionForPlayer(Player(3))
    call SelectUnitAddForPlayer(unit220,Player(3))
    if GetLocalPlayer()==Player(3)then
        call SetUnitVertexColor(unit220,255,255,255,255)
    else
        call SetUnitVertexColor(unit220,255,255,255,loc_integer01)
    endif
    set unit221=CreateUnit(Player(4),'ncop',loc_real07,loc_real08,270)
    call UnitAddAbility(unit221,'A141')
    call ClearSelectionForPlayer(Player(4))
    call SelectUnitAddForPlayer(unit221,Player(4))
    if GetLocalPlayer()==Player(4)then
        call SetUnitVertexColor(unit221,255,255,255,255)
    else
        call SetUnitVertexColor(unit221,255,255,255,loc_integer01)
    endif
    set unit222=CreateUnit(Player(5),'ncop',loc_real09,loc_real10,270)
    call UnitAddAbility(unit222,'A141')
    call ClearSelectionForPlayer(Player(5))
    call SelectUnitAddForPlayer(unit222,Player(5))
    if GetLocalPlayer()==Player(5)then
        call SetUnitVertexColor(unit222,255,255,255,255)
    else
        call SetUnitVertexColor(unit222,255,255,255,loc_integer01)
    endif
    set unit223=CreateUnit(Player(7),'ncop',loc_real11,loc_real12,270)
    call UnitAddAbility(unit223,'A1WI')
    call ClearSelectionForPlayer(Player(7))
    call SelectUnitAddForPlayer(unit223,Player(7))
    if GetLocalPlayer()==Player(7)then
        call SetUnitVertexColor(unit223,255,255,255,255)
    else
        call SetUnitVertexColor(unit223,255,255,255,loc_integer01)
    endif
    set unit224=CreateUnit(Player(8),'ncop',loc_real13,loc_real14,270)
    call UnitAddAbility(unit224,'A1WI')
    call ClearSelectionForPlayer(Player(8))
    call SelectUnitAddForPlayer(unit224,Player(8))
    if GetLocalPlayer()==Player(8)then
        call SetUnitVertexColor(unit224,255,255,255,255)
    else
        call SetUnitVertexColor(unit224,255,255,255,loc_integer01)
    endif
    set unit225=CreateUnit(Player(9),'ncop',loc_real15,loc_real16,270)
    call UnitAddAbility(unit225,'A1WI')
    call ClearSelectionForPlayer(Player(9))
    call SelectUnitAddForPlayer(unit225,Player(9))
    if GetLocalPlayer()==Player(9)then
        call SetUnitVertexColor(unit225,255,255,255,255)
    else
        call SetUnitVertexColor(unit225,255,255,255,loc_integer01)
    endif
    set unit226=CreateUnit(Player(10),'ncop',loc_real17,loc_real18,270)
    call UnitAddAbility(unit226,'A1WI')
    call ClearSelectionForPlayer(Player(10))
    call SelectUnitAddForPlayer(unit226,Player(10))
    if GetLocalPlayer()==Player(10)then
        call SetUnitVertexColor(unit226,255,255,255,255)
    else
        call SetUnitVertexColor(unit226,255,255,255,loc_integer01)
    endif
    set unit227=CreateUnit(Player(11),'ncop',loc_real19,loc_real20,270)
    call UnitAddAbility(unit227,'A1WI')
    call ClearSelectionForPlayer(Player(11))
    call SelectUnitAddForPlayer(unit227,Player(11))
    if GetLocalPlayer()==Player(11)then
        call SetUnitVertexColor(unit227,255,255,255,255)
    else
        call SetUnitVertexColor(unit227,255,255,255,loc_integer01)
    endif
    set units006[1]=unit218
    set units006[2]=unit219
    set units006[3]=unit220
    set units006[4]=unit221
    set units006[5]=unit222
    set units006[7]=unit223
    set units006[8]=unit224
    set units006[9]=unit225
    set units006[10]=unit226
    set units006[11]=unit227
    set reals005[1]=GetUnitX(unit218)
    set reals005[2]=GetUnitX(unit219)
    set reals005[3]=GetUnitX(unit220)
    set reals005[4]=GetUnitX(unit221)
    set reals005[5]=GetUnitX(unit222)
    set reals005[7]=GetUnitX(unit223)
    set reals005[8]=GetUnitX(unit224)
    set reals005[9]=GetUnitX(unit225)
    set reals005[10]=GetUnitX(unit226)
    set reals005[11]=GetUnitX(unit227)
    set reals006[1]=GetUnitY(unit218)
    set reals006[2]=GetUnitY(unit219)
    set reals006[3]=GetUnitY(unit220)
    set reals006[4]=GetUnitY(unit221)
    set reals006[5]=GetUnitY(unit222)
    set reals006[7]=GetUnitY(unit223)
    set reals006[8]=GetUnitY(unit224)
    set reals006[9]=GetUnitY(unit225)
    set reals006[10]=GetUnitY(unit226)
    set reals006[11]=GetUnitY(unit227)
endfunction

// 8508 ~ 8510
function Func0452 takes nothing returns nothing
    call Func0451()
endfunction

// 8512 ~ 8543
function Func0453 takes nothing returns nothing
    set integers067[GetPlayerId(players003[1])]=0
    set integers068[GetPlayerId(players003[1])]=66
    set integers069[GetPlayerId(players003[1])]=255
    set integers067[GetPlayerId(players003[2])]=48
    set integers068[GetPlayerId(players003[2])]=230
    set integers069[GetPlayerId(players003[2])]=185
    set integers067[GetPlayerId(players003[3])]=50
    set integers068[GetPlayerId(players003[3])]=0
    set integers069[GetPlayerId(players003[3])]=129
    set integers067[GetPlayerId(players003[4])]=255
    set integers068[GetPlayerId(players003[4])]=252
    set integers069[GetPlayerId(players003[4])]=1
    set integers067[GetPlayerId(players003[5])]=255
    set integers068[GetPlayerId(players003[5])]=50
    set integers069[GetPlayerId(players003[5])]=0
    set integers067[GetPlayerId(players004[1])]=220
    set integers068[GetPlayerId(players004[1])]=50
    set integers069[GetPlayerId(players004[1])]=50
    set integers067[GetPlayerId(players004[2])]=50
    set integers068[GetPlayerId(players004[2])]=50
    set integers069[GetPlayerId(players004[2])]=50
    set integers067[GetPlayerId(players004[3])]=75
    set integers068[GetPlayerId(players004[3])]=150
    set integers069[GetPlayerId(players004[3])]=190
    set integers067[GetPlayerId(players004[4])]=16
    set integers068[GetPlayerId(players004[4])]=60
    set integers069[GetPlayerId(players004[4])]=18
    set integers067[GetPlayerId(players004[5])]=68
    set integers068[GetPlayerId(players004[5])]=42
    set integers069[GetPlayerId(players004[5])]=4
endfunction

// 8545 ~ 8585
function Func0454 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    set strings001[GetPlayerId(players003[0])]="|c00ff0303"
    set strings001[GetPlayerId(players003[1])]="|c000042ff"
    set strings001[GetPlayerId(players003[2])]="|c001ce6b9"
    set strings001[GetPlayerId(players003[3])]="|c00540081"
    set strings001[GetPlayerId(players003[4])]="|c00fffc01"
    set strings001[GetPlayerId(players003[5])]="|c00ff8000"
    set strings001[GetPlayerId(players004[0])]="|c0020c000"
    set strings001[GetPlayerId(players004[1])]="|c00e55bb0"
    set strings001[GetPlayerId(players004[2])]="|c00959697"
    set strings001[GetPlayerId(players004[3])]="|c007ebff1"
    set strings001[GetPlayerId(players004[4])]="|c00106246"
    set strings001[GetPlayerId(players004[5])]="|c004e2a04"
    call SetPlayerColor(players003[0],PLAYER_COLOR_RED)
    call SetPlayerColor(players003[1],PLAYER_COLOR_BLUE)
    call SetPlayerColor(players003[2],PLAYER_COLOR_CYAN)
    call SetPlayerColor(players003[3],PLAYER_COLOR_PURPLE)
    call SetPlayerColor(players003[4],PLAYER_COLOR_YELLOW)
    call SetPlayerColor(players003[5],PLAYER_COLOR_ORANGE)
    call SetPlayerColor(players004[0],PLAYER_COLOR_GREEN)
    call SetPlayerColor(players004[1],PLAYER_COLOR_PINK)
    call SetPlayerColor(players004[2],PLAYER_COLOR_LIGHT_GRAY)
    call SetPlayerColor(players004[3],PLAYER_COLOR_LIGHT_BLUE)
    call SetPlayerColor(players004[4],PLAYER_COLOR_AQUA)
    call SetPlayerColor(players004[5],PLAYER_COLOR_BROWN)
    set loc_integer01=1
    set loc_integer02=5
    loop
        if GetPlayerSlotState(players003[loc_integer01])==PLAYER_SLOT_STATE_EMPTY then
            call SetPlayerName(players003[loc_integer01],GetObjectName('n0DH')+" "+I2S(loc_integer01))
        endif
        if GetPlayerSlotState(players004[loc_integer01])==PLAYER_SLOT_STATE_EMPTY then
            call SetPlayerName(players004[loc_integer01],GetObjectName('n0DH')+" "+I2S(5+loc_integer01))
        endif
        set loc_integer01=loc_integer01+1
        exitwhen loc_integer01>loc_integer02
    endloop
endfunction

// 8587 ~ 8690
function Func0455 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02=125
    call SetUnitOwner(unit218,players003[1],false)
    call SetUnitOwner(unit219,players003[2],false)
    call SetUnitOwner(unit220,players003[3],false)
    call SetUnitOwner(unit221,players003[4],false)
    call SetUnitOwner(unit222,players003[5],false)
    call SetUnitOwner(unit223,players004[1],false)
    call SetUnitOwner(unit224,players004[2],false)
    call SetUnitOwner(unit225,players004[3],false)
    call SetUnitOwner(unit226,players004[4],false)
    call SetUnitOwner(unit227,players004[5],false)
    set units006[GetPlayerId(players003[1])]=unit218
    set units006[GetPlayerId(players003[2])]=unit219
    set units006[GetPlayerId(players003[3])]=unit220
    set units006[GetPlayerId(players003[4])]=unit221
    set units006[GetPlayerId(players003[5])]=unit222
    set units006[GetPlayerId(players004[1])]=unit223
    set units006[GetPlayerId(players004[2])]=unit224
    set units006[GetPlayerId(players004[3])]=unit225
    set units006[GetPlayerId(players004[4])]=unit226
    set units006[GetPlayerId(players004[5])]=unit227
    set loc_integer01=1
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=2
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=3
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=4
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=5
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=7
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=8
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=9
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=10
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set loc_integer01=11
    if GetLocalPlayer()==Player(loc_integer01)then
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,255)
    else
        call SetUnitVertexColor(units006[GetPlayerId(Player(loc_integer01))],255,255,255,loc_integer02)
    endif
    set reals005[GetPlayerId(players003[1])]=GetUnitX(units006[GetPlayerId(players003[1])])
    set reals005[GetPlayerId(players003[2])]=GetUnitX(units006[GetPlayerId(players003[2])])
    set reals005[GetPlayerId(players003[3])]=GetUnitX(units006[GetPlayerId(players003[3])])
    set reals005[GetPlayerId(players003[4])]=GetUnitX(units006[GetPlayerId(players003[4])])
    set reals005[GetPlayerId(players003[5])]=GetUnitX(units006[GetPlayerId(players003[5])])
    set reals005[GetPlayerId(players004[1])]=GetUnitX(units006[GetPlayerId(players004[1])])
    set reals005[GetPlayerId(players004[2])]=GetUnitX(units006[GetPlayerId(players004[2])])
    set reals005[GetPlayerId(players004[3])]=GetUnitX(units006[GetPlayerId(players004[3])])
    set reals005[GetPlayerId(players004[4])]=GetUnitX(units006[GetPlayerId(players004[4])])
    set reals005[GetPlayerId(players004[5])]=GetUnitX(units006[GetPlayerId(players004[5])])
    set reals006[GetPlayerId(players003[1])]=GetUnitY(units006[GetPlayerId(players003[1])])
    set reals006[GetPlayerId(players003[2])]=GetUnitY(units006[GetPlayerId(players003[2])])
    set reals006[GetPlayerId(players003[3])]=GetUnitY(units006[GetPlayerId(players003[3])])
    set reals006[GetPlayerId(players003[4])]=GetUnitY(units006[GetPlayerId(players003[4])])
    set reals006[GetPlayerId(players003[5])]=GetUnitY(units006[GetPlayerId(players003[5])])
    set reals006[GetPlayerId(players004[1])]=GetUnitY(units006[GetPlayerId(players004[1])])
    set reals006[GetPlayerId(players004[2])]=GetUnitY(units006[GetPlayerId(players004[2])])
    set reals006[GetPlayerId(players004[3])]=GetUnitY(units006[GetPlayerId(players004[3])])
    set reals006[GetPlayerId(players004[4])]=GetUnitY(units006[GetPlayerId(players004[4])])
    set reals006[GetPlayerId(players004[5])]=GetUnitY(units006[GetPlayerId(players004[5])])
endfunction
