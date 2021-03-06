CREATE TABLE IF NOT EXISTS agency (
  id INTEGER NOT NULL,
  name TEXT NOT NULL,
  mail TEXT,
  employees TEXT,
  locality TEXT,
  postCode TEXT,
  country TEXT NOT NULL,
  website TEXT,
  telephone TEXT,
  UNIQUE (name, country)
);
CREATE TABLE IF NOT EXISTS attribute (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  type TEXT NOT NULL,
  UNIQUE (name, type)
);
CREATE TABLE IF NOT EXISTS focus (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  agencyId INTEGER,
  attrId INTEGER NOT NULL,
  attrPercent INTEGER NOT NULL,
  UNIQUE (agencyId, attrId),
  CONSTRAINT fk_agencyId FOREIGN KEY (agencyId) REFERENCES agency(id),
  CONSTRAINT fk_attrId FOREIGN KEY (attrId) REFERENCES attribute(id)
);
CREATE TABLE IF NOT EXISTS country (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE,
  code TEXT NOT NULL UNIQUE
);
INSERT OR IGNORE INTO country(code, name) VALUES('ad', 'Andorra');
INSERT OR IGNORE INTO country(code, name) VALUES('ae', 'United Arab Emirates');
INSERT OR IGNORE INTO country(code, name) VALUES('af', 'Afghanistan');
INSERT OR IGNORE INTO country(code, name) VALUES('ag', 'Antigua and Barbuda');
INSERT OR IGNORE INTO country(code, name) VALUES('ai', 'Anguilla');
INSERT OR IGNORE INTO country(code, name) VALUES('al', 'Albania');
INSERT OR IGNORE INTO country(code, name) VALUES('am', 'Armenia');
INSERT OR IGNORE INTO country(code, name) VALUES('an', 'Netherlands Antilles');
INSERT OR IGNORE INTO country(code, name) VALUES('ao', 'Angola');
INSERT OR IGNORE INTO country(code, name) VALUES('aq', 'Antarctica');
INSERT OR IGNORE INTO country(code, name) VALUES('ar', 'Argentina');
INSERT OR IGNORE INTO country(code, name) VALUES('as', 'American Samoa');
INSERT OR IGNORE INTO country(code, name) VALUES('at', 'Austria');
INSERT OR IGNORE INTO country(code, name) VALUES('au', 'Australia');
INSERT OR IGNORE INTO country(code, name) VALUES('aw', 'Aruba');
INSERT OR IGNORE INTO country(code, name) VALUES('ax', 'Aland Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('az', 'Azerbaijan');
INSERT OR IGNORE INTO country(code, name) VALUES('ba', 'Bosnia and Herzegovina');
INSERT OR IGNORE INTO country(code, name) VALUES('bb', 'Barbados');
INSERT OR IGNORE INTO country(code, name) VALUES('bd', 'Bangladesh');
INSERT OR IGNORE INTO country(code, name) VALUES('be', 'Belgium');
INSERT OR IGNORE INTO country(code, name) VALUES('bf', 'Burkina Faso');
INSERT OR IGNORE INTO country(code, name) VALUES('bg', 'Bulgaria');
INSERT OR IGNORE INTO country(code, name) VALUES('bh', 'Bahrain');
INSERT OR IGNORE INTO country(code, name) VALUES('bi', 'Burundi');
INSERT OR IGNORE INTO country(code, name) VALUES('bj', 'Benin');
INSERT OR IGNORE INTO country(code, name) VALUES('bl', 'Saint Barthélemy');
INSERT OR IGNORE INTO country(code, name) VALUES('bm', 'Bermuda');
INSERT OR IGNORE INTO country(code, name) VALUES('bn', 'Brunei');
INSERT OR IGNORE INTO country(code, name) VALUES('bo', 'Bolivia');
INSERT OR IGNORE INTO country(code, name) VALUES('bq', 'Caribbean Netherlands');
INSERT OR IGNORE INTO country(code, name) VALUES('br', 'Brazil');
INSERT OR IGNORE INTO country(code, name) VALUES('bs', 'Bahamas');
INSERT OR IGNORE INTO country(code, name) VALUES('bt', 'Bhutan');
INSERT OR IGNORE INTO country(code, name) VALUES('bv', 'Bouvet Island');
INSERT OR IGNORE INTO country(code, name) VALUES('bw', 'Botswana');
INSERT OR IGNORE INTO country(code, name) VALUES('by', 'Belarus');
INSERT OR IGNORE INTO country(code, name) VALUES('bz', 'Belize');
INSERT OR IGNORE INTO country(code, name) VALUES('ca', 'Canada');
INSERT OR IGNORE INTO country(code, name) VALUES('cc', 'Cocos (Keeling) Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('cd', 'Congo (Kinshasa)');
INSERT OR IGNORE INTO country(code, name) VALUES('cf', 'Central African Republic');
INSERT OR IGNORE INTO country(code, name) VALUES('cg', 'Congo (Brazzaville)');
INSERT OR IGNORE INTO country(code, name) VALUES('ch', 'Switzerland');
INSERT OR IGNORE INTO country(code, name) VALUES('ci', 'Ivory Coast');
INSERT OR IGNORE INTO country(code, name) VALUES('ck', 'Cook Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('cl', 'Chile');
INSERT OR IGNORE INTO country(code, name) VALUES('cm', 'Cameroon');
INSERT OR IGNORE INTO country(code, name) VALUES('cn', 'China');
INSERT OR IGNORE INTO country(code, name) VALUES('co', 'Colombia');
INSERT OR IGNORE INTO country(code, name) VALUES('cr', 'Costa Rica');
INSERT OR IGNORE INTO country(code, name) VALUES('cu', 'Cuba');
INSERT OR IGNORE INTO country(code, name) VALUES('cv', 'Cape Verde');
INSERT OR IGNORE INTO country(code, name) VALUES('cw', 'Curaçao');
INSERT OR IGNORE INTO country(code, name) VALUES('cx', 'Christmas Island');
INSERT OR IGNORE INTO country(code, name) VALUES('cy', 'Cyprus');
INSERT OR IGNORE INTO country(code, name) VALUES('cz', 'Czech Republic');
INSERT OR IGNORE INTO country(code, name) VALUES('de', 'Germany');
INSERT OR IGNORE INTO country(code, name) VALUES('dj', 'Djibouti');
INSERT OR IGNORE INTO country(code, name) VALUES('dk', 'Denmark');
INSERT OR IGNORE INTO country(code, name) VALUES('dm', 'Dominica');
INSERT OR IGNORE INTO country(code, name) VALUES('do', 'Dominican Republic');
INSERT OR IGNORE INTO country(code, name) VALUES('dz', 'Algeria');
INSERT OR IGNORE INTO country(code, name) VALUES('ec', 'Ecuador');
INSERT OR IGNORE INTO country(code, name) VALUES('ee', 'Estonia');
INSERT OR IGNORE INTO country(code, name) VALUES('eg', 'Egypt');
INSERT OR IGNORE INTO country(code, name) VALUES('eh', 'Western Sahara');
INSERT OR IGNORE INTO country(code, name) VALUES('er', 'Eritrea');
INSERT OR IGNORE INTO country(code, name) VALUES('es', 'Spain');
INSERT OR IGNORE INTO country(code, name) VALUES('et', 'Ethiopia');
INSERT OR IGNORE INTO country(code, name) VALUES('fi', 'Finland');
INSERT OR IGNORE INTO country(code, name) VALUES('fj', 'Fiji');
INSERT OR IGNORE INTO country(code, name) VALUES('fk', 'Falkland Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('fm', 'Micronesia');
INSERT OR IGNORE INTO country(code, name) VALUES('fo', 'Faroe Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('fr', 'France');
INSERT OR IGNORE INTO country(code, name) VALUES('ga', 'Gabon');
INSERT OR IGNORE INTO country(code, name) VALUES('gb', 'United Kingdom');
INSERT OR IGNORE INTO country(code, name) VALUES('gd', 'Grenada');
INSERT OR IGNORE INTO country(code, name) VALUES('ge', 'Georgia');
INSERT OR IGNORE INTO country(code, name) VALUES('gf', 'French Guiana');
INSERT OR IGNORE INTO country(code, name) VALUES('gg', 'Guernsey');
INSERT OR IGNORE INTO country(code, name) VALUES('gh', 'Ghana');
INSERT OR IGNORE INTO country(code, name) VALUES('gi', 'Gibraltar');
INSERT OR IGNORE INTO country(code, name) VALUES('gl', 'Greenland');
INSERT OR IGNORE INTO country(code, name) VALUES('gm', 'Gambia');
INSERT OR IGNORE INTO country(code, name) VALUES('gn', 'Guinea');
INSERT OR IGNORE INTO country(code, name) VALUES('gp', 'Guadeloupe');
INSERT OR IGNORE INTO country(code, name) VALUES('gq', 'Equatorial Guinea');
INSERT OR IGNORE INTO country(code, name) VALUES('gr', 'Greece');
INSERT OR IGNORE INTO country(code, name) VALUES('gs', 'South Georgia and the South Sandwich Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('gt', 'Guatemala');
INSERT OR IGNORE INTO country(code, name) VALUES('gu', 'Guam');
INSERT OR IGNORE INTO country(code, name) VALUES('gw', 'Guinea-Bissau');
INSERT OR IGNORE INTO country(code, name) VALUES('gy', 'Guyana');
INSERT OR IGNORE INTO country(code, name) VALUES('hk', 'Hong Kong S.A.R., China');
INSERT OR IGNORE INTO country(code, name) VALUES('hm', 'Heard Island and McDonald Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('hn', 'Honduras');
INSERT OR IGNORE INTO country(code, name) VALUES('hr', 'Croatia');
INSERT OR IGNORE INTO country(code, name) VALUES('ht', 'Haiti');
INSERT OR IGNORE INTO country(code, name) VALUES('hu', 'Hungary');
INSERT OR IGNORE INTO country(code, name) VALUES('id', 'Indonesia');
INSERT OR IGNORE INTO country(code, name) VALUES('ie', 'Ireland');
INSERT OR IGNORE INTO country(code, name) VALUES('il', 'Israel');
INSERT OR IGNORE INTO country(code, name) VALUES('im', 'Isle of Man');
INSERT OR IGNORE INTO country(code, name) VALUES('in', 'India');
INSERT OR IGNORE INTO country(code, name) VALUES('io', 'British Indian Ocean Territory');
INSERT OR IGNORE INTO country(code, name) VALUES('iq', 'Iraq');
INSERT OR IGNORE INTO country(code, name) VALUES('ir', 'Iran');
INSERT OR IGNORE INTO country(code, name) VALUES('is', 'Iceland');
INSERT OR IGNORE INTO country(code, name) VALUES('it', 'Italy');
INSERT OR IGNORE INTO country(code, name) VALUES('je', 'Jersey');
INSERT OR IGNORE INTO country(code, name) VALUES('jm', 'Jamaica');
INSERT OR IGNORE INTO country(code, name) VALUES('jo', 'Jordan');
INSERT OR IGNORE INTO country(code, name) VALUES('jp', 'Japan');
INSERT OR IGNORE INTO country(code, name) VALUES('ke', 'Kenya');
INSERT OR IGNORE INTO country(code, name) VALUES('kg', 'Kyrgyzstan');
INSERT OR IGNORE INTO country(code, name) VALUES('kh', 'Cambodia');
INSERT OR IGNORE INTO country(code, name) VALUES('ki', 'Kiribati');
INSERT OR IGNORE INTO country(code, name) VALUES('km', 'Comoros');
INSERT OR IGNORE INTO country(code, name) VALUES('kn', 'Saint Kitts and Nevis');
INSERT OR IGNORE INTO country(code, name) VALUES('kp', 'North Korea');
INSERT OR IGNORE INTO country(code, name) VALUES('kr', 'South Korea');
INSERT OR IGNORE INTO country(code, name) VALUES('kw', 'Kuwait');
INSERT OR IGNORE INTO country(code, name) VALUES('ky', 'Cayman Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('kz', 'Kazakhstan');
INSERT OR IGNORE INTO country(code, name) VALUES('la', 'Laos');
INSERT OR IGNORE INTO country(code, name) VALUES('lb', 'Lebanon');
INSERT OR IGNORE INTO country(code, name) VALUES('lc', 'Saint Lucia');
INSERT OR IGNORE INTO country(code, name) VALUES('li', 'Liechtenstein');
INSERT OR IGNORE INTO country(code, name) VALUES('lk', 'Sri Lanka');
INSERT OR IGNORE INTO country(code, name) VALUES('lr', 'Liberia');
INSERT OR IGNORE INTO country(code, name) VALUES('ls', 'Lesotho');
INSERT OR IGNORE INTO country(code, name) VALUES('lt', 'Lithuania');
INSERT OR IGNORE INTO country(code, name) VALUES('lu', 'Luxembourg');
INSERT OR IGNORE INTO country(code, name) VALUES('lv', 'Latvia');
INSERT OR IGNORE INTO country(code, name) VALUES('ly', 'Libya');
INSERT OR IGNORE INTO country(code, name) VALUES('ma', 'Morocco');
INSERT OR IGNORE INTO country(code, name) VALUES('mc', 'Monaco');
INSERT OR IGNORE INTO country(code, name) VALUES('md', 'Moldova');
INSERT OR IGNORE INTO country(code, name) VALUES('me', 'Montenegro');
INSERT OR IGNORE INTO country(code, name) VALUES('mf', 'Saint Martin (French part)');
INSERT OR IGNORE INTO country(code, name) VALUES('mg', 'Madagascar');
INSERT OR IGNORE INTO country(code, name) VALUES('mh', 'Marshall Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('mk', 'Macedonia');
INSERT OR IGNORE INTO country(code, name) VALUES('ml', 'Mali');
INSERT OR IGNORE INTO country(code, name) VALUES('mm', 'Myanmar');
INSERT OR IGNORE INTO country(code, name) VALUES('mn', 'Mongolia');
INSERT OR IGNORE INTO country(code, name) VALUES('mo', 'Macao S.A.R., China');
INSERT OR IGNORE INTO country(code, name) VALUES('mp', 'Northern Mariana Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('mq', 'Martinique');
INSERT OR IGNORE INTO country(code, name) VALUES('mr', 'Mauritania');
INSERT OR IGNORE INTO country(code, name) VALUES('ms', 'Montserrat');
INSERT OR IGNORE INTO country(code, name) VALUES('mt', 'Malta');
INSERT OR IGNORE INTO country(code, name) VALUES('mu', 'Mauritius');
INSERT OR IGNORE INTO country(code, name) VALUES('mv', 'Maldives');
INSERT OR IGNORE INTO country(code, name) VALUES('mw', 'Malawi');
INSERT OR IGNORE INTO country(code, name) VALUES('mx', 'Mexico');
INSERT OR IGNORE INTO country(code, name) VALUES('my', 'Malaysia');
INSERT OR IGNORE INTO country(code, name) VALUES('mz', 'Mozambique');
INSERT OR IGNORE INTO country(code, name) VALUES('na', 'Namibia');
INSERT OR IGNORE INTO country(code, name) VALUES('nc', 'New Caledonia');
INSERT OR IGNORE INTO country(code, name) VALUES('ne', 'Niger');
INSERT OR IGNORE INTO country(code, name) VALUES('nf', 'Norfolk Island');
INSERT OR IGNORE INTO country(code, name) VALUES('ng', 'Nigeria');
INSERT OR IGNORE INTO country(code, name) VALUES('ni', 'Nicaragua');
INSERT OR IGNORE INTO country(code, name) VALUES('nl', 'Netherlands');
INSERT OR IGNORE INTO country(code, name) VALUES('no', 'Norway');
INSERT OR IGNORE INTO country(code, name) VALUES('np', 'Nepal');
INSERT OR IGNORE INTO country(code, name) VALUES('nr', 'Nauru');
INSERT OR IGNORE INTO country(code, name) VALUES('nu', 'Niue');
INSERT OR IGNORE INTO country(code, name) VALUES('nz', 'New Zealand');
INSERT OR IGNORE INTO country(code, name) VALUES('om', 'Oman');
INSERT OR IGNORE INTO country(code, name) VALUES('pa', 'Panama');
INSERT OR IGNORE INTO country(code, name) VALUES('pe', 'Peru');
INSERT OR IGNORE INTO country(code, name) VALUES('pf', 'French Polynesia');
INSERT OR IGNORE INTO country(code, name) VALUES('pg', 'Papua New Guinea');
INSERT OR IGNORE INTO country(code, name) VALUES('ph', 'Philippines');
INSERT OR IGNORE INTO country(code, name) VALUES('pk', 'Pakistan');
INSERT OR IGNORE INTO country(code, name) VALUES('pl', 'Poland');
INSERT OR IGNORE INTO country(code, name) VALUES('pm', 'Saint Pierre and Miquelon');
INSERT OR IGNORE INTO country(code, name) VALUES('pn', 'Pitcairn');
INSERT OR IGNORE INTO country(code, name) VALUES('pr', 'Puerto Rico');
INSERT OR IGNORE INTO country(code, name) VALUES('ps', 'Palestinian Territory');
INSERT OR IGNORE INTO country(code, name) VALUES('pt', 'Portugal');
INSERT OR IGNORE INTO country(code, name) VALUES('pw', 'Palau');
INSERT OR IGNORE INTO country(code, name) VALUES('py', 'Paraguay');
INSERT OR IGNORE INTO country(code, name) VALUES('qa', 'Qatar');
INSERT OR IGNORE INTO country(code, name) VALUES('re', 'Reunion');
INSERT OR IGNORE INTO country(code, name) VALUES('ro', 'Romania');
INSERT OR IGNORE INTO country(code, name) VALUES('rs', 'Serbia');
INSERT OR IGNORE INTO country(code, name) VALUES('ru', 'Russia');
INSERT OR IGNORE INTO country(code, name) VALUES('rw', 'Rwanda');
INSERT OR IGNORE INTO country(code, name) VALUES('sa', 'Saudi Arabia');
INSERT OR IGNORE INTO country(code, name) VALUES('sb', 'Solomon Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('sc', 'Seychelles');
INSERT OR IGNORE INTO country(code, name) VALUES('sd', 'Sudan');
INSERT OR IGNORE INTO country(code, name) VALUES('se', 'Sweden');
INSERT OR IGNORE INTO country(code, name) VALUES('sg', 'Singapore');
INSERT OR IGNORE INTO country(code, name) VALUES('sh', 'Saint Helena');
INSERT OR IGNORE INTO country(code, name) VALUES('si', 'Slovenia');
INSERT OR IGNORE INTO country(code, name) VALUES('sj', 'Svalbard and Jan Mayen');
INSERT OR IGNORE INTO country(code, name) VALUES('sk', 'Slovakia');
INSERT OR IGNORE INTO country(code, name) VALUES('sl', 'Sierra Leone');
INSERT OR IGNORE INTO country(code, name) VALUES('sm', 'San Marino');
INSERT OR IGNORE INTO country(code, name) VALUES('sn', 'Senegal');
INSERT OR IGNORE INTO country(code, name) VALUES('so', 'Somalia');
INSERT OR IGNORE INTO country(code, name) VALUES('sr', 'Suriname');
INSERT OR IGNORE INTO country(code, name) VALUES('ss', 'South Sudan');
INSERT OR IGNORE INTO country(code, name) VALUES('st', 'Sao Tome and Principe');
INSERT OR IGNORE INTO country(code, name) VALUES('sv', 'El Salvador');
INSERT OR IGNORE INTO country(code, name) VALUES('sx', 'Sint Maarten');
INSERT OR IGNORE INTO country(code, name) VALUES('sy', 'Syria');
INSERT OR IGNORE INTO country(code, name) VALUES('sz', 'Swaziland');
INSERT OR IGNORE INTO country(code, name) VALUES('tc', 'Turks and Caicos Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('td', 'Chad');
INSERT OR IGNORE INTO country(code, name) VALUES('tf', 'French Southern Territories');
INSERT OR IGNORE INTO country(code, name) VALUES('tg', 'Togo');
INSERT OR IGNORE INTO country(code, name) VALUES('th', 'Thailand');
INSERT OR IGNORE INTO country(code, name) VALUES('tj', 'Tajikistan');
INSERT OR IGNORE INTO country(code, name) VALUES('tk', 'Tokelau');
INSERT OR IGNORE INTO country(code, name) VALUES('tl', 'Timor-Leste');
INSERT OR IGNORE INTO country(code, name) VALUES('tm', 'Turkmenistan');
INSERT OR IGNORE INTO country(code, name) VALUES('tn', 'Tunisia');
INSERT OR IGNORE INTO country(code, name) VALUES('to', 'Tonga');
INSERT OR IGNORE INTO country(code, name) VALUES('tr', 'Turkey');
INSERT OR IGNORE INTO country(code, name) VALUES('tt', 'Trinidad and Tobago');
INSERT OR IGNORE INTO country(code, name) VALUES('tv', 'Tuvalu');
INSERT OR IGNORE INTO country(code, name) VALUES('tw', 'Taiwan');
INSERT OR IGNORE INTO country(code, name) VALUES('tz', 'Tanzania');
INSERT OR IGNORE INTO country(code, name) VALUES('ua', 'Ukraine');
INSERT OR IGNORE INTO country(code, name) VALUES('ug', 'Uganda');
INSERT OR IGNORE INTO country(code, name) VALUES('um', 'United States Minor Outlying Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('us', 'United States');
INSERT OR IGNORE INTO country(code, name) VALUES('uy', 'Uruguay');
INSERT OR IGNORE INTO country(code, name) VALUES('uz', 'Uzbekistan');
INSERT OR IGNORE INTO country(code, name) VALUES('va', 'Vatican');
INSERT OR IGNORE INTO country(code, name) VALUES('vc', 'Saint Vincent and the Grenadines');
INSERT OR IGNORE INTO country(code, name) VALUES('ve', 'Venezuela');
INSERT OR IGNORE INTO country(code, name) VALUES('vg', 'British Virgin Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('vi', 'U.S. Virgin Islands');
INSERT OR IGNORE INTO country(code, name) VALUES('vn', 'Vietnam');
INSERT OR IGNORE INTO country(code, name) VALUES('vu', 'Vanuatu');
INSERT OR IGNORE INTO country(code, name) VALUES('wf', 'Wallis and Futuna');
INSERT OR IGNORE INTO country(code, name) VALUES('ws', 'Samoa');
INSERT OR IGNORE INTO country(code, name) VALUES('ye', 'Yemen');
INSERT OR IGNORE INTO country(code, name) VALUES('yt', 'Mayotte');
INSERT OR IGNORE INTO country(code, name) VALUES('za', 'South Africa');
INSERT OR IGNORE INTO country(code, name) VALUES('zm', 'Zambia');
INSERT OR IGNORE INTO country(code, name) VALUES('zw', 'Zimbabwe');
