-- set search path
SET
    search_path TO PUBLIC;

-- drop all rows table before insertion
DELETE FROM
    "job";

DELETE FROM
    "description";

-- restart sequence
ALTER SEQUENCE "job_id_seq" RESTART WITH 1;

ALTER SEQUENCE "description_id_seq" RESTART WITH 1;

-- seed job table
INSERT INTO
    "job" ("name", "img_path")
VALUES
    ('doctor', 'doctor.jpg'),
    ('police', 'police.jpg'),
    ('fire fighter', 'fire_fighter.jpg'),
    ('teacher', 'teacher.jpg'),
    ('engineer', 'engineer.jpg'),
    ('chef', 'chef.jpg'),
    ('pilot', 'pilot.jpg'),
    (
        'astronaut',
        'astronaut.jpg'
    ),
    (
        'bus driver',
        'bus_driver.jpg'
    ),
    ('soldier', 'soldier.jpg');

-- seed description table
INSERT INTO
    "description" ("job_id", "description")
VALUES
    (1, 'You visit them when you are sick'),
    (1, 'Practices medicine'),
    (1, 'Keeps people healthy and heals the sick'),
    (2, 'Makes sure people follows the law'),
    (2, 'Arrest criminals and help the public'),
    (3, 'Trained to control and put out fires'),
    (
        3,
        'Connects hoses to fire hydrants and operate pumps to power the hoses to help control the fire'
    ),
    (
        3,
        'Also rescues people who are trapped inside burning buildings'
    ),
    (4, 'Educate others'),
    (4, 'Works in schools'),
    (4, 'Gives lesson to students'),
    (
        5,
        'Designs and build complex products, machines and structures'
    ),
    (
        5,
        'Have scientific training that they use to make practical things'
    ),
    (
        5,
        'Divided into branches such as civil, electrical, mechanical, and chemical'
    ),
    (6, 'Works in kitchens'),
    (
        6,
        'Create the menus, prepare the food, and manage the operations of the kitchen'
    ),
    (7, 'Flies an airplane'),
    (7, 'Works with air stewardesses'),
    (
        7,
        'Must pass a number of tests and obtain a license before they can fly the vehicle'
    ),
    (8, 'Travels into outer space on rockets'),
    (
        8,
        'Wears a special equipment called a spacesuit that protects them in space'
    ),
    (9, 'Drives a bus'),
    (
        9,
        'Picks up and drops off passengers at bus stops'
    ),
    (10, 'Member of the military'),
    (
        10,
        'Protects a country’s land, sea, and airspace from foreign invasion'
    ),
    (10, 'Belongs in the army, navy or air force');