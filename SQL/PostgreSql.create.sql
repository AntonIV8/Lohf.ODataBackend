




CREATE TABLE user_service_spec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 service_spec_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic_log (

 primaryKey UUID NOT NULL,

 resource_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 resource_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary_value (

 primaryKey UUID NOT NULL,

 value VARCHAR(255) NULL,

 dictionary_id UUID NOT NULL,

 dictionary_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec (

 primaryKey UUID NOT NULL,

 enum TEXT NOT NULL,

 type TEXT NOT NULL,

 existent BOOLEAN NOT NULL,

 shared BOOLEAN NOT NULL,

 version INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 resource_common_id_m0 UUID NOT NULL,

 parent_service_spec_id UUID NULL,

 resource_common_id UUID NULL,

 cardinality_m0 UUID NOT NULL,

 parent_service_spec_id_m0 UUID NOT NULL,

 cardinality UUID NOT NULL,

 parent_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_log (

 primaryKey UUID NOT NULL,

 service_id INT NOT NULL,

 cfs_id INT NULL,

 parent_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 service_spec_id INT NULL,

 state TEXT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE characteristic_type (

 primaryKey UUID NOT NULL,

 regex VARCHAR(255) NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 type_m0 UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 type UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE order_item (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 price DOUBLE PRECISION NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 log TEXT NULL,

 clone_service_id UUID NULL,

 service_id_m0 UUID NOT NULL,

 service_order_id UUID NOT NULL,

 creator_id UUID NULL,

 modifier_id UUID NULL,

 clone_service_id_m0 UUID NOT NULL,

 parent_id UUID NULL,

 state_m0 UUID NOT NULL,

 state UUID NOT NULL,

 service_id UUID NOT NULL,

 creator_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 group_id UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE cardinality_type (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE grp (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description VARCHAR(255) NULL,

 imported BOOLEAN NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE usr (

 primaryKey UUID NOT NULL,

 login VARCHAR(255) NOT NULL,

 password TEXT NULL,

 locked BOOLEAN NOT NULL,

 email VARCHAR(255) NOT NULL,

 domain VARCHAR(255) NULL,

 last_name VARCHAR(255) NOT NULL,

 first_name VARCHAR(255) NULL,

 middle_name VARCHAR(255) NULL,

 phone TEXT NULL,

 phone_work TEXT NULL,

 phone_mobile TEXT NULL,

 position VARCHAR(255) NULL,

 department VARCHAR(255) NULL,

 photo TEXT NULL,

 thumbnail TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_locked TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 dt_lastlogin TIMESTAMP(3) NULL,

 full_name TEXT NULL,

 short_name TEXT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 resource_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_usage_spec (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 map BOOLEAN NOT NULL,

 unit TEXT NULL,

 type UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 type_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE product_catalog (

 primaryKey UUID NOT NULL,

 spec_id INT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 version INT NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_group (

 primaryKey UUID NOT NULL,

 group_id UUID NOT NULL,

 group_id_m0 UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic_log (

 primaryKey UUID NOT NULL,

 service_characteristic_id INT NOT NULL,

 name VARCHAR(255) NULL,

 value VARCHAR(255) NULL,

 service_id INT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 service_spec_id_m0 UUID NOT NULL,

 type UUID NOT NULL,

 dictionary_id_m0 UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 dictionary_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_spec (

 primaryKey UUID NOT NULL,

 version INT NOT NULL,

 enum TEXT NOT NULL,

 category TEXT NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 cardinality_m0 UUID NOT NULL,

 cardinality UUID NOT NULL,

 catalog_key UUID NULL,

 parent_id UUID NULL,

 parent_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_spec_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 can_be_overridden BOOLEAN NOT NULL,

 label VARCHAR(255) NULL,

 list INT NULL,

 dictionary_id UUID NULL,

 resource_spec_id_m0 UUID NOT NULL,

 dictionary_id_m0 UUID NOT NULL,

 type UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_common (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 dt_ended TIMESTAMP(3) NULL,

 customer_id UUID NOT NULL,

 parent_id UUID NULL,

 cfs_id UUID NULL,

 contragent_id_m0 UUID NOT NULL,

 service_spec_id UUID NOT NULL,

 state UUID NOT NULL,

 cfs_id_m0 UUID NOT NULL,

 contragent_id UUID NULL,

 state_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_shared (

 primaryKey UUID NOT NULL,

 external_id TEXT NULL,

 existent BOOLEAN NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 category TEXT NOT NULL,

 type TEXT NOT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_resource_spec (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 resource_spec_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_state (

 primaryKey UUID NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dba (

 primaryKey UUID NOT NULL,

 dt_upgrade TIMESTAMP(3) NOT NULL,

 description VARCHAR(255) NULL,

 script VARCHAR(255) NOT NULL,

 prev_version UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer (

 primaryKey UUID NOT NULL,

 customer TEXT NOT NULL,

 descr TEXT NULL,

 service_manager_id INT NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 archive BOOLEAN NOT NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 internal BOOLEAN NOT NULL,

 telco BOOLEAN NOT NULL,

 office BOOLEAN NOT NULL,

 barrier BOOLEAN NOT NULL,

 pci_dss BOOLEAN NULL,

 federal_low_152 BOOLEAN NULL,

 account_manager_id INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE role (

 primaryKey UUID NOT NULL,

 name TEXT NOT NULL,

 description VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE customer_acl (

 primaryKey UUID NOT NULL,

 a_create BOOLEAN NOT NULL,

 a_read BOOLEAN NOT NULL,

 a_update BOOLEAN NOT NULL,

 a_delete BOOLEAN NOT NULL,

 group_id_m0 UUID NOT NULL,

 group_id UUID NOT NULL,

 customer_id_m0 UUID NOT NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_role (

 primaryKey UUID NOT NULL,

 role_id UUID NOT NULL,

 user_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_order (

 primaryKey UUID NOT NULL,

 description TEXT NULL,

 dt_completed TIMESTAMP(3) NULL,

 dt_created TIMESTAMP(3) NOT NULL,

 dt_modified TIMESTAMP(3) NOT NULL,

 dt_started TIMESTAMP(3) NULL,

 external_id UUID NULL,

 price DOUBLE PRECISION NOT NULL,

 customer_id_m0 UUID NOT NULL,

 state_m0 UUID NOT NULL,

 state UUID NOT NULL,

 modifier_id UUID NULL,

 creator_id UUID NULL,

 contragent_id UUID NULL,

 customer_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 customer_id UUID NOT NULL,

 parent_id UUID NULL,

 cfs_id_m0 UUID NOT NULL,

 contragent_id UUID NULL,

 resource_spec_id UUID NOT NULL,

 cfs_id UUID NOT NULL,

 resource_spec_id_m0 UUID NOT NULL,

 resource_shared_id UUID NULL,

 parent_service_id UUID NULL,

 resource_shared_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE service_characteristic (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 value VARCHAR(255) NULL,

 service_id UUID NOT NULL,

 service_id_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE catalog (

 primaryKey UUID NOT NULL,

 code TEXT NOT NULL,

 svc TEXT NOT NULL,

 svc_type TEXT NULL,

 data_version TEXT NULL,

 dt_sync TIMESTAMP(3) NULL,

 descr TEXT NULL,

 vat TEXT NULL,

 is_actual BOOLEAN NOT NULL,

 dt_creation TIMESTAMP(3) NULL,

 parent_key UUID NULL,

 measure TEXT NULL,

 measure_key UUID NULL,

 status TEXT NULL,

 formula_key UUID NULL,

 billing_object_type_guid UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE user_service_order (

 primaryKey UUID NOT NULL,

 action TEXT NOT NULL,

 dt_action TIMESTAMP(3) NOT NULL,

 user_id UUID NOT NULL,

 service_order_id UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE contragent (

 primaryKey UUID NOT NULL,

 contragent VARCHAR(255) NOT NULL,

 descr TEXT NULL,

 official_name VARCHAR(255) NULL,

 creator_id INT NULL,

 modifier_id INT NULL,

 dt_created TIMESTAMP(3) NULL,

 dt_modified TIMESTAMP(3) NULL,

 INN TEXT NULL,

 guid1c UUID NULL,

 archive BOOLEAN NULL,

 dt_archive TIMESTAMP(3) NULL,

 archiver_id INT NULL,

 archive_reason_id INT NULL,

 customer_id UUID NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE resource_log (

 primaryKey UUID NOT NULL,

 resource_id INT NOT NULL,

 parent_id INT NULL,

 cfs_id INT NULL,

 parent_service_id INT NULL,

 resource_shared_id INT NULL,

 contragent_id INT NULL,

 customer_id INT NULL,

 resource_spec_id INT NULL,

 name VARCHAR(255) NULL,

 description TEXT NULL,

 external_id TEXT NULL,

 start_time TIMESTAMP(3) NOT NULL,

 end_time TIMESTAMP(3) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE dictionary (

 primaryKey UUID NOT NULL,

 name VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE user_service_spec ADD CONSTRAINT FKfa1f4563ff704c84b0672642db1616f2 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index93831155d2bedac1a8df2d16a1694c5571cfcc90 on user_service_spec (service_spec_id); 

 ALTER TABLE user_service_spec ADD CONSTRAINT FKe2481f20f7b14b4e8dbbe2926ccc1630 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index71df8ee96e12de1d453119693217a230a83437f6 on user_service_spec (user_id); 

 ALTER TABLE dictionary_value ADD CONSTRAINT FK6b7520a71be748ffaa15e3af8cb1d841 FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Index708041deac38faac3e07a74677612a6c5f40c467 on dictionary_value (dictionary_id); 

 ALTER TABLE dictionary_value ADD CONSTRAINT FK3547ca48f9b145f38dc9977e1033e81f FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexec9200d62ac4b3e687fbba5591a5af7a2b32900a on dictionary_value (dictionary_id_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK7be7b4e6beb7438ab1f1efbf52987766 FOREIGN KEY (resource_common_id_m0) REFERENCES resource_common; 
CREATE INDEX Indexf8ee2ea7c3e629838d88ee66a0c35d559e3c046a on resource_spec (resource_common_id_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK2a48c60d308b4fcb8a92cb65a617d545 FOREIGN KEY (parent_service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index888d1957c11f9037c0e91396fd922bf6224ae0e6 on resource_spec (parent_service_spec_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK9c0ccb89af734f4a980a1871a62dd0d9 FOREIGN KEY (resource_common_id) REFERENCES resource_common; 
CREATE INDEX Indexc64ab9ecbb0144bd87f4a1218889927d483ab2dd on resource_spec (resource_common_id); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK0b8564758692491e9f59f074243f700c FOREIGN KEY (cardinality_m0) REFERENCES cardinality_type; 
CREATE INDEX Index7221e0377e9a9073e6d389733493de9364e96ce2 on resource_spec (cardinality_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FKe79f46091ff54cb5ad3896b1df4e2176 FOREIGN KEY (parent_service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexdfe3de3f8f6cd46ed48d7d9dd6c4e519273ca3a3 on resource_spec (parent_service_spec_id_m0); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK62280d38ac56477288309e6ce4a99b18 FOREIGN KEY (cardinality) REFERENCES cardinality_type; 
CREATE INDEX Indexb846adf318dfb6a1fd4885f89dbce5c6039bd500 on resource_spec (cardinality); 

 ALTER TABLE resource_spec ADD CONSTRAINT FK1ee65dda8d4b420585b1baf78bcb7877 FOREIGN KEY (parent_id) REFERENCES resource_spec; 
CREATE INDEX Index111e380e8fb7eadfdfa87d469b6251099fb70299 on resource_spec (parent_id); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FK9f0ac21b43724d89a7045f23337e5c77 FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Index565a312ab27f494090f2b124999463a5a4f644b2 on service_usage_spec (type_m0); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FK19a99731fd2d43fb8403c5334862281a FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index94a41849a4f7f38bb4cf8fa10fed3bb8a0377f86 on service_usage_spec (service_spec_id); 

 ALTER TABLE service_usage_spec ADD CONSTRAINT FK3b84b1fbc8bf40d4960c8b79ec0ab597 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexbf60025b832773b4c44ee86404642aaaf9f7d852 on service_usage_spec (type); 

 ALTER TABLE order_item ADD CONSTRAINT FKf243e02123dd4e9aa4c4000e4dd59a5b FOREIGN KEY (clone_service_id) REFERENCES service; 
CREATE INDEX Index0ca65ffffc31fb6ea9e75729f36b3ed5523d2e33 on order_item (clone_service_id); 

 ALTER TABLE order_item ADD CONSTRAINT FK0eeb9f5278ea44ed9f467047b4981b88 FOREIGN KEY (service_id_m0) REFERENCES service; 
CREATE INDEX Index9ccea8d1c1207a98497624fe8d180eb03fd47c85 on order_item (service_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK24d6cf486c234febb4386c94ac184e90 FOREIGN KEY (service_order_id) REFERENCES service_order; 
CREATE INDEX Indexec6177ef296615bae6a93c849f11f9a958b12716 on order_item (service_order_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKb105f7be5a214e02aeda7d20df67bc7e FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index629d50476c0e5d8241371571f91bfecda2cdd2c9 on order_item (creator_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKb9621ce0b66349538f3449fd71f2b1fa FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index56465c360a56c50d104948f12363d10e36459845 on order_item (modifier_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKeb57432cc7a84d4e91d7c58fbcdc9875 FOREIGN KEY (clone_service_id_m0) REFERENCES service; 
CREATE INDEX Index0a705cd48879fb571d86cd39560cd1e49a5ceacc on order_item (clone_service_id_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK35b2f73cd4e04fc585cb32e07890a38b FOREIGN KEY (parent_id) REFERENCES order_item; 
CREATE INDEX Index6e26d531accc8ee0c399eafe3054ec9dd56ef7f6 on order_item (parent_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKedb876a67e4d4d8d908249a73908729c FOREIGN KEY (state_m0) REFERENCES order_state; 
CREATE INDEX Index8d7d541c02fd3842cab88234640777370ed3e942 on order_item (state_m0); 

 ALTER TABLE order_item ADD CONSTRAINT FK5f6a6678b6144b1aa5fe9b0292e1cd52 FOREIGN KEY (state) REFERENCES order_state; 
CREATE INDEX Index0bbe667a8e4ff00d2973137e9f1608c71d2195b8 on order_item (state); 

 ALTER TABLE order_item ADD CONSTRAINT FK6bec5c4896e6456ab1fb655896914aad FOREIGN KEY (service_id) REFERENCES service; 
CREATE INDEX Index809eace3ee97f6d925cdcd669295ad9b3387b9b4 on order_item (service_id); 

 ALTER TABLE order_item ADD CONSTRAINT FKd9d1b4c2500f4054b12df0080902f433 FOREIGN KEY (creator_id_m0) REFERENCES usr; 
CREATE INDEX Index99043f1ffd6f4e814224d295aa21bf8233c08e5a on order_item (creator_id_m0); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FKd52407717bf847eab5ab2f9d1f1a4abe FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Indexc2450435d7ba9d0403022967febad528bf6a3783 on service_spec_acl (group_id); 

 ALTER TABLE service_spec_acl ADD CONSTRAINT FKa34f0280bf06408b9b67048966ea4407 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Indexe182a8117f4be3d1c7b3fdd0911f197ec91f680d on service_spec_acl (service_spec_id); 

 ALTER TABLE resource_characteristic ADD CONSTRAINT FK17a339fb2ad44027a26de2e552e26e31 FOREIGN KEY (resource_id) REFERENCES resource; 
CREATE INDEX Indexccafd08e6e0a968a8d2f21cdabef3e11f9d0f440 on resource_characteristic (resource_id); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FK9e453a2476b64802b6714ed4dd646289 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexc7c637bb031a3d56f42f260b975baf289c522bb9 on resource_usage_spec (type); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FKab65ebc1de044fb985fd71eaa089235d FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index80b3b281aee1760f7ee048916b46cf28f0d1d8e2 on resource_usage_spec (resource_spec_id); 

 ALTER TABLE resource_usage_spec ADD CONSTRAINT FK9d95e51bca1949fb84b61044bfe079cb FOREIGN KEY (type_m0) REFERENCES characteristic_type; 
CREATE INDEX Indexce3f4c65bf64ec0c3c80e660173d6fb5af410e42 on resource_usage_spec (type_m0); 

 ALTER TABLE user_group ADD CONSTRAINT FKf97dabf98c7b4c7b94cbd1785e23b451 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Indexcd6580cef639b7fbc9c10b5d253462d6454b82ad on user_group (group_id); 

 ALTER TABLE user_group ADD CONSTRAINT FK40c4f8caa8a84d1d8b862ff6ed96173d FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Index6349f1b2d4cdd4a84028dd921d0774255b66281e on user_group (group_id_m0); 

 ALTER TABLE user_group ADD CONSTRAINT FK6fb289182f794df9834b630a4e35bd9c FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index3639d39a97f2dfd5910c71162a3f0e071945035d on user_group (user_id); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK2449c77871944a09b3889c0045c59ba4 FOREIGN KEY (service_spec_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexbd0e0a6bc52cfb2902afebdfa0dcbd0f72e55b4f on service_spec_characteristic (service_spec_id_m0); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FKca20c139b47d43cbadf483d24c9b64ea FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Indexe5aecadc625dd4efc2f99af5721ef26f401cd0e3 on service_spec_characteristic (type); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FKdf8f4e370d9f4a5ab9d0f921c22e1190 FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexf6b833f2993f396f6dc06d872060008df4c46cf7 on service_spec_characteristic (dictionary_id_m0); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FK5b2e709e73bb4a67b48b712d0e3289cb FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index3d8c9657a09cb23f9a9a9b242efa11a510d49ec2 on service_spec_characteristic (service_spec_id); 

 ALTER TABLE service_spec_characteristic ADD CONSTRAINT FKe5d2d4ba0eec41dc80ed6aaf33cc533d FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexb5b57be8a5cf09f4745407d9ce980a391550c020 on service_spec_characteristic (dictionary_id); 

 ALTER TABLE service_spec ADD CONSTRAINT FK22a83ffcef0e491aa11806e8c236f60b FOREIGN KEY (cardinality_m0) REFERENCES cardinality_type; 
CREATE INDEX Indexbf55a58ac4aa8296204ebeb8bfba538b5be3e3d6 on service_spec (cardinality_m0); 

 ALTER TABLE service_spec ADD CONSTRAINT FKe4e932c4bae04fb59ad7d417fcb93583 FOREIGN KEY (cardinality) REFERENCES cardinality_type; 
CREATE INDEX Index1cf3df6af1d430be8b55e233c0ee4c0de7ea3efe on service_spec (cardinality); 

 ALTER TABLE service_spec ADD CONSTRAINT FK1d5ae202861f4de8b7f22a6c9e628eeb FOREIGN KEY (catalog_key) REFERENCES catalog; 
CREATE INDEX Index0787960c394aa8f714c1790d1d279b22bb54dc15 on service_spec (catalog_key); 

 ALTER TABLE service_spec ADD CONSTRAINT FKaf59e368902f45a891155a361517f10b FOREIGN KEY (parent_id) REFERENCES service_spec; 
CREATE INDEX Index1dbe53f722bf19cc8ac937962955ad71ae547b2d on service_spec (parent_id); 

 ALTER TABLE service_spec ADD CONSTRAINT FK8d33a62405284f30bf51ac2a5ec5fa91 FOREIGN KEY (parent_id_m0) REFERENCES service_spec; 
CREATE INDEX Indexd9762e78f8164685915dacc1bad526af0265df83 on service_spec (parent_id_m0); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK7d8c398012a84dba9e4cd13f25b5fd40 FOREIGN KEY (dictionary_id) REFERENCES dictionary; 
CREATE INDEX Indexf91f345bc7342e04c4ca4353bad85dce739f27e9 on resource_spec_characteristic (dictionary_id); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FKede94019d275455d8e7ac658ec157330 FOREIGN KEY (resource_spec_id_m0) REFERENCES resource_spec; 
CREATE INDEX Index35867bb524cf3d04af07e8d1c4506a69492aa26b on resource_spec_characteristic (resource_spec_id_m0); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK670ce15559e641bc94e4b5a4e1b6c16c FOREIGN KEY (dictionary_id_m0) REFERENCES dictionary; 
CREATE INDEX Indexa6dbd5b460e1215db616fd55c4d70bc2ed224420 on resource_spec_characteristic (dictionary_id_m0); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FKad9deb77e8f049cd9e675aebaecaf572 FOREIGN KEY (type) REFERENCES characteristic_type; 
CREATE INDEX Index99cd49bc2c60e29e0cfac8787303472c269f18e4 on resource_spec_characteristic (type); 

 ALTER TABLE resource_spec_characteristic ADD CONSTRAINT FK705065ec437b4340b9b7b761b75a64f6 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index9bb9374e066aa27efaec5d41418b4e4d7d9d9bf5 on resource_spec_characteristic (resource_spec_id); 

 ALTER TABLE service ADD CONSTRAINT FK77b29be1c742495990406256b0ce5573 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index9a06f29c5d70767d0051ca3c539fda04d0b8061e on service (customer_id); 

 ALTER TABLE service ADD CONSTRAINT FK87e396e4e33946068ee19c2ddff60c32 FOREIGN KEY (parent_id) REFERENCES service; 
CREATE INDEX Index7e210cc50475ddd7203177913939fc227b3878d3 on service (parent_id); 

 ALTER TABLE service ADD CONSTRAINT FK335fa30183f8479f970ca98f7cbbd74c FOREIGN KEY (cfs_id) REFERENCES service; 
CREATE INDEX Indexe73b6065dd1d79e831b898efa458b1bf4d63d86d on service (cfs_id); 

 ALTER TABLE service ADD CONSTRAINT FKa639cc07e7e84f9b904c67a307265689 FOREIGN KEY (contragent_id_m0) REFERENCES contragent; 
CREATE INDEX Index02fe0274fcc47b88b41a75407dd8d7f446a2ca8e on service (contragent_id_m0); 

 ALTER TABLE service ADD CONSTRAINT FK467e9664b36040fe95ed6b3da4fbc9d9 FOREIGN KEY (service_spec_id) REFERENCES service_spec; 
CREATE INDEX Index45ae593ac4cf11e5bd51ba8948d6f8b98162d70e on service (service_spec_id); 

 ALTER TABLE service ADD CONSTRAINT FK7fbcbf9f9435429b8f5ddf0af95bb34a FOREIGN KEY (state) REFERENCES service_state; 
CREATE INDEX Indexa4349a09c5bf567ef22be37b5179751a60a0b4b2 on service (state); 

 ALTER TABLE service ADD CONSTRAINT FK3deb752379cd437fbcfe297854641fb3 FOREIGN KEY (cfs_id_m0) REFERENCES service; 
CREATE INDEX Indexf3616b96a18ccaaa36a8ca2ff725a5898447788e on service (cfs_id_m0); 

 ALTER TABLE service ADD CONSTRAINT FK4e5cf9502a2f4ee69e755b914cbec2b1 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index93973badbc81c53e84e78a3e51f903275c68dd3c on service (contragent_id); 

 ALTER TABLE service ADD CONSTRAINT FK4ff08e0f5da947d2825c9573dbe583b4 FOREIGN KEY (state_m0) REFERENCES service_state; 
CREATE INDEX Index4c80a1eb3b94ff6b898fcc2dd113428a141171cd on service (state_m0); 

 ALTER TABLE resource_shared ADD CONSTRAINT FKb2a03626e7f14b8cb7800a938b61d308 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Indexc63538dbeba556af23be9627a81abd9902cebabe on resource_shared (customer_id); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FKbe7d3d1f9e6d4f07996ea3c834df5aef FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index5482820c7d01cc066da4704dd64f6dcfda3a9049 on user_resource_spec (user_id); 

 ALTER TABLE user_resource_spec ADD CONSTRAINT FK8555f075ad8c4165be11722c5efed166 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index882cc0a9333fe7cf2169c3b90c6f1d5e5e5502ac on user_resource_spec (resource_spec_id); 

 ALTER TABLE dba ADD CONSTRAINT FK488ab268edd54d318320cfc1f71db96e FOREIGN KEY (prev_version) REFERENCES dba; 
CREATE INDEX Indexeef6992f2af131451b1e7b43ac4e4976eabd6c17 on dba (prev_version); 

 ALTER TABLE customer_acl ADD CONSTRAINT FKe4789427657c46d78fb9b99ea4888c28 FOREIGN KEY (group_id_m0) REFERENCES grp; 
CREATE INDEX Index5d4e1d509e0a2e8c6275226705e0964be595171e on customer_acl (group_id_m0); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK1a61a5b032e24946bf4403352369f5c5 FOREIGN KEY (group_id) REFERENCES grp; 
CREATE INDEX Index3c774b8763a5b6cc0915c141be02d8a41ca1c0bf on customer_acl (group_id); 

 ALTER TABLE customer_acl ADD CONSTRAINT FKbf1e8dac9b1d45249731e780c1661d24 FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index6824baf013ec80d61def4e9e79578c0980f0df6f on customer_acl (customer_id_m0); 

 ALTER TABLE customer_acl ADD CONSTRAINT FK2c7f6ae08a3942d5a38f34ad05ada488 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Indexaf327e2528c2a6af4b0c4bc08dbfa0ad160c6096 on customer_acl (customer_id); 

 ALTER TABLE user_role ADD CONSTRAINT FKec62af51c11c476a853fc54b72e2c775 FOREIGN KEY (role_id) REFERENCES role; 
CREATE INDEX Index2a9c9418e6b8be746e65024be120e147c1dec605 on user_role (role_id); 

 ALTER TABLE user_role ADD CONSTRAINT FKec4ca9539497402db2fd324809005224 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index6bc9625275e959cb02c513a9272a5966dc61806c on user_role (user_id); 

 ALTER TABLE service_order ADD CONSTRAINT FK01c9dee065094120a96a4eab370ec151 FOREIGN KEY (customer_id_m0) REFERENCES customer; 
CREATE INDEX Index1f482d93e8f0a434b4410cae2d8a035225389d9b on service_order (customer_id_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK18ec9c2089564ba4a7bf5b98f594bc33 FOREIGN KEY (state_m0) REFERENCES order_state; 
CREATE INDEX Index075891f1945d5c6f4c7d7eaa185a657f70f9213a on service_order (state_m0); 

 ALTER TABLE service_order ADD CONSTRAINT FK5319c1e5a9c44d448df475c3c1d0d3b3 FOREIGN KEY (state) REFERENCES order_state; 
CREATE INDEX Indexfc9c3e03783402ea95174e160234c9fb2cee5599 on service_order (state); 

 ALTER TABLE service_order ADD CONSTRAINT FK805dfe07182b4c41a334ccca777d24d0 FOREIGN KEY (modifier_id) REFERENCES usr; 
CREATE INDEX Index7b095fe8098e6c396ead41ddcf49daae97420c06 on service_order (modifier_id); 

 ALTER TABLE service_order ADD CONSTRAINT FK94d892dd3a794cf4b33656e5b7ad2be6 FOREIGN KEY (creator_id) REFERENCES usr; 
CREATE INDEX Index0993ff331ce49a9fcfbbbe6a28ca46b675b4a516 on service_order (creator_id); 

 ALTER TABLE service_order ADD CONSTRAINT FKf449c44d88244121b322dddff1c9436d FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Index9dffa9017dd697b1cc70ebf509289586406f35ea on service_order (contragent_id); 

 ALTER TABLE service_order ADD CONSTRAINT FKb766a91a16fe4f829be5f1ce01bf89dd FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index8d595c1ef9ce59d249ef06bdabcff71c4ab04467 on service_order (customer_id); 

 ALTER TABLE resource ADD CONSTRAINT FKc3d634f3e4074783afa53cd00e11ba45 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index0244133346102636ec228151987606344c30b2ff on resource (customer_id); 

 ALTER TABLE resource ADD CONSTRAINT FK6424c24bbf6943f7974b38d621bf8716 FOREIGN KEY (parent_id) REFERENCES resource; 
CREATE INDEX Index51c1f00ce24bb0a3af2ed85facf7dc46cd790910 on resource (parent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK48a2888eb1974b46be4b03237183581a FOREIGN KEY (cfs_id_m0) REFERENCES service; 
CREATE INDEX Indexaf27ed492fb2cfa79f2582fb53a57ef30779a768 on resource (cfs_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FK88c4c05e57b74ac39e8297a354e13a55 FOREIGN KEY (contragent_id) REFERENCES contragent; 
CREATE INDEX Indexecd426ee81aee8a0ef1badbc4a8e41d6e08e6e63 on resource (contragent_id); 

 ALTER TABLE resource ADD CONSTRAINT FK62e88eb3358544608d71e05f0e098269 FOREIGN KEY (resource_spec_id) REFERENCES resource_spec; 
CREATE INDEX Index95907b0d62b8ee280cc466864699b6600f19f2cb on resource (resource_spec_id); 

 ALTER TABLE resource ADD CONSTRAINT FK37eec23137374e5199b3407b54c515d0 FOREIGN KEY (cfs_id) REFERENCES service; 
CREATE INDEX Index8a5a2131e7cd384587ead99931b3c9b718a72a86 on resource (cfs_id); 

 ALTER TABLE resource ADD CONSTRAINT FK31941a2a7e894f7b95df9b162884fba0 FOREIGN KEY (resource_spec_id_m0) REFERENCES resource_spec; 
CREATE INDEX Indexa8f39fd9a0ec4970aac3f914a54816cd2c925429 on resource (resource_spec_id_m0); 

 ALTER TABLE resource ADD CONSTRAINT FKe7bdb812d7d64af3afb644c940579f11 FOREIGN KEY (resource_shared_id) REFERENCES resource_shared; 
CREATE INDEX Index69f9b4538aa9c0941f8da44e85fce3cc8df76657 on resource (resource_shared_id); 

 ALTER TABLE resource ADD CONSTRAINT FK17480a9b80d04ec381f735d5aefab692 FOREIGN KEY (parent_service_id) REFERENCES service; 
CREATE INDEX Indexae380a8db103c708de00ddaef4744b9186f3eb6f on resource (parent_service_id); 

 ALTER TABLE resource ADD CONSTRAINT FKe86186e3c45c4d08ba686800c2a1619b FOREIGN KEY (resource_shared_id_m0) REFERENCES resource_shared; 
CREATE INDEX Index734152b451e699f883fb8366c292beec3c7d7b18 on resource (resource_shared_id_m0); 

 ALTER TABLE service_characteristic ADD CONSTRAINT FKd6a6e03cb1d5408295153ea2cee97c3f FOREIGN KEY (service_id) REFERENCES service; 
CREATE INDEX Index9054b19feb9e67a5351481f5dad2bf38a7daebca on service_characteristic (service_id); 

 ALTER TABLE service_characteristic ADD CONSTRAINT FK9e22db7b2322445fa7b0c70cdb4f96b7 FOREIGN KEY (service_id_m0) REFERENCES service; 
CREATE INDEX Index0bf0c898c151c8393269e4126b5ae43a8a627e76 on service_characteristic (service_id_m0); 

 ALTER TABLE user_service_order ADD CONSTRAINT FK989a3044d92040af874175032b49f6d3 FOREIGN KEY (user_id) REFERENCES usr; 
CREATE INDEX Index70300ae7783ea7aea3f7d8dc569a217f1a27763f on user_service_order (user_id); 

 ALTER TABLE user_service_order ADD CONSTRAINT FK8b8a048d689f4c36bb089a77e3d5bcf2 FOREIGN KEY (service_order_id) REFERENCES service_order; 
CREATE INDEX Index6e7e0b8b7307312db51ddec32b886d94ab8c644a on user_service_order (service_order_id); 

 ALTER TABLE contragent ADD CONSTRAINT FK70340601930d4cc88f2c2e87731f35a0 FOREIGN KEY (customer_id) REFERENCES customer; 
CREATE INDEX Index6bbeb4d626ee16cada264df4c6fbc5667a32f5c3 on contragent (customer_id); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK5e990eed3484443ea123f757d54a5b5b FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKbe2645710eaa4a2bbc6628b7c9707583 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK7821307634ee410691b6c869d7b7032e FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

