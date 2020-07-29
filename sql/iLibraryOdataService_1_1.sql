-- generated by csdl-to-sql for target pgsql from com.ilibrary.mobile.csdl.xml

create sequence "iLibraryOdataService_xs_data_metrics_1_1_id_seq" start with 1 increment by 1;

create table "iLibraryOdataService_xs_data_metrics_1_1"
(
    "id" serial not null,
    "start" timestamp with time zone not null,
    "period" decimal(20,6) not null,
    "process" varchar(400) not null,
    "provider" varchar(400) not null,
    "component" varchar(800) not null,
    "metric" varchar(400) not null,
    "unit" varchar(200) not null,
    "count" bigint null,
    "sum" bigint null,
    "average" decimal(25,2) null,
    "minimum" bigint null,
    "maximum" bigint null,
    primary key ("id")
);

create sequence "iLibraryOdataService_UserSet_1_1_id_seq" start with 1 increment by 1;

create table "iLibraryOdataService_UserSet_1_1"
(
    "Email" varchar(400) null,
    "Name" varchar(400) not null,
    "UserID" serial not null,
    "row_version" bigint not null,
    "is_deleted" boolean not null,
    "last_modified" timestamp with time zone not null,
    primary key ("UserID")
);

create index "iLibraryOdataService_UserSet_1_1_last_modified_index" on "iLibraryOdataService_UserSet_1_1" ("last_modified");

create sequence "iLibraryOdataService_LendingSet_1_1_id_seq" start with 1 increment by 1;

create table "iLibraryOdataService_LendingSet_1_1"
(
    "BookID" bigint not null,
    "BorrowDate" timestamp with time zone not null,
    "LendingID" serial not null,
    "ReturnDate" timestamp with time zone null,
    "UserID" bigint not null,
    "row_version" bigint not null,
    "is_deleted" boolean not null,
    "last_modified" timestamp with time zone not null,
    primary key ("LendingID")
);

create index "iLibraryOdataService_LendingSet_1_1_last_modified_index" on "iLibraryOdataService_LendingSet_1_1" ("last_modified");

create sequence "iLibraryOdataService_BookSet_1_1_id_seq" start with 1 increment by 1;

create table "iLibraryOdataService_BookSet_1_1"
(
    "Author" varchar(400) null,
    "BookID" serial not null,
    "BookName" varchar(400) not null,
    "Category" varchar(400) null,
    "Description" varchar(2000) null,
    "ISBN" varchar(80) not null,
    "Publisher" varchar(400) null,
    "row_version" bigint not null,
    "is_deleted" boolean not null,
    "last_modified" timestamp with time zone not null,
    primary key ("BookID")
);

create index "iLibraryOdataService_BookSet_1_1_last_modified_index" on "iLibraryOdataService_BookSet_1_1" ("last_modified");

create table "iLibraryOdataService_xs_request_history_1_1"
(
    "CreationTime" timestamp with time zone not null,
    "ResponseStatus" smallint not null,
    "ClientID" bytea not null,
    "RequestID" bytea not null,
    "ResponseHeaders" varchar(4000) not null,
    "ResponseData1" bytea null,
    "ResponseData2" bytea null,
    primary key ("ClientID", "RequestID")
);

create index "iLibraryOdataService_xs_request_history_1_1_creation_time_index" on "iLibraryOdataService_xs_request_history_1_1" ("CreationTime");