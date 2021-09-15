-- set search path
SET
    search_path TO PUBLIC;

-- drop all rows table table before insertion
DELETE FROM
    "job";

-- restart sequence
ALTER SEQUENCE "job_id_seq" RESTART WITH 1;

-- seed job table
INSERT INTO
    "job" ("name", "descriptions", "img_path")
VALUES
    (
        'doctor',
        ARRAY [ 'You visit them when you are sick',
        'Practices medicine',
        'Keeps people healthy and heals the sick' ],
        'doctor.jpg'
    ),
    (
        'police officer',
        ARRAY [ 'Makes sure people follows the law',
        'Arrest criminals and help the public' ],
        'police_officer.jpg'
    ),
    (
        'fireman',
        ARRAY [ 'Trained to control and put out fires.',
        'Connects hoses to fire hydrants and operate pumps to power the hoses to help control the fire',
        'Also rescues people who are trapped inside burning buildings' ],
        'fireman.jpg'
    ),
    (
        'teacher',
        ARRAY [ 'Educate others',
        ' Works in schools',
        ' Gives lesson to students' ],
        'teacher.jpg'
    ),
    (
        'engineer',
        ARRAY [ 'Designs and build complex products, machines and structures',
        ' Have scientific training that they use to make practical things',
        ' Divided into branches such as civil, electrical, mechanical, and chemical' ],
        'engineer.jpg'
    ),
    (
        'chef',
        ARRAY [ 'Works in kitchens',
        ' Create the menus, prepare the food, and manage the operations of the kitchen' ],
        'chef.jpg'
    ),
    (
        'pilot',
        ARRAY [ 'Flies an airplane',
        ' Works with air stewardesses',
        ' Must pass a number of tests and obtain a license before they can fly the vehicle' ],
        'pilot.jpg'
    ),
    (
        'astronaut',
        ARRAY [ 'Travels into outer space on rockets',
        ' Wears a special equipment called a spacesuit that protects them in space' ],
        'astronaut.jpg'
    ),
    (
        'bus driver',
        ARRAY [ 'Drives a bus',
        ' Picks up and drops off passengers at bus stops' ],
        'bus_driver.jpg'
    ),
    (
        'soldier',
        ARRAY [ 'Member of the military',
        ' Protects a country’s land, sea, and airspace from foreign invasion',
        ' Belongs in the army, navy or air force' ],
        'soldier.jpg'
    );