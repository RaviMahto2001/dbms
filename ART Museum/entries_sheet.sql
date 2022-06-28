/* ARTIST */
INSERT INTO ARTIST VALUES
('01A','Diego','Rivera',DATE '1886-12-08',DATE '1957-11-24','Mexico','Impressionism','Mexican muralism','Started mural movement in Mexican and international art.');
INSERT INTO ARTIST VALUES
('02A','Frida','Kahlo',DATE '1907-07-06',DATE '1954-07-13','Mexico','Cubism','Surrealism','Strong autobiographical, realism and fantasy.');
INSERT INTO ARTIST VALUES
('03A','Jackson','Pollock',DATE '1912-01-28',DATE '1956-08-11','United States','Dadaism','Action painting','He was widely noticed for his drip technique.');
INSERT INTO ARTIST VALUES
('04A','Salvador','Dali',DATE '1904-05-11',DATE '1989-01-23','Spain','Futurism','Surrealism','Also wrote fiction, poetry, autobiography etc.');
INSERT INTO ARTIST VALUES
('05A','Paul','Klee',DATE '1879-12-18',DATE '1940-06-29','Germany','Impressionism','Modern Art','Klee was a natural draftsman.');
INSERT INTO ARTIST VALUES
('06A','Pablo','Picasso',DATE '1881-10-25',DATE '1973-04-08','Spain','Naturalism','Cubism','painting in a naturalistic manner since childhood.');
INSERT INTO ARTIST VALUES
('07A','Auguste','Rodin',DATE '1840-11-12',DATE '1917-11-17','France','Impressionism','Modern Art','Unique ability to model in clay.');
INSERT INTO ARTIST VALUES
('08A','William','Shakespeare',DATE '1564-04-26',DATE '1616-04-23','United Kingdom','Elizabethan Era','iambic pentameter','Also regarded as the greatest writer.');

SELECT* FROM ARTIST;

/* COLLECTIONS */
INSERT INTO COLLECTIONS VALUES
('National Art Gallery','Museum','Rajiv Chawk,New Delhi,India','9818674567','Vishal Singh','A Art Gallery for paintings and sculpture.');
INSERT INTO COLLECTIONS VALUES
('Famous Art Collections','Museum','Beijing,China','2345762312','Juan Chu','Collections of famous objects.');
INSERT INTO COLLECTIONS VALUES
('Xavier Collections','Personal','60C,New York,USA','2783418711','Xavier','A personal collections of art object.');

SELECT* FROM COLLECTIONS;

/* EXHIBITONS */
INSERT INTO EXHIBITIONS VALUES
('Salon de Refusés',DATE '2022-04-26',DATE '2022-05-12');
INSERT INTO EXHIBITIONS VALUES
('International Exhibition of Modern Art',DATE '2023-12-16',DATE '2023-12-27');
INSERT INTO EXHIBITIONS VALUES
('Bauhaus Exhibition',DATE '2023-10-20',DATE '2023-11-14');
INSERT INTO EXHIBITIONS VALUES
('London International Surrealist Exhibition',DATE '2022-10-10',DATE '2022-11-14');
INSERT INTO EXHIBITIONS VALUES
('Art Institute of Chicago',DATE '2022-02-01',DATE '2022-01-18');
INSERT INTO EXHIBITIONS VALUES
('Manet and the Post-Impressionists',DATE '2022-10-02',DATE '2022-11-11');
INSERT INTO EXHIBITIONS VALUES
('State Hermitage',DATE '2023-05-06',DATE '2023-05-13');

SELECT* FROM EXHIBITIONS;

