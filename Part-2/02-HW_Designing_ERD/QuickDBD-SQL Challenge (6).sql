-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/fHHY49
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "trainers" (
    "trainer_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gym_no" INT   NOT NULL,
    CONSTRAINT "pk_trainers" PRIMARY KEY (
        "trainer_id"
     )
);

CREATE TABLE "members" (
    "member_id" INT   NOT NULL,
    "trainer_id" INT   NOT NULL,
    "gym_no" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "join_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "credit_number" FLOAT   NOT NULL,
    "credit_exp" DATE   NOT NULL,
    CONSTRAINT "pk_members" PRIMARY KEY (
        "member_id"
     )
);

CREATE TABLE "gym" (
    "gym_no" INT   NOT NULL,
    "gym_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_gym" PRIMARY KEY (
        "gym_no"
     )
);

CREATE TABLE "equipment" (
    "equipment_id" INT   NOT NULL,
    "gym_no" INT   NOT NULL,
    "equipment_class" VARCHAR   NOT NULL,
    CONSTRAINT "pk_equipment" PRIMARY KEY (
        "equipment_id"
     )
);

CREATE TABLE "payments" (
    "payment_id" INT   NOT NULL,
    "payment_amount" MONEY   NOT NULL,
    "payment_date" DATE   NOT NULL,
    "member_id" INT   NOT NULL,
    "cc_number" FLOAT   NOT NULL,
    CONSTRAINT "pk_payments" PRIMARY KEY (
        "payment_id"
     )
);

ALTER TABLE "trainers" ADD CONSTRAINT "fk_trainers_gym_no" FOREIGN KEY("gym_no")
REFERENCES "gym" ("gym_no");

ALTER TABLE "members" ADD CONSTRAINT "fk_members_trainer_id" FOREIGN KEY("trainer_id")
REFERENCES "trainers" ("trainer_id");

ALTER TABLE "members" ADD CONSTRAINT "fk_members_gym_no" FOREIGN KEY("gym_no")
REFERENCES "gym" ("gym_no");

ALTER TABLE "equipment" ADD CONSTRAINT "fk_equipment_gym_no" FOREIGN KEY("gym_no")
REFERENCES "gym" ("gym_no");

ALTER TABLE "payments" ADD CONSTRAINT "fk_payments_member_id_cc_number" FOREIGN KEY("member_id", "cc_number")
REFERENCES "members" ("member_id", "credit_number");

