CREATE SCHEMA IF NOT EXISTS backend;
SET SCHEMA backend;

CREATE TABLE IF NOT EXISTS backend.marca
(
    ID     VARCHAR(50)  NOT NULL,
    NOMBRE VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID)
);


insert into backend.marca (ID, NOMBRE)
values ('5d1542bb-c5ad-4ebd-a849-ddb8175efc58', 'Ferrari');
insert into backend.marca (ID, NOMBRE)
values ('58da753e-8358-461f-881d-be165bad2971', 'FIAT');
insert into backend.marca (ID, NOMBRE)
values ('17949d12-a69e-4cc6-9f69-7c363a680ffc', 'Ford');
insert into backend.marca (ID, NOMBRE)
values ('b76193eb-fb53-4f11-a0ce-18752b93f93b', 'Acura');
insert into backend.marca (ID, NOMBRE)
values ('40b8ecee-2e9f-4d48-baad-3d7b5364c419', 'Alfa Romeo');
insert into backend.marca (ID, NOMBRE)
values ('558456eb-0633-4547-b43d-81c353c4a4b6', 'Audi');
insert into backend.marca (ID, NOMBRE)
values ('b28720c2-5d2d-485b-bcb7-b2b206f35495', 'Bentley');
insert into backend.marca (ID, NOMBRE)
values ('39e8d654-f99e-46b1-9012-c15d27a32825', 'BMW');
insert into backend.marca (ID, NOMBRE)
values ('e14859a5-c193-4512-95ba-325f0376183e', 'Aston Martin');

CREATE TABLE IF NOT EXISTS backend.tipo_auto
(
    ID     VARCHAR(50)  NOT NULL,
    NOMBRE VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID)
);

insert into tipo_auto (ID, NOMBRE)
values ('02f50ef7-98db-40f9-a8bb-28e8277bac37', 'Sedan');
insert into tipo_auto (ID, NOMBRE)
values ('7d1b9b61-9673-4dd8-850c-7d7aa463a83c', 'Hatchback');
insert into tipo_auto (ID, NOMBRE)
values ('dfdb092b-6e6b-466e-bf32-d1344eb645bb', 'Convertible');
insert into tipo_auto (ID, NOMBRE)
values ('f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0', 'SUV');
insert into tipo_auto (ID, NOMBRE)
values ('048e3556-3752-432b-916d-17c8281e761f', 'Pickup');
insert into tipo_auto (ID, NOMBRE)
values ('09b51433-eca3-4d5a-b3a1-5ee3cc5b2127', 'Coupe');
insert into tipo_auto (ID, NOMBRE)
values ('49e87a1c-a503-4715-895e-a61f2c5308e0', 'Wagon');

CREATE TABLE IF NOT EXISTS backend.modelo
(
    ID       VARCHAR(50)  NOT NULL,
    NOMBRE   VARCHAR(255) NOT NULL,
    ANIO     INT          NOT NULL,
    ID_MARCA VARCHAR(50)  NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_MARCA) REFERENCES backend.marca (ID)
);

insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('ba606f61-176c-4aa0-93c4-1ac197e8b808', '488 Spider', 2019, '5d1542bb-c5ad-4ebd-a849-ddb8175efc58');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('76819bbd-45a1-4c13-ab63-2df7665596eb', '812', 2019, '5d1542bb-c5ad-4ebd-a849-ddb8175efc58');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('eb1872dc-3c12-44ad-9984-0348259afae4', 'GTC4Lusso', 2019, '5d1542bb-c5ad-4ebd-a849-ddb8175efc58');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('76dfd5c8-7f41-4e10-9084-f65ed9302774', '124 Spider', 2019, '58da753e-8358-461f-881d-be165bad2971');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('a3f7dce0-8f9d-4677-8b26-5f0b5ad1b1a0', '500', 2019, '58da753e-8358-461f-881d-be165bad2971');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('fe456d81-8ad9-4346-af62-56f9e402aca6', '500 Abarth', 2019, '58da753e-8358-461f-881d-be165bad2971');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('213543ac-986e-4fa9-bb40-75addbc67936', '500c', 2019, '58da753e-8358-461f-881d-be165bad2971');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('60b37199-fc1b-4ec9-8c33-89210ddc6098', '500c Abarth', 2019, '58da753e-8358-461f-881d-be165bad2971');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('89a685c4-48ff-481d-825f-184e9a309db4', '500e', 2019, '58da753e-8358-461f-881d-be165bad2971');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('1b7c7eb0-1549-4f06-9651-e5db42491421', '500L', 2019, '58da753e-8358-461f-881d-be165bad2971');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('feb6ddff-df4c-4957-a8cb-b17b2e15844c', '500X', 2019, '58da753e-8358-461f-881d-be165bad2971');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('66aa069e-d191-47f2-b31d-aa9ce69d11ec', 'EcoSport', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('def03d0a-e8f0-41fd-adb9-9f6015f4455c', 'Edge', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('b76ef22b-fa2b-4bea-bf47-75a9669c7a36', 'Escape', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('f5a383b1-28ec-473a-b178-9e71d11db004', 'Expedition', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('4dc4ca5f-566c-4fbf-b509-10c186d060b8', 'Expedition MAX', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('43a6b267-467f-479a-bd3f-07f3a2d01dbe', 'Explorer', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('8685abaa-1806-4f43-827e-648739300f81', 'F150 Regular Cab', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('4fc84603-ac51-4424-b8a1-277ee64cc119', 'F150 Super Cab', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('e5ce5978-78b7-4462-b02d-bc47a3b02c4c', 'F150 SuperCrew Cab', 2019, '17949d12-a69e-4cc6-9f69-7c363a680ffc');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('71f50a7e-efbc-41a4-a82e-1de9da6091c9', 'ILX', 2020, 'b76193eb-fb53-4f11-a0ce-18752b93f93b');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('536644cb-cce7-4705-9076-8bf713f6cf19', 'MDX', 2020, 'b76193eb-fb53-4f11-a0ce-18752b93f93b');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('f19eb6f0-c702-483c-93da-809edac6701c', 'MDX Sport Hybrid', 2020, 'b76193eb-fb53-4f11-a0ce-18752b93f93b');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('9e2580eb-112d-4246-b0b7-c061761c4dac', 'NSX', 2020, 'b76193eb-fb53-4f11-a0ce-18752b93f93b');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('b70e8e2c-4976-4b10-aa4c-f90aa1cfd613', 'RDX', 2020, 'b76193eb-fb53-4f11-a0ce-18752b93f93b');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('ddb45e2d-6925-4153-a002-222448c4faf2', 'RLX', 2020, 'b76193eb-fb53-4f11-a0ce-18752b93f93b');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('23ea234d-0b32-4072-ba3c-218a37e84389', 'RLX Sport Hybrid', 2020, 'b76193eb-fb53-4f11-a0ce-18752b93f93b');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('baf6656c-7613-4172-93ed-eb00e1de2350', 'TLX', 2020, 'b76193eb-fb53-4f11-a0ce-18752b93f93b');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('5b6bdcae-c157-4af8-86a2-a20917214486', '4C Spider', 2020, '40b8ecee-2e9f-4d48-baad-3d7b5364c419');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('5d92c184-c173-4b48-b030-8ed1e8e9045b', 'Giulia', 2020, '40b8ecee-2e9f-4d48-baad-3d7b5364c419');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('ab95fd60-1a30-4ac8-8b40-b805d2760e67', 'Stelvio', 2020, '40b8ecee-2e9f-4d48-baad-3d7b5364c419');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('b75a1524-90c9-4938-bac1-884f9fed9220', 'A3', 2020, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('d1def22d-99d0-4f91-b2fe-f97968b5bf19', 'A4', 2020, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('0ac2fc65-a66c-44f4-b9ae-f99180407060', 'A5', 2020, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('4e261e55-7e1d-4bfc-aaf5-284d61219337', 'A6', 2020, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('23faeca2-7651-461b-9a55-608321088c3e', 'A6 allroad', 2020, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('f0de1b4d-58fc-4c0e-8f98-c2ecd91e1928', 'A7', 2020, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('95478666-eb5c-4dcd-abe0-8bb9eeeb6509', 'Q3', 2020, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('ba603e27-232a-4571-85de-2d0f603c80f0', 'S6', 2021, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('9f2428a1-cc96-407f-afb7-b2183d4c826f', 'S7', 2021, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('7fea2d46-27ab-4e5e-96d6-97fa8b4b2fd8', 'S8', 2021, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('05c7821e-5456-4ac3-9914-df0467a8ca25', 'SQ5', 2021, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('abf32b0e-a845-483a-975c-9127b6b132b9', 'SQ5 Sportback', 2021, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('342ce832-b553-4857-ab8f-e2d234f2823a', 'SQ7', 2021, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('e484932e-6274-4310-b3d5-e21c3ec5db78', 'SQ8', 2021, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('8afd32e3-0402-4361-97ec-f834c592f6d9', 'TT', 2021, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('c740b8c0-8de2-4079-bd0b-ae06b300d2d4', 'Bentayga', 2021, 'b28720c2-5d2d-485b-bcb7-b2b206f35495');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('38a435db-aed5-49e2-afee-a596ddb48fe7', 'Continental GT', 2021, 'b28720c2-5d2d-485b-bcb7-b2b206f35495');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('6f59397c-0eb9-4d3a-9d34-30d5848353d6', 'Flying Spur', 2021, 'b28720c2-5d2d-485b-bcb7-b2b206f35495');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('335609c3-0dff-4913-84a9-7c8271a361ab', '2 Series', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('2aa36797-26c9-4fe7-b3ca-adbb17603189', '3 Series', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('7b67cbc6-c4be-44bf-9a7e-832d927167cd', '4 Series', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('e7ca2f08-6c93-42b9-bdf0-d8c2ec51121b', '5 Series', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('ab390d0e-fc47-4af2-a8c0-46131b8df767', '7 Series', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('ebf59396-5d88-454a-a417-40926c1cea2b', '8 Series', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('4e6f50e9-1911-42cc-8d61-7192ba980a74', 'i3', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('03c3ec61-97d9-484f-b881-4d923ee37bf3', 'M2', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('129a26b0-33bc-4ca7-9ef7-b0345592a638', 'M3', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('a404ed67-2ad1-4579-923c-9e50a53915f0', 'M4', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('b25029d9-0faa-4f8e-bd43-8e412343a7dc', 'M5', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('40c3991c-8927-4a1b-b602-99c20583bba1', 'M8', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('809ab283-e20c-4f09-ba63-78307c17a86b', 'X1', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('f1c01091-8db5-4e29-be32-e39ce60c195d', 'X2', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('1b3b4038-3e25-41b9-8ee5-4a0193e9634d', 'X3', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('db9d016c-e14b-494b-89d6-05af35d473c3', 'X3 M', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('65c5bd53-2b98-4950-817f-f052d71a6eb3', 'X4', 2021, '39e8d654-f99e-46b1-9012-c15d27a32825');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('d99fdd42-46fa-47e4-bfe4-41a7906aae2a', 'DB11', 2022, 'e14859a5-c193-4512-95ba-325f0376183e');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('58e133b0-960c-462a-9145-7e3d0fd75e70', 'DBS', 2022, 'e14859a5-c193-4512-95ba-325f0376183e');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('1410d344-924f-4592-9975-1856c088182c', 'DBX', 2022, 'e14859a5-c193-4512-95ba-325f0376183e');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('1847d077-0160-4dc3-bafe-12edbb23fbfc', 'Vantage', 2022, 'e14859a5-c193-4512-95ba-325f0376183e');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('fc71265b-b494-4740-92b4-81513effebe0', 'A3', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('da548cf6-add9-468a-b2e9-08ced1d3a31e', 'A4', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('eb89680c-5399-4ae0-a947-c8e58ebfbc6a', 'A4 allroad', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('ca1dfcb7-dc22-4004-a21a-a6e053531e64', 'A5', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('31cc3c26-0ab8-43d0-bbbd-a2dee42bfeea', 'A6', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('505685fb-7181-4c62-a3c7-a53e499eb4a7', 'A6 allroad', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('a6aea0c8-59eb-4f5a-ac96-e8d3985f0969', 'A7', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('fee1be3a-6df4-4f25-92bb-a9d480eb558d', 'A8', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('570e7197-ffc5-4333-b975-79e4e75cf6a8', 'e-tron', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('210d96cb-f3a2-47ef-aa04-5cdcd1b1065a', 'e-tron GT', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('97064200-d126-40cd-b49f-a46da5009542', 'e-tron S', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('b4c6f23d-7d4d-4adb-a8f5-394e14076dd0', 'e-tron S Sportback', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('69af19bf-8911-44a7-8c38-3f97979fd8c4', 'e-tron Sportback', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('72263628-4e37-4e98-9e86-ac9466637ae7', 'Q3', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('de2919ea-3111-4c27-80f7-f4110861ed97', 'Q4 e-tron', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');
insert into backend.modelo (ID, NOMBRE, ANIO, ID_MARCA)
values ('af3f5b2c-6606-430a-89e9-9f52b0795527', 'Q4 Sportback e-tron', 2022, '558456eb-0633-4547-b43d-81c353c4a4b6');


CREATE TABLE IF NOT EXISTS backend.modelo_tipo_auto
(
    ID_MODELO    VARCHAR(50) NOT NULL,
    ID_TIPO_AUTO VARCHAR(50) NOT NULL,
    CONSTRAINT PK_MODELO_TIPO_AUTO PRIMARY KEY (ID_MODELO, ID_TIPO_AUTO)
);

insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ba606f61-176c-4aa0-93c4-1ac197e8b808', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('76819bbd-45a1-4c13-ab63-2df7665596eb', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('eb1872dc-3c12-44ad-9984-0348259afae4', '7d1b9b61-9673-4dd8-850c-7d7aa463a83c');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('76dfd5c8-7f41-4e10-9084-f65ed9302774', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('a3f7dce0-8f9d-4677-8b26-5f0b5ad1b1a0', '7d1b9b61-9673-4dd8-850c-7d7aa463a83c');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('fe456d81-8ad9-4346-af62-56f9e402aca6', '7d1b9b61-9673-4dd8-850c-7d7aa463a83c');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('213543ac-986e-4fa9-bb40-75addbc67936', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('60b37199-fc1b-4ec9-8c33-89210ddc6098', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('89a685c4-48ff-481d-825f-184e9a309db4', '7d1b9b61-9673-4dd8-850c-7d7aa463a83c');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('1b7c7eb0-1549-4f06-9651-e5db42491421', '7d1b9b61-9673-4dd8-850c-7d7aa463a83c');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('feb6ddff-df4c-4957-a8cb-b17b2e15844c', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('66aa069e-d191-47f2-b31d-aa9ce69d11ec', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('def03d0a-e8f0-41fd-adb9-9f6015f4455c', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('b76ef22b-fa2b-4bea-bf47-75a9669c7a36', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('f5a383b1-28ec-473a-b178-9e71d11db004', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('4dc4ca5f-566c-4fbf-b509-10c186d060b8', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('43a6b267-467f-479a-bd3f-07f3a2d01dbe', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('8685abaa-1806-4f43-827e-648739300f81', '048e3556-3752-432b-916d-17c8281e761f');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('4fc84603-ac51-4424-b8a1-277ee64cc119', '048e3556-3752-432b-916d-17c8281e761f');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('e5ce5978-78b7-4462-b02d-bc47a3b02c4c', '048e3556-3752-432b-916d-17c8281e761f');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('71f50a7e-efbc-41a4-a82e-1de9da6091c9', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('536644cb-cce7-4705-9076-8bf713f6cf19', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('f19eb6f0-c702-483c-93da-809edac6701c', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('9e2580eb-112d-4246-b0b7-c061761c4dac', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('b70e8e2c-4976-4b10-aa4c-f90aa1cfd613', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ddb45e2d-6925-4153-a002-222448c4faf2', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('23ea234d-0b32-4072-ba3c-218a37e84389', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('baf6656c-7613-4172-93ed-eb00e1de2350', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('5b6bdcae-c157-4af8-86a2-a20917214486', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('5d92c184-c173-4b48-b030-8ed1e8e9045b', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ab95fd60-1a30-4ac8-8b40-b805d2760e67', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('b75a1524-90c9-4938-bac1-884f9fed9220', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('d1def22d-99d0-4f91-b2fe-f97968b5bf19', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('0ac2fc65-a66c-44f4-b9ae-f99180407060', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('4e261e55-7e1d-4bfc-aaf5-284d61219337', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('23faeca2-7651-461b-9a55-608321088c3e', '49e87a1c-a503-4715-895e-a61f2c5308e0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('f0de1b4d-58fc-4c0e-8f98-c2ecd91e1928', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('95478666-eb5c-4dcd-abe0-8bb9eeeb6509', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ba603e27-232a-4571-85de-2d0f603c80f0', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('9f2428a1-cc96-407f-afb7-b2183d4c826f', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('7fea2d46-27ab-4e5e-96d6-97fa8b4b2fd8', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('05c7821e-5456-4ac3-9914-df0467a8ca25', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('abf32b0e-a845-483a-975c-9127b6b132b9', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('342ce832-b553-4857-ab8f-e2d234f2823a', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('e484932e-6274-4310-b3d5-e21c3ec5db78', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('8afd32e3-0402-4361-97ec-f834c592f6d9', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('c740b8c0-8de2-4079-bd0b-ae06b300d2d4', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('38a435db-aed5-49e2-afee-a596ddb48fe7', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('6f59397c-0eb9-4d3a-9d34-30d5848353d6', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('335609c3-0dff-4913-84a9-7c8271a361ab', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('335609c3-0dff-4913-84a9-7c8271a361ab', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('335609c3-0dff-4913-84a9-7c8271a361ab', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('2aa36797-26c9-4fe7-b3ca-adbb17603189', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('7b67cbc6-c4be-44bf-9a7e-832d927167cd', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('7b67cbc6-c4be-44bf-9a7e-832d927167cd', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('e7ca2f08-6c93-42b9-bdf0-d8c2ec51121b', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ab390d0e-fc47-4af2-a8c0-46131b8df767', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ebf59396-5d88-454a-a417-40926c1cea2b', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ebf59396-5d88-454a-a417-40926c1cea2b', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ebf59396-5d88-454a-a417-40926c1cea2b', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('4e6f50e9-1911-42cc-8d61-7192ba980a74', '7d1b9b61-9673-4dd8-850c-7d7aa463a83c');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('03c3ec61-97d9-484f-b881-4d923ee37bf3', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('129a26b0-33bc-4ca7-9ef7-b0345592a638', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('a404ed67-2ad1-4579-923c-9e50a53915f0', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('b25029d9-0faa-4f8e-bd43-8e412343a7dc', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('40c3991c-8927-4a1b-b602-99c20583bba1', '7d1b9b61-9673-4dd8-850c-7d7aa463a83c');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('809ab283-e20c-4f09-ba63-78307c17a86b', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('f1c01091-8db5-4e29-be32-e39ce60c195d', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('1b3b4038-3e25-41b9-8ee5-4a0193e9634d', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('db9d016c-e14b-494b-89d6-05af35d473c3', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('65c5bd53-2b98-4950-817f-f052d71a6eb3', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('d99fdd42-46fa-47e4-bfe4-41a7906aae2a', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('d99fdd42-46fa-47e4-bfe4-41a7906aae2a', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('58e133b0-960c-462a-9145-7e3d0fd75e70', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('58e133b0-960c-462a-9145-7e3d0fd75e70', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('1410d344-924f-4592-9975-1856c088182c', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('1847d077-0160-4dc3-bafe-12edbb23fbfc', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('1847d077-0160-4dc3-bafe-12edbb23fbfc', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('fc71265b-b494-4740-92b4-81513effebe0', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('da548cf6-add9-468a-b2e9-08ced1d3a31e', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('eb89680c-5399-4ae0-a947-c8e58ebfbc6a', '49e87a1c-a503-4715-895e-a61f2c5308e0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ca1dfcb7-dc22-4004-a21a-a6e053531e64', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ca1dfcb7-dc22-4004-a21a-a6e053531e64', '09b51433-eca3-4d5a-b3a1-5ee3cc5b2127');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('ca1dfcb7-dc22-4004-a21a-a6e053531e64', 'dfdb092b-6e6b-466e-bf32-d1344eb645bb');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('31cc3c26-0ab8-43d0-bbbd-a2dee42bfeea', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('505685fb-7181-4c62-a3c7-a53e499eb4a7', '49e87a1c-a503-4715-895e-a61f2c5308e0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('a6aea0c8-59eb-4f5a-ac96-e8d3985f0969', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('fee1be3a-6df4-4f25-92bb-a9d480eb558d', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('570e7197-ffc5-4333-b975-79e4e75cf6a8', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('210d96cb-f3a2-47ef-aa04-5cdcd1b1065a', '02f50ef7-98db-40f9-a8bb-28e8277bac37');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('97064200-d126-40cd-b49f-a46da5009542', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('b4c6f23d-7d4d-4adb-a8f5-394e14076dd0', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('69af19bf-8911-44a7-8c38-3f97979fd8c4', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('72263628-4e37-4e98-9e86-ac9466637ae7', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('de2919ea-3111-4c27-80f7-f4110861ed97', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');
insert into backend.modelo_tipo_auto (ID_MODELO, ID_TIPO_AUTO)
values ('af3f5b2c-6606-430a-89e9-9f52b0795527', 'f7ec3416-1718-4d3f-9ccc-93f2e3d7ebb0');

CREATE TABLE IF NOT EXISTS backend.auto
(
    ID        VARCHAR(50) NOT NULL,
    CHASIS    VARCHAR(50) NOT NULL,
    ID_MODELO VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_MODELO) REFERENCES backend.modelo (ID)
);
