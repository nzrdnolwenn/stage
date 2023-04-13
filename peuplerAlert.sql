INSERT INTO STATION (id_station,name,date,latitude,longitude,date_modif) VALUES
(1,'coriolis/6901032/profiles/BD6901032_001.nc',20121124151600,43.37,7.89,20220728123028),
(2,'coriolis/6901032/profiles/BD6901032_001D.nc',20121124150600,43.362,7.898,20220728123027),
(3,'coriolis/6901032/profiles/BD6901032_002.nc',20121125112400,43.379,7.904,20220728123028),
(4,'coriolis/6901032/profiles/BD6901032_002D.nc',20121124171200,43.368,7.89,20220728123028),
(5,'coriolis/6901032/profiles/BD6901032_003.nc',20121126114300,43.398,7.913,20220728123029),
(6,'coriolis/6901032/profiles/BD6901032_003D.nc',20121125132900,43.377,7.899,20220728123029),
(7,'coriolis/6901032/profiles/BD6901032_004.nc',20121127114100,43.411,7.906,20220728123029),
(8,'coriolis/6901032/profiles/BD6901032_005.nc',20121128113300,43.418,7.861,20220728123029),
(9,'coriolis/6901032/profiles/BD6901032_006.nc',20121129113600,43.411,7.781,20220728123030),
(10,'coriolis/6901032/profiles/BD6901032_007.nc',20121130113100,43.38,7.716,20220728123030),
(11,'coriolis/6901032/profiles/BD6901032_008.nc',20121201113100,43.348,7.656,20220728123030),
(12,'coriolis/6901032/profiles/BD6901032_009.nc',20121206113700,43.318,7.456,20220728123031),
(13,'coriolis/6901032/profiles/BD6901032_010.nc',20121211113500,43.329,7.237,20220728123031),
(14,'coriolis/7900591/profiles/BD7900591_001.nc',20131216130200,43.226,29.209,20220728135551),
(15,'coriolis/7900591/profiles/BD7900591_001D.nc',20131216124600,43.244,29.246,20220728135551),
(16,'coriolis/7900591/profiles/BD7900591_002.nc',20131217113800,43.162,29.113,20220728135551),
(17,'coriolis/7900591/profiles/BD7900591_002D.nc',20131216151000,43.223,29.2,20220728135551),
(18,'coriolis/7900591/profiles/BD7900591_003.nc',20131218114200,43.088,29.036,20220728135552),
(19,'coriolis/7900591/profiles/BD7900591_004.nc',20131219114900,43.032,28.958,20220728135552),
(20,'coriolis/7900591/profiles/BD7900591_005.nc',20131220094100,42.995,28.899,20220728135552),
(21,'coriolis/7900591/profiles/BD7900591_006.nc',20131221094000,42.966,28.857,20220728135552),
(22,'coriolis/7900591/profiles/BD7900591_007.nc',20131222094800,42.929,28.806,20220728135553),
(23,'coriolis/7900591/profiles/BD7900591_008.nc',20131223094400,42.878,28.773,20220728135553),
(24,'coriolis/7900591/profiles/BD7900591_009.nc',20131224094100,42.83,28.743,20220728135553),	
(25,'coriolis/7900591/profiles/BD7900591_010.nc',20131225093900,42.786,28.722,20220728135553),
(26,'coriolis/3901999/profiles/BR3901999_001.nc',20210227080330,-59.11,-0.019,20221115092003),
(27,'coriolis/3901999/profiles/BR3901999_001D.nc',20210225201800,-59.001,-0.023,20221115092002),
(28,'coriolis/3901999/profiles/BR3901999_002.nc',20210309081030,-59.052,0.208,20221115092004),
(29,'coriolis/3901999/profiles/BR3901999_003.nc',20210319081630,-59.043,0.466,20221115092005),
(30,'bodc/6901182/profiles/BD6901182_001.nc',20151229114700,24.45,-60.377,20211214154332),
(31,'bodc/6901182/profiles/BD6901182_002.nc',20151230113500,24.397,-60.417,20211214154332),
(32,'bodc/6901182/profiles/BD6901182_003.nc',20151231113700,24.361,-60.443,20211214154332),
(33,'bodc/6901182/profiles/BD6901182_004.nc',20160101153900,24.329,-60.454,20211214154332);


INSERT INTO AREA (id_area,name,latitude_min,latitude_max,longitude_min,longitude_max) VALUES
('1','MEDITERRANEAN_SEA',30,45,-5,35),
('2','BLACK_SEA',40,48,27,42),
('3','NORTH_ATLANTIC',10,60,-80,0),
('4','SOUTH_ATLANTIC',-55,10,-70,-35),
('5','SOUTHERN_OCEAN',-90,-55,-180,180);
					
 
 INSERT INTO FLOAT_BGC (id_float,wmo,status,dac,id_area,id_pi,score_float) VALUES
