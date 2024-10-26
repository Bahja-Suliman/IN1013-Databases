 INSERT INTO petEvent VALUE
    ('Fluffy','2020-10-15','vet', 'antibiotics');
	
 INSERT INTO petPet VALUE
   ('Hammy','Diane','hamster','M','2010-10-30',NULL);
INSERT INTO petevent VALUE
   ('Hammy','2020-10-15','vet', 'antibiotics');   
   
 UPDATE petEvent
    SET remark='5 kittens, 3 female, 2 male'
    WHERE eventdate='1995-05-15';
	
 UPDATE petEvent
     SET petname= 'Claws'
     WHERE eventdate='1997-08-03';	
	 
 UPDATE petPet
    SET death='2020-09-01'
    WHERE petname ='Puffball';
	
DELETE FROM petEvent
    WHERE petname='Buffy';
DELETE FROM petPet
    WHERE petname='Buffy';