/* ART_OBJECT */
INSERT INTO ART_OBJECT VALUES
('8923','05A','1928','Castle and Sun','geometric pattern placement and use of bright colors','Salon de Refusés');
INSERT INTO ART_OBJECT VALUES
('9834','05A','1922','Senecio','manifestation of sense of humor and African culture','International Exhibition of Modern Art');
INSERT INTO ART_OBJECT VALUES
('8765','05A','1928','Cat and Bird','children were close to the sources of creativity','Bauhaus Exhibition');
INSERT INTO ART_OBJECT VALUES
('8902','02A','1939','The Two Fridas','unique and eye-catching self-portraituses double figures','London International Surrealist Exhibition');
INSERT INTO ART_OBJECT VALUES
('4532','01A','1935','The Flower Carrier','Affection to underclass people','Salon de Refusés');
INSERT INTO ART_OBJECT VALUES
('8473','06A','1937','Guernica','Shows the tragedies of war and the suffering','Art Institute of Chicago');
INSERT INTO ART_OBJECT VALUES
('9484','06A','1904','The Old Guitarist','It is a criticism of society','Manet and the Post-Impressionists');
INSERT INTO ART_OBJECT VALUES
('7364','03A','1943','Mural','It was made with oil paint on linen','State Hermitage');
INSERT INTO ART_OBJECT VALUES
('5634','03A','1952','Convergence','embodiment of free speech and freedom of expression','London International Surrealist Exhibition');
INSERT INTO ART_OBJECT VALUES
('7723','04A','1948','The Elephants','Potrays strength and weight','Art Institute of Chicago');
INSERT INTO ART_OBJECT VALUES
('2824','07A','1904','The Thinker','image to represent philosophy.','State Hermitage');
INSERT INTO ART_OBJECT VALUES
('1422','04A','1904','Adam and Eve','portrays the Garden of Eden: Adam, Eve, and the serpent','State Hermitage');
INSERT INTO ART_OBJECT VALUES
('9414','06A','1905','The Jester','began as a portrait of his friend','State Hermitage');
INSERT INTO ART_OBJECT VALUES
('5410','06A','1914','Guitar','switched from modeling to technique of assemblage','State Hermitage');
INSERT INTO ART_OBJECT VALUES
('4623','08A','1599','Hamlet','most powerful and influential works of world literature',NULL);
INSERT INTO ART_OBJECT VALUES
('5404','08A','1603','Othello','Possesses an unusually detailed performance record',NULL);
INSERT INTO ART_OBJECT VALUES
('3417','02A','1819','To Autumn','composed on 19 September 1819 and published in 1820','State Hermitage');
INSERT INTO ART_OBJECT VALUES
('5402','04A','1942','The Secret Life of Salvador Dali','Autobiography',NULL);

SELECT* FROM ART_OBJECT;

/* PAINTING */
INSERT INTO PAINTING VALUES
('8923','Oil paint','Canvas','Impressionism');
INSERT INTO PAINTING VALUES
('9834','Acrylic','Canvas','Impressionism');
INSERT INTO PAINTING VALUES
('8765','Oil paint','Paper','Impressionism');
INSERT INTO PAINTING VALUES
('8902','Masonite','Hardboard','Cubism');
INSERT INTO PAINTING VALUES
('4532','Tempera','Cardboard','Impressionism');
INSERT INTO PAINTING VALUES
('8473','Oil paint','Canvas','Cubism');
INSERT INTO PAINTING VALUES
('9484','Watercolor','Paper','Cubism');
INSERT INTO PAINTING VALUES
('7364','Masonite','Hardboard','Action painting');
INSERT INTO PAINTING VALUES
('5634','Acrylic','Poster board','Action painting');
INSERT INTO PAINTING VALUES
('7723','Watercolor','Cardboard','Surrealism');

SELECT * FROM PAINTING;

/* SCULPTURE */
INSERT INTO SCULPTURE VALUES
('2824','Plaster','4.3','5443.2','Modern');
INSERT INTO SCULPTURE VALUES
('1422','Metal','5.5','3889.0','Surrealism');
INSERT INTO SCULPTURE VALUES
('9414','Clay','2.2','9487.3','Impressionism');
INSERT INTO SCULPTURE VALUES
('5410','Wood','4.1','1215.6','Cubism');

SELECT * FROM SCULPTURE;

