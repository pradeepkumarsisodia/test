delete from cronus_own.audit_trail where screen_id = 'DATA MANIPULATION';
delete from cronus_own.GROUP_ACTION_PERMISSION  where ACTION_ID in (select ACTION_ID from cronus_own.ACTION where SCREEN_ID  = 'DATA MANIPULATION');
delete from cronus_own.ACTION where SCREEN_ID  = 'DATA MANIPULATION';
delete from CRONUS_OWN.screen where screen_id = 'DATA MANIPULATION';
Insert into CRONUS_OWN.screen(screen_id,parent_screen_id,description) values('DATA MANIPULATION','DATA MANIPULATION','This screen is used to perform DML action in Cronus on sybase and oracle database');
Insert into cronus_own.ACTION (ACTION_ID,ACTION_NAME,SCREEN_ID,DESCRIPTION) values ( ( select max(action_id) +1  from CRONUS_OWN.action) ,'View','DATA MANIPULATION','View DATA MANIPULATION Screen');
Insert into cronus_own.ACTION (ACTION_ID,ACTION_NAME,SCREEN_ID,DESCRIPTION) values ( ( select max(action_id) +1 from CRONUS_OWN.action) ,'Search','DATA MANIPULATION','DATA MANIPULATION Search control permission');
Insert into cronus_own.ACTION (ACTION_ID,ACTION_NAME,SCREEN_ID,DESCRIPTION) values ( ( select max(action_id) +1 from CRONUS_OWN.action) ,'Save','DATA MANIPULATION','DATA MANIPULATION Save control permission');
commit;