(1,6901032,'D','coriolis',1,'4',15),	
(2,7900591,'D','coriolis',2,'5',63),	
(3,3901999,'A','coriolis',5,'6',95),	
(4,6901182,'D','bodc',3,'2',51);
 
 
INSERT INTO PROFILE (id_profile,name,date,latitude,longitude,date_modif,id_station,id_float) VALUES
(1,'PRES',20121126114300,43.398,7.913,20220728123029,5,1),
(2,'TEMP',20121126114300,43.398,7.913,20220728123029,5,1),
(3,'PSAL',20121126114300,43.398,7.913,20220728123029,5,1),
(4,'DOXY',20121126114300,43.398,7.913,20220728123029,5,1),
(5,'NITRATE',20121126114300,43.398,7.913,20220728123029,5,1),
(7,'CHLA',20121126114300,43.398,7.913,20220728123029,5,1),
(8,'BBP700',20121126114300,43.398,7.913,20220728123029,5,1),
(9,'RADIOMETRY',20121126114300,43.398,7.913,20220728123029,5,1),
(1,'PRES',20121125132900,43.377,7.899,20220728123029,6,1),
(2,'TEMP',20121125132900,43.377,7.899,20220728123029,6,1),
(3,'PSAL',20121125132900,43.377,7.899,20220728123029,6,1),
(4,'DOXY',20121125132900,43.377,7.899,20220728123029,6,1),
(5,'NITRATE',20121125132900,43.377,7.899,20220728123029,6,1),
(7,'CHLA',20121125132900,43.377,7.899,20220728123029,6,1),
(8,'BBP700',20121125132900,43.377,7.899,20220728123029,6,1),
(9,'RADIOMETRY',20121125132900,43.377,7.899,20220728123029,6,1),
(1,'PRES',20121127114100,43.411,7.906,20220728123029,7,1),
(2,'TEMP',20121127114100,43.411,7.906,20220728123029,7,1),
(3,'PSAL',20121127114100,43.411,7.906,20220728123029,7,1),
(4,'DOXY',20121127114100,43.411,7.906,20220728123029,7,1),
(5,'NITRATE',20121127114100,43.411,7.906,20220728123029,7,1),
(7,'CHLA',20121127114100,43.411,7.906,20220728123029,7,1),
(8,'BBP700',20121127114100,43.411,7.906,20220728123029,7,1),
(9,'RADIOMETRY',20121127114100,43.411,7.906,20220728123029,7,1),
(1,'PRES',20121128113300,43.418,7.861,20220728123029,8,1),
(2,'TEMP',20121128113300,43.418,7.861,20220728123029,8,1),
(3,'PSAL',20121128113300,43.418,7.861,20220728123029,8,1),
(4,'DOXY',20121128113300,43.418,7.861,20220728123029,8,1),
(5,'NITRATE',20121128113300,43.418,7.861,20220728123029,8,1),
(7,'CHLA',20121128113300,43.418,7.861,20220728123029,8,1),
(8,'BBP700',20121128113300,43.418,7.861,20220728123029,8,1),
(9,'RADIOMETRY',20121128113300,43.418,7.861,20220728123029,8,1),
(1,'PRES',20121129113600,43.411,7.781,20220728123030,9,1),
(2,'TEMP',20121129113600,43.411,7.781,20220728123030,9,1),
(3,'PSAL',20121129113600,43.411,7.781,20220728123030,9,1),
(4,'DOXY',20121129113600,43.411,7.781,20220728123030,9,1),
(5,'NITRATE',20121129113600,43.411,7.781,20220728123030,9,1),
(7,'CHLA',20121129113600,43.411,7.781,20220728123030,9,1),
(8,'BBP700',20121129113600,43.411,7.781,20220728123030,9,1),
(9,'RADIOMETRY',20121129113600,43.411,7.781,20220728123030,9,1),
(1,'PRES',20121130113100,43.38,7.716,20220728123030,10,1),
(2,'TEMP',20121130113100,43.38,7.716,20220728123030,10,1),
(3,'PSAL',20121130113100,43.38,7.716,20220728123030,10,1),
(4,'DOXY',20121130113100,43.38,7.716,20220728123030,10,1),
(5,'NITRATE',20121130113100,43.38,7.716,20220728123030,10,1),
(7,'CHLA',20121130113100,43.38,7.716,20220728123030,10,1),
(8,'BBP700',20121130113100,43.38,7.716,20220728123030,10,1),
(9,'RADIOMETRY',20121130113100,43.38,7.716,20220728123030,10,1),
(1,'PRES',20121201113100,43.348,7.656,20220728123030,11,1),
(2,'TEMP',20121201113100,43.348,7.656,20220728123030,11,1),
(3,'PSAL',20121201113100,43.348,7.656,20220728123030,11,1),
(4,'DOXY',20121201113100,43.348,7.656,20220728123030,11,1),
(5,'NITRATE',20121201113100,43.348,7.656,20220728123030,11,1),
(7,'CHLA',20121201113100,43.348,7.656,20220728123030,11,1),
(8,'BBP700',20121201113100,43.348,7.656,20220728123030,11,1),
(9,'RADIOMETRY',20121201113100,43.348,7.656,20220728123030,11,1),
(1,'PRES',20121206113700,43.318,7.456,20220728123031,12,1),
(2,'TEMP',20121206113700,43.318,7.456,20220728123031,12,1),
(3,'PSAL',20121206113700,43.318,7.456,20220728123031,12,1),
(4,'DOXY',20121206113700,43.318,7.456,20220728123031,12,1),
(5,'NITRATE',20121206113700,43.318,7.456,20220728123031,12,1),
(7,'CHLA',20121206113700,43.318,7.456,20220728123031,12,1),
(8,'BBP700',20121206113700,43.318,7.456,20220728123031,12,1),
(9,'RADIOMETRY',20121206113700,43.318,7.456,20220728123031,12,1),
(1,'PRES',20121211113500,43.329,7.237,20220728123031,13,1),
(2,'TEMP',20121211113500,43.329,7.237,20220728123031,13,1),
(3,'PSAL',20121211113500,43.329,7.237,20220728123031,13,1),
(4,'DOXY',20121211113500,43.329,7.237,20220728123031,13,1),
(5,'NITRATE',20121211113500,43.329,7.237,20220728123031,13,1),
(7,'CHLA',20121211113500,43.329,7.237,20220728123031,13,1),
(8,'BBP700',20121211113500,43.329,7.237,20220728123031,13,1),
(9,'RADIOMETRY',20121211113500,43.329,7.237,20220728123031,13,1),
(1,'PRES',20131216130200,43.226,29.209,20220728135551,14,2),
(2,'TEMP',20131216130200,43.226,29.209,20220728135551,14,2),
(3,'PSAL',20131216130200,43.226,29.209,20220728135551,14,2),
(4,'DOXY',20131216130200,43.226,29.209,20220728135551,14,2),
(7,'CHLA',20131216130200,43.226,29.209,20220728135551,14,2),
(8,'BBP700',20131216130200,43.226,29.209,20220728135551,14,2),
(9,'RADIOMETRY',20131216130200,43.226,29.209,20220728135551,14,2),
(1,'PRES',20131216124600,43.244,29.246,20220728135551,15,2),
(2,'TEMP',20131216124600,43.244,29.246,20220728135551,15,2),
(3,'PSAL',20131216124600,43.244,29.246,20220728135551,15,2),
(4,'DOXY',20131216124600,43.244,29.246,20220728135551,15,2),
(7,'CHLA',20131216124600,43.244,29.246,20220728135551,15,2),
(8,'BBP700',20131216124600,43.244,29.246,20220728135551,15,2),
(9,'RADIOMETRY',20131216124600,43.244,29.246,20220728135551,15,2),
(1,'PRES',20131217113800,43.162,29.113,20220728135551,16,2),
(2,'TEMP',20131217113800,43.162,29.113,20220728135551,16,2),
(3,'PSAL',20131217113800,43.162,29.113,20220728135551,16,2),
(4,'DOXY',20131217113800,43.162,29.113,20220728135551,16,2),
(7,'CHLA',20131217113800,43.162,29.113,20220728135551,16,2),
(8,'BBP700',20131217113800,43.162,29.113,20220728135551,16,2),
(9,'RADIOMETRY',20131217113800,43.162,29.113,20220728135551,16,2),
(1,'PRES',20131216151000,43.223,29.2,20220728135551,17,2),
(2,'TEMP',20131216151000,43.223,29.2,20220728135551,17,2),
(3,'PSAL',20131216151000,43.223,29.2,20220728135551,17,2),
(4,'DOXY',20131216151000,43.223,29.2,20220728135551,17,2),
(7,'CHLA',20131216151000,43.223,29.2,20220728135551,17,2),
(8,'BBP700',20131216151000,43.223,29.2,20220728135551,17,2),
(9,'RADIOMETRY',20131216151000,43.223,29.2,20220728135551,17,2),
(1,'PRES',20131218114200,43.088,29.036,20220728135552,18,2),
(2,'TEMP',20131218114200,43.088,29.036,20220728135552,18,2),
(3,'PSAL',20131218114200,43.088,29.036,20220728135552,18,2),
(4,'DOXY',20131218114200,43.088,29.036,20220728135552,18,2),
(7,'CHLA',20131218114200,43.088,29.036,20220728135552,18,2),
(8,'BBP700',20131218114200,43.088,29.036,20220728135552,18,2),
(9,'RADIOMETRY',20131218114200,43.088,29.036,20220728135552,18,2),
(1,'PRES',20131219114900,43.032,28.958,20220728135552,19,2),
(2,'TEMP',20131219114900,43.032,28.958,20220728135552,19,2),
(3,'PSAL',20131219114900,43.032,28.958,20220728135552,19,2),
(4,'DOXY',20131219114900,43.032,28.958,20220728135552,19,2),
(7,'CHLA',20131219114900,43.032,28.958,20220728135552,19,2),
(8,'BBP700',20131219114900,43.032,28.958,20220728135552,19,2),
(9,'RADIOMETRY',20131219114900,43.032,28.958,20220728135552,19,2),
(1,'PRES',20131220094100,42.995,28.899,20220728135552,20,2),
(2,'TEMP',20131220094100,42.995,28.899,20220728135552,20,2),
(3,'PSAL',20131220094100,42.995,28.899,20220728135552,20,2),
(4,'DOXY',20131220094100,42.995,28.899,20220728135552,20,2),
(7,'CHLA',20131220094100,42.995,28.899,20220728135552,20,2),
(8,'BBP700',20131220094100,42.995,28.899,20220728135552,20,2),
(9,'RADIOMETRY',20131220094100,42.995,28.899,20220728135552,20,2),
(1,'PRES',20131221094000,42.966,28.857,20220728135552,21,2),
(2,'TEMP',20131221094000,42.966,28.857,20220728135552,21,2),
(3,'PSAL',20131221094000,42.966,28.857,20220728135552,21,2),
(4,'DOXY',20131221094000,42.966,28.857,20220728135552,21,2),
(7,'CHLA',20131221094000,42.966,28.857,20220728135552,21,2),
(8,'BBP700',20131221094000,42.966,28.857,20220728135552,21,2),
(9,'RADIOMETRY',20131221094000,42.966,28.857,20220728135552,21,2),
(1,'PRES',20131222094800,42.929,28.806,20220728135553,22,2),
(2,'TEMP',20131222094800,42.929,28.806,20220728135553,22,2),
(3,'PSAL',20131222094800,42.929,28.806,20220728135553,22,2),
(4,'DOXY',20131222094800,42.929,28.806,20220728135553,22,2),
(7,'CHLA',20131222094800,42.929,28.806,20220728135553,22,2),
(8,'BBP700',20131222094800,42.929,28.806,20220728135553,22,2),
(9,'RADIOMETRY',20131222094800,42.929,28.806,20220728135553,22,2),
(1,'PRES',20131223094400,42.878,28.773,20220728135553,23,2),
(2,'TEMP',20131223094400,42.878,28.773,20220728135553,23,2),
(3,'PSAL',20131223094400,42.878,28.773,20220728135553,23,2),
(4,'DOXY',20131223094400,42.878,28.773,20220728135553,23,2),
(7,'CHLA',20131223094400,42.878,28.773,20220728135553,23,2),
(8,'BBP700',20131223094400,42.878,28.773,20220728135553,23,2),
(9,'RADIOMETRY',20131223094400,42.878,28.773,20220728135553,23,2),
(1,'PRES',20131224094100,42.83,28.743,20220728135553,24,2),
(2,'TEMP',20131224094100,42.83,28.743,20220728135553,24,2),
(3,'PSAL',20131224094100,42.83,28.743,20220728135553,24,2),
(4,'DOXY',20131224094100,42.83,28.743,20220728135553,24,2),
(7,'CHLA',20131224094100,42.83,28.743,20220728135553,24,2),
(8,'BBP700',20131224094100,42.83,28.743,20220728135553,24,2),
(9,'RADIOMETRY',20131224094100,42.83,28.743,20220728135553,24,2),
(1,'PRES',20131225093900,42.786,28.722,20220728135553,25,2),
(2,'TEMP',20131225093900,42.786,28.722,20220728135553,25,2),
(3,'PSAL',20131225093900,42.786,28.722,20220728135553,25,2),
(4,'DOXY',20131225093900,42.786,28.722,20220728135553,25,2),
(7,'CHLA',20131225093900,42.786,28.722,20220728135553,25,2),
(8,'BBP700',20131225093900,42.786,28.722,20220728135553,25,2),
(9,'RADIOMETRY',20131225093900,42.786,28.722,20220728135553,25,2),
(1,'PRES',20210227080330,-59.011,-0.019,20221115092003,26,3),
(2,'TEMP',20210227080330,-59.011,-0.019,20221115092003,26,3),
(3,'PSAL',20210227080330,-59.011,-0.019,20221115092003,26,3),
(4,'DOXY',20210227080330,-59.011,-0.019,20221115092003,26,3),
(1,'PRES',20210225201800,-59.001,-0.023,20221115092002,27,3),
(2,'TEMP',20210225201800,-59.001,-0.023,20221115092002,27,3),
(3,'PSAL',20210225201800,-59.001,-0.023,20221115092002,27,3),
(4,'DOXY',20210225201800,-59.001,-0.023,20221115092002,27,3),
(1,'PRES',20210309081030,-59.052,0.208,20221115092004,28,3),
(2,'TEMP',20210309081030,-59.052,0.208,20221115092004,28,3),
(3,'PSAL',20210309081030,-59.052,0.208,20221115092004,28,3),
(4,'DOXY',20210309081030,-59.052,0.208,20221115092004,28,3),
(1,'PRES',20210319081630,-59.043,0.466,20221115092005,29,3),
(2,'TEMP',20210319081630,-59.043,0.466,20221115092005,29,3),
(3,'PSAL',20210319081630,-59.043,0.466,20221115092005,29,3),
(4,'DOXY',20210319081630,-59.043,0.466,20221115092005,29,3),
(1,'PRES',20151229114700,24.45,-60.377,20211214154332,30,4),
(2,'TEMP',20151229114700,24.45,-60.377,20211214154332,30,4),
(3,'PSAL',20151229114700,24.45,-60.377,20211214154332,30,4),
(4,'DOXY',20151229114700,24.45,-60.377,20211214154332,30,4),
(7,'CHLA',20151229114700,24.45,-60.377,20211214154332,30,4),
(8,'BBP700',20151229114700,24.45,-60.377,20211214154332,30,4),
(9,'RADIOMETRY',20151229114700,24.45,-60.377,20211214154332,30,4),
(1,'PRES',20151230113500,24.397,-60.417,20211214154332,31,4),
(2,'TEMP',20151230113500,24.397,-60.417,20211214154332,31,4),
(3,'PSAL',20151230113500,24.397,-60.417,20211214154332,31,4),
(4,'DOXY',20151230113500,24.397,-60.417,20211214154332,31,4),
(7,'CHLA',20151230113500,24.397,-60.417,20211214154332,31,4),
(8,'BBP700',20151230113500,24.397,-60.417,20211214154332,31,4),
(9,'RADIOMETRY',20151230113500,24.397,-60.417,20211214154332,31,4),
(1,'PRES',20151231113700,24.361,-60.443,20211214154332,32,4),
(2,'TEMP',20151231113700,24.361,-60.443,20211214154332,32,4),
(3,'PSAL',20151231113700,24.361,-60.443,20211214154332,32,4),
(4,'DOXY',20151231113700,24.361,-60.443,20211214154332,32,4),
(7,'CHLA',20151231113700,24.361,-60.443,20211214154332,32,4),
(8,'BBP700',20151231113700,24.361,-60.443,20211214154332,32,4),
(9,'RADIOMETRY',20151231113700,24.361,-60.443,20211214154332,32,4),
(1,'PRES',20160101153900,24.329,-60.454,20211214154332,33,4),
(2,'TEMP',20160101153900,24.329,-60.454,20211214154332,33,4),
(3,'PSAL',20160101153900,24.329,-60.454,20211214154332,33,4),
(4,'DOXY',20160101153900,24.329,-60.454,20211214154332,33,4),
(7,'CHLA',20160101153900,24.329,-60.454,20211214154332,33,4),
(8,'BBP700',20160101153900,24.329,-60.454,20211214154332,33,4),
(9,'RADIOMETRY',20160101153900,24.329,-60.454,20211214154332,33,4);
 
 
 
INSERT INTO PI (id_pi,lastname,firstname,nationality) VALUES
('1','Claustre','Hervé','French'),
('2','Dall Olmo','Giorgio','Italian'),
('3','Thierry','Virginie','French'),
('4','D Ortenzio','Fabrizio','French'),
('5','Slabakova','Violetta','Bulgarian'),
('6','Morris','Tamaryn','South African');



'