/* OTHER */
INSERT INTO OTHER VALUES
('4623','Play','Melancholy');
INSERT INTO OTHER VALUES
('5404','Story','iambic pentameter');
INSERT INTO OTHER VALUES
('3417','Poem','Prose');
INSERT INTO OTHER VALUES
('5402','Autobiography','Realism');

SELECT * FROM OTHER;

/* INFORMATION */
INSERT INTO INFORMATION VALUES
('8923','Mexico','Impressionism');
INSERT INTO INFORMATION VALUES
('9834','Spain','Impressionism');
INSERT INTO INFORMATION VALUES
('8765','France','Impressionism');
INSERT INTO INFORMATION VALUES
('8902','Spain','Cubism');
INSERT INTO INFORMATION VALUES
('4532','Mexico','Impressionism');
INSERT INTO INFORMATION VALUES
('8473','Spain','Cubism');
INSERT INTO INFORMATION VALUES
('9484','France','Cubism');
INSERT INTO INFORMATION VALUES
('7364','Germany','Action painting');
INSERT INTO INFORMATION VALUES
('5634','Mexico','Action painting');
INSERT INTO INFORMATION VALUES
('7723','United States','Surrealism');
INSERT INTO INFORMATION VALUES
('2824','Mexico','Modern');    
INSERT INTO INFORMATION VALUES
('1422','Germany','Surrealism');
INSERT INTO INFORMATION VALUES
('9414','Germany','Impressionism');
INSERT INTO INFORMATION VALUES
('5410','France','Cubism');
INSERT INTO INFORMATION VALUES
('4623','United Kingdom','Melancholy');
INSERT INTO INFORMATION VALUES
('5404','United Kingdom','iambic pentameter');
INSERT INTO INFORMATION VALUES
('3417','France','Impressionism'); 
INSERT INTO INFORMATION VALUES
('5402','France','Impressionism'); 

SELECT * FROM INFORMATION;

/* PERMANENT_COLLECTION */
INSERT INTO PERMANENT_COLLECTION VALUES
('8923',DATE '2004-02-20','Display','10000000');
INSERT INTO PERMANENT_COLLECTION VALUES
('9834',DATE '2000-11-13','Display','20000000');
INSERT INTO PERMANENT_COLLECTION VALUES
('8765',DATE '2013-11-21','Loan','34900000');
INSERT INTO PERMANENT_COLLECTION VALUES
('8902',DATE '2011-03-30','Stored','4322000');
INSERT INTO PERMANENT_COLLECTION VALUES
('4532',DATE '2011-05-11','Loan','5490998');
INSERT INTO PERMANENT_COLLECTION VALUES
('8473',DATE '2019-06-03','Display','7468374');
INSERT INTO PERMANENT_COLLECTION VALUES
('9484',DATE '2000-12-21','Stored','2553546');
INSERT INTO PERMANENT_COLLECTION VALUES
('7364',DATE '2003-01-11','Stored','3399993');
INSERT INTO PERMANENT_COLLECTION VALUES
('2824',DATE '2014-06-12','Loan','12049945');
INSERT INTO PERMANENT_COLLECTION VALUES
('1422',DATE '2012-12-04','Display','23848755');
INSERT INTO PERMANENT_COLLECTION VALUES
('9414',DATE '2011-04-19','Stored','23847242');

SELECT * FROM PERMANENT_COLLECTION;

/* BORROWED */
INSERT INTO BORROWED VALUES
('5634','National Art Gallery',DATE '2020-11-19',DATE '2022-07-11');
INSERT INTO BORROWED VALUES
('7723','Famous Art Collections',DATE '2018-03-15',DATE '2023-06-12');
INSERT INTO BORROWED VALUES
('5410','Famous Art Collections',DATE '2021-08-11',DATE '2022-04-20');
INSERT INTO BORROWED VALUES
('4623','National Art Gallery',DATE '2022-01-09',DATE '2022-04-11');
INSERT INTO BORROWED VALUES
('5404','Xavier Collections',DATE '2019-02-23',DATE '2023-01-10');

SELECT * FROM BORROWED;