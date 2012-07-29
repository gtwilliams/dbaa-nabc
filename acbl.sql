/*
    Copyright (c) 2012 Garry T. Williams

    This program is free software: you can redistribute it and/or
    modify it under the terms of the GNU General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see
    <http://www.gnu.org/licenses/>.
*/

/* Enumerated Lists */

DROP TABLE IF EXISTS game_type;

CREATE TABLE game_type (
    id INTEGER,
    type VARCHAR(30)
);

INSERT INTO game_type VALUES(0, 'Pairs');
INSERT INTO game_type VALUES(1, 'Teams - Swiss, KO');
INSERT INTO game_type VALUES(4, 'BAM');

DROP TABLE IF EXISTS session_rating;

CREATE TABLE session_rating (
    id INTEGER,
    rating VARCHAR(30)
);

INSERT INTO session_rating VALUES(6,  'Regional');
INSERT INTO session_rating VALUES(13, 'National');

DROP TABLE IF EXISTS score_method;

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
