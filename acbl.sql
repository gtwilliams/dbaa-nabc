/*
    $Revision$
    Copyright (c) 2012 Garry T. Williams
*/

/*
    Enumerated Lists
*/

DROP TABLE game_type;

CREATE TABLE game_type (
    id INTEGER,
    type VARCHAR(30)
);

INSERT INTO game_type VALUES(0, 'Pairs');
INSERT INTO game_type VALUES(1, 'Teams - Swiss, KO');
INSERT INTO game_type VALUES(4, 'BAM');

DROP TABLE session_rating;

CREATE TABLE session_rating (
    id INTEGER,
    rating VARCHAR(30)
);

INSERT INTO session_rating VALUES(6,  'Regional');
INSERT INTO session_rating VALUES(13, 'National');

DROP TABLE score_method;

CREATE TABLE score_method (
    id INTEGER,
    method VARCHAR(30)
);

INSERT INTO score_method VALUES(0,  'Matchpoints');
INSERT INTO score_method VALUES(1,  'Datum IMPs');
INSERT INTO score_method VALUES(2,  'Average IMPs');
INSERT INTO score_method VALUES(3,  'Total IMPs');
INSERT INTO score_method VALUES(4,  'Instant Matchpoints');
INSERT INTO score_method VALUES(5,  'Board-a-Match Matchpoints');
INSERT INTO score_method VALUES(6,  'Win-loss');
INSERT INTO score_method VALUES(7,  'Victory Points');
INSERT INTO score_method VALUES(8,  'Knockout');
INSERT INTO score_method VALUES(9,  'Zip Knockout (One Session)');
INSERT INTO score_method VALUES(10, 'Continuous Pairs Final');
INSERT INTO score_method VALUES(11, 'Name Entry Only');
INSERT INTO score_method VALUES(12, 'Board-a-Match IMPs');
INSERT INTO score_method VALUES(13, 'Predetermined Datum IMPs');
INSERT INTO score_method VALUES(14, 'Matchpoints - No Halves');
INSERT INTO score_method VALUES(15, 'Total Points');
INSERT INTO score_method VALUES(16, 'Swiss BAM Matchpoints');
INSERT INTO score_method VALUES(17, 'Bracketing Assignments');
INSERT INTO score_method VALUES(18, 'Compact KO');

-- vim: sw=4 ts=8 ai syn=sql
