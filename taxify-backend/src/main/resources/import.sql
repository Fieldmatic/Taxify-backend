insert into PUBLIC.ROLE (ID, NAME) values ('9c4cf245-67c7-466e-9ff2-9878acef91cb', 'ADMIN');
insert into PUBLIC.ROLE (ID, NAME) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'DRIVER');
insert into PUBLIC.ROLE (ID, NAME) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'PASSENGER');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'GET_DRIVER_INFO');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'SET_DRIVER_INACTIVE');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('9c4cf245-67c7-466e-9ff2-9878acef91cb', 'REGISTER_DRIVER');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'GET_ALL_NOTIFICATIONS');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'ANSWER_ON_ADDING_TO_THE_RIDE');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'LINK_PASSENGERS_TO_THE_RIDE');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'FIND_SUITABLE_DRIVER');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'GET_ASSIGNED_RIDE');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'GET_ASSIGNED_RIDE');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'FINISH_RIDE');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'RIDE_STATUS_CHANGED');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'REJECT_RIDE');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'LEAVE_COMPLAINT');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'LAST_FINISHED_RIDE_OF_PASSENGER');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'ADD_RIDE_REVIEW');
insert into PARKING (ID, LONGITUDE, LATITUDE) values ('b2d0e25a-b97d-4189-8e5d-286cbad12cc8', 45.24064981289879, 19.837602745318073);
insert into VEHICLE (ID, BABY_FRIENDLY, BRAND, HORSE_POWER, MODEL, OCCUPIED, PET_FRIENDLY, TYPE, LONGITUDE, LATITUDE) values ('08a26db0-21f1-4641-b74c-4ea70a536494', false, 'Golf', 200 , '7', false, false, 'SEDAN', 19.837602745318073, 45.24064981289879);
insert into DRIVER (ID,ACCOUNT_PROVIDER, CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, ROLE_ID, SURNAME, ACTIVE, BLOCKED, VEHICLE_ID) values ('a3317fb1-318d-4ca7-aad9-4883077ff76f','LOCAL', 'Novi Sad', 'milicftn@gmail.com', 'Mico', '$2a$10$VFIhXwCT6INPzg/TeX07deoKQM/yBV2mjectJZEDb6W8qxB9jiFQS', '0653343701', null, 'c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'Milic', false, false, '08a26db0-21f1-4641-b74c-4ea70a536494');
insert into PUBLIC.ADMIN (ID,ACCOUNT_PROVIDER,  CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, ROLE_ID, SURNAME) values ('201ab15f-3b22-4659-b839-235b9e6a728e','LOCAL','Novi Sad', 'admin@gmail.com', 'Mico', '$2a$10$5tykbOhp3Uo2QrY2t3/uCOmsuwvEZl4KgEgZgN3At6JB3HQX.Z75y', '0653343701', null, '9c4cf245-67c7-466e-9ff2-9878acef91cb', 'Milic');
insert into VEHICLE (ID, BABY_FRIENDLY, BRAND, HORSE_POWER, MODEL, OCCUPIED, PET_FRIENDLY, TYPE, LONGITUDE, LATITUDE) values ('7c8bcb98-4880-4b9e-b004-7f6f360289cc', false, 'Passat', 200 , '8', false, false, 'SEDAN', 19.846870, 45.254500);
insert into DRIVER (ID,ACCOUNT_PROVIDER,  CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, ROLE_ID, SURNAME, ACTIVE, BLOCKED, VEHICLE_ID) values ('3c58f52e-fd91-4ddf-8f17-bec231a65610','LOCAL', 'Novi Sad', 'milan@gmail.com', 'Milan', '$2a$10$VFIhXwCT6INPzg/TeX07deoKQM/yBV2mjectJZEDb6W8qxB9jiFQS', '0657552413', null, 'c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'Jovic', false, false, '7c8bcb98-4880-4b9e-b004-7f6f360289cc');
insert into VEHICLE (ID, BABY_FRIENDLY, BRAND, HORSE_POWER, MODEL, OCCUPIED, PET_FRIENDLY, TYPE, LONGITUDE, LATITUDE) values ('038deb1f-5119-42eb-930c-1888e10b62b4', false, 'Skoda', 200 , 'Octavia', false, false, 'SEDAN', 19.851704, 45.246471);
insert into DRIVER (ID,ACCOUNT_PROVIDER,  CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, ROLE_ID, SURNAME, ACTIVE, BLOCKED, VEHICLE_ID) values ('19852974-6b5d-4b57-a3b2-357d0111fa84','LOCAL', 'Novi Sad', 'zoran@gmail.com', 'Zoran', '$2a$10$VFIhXwCT6INPzg/TeX07deoKQM/yBV2mjectJZEDb6W8qxB9jiFQS', '0651234513', null, 'c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'Prijovic', false, false, '038deb1f-5119-42eb-930c-1888e10b62b4');
insert into VEHICLE (ID, BABY_FRIENDLY, BRAND, HORSE_POWER, MODEL, OCCUPIED, PET_FRIENDLY, TYPE, LONGITUDE, LATITUDE) values ('9ab72ba7-6971-4a86-a8a0-0a09fefc5260', false, 'Golf', 200 , '7', false, false, 'SEDAN', 19.842865, 45.248310);
insert into DRIVER (ID,ACCOUNT_PROVIDER,  CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, ROLE_ID, SURNAME, ACTIVE, BLOCKED, VEHICLE_ID) values ('24873a46-2a92-4ca9-968e-aa31588f5dfe','LOCAL', 'Novi Sad', 'brzi@gmail.com', 'Brzi', '$2a$10$VFIhXwCT6INPzg/TeX07deoKQM/yBV2mjectJZEDb6W8qxB9jiFQS', '0655643651', null, 'c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'Stevanovic', true, false, '9ab72ba7-6971-4a86-a8a0-0a09fefc5260');
insert into PUBLIC.PASSENGER (ID, ACCOUNT_PROVIDER, CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, SURNAME, ROLE_ID, IN_RIDE, STATUS) values ('9710fe20-f47c-416d-a897-0a473ff1d3c8', 'LOCAL', 'Novi Sad', 'uros@gmail.com', 'Uros', '$2y$10$aLiYa7ov0955rX6lfYdq3OvlKWQJxn1BvbGsehIPBIu4Nf6BrEcAS', '0653343701', null, 'Prijovic', '71bcc310-14d0-481f-a1d2-102f1bd07f5d', false, 'ACTIVE');
insert into PUBLIC.PASSENGER (ID, ACCOUNT_PROVIDER, CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, SURNAME, ROLE_ID, IN_RIDE, STATUS) values ('7a2011d4-fff3-4722-aec3-0e1cc1bf9cc2', 'LOCAL', 'Novi Sad', 'ivana@gmail.com', 'Ivana', '$2y$10$aLiYa7ov0955rX6lfYdq3OvlKWQJxn1BvbGsehIPBIu4Nf6BrEcAS', '0653343701', null, 'Prijovic', '71bcc310-14d0-481f-a1d2-102f1bd07f5d', false, 'ACTIVE');