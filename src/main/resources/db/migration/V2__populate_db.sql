INSERT INTO HW10S.Client (name) VALUES
                              ('John'),
                              ('Mary'),
                              ('Peter'),
                              ('Alice'),
                              ('Bob'),
                              ('Jane'),
                              ('David'),
                              ('Karen'),
                              ('Michael'),
                              ('Sarah');
INSERT INTO HW10S.Planet (ID, name) VALUES
                                  ('EARTH', 'Earth'),
                                  ('MARS', 'Mars'),
                                  ('JUPITER', 'Jupiter'),
                                  ('SATURN', 'Saturn'),
                                  ('NEPTUNE', 'Neptune');
INSERT INTO HW10S.Ticket (client_id, from_planet_id, to_planet_id, created_at)
VALUES
    (1, 1, 2, '2022-05-15 13:20:00'),
    (2, 3, 1, '2022-06-01 08:45:00'),
    (3, 5, 4, '2022-05-20 14:30:00'),
    (4, 2, 4, '2022-05-18 10:15:00'),
    (5, 3, 2, '2022-06-10 16:00:00'),
    (6, 1, 3, '2022-05-28 09:30:00'),
    (7, 4, 1, '2022-06-05 11:45:00'),
    (8, 5, 1, '2022-06-07 15:00:00'),
    (9, 2, 1, '2022-05-22 17:30:00'),
    (10, 1, 4, '2022-06-12 12:00:00');