USE gold_db


CREATE DATABASE SCOPED CREDENTIAL MyADLSCredential
WITH
IDENTITY = 'Managed Identity';



CREATE EXTERNAL DATA SOURCE GoldStorage
WITH (
    LOCATION = 'https://asadsa.dfs.core.windows.net',
    CREDENTIAL = MyADLSCredential
);
