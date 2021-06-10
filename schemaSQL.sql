-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "profile" (
    "UNITID" INT   NOT NULL,
    "OPEID" INT   NOT NULL,
    "INSTNM" VARCHAR(125)   NOT NULL,
    "CONTROL" INT   NOT NULL,
    "SCH_DEG" INT   NOT NULL,
    "RELAFFIL" INT   NOT NULL,
    "HIGHDEG" INT   NOT NULL,
    "INSTURL" VARCHAR(360)   NOT NULL,
    CONSTRAINT "pk_Profile" PRIMARY KEY (
        "UNITID"
     )
);

CREATE TABLE "geography" (
    "UNITID" INT   NOT NULL,
    "CITY" VARCHAR(100)   NOT NULL,
    "STABBR" VARCHAR(5)   NOT NULL,
    "ZIP" INT   NOT NULL,
    "LATITUDE" FLOAT   NOT NULL,
    "LONGITUDE" FLOAT   NOT NULL,
    CONSTRAINT "pk_Geography" PRIMARY KEY (
        "UNITID"
     )
);

CREATE TABLE "enrollment" (
    "UNITID" INT   NOT NULL,
    "ADM_RATE" FLOAT   NOT NULL,
    "UGDS" INT   NOT NULL,
    "PPTUG_EF" FLOAT   NOT NULL,
    CONSTRAINT "pk_Enrollment" PRIMARY KEY (
        "UNITID"
     )
);

CREATE TABLE "need" (
    "UNITID" INT   NOT NULL,
    "FAMINC" FLOAT   NOT NULL,
    "MD_FAMINC" FLOAT   NOT NULL,
    "FAMINC_IND" FLOAT   NOT NULL,
    CONSTRAINT "pk_Need" PRIMARY KEY (
        "UNITID"
     )
);

CREATE TABLE "costs" (
    "UNITID" INT   NOT NULL,
    "TUITFTE" FLOAT   NOT NULL,
    "INEXPFTE" FLOAT   NOT NULL,
    "AVGFACSAL" FLOAT   NOT NULL,
    "NPT4_PRIV" FLOAT   NOT NULL,
    "NPT4_PUB" FLOAT   NOT NULL,
    "COSTT4_A" FLOAT   NOT NULL,
    "COSTT4_P" FLOAT   NOT NULL,
    CONSTRAINT "pk_Costs" PRIMARY KEY (
        "UNITID"
     )
);

CREATE TABLE "outcomes" (
    "UNITID" INT   NOT NULL,
    "POVERTY_RATE" FLOAT   NOT NULL,
    "UNEMP_RATE" FLOAT   NOT NULL,
    CONSTRAINT "pk_Outcomes" PRIMARY KEY (
        "UNITID"
     )
);

CREATE TABLE "demographics" (
    "UNITID" INT   NOT NULL,
    "PCT_WHITE" FLOAT   NOT NULL,
    "PCT_BLACK" FLOAT   NOT NULL,
    "PCT_ASIAN" FLOAT   NOT NULL,
    "PCT_HISPANIC" FLOAT   NOT NULL,
    "PCT_BA" FLOAT   NOT NULL,
    "PCT_BORN_US" FLOAT   NOT NULL,
    CONSTRAINT "pk_Demographics" PRIMARY KEY (
        "UNITID"
     )
);

ALTER TABLE "geography" ADD CONSTRAINT "fk_Geography_UNITID" FOREIGN KEY("UNITID")
REFERENCES "profile" ("UNITID");

ALTER TABLE "enrollment" ADD CONSTRAINT "fk_Enrollment_UNITID" FOREIGN KEY("UNITID")
REFERENCES "profile" ("UNITID");

ALTER TABLE "need" ADD CONSTRAINT "fk_Need_UNITID" FOREIGN KEY("UNITID")
REFERENCES "profile" ("UNITID");

ALTER TABLE "costs" ADD CONSTRAINT "fk_Costs_UNITID" FOREIGN KEY("UNITID")
REFERENCES "profile" ("UNITID");

ALTER TABLE "outcomes" ADD CONSTRAINT "fk_Outcomes_UNITID" FOREIGN KEY("UNITID")
REFERENCES "profile" ("UNITID");

ALTER TABLE "demographics" ADD CONSTRAINT "fk_Demographics_UNITID" FOREIGN KEY("UNITID")
REFERENCES "profile" ("UNITID");

