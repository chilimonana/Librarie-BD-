insert into genuri_carti values(1, 'Clasic', 3);
insert into genuri_carti values(2, 'Fantezie', 5);
insert into genuri_carti values(3, 'Aventura', 2);
insert into genuri_carti values(4, 'Distopie', 4);
insert into genuri_carti values(5, 'Istoric', 2);


insert into carte values (1, 'Emma', 'Jane Austen', 1);
insert into detalii_carte values (1, 'Penguin', 25, 10);

insert into carte values (2, 'Dorian Gray', 'Oscar Wilde', 1);
insert into detalii_carte values (2, 'Penguin', 20, 15);

insert into carte values (3, '1984', 'George Orwell', 1);
insert into detalii_carte values (3, 'Penguin', 23, 12);

insert into carte values (4, 'Harry Potter', 'J.K. Rowling', 2);
insert into detalii_carte values (4, 'Arthur', 50, 20);

insert into carte values (5, 'LOTR', 'J.R.R. Tolkien', 2);
insert into detalii_carte values (5, 'Arthur', 60, 13);

insert into carte values (6, 'GOT', 'G.R.R. Martin', 2);
insert into detalii_carte values (6, 'Arthur', 57, 19);

insert into carte values (7, 'Percy Jackson', 'Rick Riordan', 2);
insert into detalii_carte values (7, 'Nemira', 45, 16);

insert into carte values (8, 'Narnia', 'C.S. Lewis', 2);
insert into detalii_carte values (8, 'Nemira', 52, 20);

insert into carte values (9, 'Jocurile foamei', 'Suzanne Collins', 4);
insert into detalii_carte values (9, 'Arthur', 55, 3);

insert into carte values (10, 'Divergent', 'Veronica Roth', 4);
insert into detalii_carte values (10, 'Nemira', 48, 10);


insert into clienti values (1, 'RO0000000000000000000000', 'Botosani');
insert into detalii_clienti values(1, '6000000000000', 'Popescu', 'Andrei', 'pop@gmail.com');

insert into clienti values (2, 'RO0000000000000000000001', 'Arad');
insert into detalii_clienti values(2, '6000000000001', 'Banica', 'Iosif', 'ios@gmail.com');

insert into clienti values (3, 'RO0000000000000000000002', 'Iasi');
insert into detalii_clienti values(3, '5000000000000', 'Albu', 'Ioana', 'albu@gmail.com');

insert into clienti values (4, 'RO0000000000000000000003', 'Brasov');
insert into detalii_clienti values(4, '5000000000001', 'Radulescu', 'Gabriela', 'gab@gmail.com');

insert into clienti values (5, 'RO0000000000000000000004', 'Timis');
insert into detalii_clienti values(5, '6000000000002', 'Mihail', 'Cristian', 'timis@gmail.com');


insert into comenzi values (1, SYSDATE+1, SYSDATE+5, 1, 4);
insert into comenzi values (2, SYSDATE+3, SYSDATE+8, 2, 9);
insert into comenzi values (3, SYSDATE+10, SYSDATE+15, 3, 3);
insert into comenzi values (4, SYSDATE+6, SYSDATE+11, 4, 10);
insert into comenzi values (5, SYSDATE+7, SYSDATE+10, 5, 2);
