-- generated by csdl-to-sql for target h2 from com.ilibrary.mobile.csdl.xml

create sequence "iLibraryOdata_xs_data_metrics_1_2_id_seq" start with 1 increment by 1 nocache;

create table "iLibraryOdata_xs_data_metrics_1_2"
(
    "id" bigint not null,
    "start" timestamp not null,
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

create sequence "iLibraryOdata_UserSet_1_2_id_seq" start with 1 increment by 1 nocache;

create table "iLibraryOdata_UserSet_1_2"
(
    "Email" varchar(400) null,
    "Name" varchar(400) not null,
    "UserID" bigint not null,
    "row_version" bigint not null,
    "is_deleted" tinyint not null,
    "last_modified" timestamp not null,
    primary key ("UserID")
);

create index "iLibraryOdata_UserSet_1_2_last_modified_index" on "iLibraryOdata_UserSet_1_2" ("last_modified");

create sequence "iLibraryOdata_LendingSet_1_2_id_seq" start with 1 increment by 1 nocache;

create table "iLibraryOdata_LendingSet_1_2"
(
    "BookID" bigint not null,
    "BorrowDate" timestamp not null,
    "LendingID" bigint not null,
    "ReturnDate" timestamp null,
    "UserID" bigint not null,
    "row_version" bigint not null,
    "is_deleted" tinyint not null,
    "last_modified" timestamp not null,
    primary key ("LendingID")
);

create index "iLibraryOdata_LendingSet_1_2_last_modified_index" on "iLibraryOdata_LendingSet_1_2" ("last_modified");

create sequence "iLibraryOdata_BookSet_1_2_id_seq" start with 1 increment by 1 nocache;

create table "iLibraryOdata_BookSet_1_2"
(
    "Author" varchar(400) null,
    "BookID" bigint not null,
    "BookName" varchar(400) not null,
    "Category" varchar(400) null,
    "Description" varchar(2000) null,
    "ISBN" varchar(80) not null,
    "Publisher" varchar(400) null,
    "row_version" bigint not null,
    "is_deleted" tinyint not null,
    "last_modified" timestamp not null,
    primary key ("BookID")
);

create index "iLibraryOdata_BookSet_1_2_last_modified_index" on "iLibraryOdata_BookSet_1_2" ("last_modified");

create table "iLibraryOdata_xs_request_history_1_2"
(
    "CreationTime" timestamp not null,
    "ResponseStatus" smallint not null,
    "ClientID" varbinary(100) not null,
    "RequestID" varbinary(100) not null,
    "ResponseHeaders" varchar(4000) not null,
    "ResponseData1" varbinary(2000) null,
    "ResponseData2" blob null,
    primary key ("ClientID", "RequestID")
);

create index "iLibraryOdata_xs_request_history_1_2_creation_time_index" on "iLibraryOdata_xs_request_history_1_2" ("CreationTime");
