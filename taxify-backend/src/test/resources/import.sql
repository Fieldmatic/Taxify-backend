insert into PUBLIC.ROLE (ID, NAME) values ('9c4cf245-67c7-466e-9ff2-9878acef91cb', 'ADMIN');
insert into PUBLIC.ROLE (ID, NAME) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'DRIVER');
insert into PUBLIC.ROLE (ID, NAME) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'PASSENGER');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('9c4cf245-67c7-466e-9ff2-9878acef91cb', 'GET_ALL_USERS');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('9c4cf245-67c7-466e-9ff2-9878acef91cb', 'BLOCK_USER');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('9c4cf245-67c7-466e-9ff2-9878acef91cb', 'REGISTER_DRIVER');
insert into PASSENGER (ID, BLOCKED, ACCOUNT_PROVIDER, CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, ROLE_ID, SURNAME, STATUS, IN_RIDE, CUSTOMER_ID) values ('6ff1150a-7b13-48c9-b1e1-df3f932358f7', false, 'LOCAL', 'Novi Sad', 'prijovic.uros13@gmail.com', 'Uroš', '$2a$10$opReg3R9Z/jSSP3gHsVvy.sscmAkasHM5vfp98P/xL75KOzdwWPbC', '06643250', null, '71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'Prijović', 'ACTIVE', false, 'cus_NExYsC84fHA5qt');
insert into PASSENGER (ID, BLOCKED, ACCOUNT_PROVIDER, CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, ROLE_ID, SURNAME, STATUS, IN_RIDE, CUSTOMER_ID) values ('e7863b33-6f4e-4b46-acb2-b22b2b0ef7e2', false, 'LOCAL', 'Novi Sad', 'ivana@gmail.com', 'Ivana', '$2a$10$opReg3R9Z/jSSP3gHsVvy.sscmAkasHM5vfp98P/xL75KOzdwWPbC', '06643250', null, '71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'Prijović', 'ACTIVE', false, 'cus_NHbbG9rf5hLjoP');
insert into PUBLIC.ADMIN (ID,BLOCKED,ACCOUNT_PROVIDER,  CITY, EMAIL, NAME, PASSWORD_HASH, PHONE_NUMBER, PROFILE_PICTURE, ROLE_ID, SURNAME) values ('201ab15f-3b22-4659-b839-235b9e6a728e', false,'LOCAL','Novi Sad', 'admin@gmail.com', 'Mico', '$2a$10$5tykbOhp3Uo2QrY2t3/uCOmsuwvEZl4KgEgZgN3At6JB3HQX.Z75y', '0653343701', null, '9c4cf245-67c7-466e-9ff2-9878acef91cb', 'Milic');
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
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'GET_RIDE_HISTORY');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'GET_RIDE_HISTORY');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'GET_DRIVER_INFO');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'GET_PAYMENT_METHODS');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'SET_PAYMENT_METHODS');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('71bcc310-14d0-481f-a1d2-102f1bd07f5d', 'PAYMENT_CHECKOUT');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('9c4cf245-67c7-466e-9ff2-9878acef91cb', 'GET_ALL_ADMINS_NOTIFICATIONS');
insert into ROLE_PERMISSIONS (ROLE_ID, PERMISSIONS) values ('c61a167c-93cf-4480-aed1-6e3c93e6a6cd', 'SET_DRIVER_INACTIVE');
insert into PARKING (ID, LONGITUDE, LATITUDE) values ('b2d0e25a-b97d-4189-8e5d-286cbad12cc8', 45.24064981289879, 19.837602745318073);