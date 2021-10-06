-- set search path
SET
    search_path TO PUBLIC;

-- drop tables
DROP TABLE IF EXISTS "session";

DROP TABLE IF EXISTS "user";

DROP TABLE IF EXISTS "description";

DROP TABLE IF EXISTS "job";

DROP TABLE IF EXISTS "output_img";

DROP TABLE IF EXISTS "input_img";

-- create tables
CREATE TABLE "input_img" (
    "id" serial PRIMARY KEY,
    "file_path" text,
    "created_date" timestamptz
);

CREATE TABLE "output_img" (
    "id" serial PRIMARY KEY,
    "file_path" text,
    "created_date" timestamptz
);

CREATE TABLE "job" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "img_path" text NOT NULL
);

CREATE TABLE "description" (
    "id" serial primary key,
    "job_id" INT,
    "description" text NOT NULL,
    FOREIGN key ("job_id") REFERENCES "job" ("id") ON DELETE CASCADE
);

CREATE TABLE "user" ("id" VARCHAR PRIMARY KEY);

CREATE TABLE "session" (
    "id" serial PRIMARY KEY,
    "user_id" VARCHAR,
    "job_id" INT,
    "input_img_id" INT,
    "output_img_id" INT,
    "start_time" timestamptz,
    "end_time" timestamptz,
    FOREIGN KEY ("job_id") REFERENCES "job"("id") ON DELETE CASCADE,
    FOREIGN KEY ("input_img_id") REFERENCES "input_img"("id"),
    FOREIGN KEY ("output_img_id") REFERENCES "output_img"("id"),
    FOREIGN KEY ("user_id") REFERENCES "user"("id")
);