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

DROP TABLE IF EXISTS game;

CREATE TABLE game (
    player         VARCHAR(8)  NOT NULL,
    first_name     VARCHAR(30) NOT NULL,
    last_name      VARCHAR(30) NOT NULL,
    city           VARCHAR(30) NOT NULL,
    state          VARCHAR(2)  NOT NULL,
    country        VARCHAR(2)  NOT NULL,
    session_rating INTEGER     NOT NULL,
    game_type      INTEGER     NOT NULL,
    score_method   INTEGER     NOT NULL,
    matches_played INTEGER     NOT NULL
) COMMENT 'A player in an event';

/* Enumerated Lists */

DROP TABLE IF EXISTS game_type;

CREATE TABLE game_type (
    id   INTEGER     NOT NULL,
    type VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS session_rating;

CREATE TABLE session_rating (
    id     INTEGER     NOT NULL,
    rating VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS score_method;

CREATE TABLE score_method (
    id     INTEGER     NOT NULL,
    method VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS country;

CREATE TABLE country (
    id      VARCHAR(2)   NOT NULL,
    country VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS state;

CREATE TABLE state (
    id    VARCHAR(2)   NOT NULL,
    state VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

/* put it all together */

ALTER TABLE game ADD CONSTRAINT
    FOREIGN KEY(session_rating) REFERENCES session_rating(id);
ALTER TABLE game ADD CONSTRAINT
    FOREIGN KEY(game_type) REFERENCES game_type(id);
ALTER TABLE game ADD CONSTRAINT
    FOREIGN KEY(score_method) REFERENCES score_method(id);
ALTER TABLE game ADD CONSTRAINT
    FOREIGN KEY(state) REFERENCES state(id);
ALTER TABLE game ADD CONSTRAINT
    FOREIGN KEY(country) REFERENCES country(id);

/* game_type codes */
INSERT INTO game_type VALUES(0, 'Pairs');
INSERT INTO game_type VALUES(1, 'Teams - Swiss, KO');
INSERT INTO game_type VALUES(4, 'BAM');

/* session_rating codes */
INSERT INTO session_rating VALUES(6,  'Regional');
INSERT INTO session_rating VALUES(13, 'National');

/* score_method codes */
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

/* state codes */
INSERT INTO state VALUES('AL', 'Alabama');
INSERT INTO state VALUES('AK', 'Alaska');
INSERT INTO state VALUES('AZ', 'Arizona');
INSERT INTO state VALUES('AR', 'Arkansas');
INSERT INTO state VALUES('CA', 'California');
INSERT INTO state VALUES('CO', 'Colorado');
INSERT INTO state VALUES('CT', 'Connecticut');
INSERT INTO state VALUES('DE', 'Delaware');
INSERT INTO state VALUES('FL', 'Florida');
INSERT INTO state VALUES('GA', 'Georgia');
INSERT INTO state VALUES('HI', 'Hawaii');
INSERT INTO state VALUES('ID', 'Idaho');
INSERT INTO state VALUES('IL', 'Illinois');
INSERT INTO state VALUES('IN', 'Indiana');
INSERT INTO state VALUES('IA', 'Iowa');
INSERT INTO state VALUES('KS', 'Kansas');
INSERT INTO state VALUES('KY', 'Kentucky');
INSERT INTO state VALUES('LA', 'Louisiana');
INSERT INTO state VALUES('ME', 'Maine');
INSERT INTO state VALUES('MD', 'Maryland');
INSERT INTO state VALUES('MA', 'Massachusetts');
INSERT INTO state VALUES('MI', 'Michigan');
INSERT INTO state VALUES('MN', 'Minnesota');
INSERT INTO state VALUES('MS', 'Mississippi');
INSERT INTO state VALUES('MO', 'Missouri');
INSERT INTO state VALUES('MT', 'Montana');
INSERT INTO state VALUES('NE', 'Nebraska');
INSERT INTO state VALUES('NV', 'Nevada');
INSERT INTO state VALUES('NH', 'New Hampshire');
INSERT INTO state VALUES('NJ', 'New Jersey');
INSERT INTO state VALUES('NM', 'New Mexico');
INSERT INTO state VALUES('NY', 'New York');
INSERT INTO state VALUES('NC', 'North Carolina');
INSERT INTO state VALUES('ND', 'North Dakota');
INSERT INTO state VALUES('OH', 'Ohio');
INSERT INTO state VALUES('OK', 'Oklahoma');
INSERT INTO state VALUES('OR', 'Oregon');
INSERT INTO state VALUES('PA', 'Pennsylvania');
INSERT INTO state VALUES('RI', 'Rhode Island');
INSERT INTO state VALUES('SC', 'South Carolina');
INSERT INTO state VALUES('SD', 'South Dakota');
INSERT INTO state VALUES('TN', 'Tennessee');
INSERT INTO state VALUES('TX', 'Texas');
INSERT INTO state VALUES('UT', 'Utah');
INSERT INTO state VALUES('VT', 'Vermont');
INSERT INTO state VALUES('VA', 'Virginia');
INSERT INTO state VALUES('WA', 'Washington');
INSERT INTO state VALUES('WV', 'West Virginia');
INSERT INTO state VALUES('WI', 'Wisconsin');
INSERT INTO state VALUES('WY', 'Wyoming');
INSERT INTO state VALUES('AS', 'American Samoa');
INSERT INTO state VALUES('DC', 'District of Columbia');
INSERT INTO state VALUES('FM', 'Federated States of Micronesia');
INSERT INTO state VALUES('GU', 'Guam');
INSERT INTO state VALUES('MH', 'Marshall Islands');
INSERT INTO state VALUES('MP', 'Northern Mariana Islands');
INSERT INTO state VALUES('PW', 'Palau');
INSERT INTO state VALUES('PR', 'Puerto Rico');
INSERT INTO state VALUES('VI', 'Virgin Islands');

/* country codes */
INSERT INTO country VALUES('AF', 'AFGHANISTAN');
INSERT INTO country VALUES('AX', 'ÅLAND ISLANDS');
INSERT INTO country VALUES('AL', 'ALBANIA');
INSERT INTO country VALUES('DZ', 'ALGERIA');
INSERT INTO country VALUES('AS', 'AMERICAN SAMOA');
INSERT INTO country VALUES('AD', 'ANDORRA');
INSERT INTO country VALUES('AO', 'ANGOLA');
INSERT INTO country VALUES('AI', 'ANGUILLA');
INSERT INTO country VALUES('AQ', 'ANTARCTICA');
INSERT INTO country VALUES('AG', 'ANTIGUA AND BARBUDA');
INSERT INTO country VALUES('AR', 'ARGENTINA');
INSERT INTO country VALUES('AM', 'ARMENIA');
INSERT INTO country VALUES('AW', 'ARUBA');
INSERT INTO country VALUES('AU', 'AUSTRALIA');
INSERT INTO country VALUES('AT', 'AUSTRIA');
INSERT INTO country VALUES('AZ', 'AZERBAIJAN');
INSERT INTO country VALUES('BS', 'BAHAMAS');
INSERT INTO country VALUES('BH', 'BAHRAIN');
INSERT INTO country VALUES('BD', 'BANGLADESH');
INSERT INTO country VALUES('BB', 'BARBADOS');
INSERT INTO country VALUES('BY', 'BELARUS');
INSERT INTO country VALUES('BE', 'BELGIUM');
INSERT INTO country VALUES('BZ', 'BELIZE');
INSERT INTO country VALUES('BJ', 'BENIN');
INSERT INTO country VALUES('BM', 'BERMUDA');
INSERT INTO country VALUES('BT', 'BHUTAN');
INSERT INTO country VALUES('BO', 'BOLIVIA, PLURINATIONAL STATE OF');
INSERT INTO country VALUES('BQ', 'BONAIRE, SINT EUSTATIUS AND SABA');
INSERT INTO country VALUES('BA', 'BOSNIA AND HERZEGOVINA');
INSERT INTO country VALUES('BW', 'BOTSWANA');
INSERT INTO country VALUES('BV', 'BOUVET ISLAND');
INSERT INTO country VALUES('BR', 'BRAZIL');
INSERT INTO country VALUES('IO', 'BRITISH INDIAN OCEAN TERRITORY');
INSERT INTO country VALUES('BN', 'BRUNEI DARUSSALAM');
INSERT INTO country VALUES('BG', 'BULGARIA');
INSERT INTO country VALUES('BF', 'BURKINA FASO');
INSERT INTO country VALUES('BI', 'BURUNDI');
INSERT INTO country VALUES('KH', 'CAMBODIA');
INSERT INTO country VALUES('CM', 'CAMEROON');
INSERT INTO country VALUES('CA', 'CANADA');
INSERT INTO country VALUES('CV', 'CAPE VERDE');
INSERT INTO country VALUES('KY', 'CAYMAN ISLANDS');
INSERT INTO country VALUES('CF', 'CENTRAL AFRICAN REPUBLIC');
INSERT INTO country VALUES('TD', 'CHAD');
INSERT INTO country VALUES('CL', 'CHILE');
INSERT INTO country VALUES('CN', 'CHINA');
INSERT INTO country VALUES('CX', 'CHRISTMAS ISLAND');
INSERT INTO country VALUES('CC', 'COCOS (KEELING) ISLANDS');
INSERT INTO country VALUES('CO', 'COLOMBIA');
INSERT INTO country VALUES('KM', 'COMOROS');
INSERT INTO country VALUES('CG', 'CONGO');
INSERT INTO country VALUES('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE');
INSERT INTO country VALUES('CK', 'COOK ISLANDS');
INSERT INTO country VALUES('CR', 'COSTA RICA');
INSERT INTO country VALUES('CI', 'CÔTE D''IVOIRE');
INSERT INTO country VALUES('HR', 'CROATIA');
INSERT INTO country VALUES('CU', 'CUBA');
INSERT INTO country VALUES('CW', 'CURAÇAO');
INSERT INTO country VALUES('CY', 'CYPRUS');
INSERT INTO country VALUES('CZ', 'CZECH REPUBLIC');
INSERT INTO country VALUES('DK', 'DENMARK');
INSERT INTO country VALUES('DJ', 'DJIBOUTI');
INSERT INTO country VALUES('DM', 'DOMINICA');
INSERT INTO country VALUES('DO', 'DOMINICAN REPUBLIC');
INSERT INTO country VALUES('EC', 'ECUADOR');
INSERT INTO country VALUES('EG', 'EGYPT');
INSERT INTO country VALUES('SV', 'EL SALVADOR');
INSERT INTO country VALUES('GQ', 'EQUATORIAL GUINEA');
INSERT INTO country VALUES('ER', 'ERITREA');
INSERT INTO country VALUES('EE', 'ESTONIA');
INSERT INTO country VALUES('ET', 'ETHIOPIA');
INSERT INTO country VALUES('FK', 'FALKLAND ISLANDS (MALVINAS)');
INSERT INTO country VALUES('FO', 'FAROE ISLANDS');
INSERT INTO country VALUES('FJ', 'FIJI');
INSERT INTO country VALUES('FI', 'FINLAND');
INSERT INTO country VALUES('FR', 'FRANCE');
INSERT INTO country VALUES('GF', 'FRENCH GUIANA');
INSERT INTO country VALUES('PF', 'FRENCH POLYNESIA');
INSERT INTO country VALUES('TF', 'FRENCH SOUTHERN TERRITORIES');
INSERT INTO country VALUES('GA', 'GABON');
INSERT INTO country VALUES('GM', 'GAMBIA');
INSERT INTO country VALUES('GE', 'GEORGIA');
INSERT INTO country VALUES('DE', 'GERMANY');
INSERT INTO country VALUES('GH', 'GHANA');
INSERT INTO country VALUES('GI', 'GIBRALTAR');
INSERT INTO country VALUES('GR', 'GREECE');
INSERT INTO country VALUES('GL', 'GREENLAND');
INSERT INTO country VALUES('GD', 'GRENADA');
INSERT INTO country VALUES('GP', 'GUADELOUPE');
INSERT INTO country VALUES('GU', 'GUAM');
INSERT INTO country VALUES('GT', 'GUATEMALA');
INSERT INTO country VALUES('GG', 'GUERNSEY');
INSERT INTO country VALUES('GN', 'GUINEA');
INSERT INTO country VALUES('GW', 'GUINEA-BISSAU');
INSERT INTO country VALUES('GY', 'GUYANA');
INSERT INTO country VALUES('HT', 'HAITI');
INSERT INTO country VALUES('HM', 'HEARD ISLAND AND MCDONALD ISLANDS');
INSERT INTO country VALUES('VA', 'HOLY SEE (VATICAN CITY STATE)');
INSERT INTO country VALUES('HN', 'HONDURAS');
INSERT INTO country VALUES('HK', 'HONG KONG');
INSERT INTO country VALUES('HU', 'HUNGARY');
INSERT INTO country VALUES('IS', 'ICELAND');
INSERT INTO country VALUES('IN', 'INDIA');
INSERT INTO country VALUES('ID', 'INDONESIA');
INSERT INTO country VALUES('IR', 'IRAN, ISLAMIC REPUBLIC OF');
INSERT INTO country VALUES('IQ', 'IRAQ');
INSERT INTO country VALUES('IE', 'IRELAND');
INSERT INTO country VALUES('IM', 'ISLE OF MAN');
INSERT INTO country VALUES('IL', 'ISRAEL');
INSERT INTO country VALUES('IT', 'ITALY');
INSERT INTO country VALUES('JM', 'JAMAICA');
INSERT INTO country VALUES('JP', 'JAPAN');
INSERT INTO country VALUES('JE', 'JERSEY');
INSERT INTO country VALUES('JO', 'JORDAN');
INSERT INTO country VALUES('KZ', 'KAZAKHSTAN');
INSERT INTO country VALUES('KE', 'KENYA');
INSERT INTO country VALUES('KI', 'KIRIBATI');
INSERT INTO country VALUES('KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF');
INSERT INTO country VALUES('KR', 'KOREA, REPUBLIC OF');
INSERT INTO country VALUES('KW', 'KUWAIT');
INSERT INTO country VALUES('KG', 'KYRGYZSTAN');
INSERT INTO country VALUES('LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC');
INSERT INTO country VALUES('LV', 'LATVIA');
INSERT INTO country VALUES('LB', 'LEBANON');
INSERT INTO country VALUES('LS', 'LESOTHO');
INSERT INTO country VALUES('LR', 'LIBERIA');
INSERT INTO country VALUES('LY', 'LIBYA');
INSERT INTO country VALUES('LI', 'LIECHTENSTEIN');
INSERT INTO country VALUES('LT', 'LITHUANIA');
INSERT INTO country VALUES('LU', 'LUXEMBOURG');
INSERT INTO country VALUES('MO', 'MACAO');
INSERT INTO country VALUES('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF');
INSERT INTO country VALUES('MG', 'MADAGASCAR');
INSERT INTO country VALUES('MW', 'MALAWI');
INSERT INTO country VALUES('MY', 'MALAYSIA');
INSERT INTO country VALUES('MV', 'MALDIVES');
INSERT INTO country VALUES('ML', 'MALI');
INSERT INTO country VALUES('MT', 'MALTA');
INSERT INTO country VALUES('MH', 'MARSHALL ISLANDS');
INSERT INTO country VALUES('MQ', 'MARTINIQUE');
INSERT INTO country VALUES('MR', 'MAURITANIA');
INSERT INTO country VALUES('MU', 'MAURITIUS');
INSERT INTO country VALUES('YT', 'MAYOTTE');
INSERT INTO country VALUES('MX', 'MEXICO');
INSERT INTO country VALUES('FM', 'MICRONESIA, FEDERATED STATES OF');
INSERT INTO country VALUES('MD', 'MOLDOVA, REPUBLIC OF');
INSERT INTO country VALUES('MC', 'MONACO');
INSERT INTO country VALUES('MN', 'MONGOLIA');
INSERT INTO country VALUES('ME', 'MONTENEGRO');
INSERT INTO country VALUES('MS', 'MONTSERRAT');
INSERT INTO country VALUES('MA', 'MOROCCO');
INSERT INTO country VALUES('MZ', 'MOZAMBIQUE');
INSERT INTO country VALUES('MM', 'MYANMAR');
INSERT INTO country VALUES('NA', 'NAMIBIA');
INSERT INTO country VALUES('NR', 'NAURU');
INSERT INTO country VALUES('NP', 'NEPAL');
INSERT INTO country VALUES('NL', 'NETHERLANDS');
INSERT INTO country VALUES('NC', 'NEW CALEDONIA');
INSERT INTO country VALUES('NZ', 'NEW ZEALAND');
INSERT INTO country VALUES('NI', 'NICARAGUA');
INSERT INTO country VALUES('NE', 'NIGER');
INSERT INTO country VALUES('NG', 'NIGERIA');
INSERT INTO country VALUES('NU', 'NIUE');
INSERT INTO country VALUES('NF', 'NORFOLK ISLAND');
INSERT INTO country VALUES('MP', 'NORTHERN MARIANA ISLANDS');
INSERT INTO country VALUES('NO', 'NORWAY');
INSERT INTO country VALUES('OM', 'OMAN');
INSERT INTO country VALUES('PK', 'PAKISTAN');
INSERT INTO country VALUES('PW', 'PALAU');
INSERT INTO country VALUES('PS', 'PALESTINIAN TERRITORY, OCCUPIED');
INSERT INTO country VALUES('PA', 'PANAMA');
INSERT INTO country VALUES('PG', 'PAPUA NEW GUINEA');
INSERT INTO country VALUES('PY', 'PARAGUAY');
INSERT INTO country VALUES('PE', 'PERU');
INSERT INTO country VALUES('PH', 'PHILIPPINES');
INSERT INTO country VALUES('PN', 'PITCAIRN');
INSERT INTO country VALUES('PL', 'POLAND');
INSERT INTO country VALUES('PT', 'PORTUGAL');
INSERT INTO country VALUES('PR', 'PUERTO RICO');
INSERT INTO country VALUES('QA', 'QATAR');
INSERT INTO country VALUES('RE', 'RÉUNION');
INSERT INTO country VALUES('RO', 'ROMANIA');
INSERT INTO country VALUES('RU', 'RUSSIAN FEDERATION');
INSERT INTO country VALUES('RW', 'RWANDA');
INSERT INTO country VALUES('BL', 'SAINT BARTHÉLEMY');
INSERT INTO country VALUES('SH', 'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA');
INSERT INTO country VALUES('KN', 'SAINT KITTS AND NEVIS');
INSERT INTO country VALUES('LC', 'SAINT LUCIA');
INSERT INTO country VALUES('MF', 'SAINT MARTIN (FRENCH PART)');
INSERT INTO country VALUES('PM', 'SAINT PIERRE AND MIQUELON');
INSERT INTO country VALUES('VC', 'SAINT VINCENT AND THE GRENADINES');
INSERT INTO country VALUES('WS', 'SAMOA');
INSERT INTO country VALUES('SM', 'SAN MARINO');
INSERT INTO country VALUES('ST', 'SAO TOME AND PRINCIPE');
INSERT INTO country VALUES('SA', 'SAUDI ARABIA');
INSERT INTO country VALUES('SN', 'SENEGAL');
INSERT INTO country VALUES('RS', 'SERBIA');
INSERT INTO country VALUES('SC', 'SEYCHELLES');
INSERT INTO country VALUES('SL', 'SIERRA LEONE');
INSERT INTO country VALUES('SG', 'SINGAPORE');
INSERT INTO country VALUES('SX', 'SINT MAARTEN (DUTCH PART)');
INSERT INTO country VALUES('SK', 'SLOVAKIA');
INSERT INTO country VALUES('SI', 'SLOVENIA');
INSERT INTO country VALUES('SB', 'SOLOMON ISLANDS');
INSERT INTO country VALUES('SO', 'SOMALIA');
INSERT INTO country VALUES('ZA', 'SOUTH AFRICA');
INSERT INTO country VALUES('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS');
INSERT INTO country VALUES('SS', 'SOUTH SUDAN');
INSERT INTO country VALUES('ES', 'SPAIN');
INSERT INTO country VALUES('LK', 'SRI LANKA');
INSERT INTO country VALUES('SD', 'SUDAN');
INSERT INTO country VALUES('SR', 'SURINAME');
INSERT INTO country VALUES('SJ', 'SVALBARD AND JAN MAYEN');
INSERT INTO country VALUES('SZ', 'SWAZILAND');
INSERT INTO country VALUES('SE', 'SWEDEN');
INSERT INTO country VALUES('CH', 'SWITZERLAND');
INSERT INTO country VALUES('SY', 'SYRIAN ARAB REPUBLIC');
INSERT INTO country VALUES('TW', 'TAIWAN, PROVINCE OF CHINA');
INSERT INTO country VALUES('TJ', 'TAJIKISTAN');
INSERT INTO country VALUES('TZ', 'TANZANIA, UNITED REPUBLIC OF');
INSERT INTO country VALUES('TH', 'THAILAND');
INSERT INTO country VALUES('TL', 'TIMOR-LESTE');
INSERT INTO country VALUES('TG', 'TOGO');
INSERT INTO country VALUES('TK', 'TOKELAU');
INSERT INTO country VALUES('TO', 'TONGA');
INSERT INTO country VALUES('TT', 'TRINIDAD AND TOBAGO');
INSERT INTO country VALUES('TN', 'TUNISIA');
INSERT INTO country VALUES('TR', 'TURKEY');
INSERT INTO country VALUES('TM', 'TURKMENISTAN');
INSERT INTO country VALUES('TC', 'TURKS AND CAICOS ISLANDS');
INSERT INTO country VALUES('TV', 'TUVALU');
INSERT INTO country VALUES('UG', 'UGANDA');
INSERT INTO country VALUES('UA', 'UKRAINE');
INSERT INTO country VALUES('AE', 'UNITED ARAB EMIRATES');
INSERT INTO country VALUES('GB', 'UNITED KINGDOM');
INSERT INTO country VALUES('US', 'UNITED STATES');
INSERT INTO country VALUES('UM', 'UNITED STATES MINOR OUTLYING ISLANDS');
INSERT INTO country VALUES('UY', 'URUGUAY');
INSERT INTO country VALUES('UZ', 'UZBEKISTAN');
INSERT INTO country VALUES('VU', 'VANUATU');
INSERT INTO country VALUES('VE', 'VENEZUELA, BOLIVARIAN REPUBLIC OF');
INSERT INTO country VALUES('VN', 'VIET NAM');
INSERT INTO country VALUES('VG', 'VIRGIN ISLANDS, BRITISH');
INSERT INTO country VALUES('VI', 'VIRGIN ISLANDS, U.S.');
INSERT INTO country VALUES('WF', 'WALLIS AND FUTUNA');
INSERT INTO country VALUES('EH', 'WESTERN SAHARA');
INSERT INTO country VALUES('YE', 'YEMEN');
INSERT INTO country VALUES('ZM', 'ZAMBIA');
INSERT INTO country VALUES('ZW', 'ZIMBABWE');

-- vim: sw=4 ts=8 ai syn=sql
