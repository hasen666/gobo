indexing

   description:
   
   "database for mapping to titlecase";

   library:    "Gobo Eiffel Unicode Library"
   author:     "michael kretschmar <majkel.kretschmar@epost.de>"
   copyright:  "Copyright (c) 2001, michael kretschmar and others"
   license:    "Eiffel Forum License v1 (see forum.txt)"
   date:       "$Date$"
   revision:   "$Revision$"

   note:        "This file generated by a script from the Unicode %
                 %database and beautified by hand and emacs";

class UC_CTYPE_TITLECASE

inherit
   UC_CONSTANTS
      end

feature {UC_CTYPE} -- Titlecase conversion tables

   titlecase_00: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,65,66,67,
		     68,69,70,71,
		     72,73,74,75,
		     76,77,78,79,
		     80,81,82,83,
		     84,85,86,87,
		     88,89,90,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,924,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     192,193,194,195,
		     196,197,198,199,
		     200,201,202,203,
		     204,205,206,207,
		     208,209,210,211,
		     212,213,214,-1,
		     216,217,218,219,
		     220,221,222,376
		     >>
      end

   titlecase_01: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,256,-1,258,
		     -1,260,-1,262,
		     -1,264,-1,266,
		     -1,268,-1,270,
		     -1,272,-1,274,
		     -1,276,-1,278,
		     -1,280,-1,282,
		     -1,284,-1,286,
		     -1,288,-1,290,
		     -1,292,-1,294,
		     -1,296,-1,298,
		     -1,300,-1,302,
		     -1,73,-1,306,
		     -1,308,-1,310,
		     -1,-1,313,-1,
		     315,-1,317,-1,
		     319,-1,321,-1,
		     323,-1,325,-1,
		     327,-1,-1,330,
		     -1,332,-1,334,
		     -1,336,-1,338,
		     -1,340,-1,342,
		     -1,344,-1,346,
		     -1,348,-1,350,
		     -1,352,-1,354,
		     -1,356,-1,358,
		     -1,360,-1,362,
		     -1,364,-1,366,
		     -1,368,-1,370,
		     -1,372,-1,374,
		     -1,-1,377,-1,
		     379,-1,381,83,
		     -1,-1,-1,386,
		     -1,388,-1,-1,
		     391,-1,-1,-1,
		     395,-1,-1,-1,
		     -1,-1,401,-1,
		     -1,502,-1,-1,
		     -1,408,-1,-1,
		     -1,-1,-1,-1,
		     -1,416,-1,418,
		     -1,420,-1,-1,
		     423,-1,-1,-1,
		     -1,428,-1,-1,
		     431,-1,-1,-1,
		     435,-1,437,-1,
		     -1,440,-1,-1,
		     -1,444,-1,503,
		     -1,-1,-1,-1,
		     453,-1,453,456,
		     -1,456,459,-1,
		     459,-1,461,-1,
		     463,-1,465,-1,
		     467,-1,469,-1,
		     471,-1,473,-1,
		     475,398,-1,478,
		     -1,480,-1,482,
		     -1,484,-1,486,
		     -1,488,-1,490,
		     -1,492,-1,494,
		     -1,498,-1,498,
		     -1,500,-1,-1,
		     -1,504,-1,506,
		     -1,508,-1,510
		     >>
      end

   titlecase_02: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,512,-1,514,
		     -1,516,-1,518,
		     -1,520,-1,522,
		     -1,524,-1,526,
		     -1,528,-1,530,
		     -1,532,-1,534,
		     -1,536,-1,538,
		     -1,540,-1,542,
		     -1,-1,-1,546,
		     -1,548,-1,550,
		     -1,552,-1,554,
		     -1,556,-1,558,
		     -1,560,-1,562,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,385,
		     390,-1,393,394,
		     -1,399,-1,400,
		     -1,-1,-1,-1,
		     403,-1,-1,404,
		     -1,-1,-1,-1,
		     407,406,-1,-1,
		     -1,-1,-1,412,
		     -1,-1,413,-1,
		     -1,415,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     422,-1,-1,425,
		     -1,-1,-1,-1,
		     430,-1,433,434,
		     -1,-1,-1,-1,
		     -1,-1,439,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_03: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,921,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     902,904,905,906,
		     -1,913,914,915,
		     916,917,918,919,
		     920,921,922,923,
		     924,925,926,927,
		     928,929,931,931,
		     932,933,934,935,
		     936,937,938,939,
		     908,910,911,-1,
		     914,920,-1,-1,
		     -1,934,928,-1,
		     -1,-1,-1,986,
		     -1,988,-1,990,
		     -1,992,-1,994,
		     -1,996,-1,998,
		     -1,1000,-1,1002,
		     -1,1004,-1,1006,
		     922,929,931,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_04: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     1040,1041,1042,1043,
		     1044,1045,1046,1047,
		     1048,1049,1050,1051,
		     1052,1053,1054,1055,
		     1056,1057,1058,1059,
		     1060,1061,1062,1063,
		     1064,1065,1066,1067,
		     1068,1069,1070,1071,
		     1024,1025,1026,1027,
		     1028,1029,1030,1031,
		     1032,1033,1034,1035,
		     1036,1037,1038,1039,
		     -1,1120,-1,1122,
		     -1,1124,-1,1126,
		     -1,1128,-1,1130,
		     -1,1132,-1,1134,
		     -1,1136,-1,1138,
		     -1,1140,-1,1142,
		     -1,1144,-1,1146,
		     -1,1148,-1,1150,
		     -1,1152,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,1164,-1,1166,
		     -1,1168,-1,1170,
		     -1,1172,-1,1174,
		     -1,1176,-1,1178,
		     -1,1180,-1,1182,
		     -1,1184,-1,1186,
		     -1,1188,-1,1190,
		     -1,1192,-1,1194,
		     -1,1196,-1,1198,
		     -1,1200,-1,1202,
		     -1,1204,-1,1206,
		     -1,1208,-1,1210,
		     -1,1212,-1,1214,
		     -1,-1,1217,-1,
		     1219,-1,-1,-1,
		     1223,-1,-1,-1,
		     1227,-1,-1,-1,
		     -1,1232,-1,1234,
		     -1,1236,-1,1238,
		     -1,1240,-1,1242,
		     -1,1244,-1,1246,
		     -1,1248,-1,1250,
		     -1,1252,-1,1254,
		     -1,1256,-1,1258,
		     -1,1260,-1,1262,
		     -1,1264,-1,1266,
		     -1,1268,-1,-1,
		     -1,1272,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_05: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,1329,1330,1331,
		     1332,1333,1334,1335,
		     1336,1337,1338,1339,
		     1340,1341,1342,1343,
		     1344,1345,1346,1347,
		     1348,1349,1350,1351,
		     1352,1353,1354,1355,
		     1356,1357,1358,1359,
		     1360,1361,1362,1363,
		     1364,1365,1366,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_06: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_1e: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,7680,-1,7682,
		     -1,7684,-1,7686,
		     -1,7688,-1,7690,
		     -1,7692,-1,7694,
		     -1,7696,-1,7698,
		     -1,7700,-1,7702,
		     -1,7704,-1,7706,
		     -1,7708,-1,7710,
		     -1,7712,-1,7714,
		     -1,7716,-1,7718,
		     -1,7720,-1,7722,
		     -1,7724,-1,7726,
		     -1,7728,-1,7730,
		     -1,7732,-1,7734,
		     -1,7736,-1,7738,
		     -1,7740,-1,7742,
		     -1,7744,-1,7746,
		     -1,7748,-1,7750,
		     -1,7752,-1,7754,
		     -1,7756,-1,7758,
		     -1,7760,-1,7762,
		     -1,7764,-1,7766,
		     -1,7768,-1,7770,
		     -1,7772,-1,7774,
		     -1,7776,-1,7778,
		     -1,7780,-1,7782,
		     -1,7784,-1,7786,
		     -1,7788,-1,7790,
		     -1,7792,-1,7794,
		     -1,7796,-1,7798,
		     -1,7800,-1,7802,
		     -1,7804,-1,7806,
		     -1,7808,-1,7810,
		     -1,7812,-1,7814,
		     -1,7816,-1,7818,
		     -1,7820,-1,7822,
		     -1,7824,-1,7826,
		     -1,7828,-1,-1,
		     -1,-1,-1,7776,
		     -1,-1,-1,-1,
		     -1,7840,-1,7842,
		     -1,7844,-1,7846,
		     -1,7848,-1,7850,
		     -1,7852,-1,7854,
		     -1,7856,-1,7858,
		     -1,7860,-1,7862,
		     -1,7864,-1,7866,
		     -1,7868,-1,7870,
		     -1,7872,-1,7874,
		     -1,7876,-1,7878,
		     -1,7880,-1,7882,
		     -1,7884,-1,7886,
		     -1,7888,-1,7890,
		     -1,7892,-1,7894,
		     -1,7896,-1,7898,
		     -1,7900,-1,7902,
		     -1,7904,-1,7906,
		     -1,7908,-1,7910,
		     -1,7912,-1,7914,
		     -1,7916,-1,7918,
		     -1,7920,-1,7922,
		     -1,7924,-1,7926,
		     -1,7928,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_1f: ARRAY[INTEGER] is
      once
	 Result := <<
		     7944,7945,7946,7947,
		     7948,7949,7950,7951,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     7960,7961,7962,7963,
		     7964,7965,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     7976,7977,7978,7979,
		     7980,7981,7982,7983,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     7992,7993,7994,7995,
		     7996,7997,7998,7999,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8008,8009,8010,8011,
		     8012,8013,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,8025,-1,8027,
		     -1,8029,-1,8031,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8040,8041,8042,8043,
		     8044,8045,8046,8047,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8122,8123,8136,8137,
		     8138,8139,8154,8155,
		     8184,8185,8170,8171,
		     8186,8187,-1,-1,
		     8072,8073,8074,8075,
		     8076,8077,8078,8079,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8088,8089,8090,8091,
		     8092,8093,8094,8095,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8104,8105,8106,8107,
		     8108,8109,8110,8111,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8120,8121,-1,8124,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,921,-1,
		     -1,-1,-1,8140,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8152,8153,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8168,8169,-1,-1,
		     -1,8172,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,8188,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_21: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     8544,8545,8546,8547,
		     8548,8549,8550,8551,
		     8552,8553,8554,8555,
		     8556,8557,8558,8559,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_24: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     9398,9399,9400,9401,
		     9402,9403,9404,9405,
		     9406,9407,9408,9409,
		     9410,9411,9412,9413,
		     9414,9415,9416,9417,
		     9418,9419,9420,9421,
		     9422,9423,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase_ff: ARRAY[INTEGER] is
      once
	 Result := <<
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,65313,65314,65315,
		     65316,65317,65318,65319,
		     65320,65321,65322,65323,
		     65324,65325,65326,65327,
		     65328,65329,65330,65331,
		     65332,65333,65334,65335,
		     65336,65337,65338,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1,
		     -1,-1,-1,-1
		     >>
      end

   titlecase: ARRAY[ARRAY[INTEGER]] is
      once
	 Result := <<
		     titlecase_00,titlecase_01,titlecase_02,titlecase_03,
		     titlecase_04,titlecase_05,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_1e,titlecase_1f,
		     titlecase_06,titlecase_21,titlecase_06,titlecase_06,
		     titlecase_24,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_06,
		     titlecase_06,titlecase_06,titlecase_06,titlecase_ff
		     >>
      end

   --integer used: 3328

end

