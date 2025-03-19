//Numele clientului, cartea comandata si data livrarii
select cl.nume_client, cm.data_livrare_comanda, cr.nume_carte
from clienti cl, comenzi cm, carte cr
where cl.id_client = cm.id_client and cr.id_carte=cm.id_carte;

//Numele cartii si numarul de exemplare
select c.nume_carte, d.numar_exemplare
from carte c, detalii_carte d
where c.id_carte=d.id_carte;

//Numele clientului, data comezii si pretul comenzii
select cl.nume_client, cm.data_primire_comanda, d.pret_carte as "TOTAL_COMANDA"
from clienti cl, comenzi cm, detalii_carte d
where cl.id_client=cm.id_client and cm.id_carte=d.id_carte;

//Verificare constrangere primary key clienti
insert into clienti values (2, 'RO0000000000000000000000', 'Iasi');

//Verificare constrangere primary key detalii_clienti
insert into detalii_clienti values(2, '1000000000000', 'Ionescu', 'Tudor', 'tud@gmail.com');

//Verificare constrangere primary key carte
insert into carte values (3, 'Fire and Blood', 'G.R.R. Martin', 3);

//Verificare constrangere primary key detalii_carti
insert into detalii_carte values (3, 'Arthur', 57, 2);

//Verificare constrangere primary key genuri_carti
insert into genuri_carti values (4, 'Romantic', 3);

//Verificare constrangere primary key comenzi
insert into comenzi values (5, SYSDATE+2, SYSDATE+5, 3, 8);

//Verificare constrangeri not null carte
insert into carte values (NULL, 'Emma', 'Jane Austen', 1);
insert into carte values (11, NULL, 'Jane Austen', 1);
insert into carte values (11, 'Emma', NULL, 1);
insert into carte values (11, 'Emma', 'Jane Austen', NULL);

//Verificare constrangeri not null detalii_carte
insert into detalii_carte values (NULL, 'Penguin', 25, 10);
insert into detalii_carte values (11, NULL, 25, 10);
insert into detalii_carte values (11, 'Penguin', NULL, 10);
insert into detalii_carte values (11, 'Penguin', 25, NULL);

//Verificare constrangeri not null clienti
insert into clienti values (NULL, 'RO0000000000000000000000', 'Botosani');
insert into clienti values (6, NULL, 'Botosani');
insert into clienti values (6, 'RO0000000000000000000000', NULL);

//Verificare constrangeri not null detalii_clienti
insert into detalii_clienti values(NULL, '6000000000006', 'Popescu', 'Andrei', 'pop@gmail.com');
insert into detalii_clienti values(6, NULL, 'Popescu', 'Andrei', 'pop@gmail.com');
insert into detalii_clienti values(6, '6000000000006', NULL, 'Andrei', 'pop@gmail.com');
insert into detalii_clienti values(6, '6000000000006', 'Popescu', NULL, 'pop@gmail.com');
insert into detalii_clienti values(6, '6000000000006', 'Popescu', 'Andrei', NULL);

//Verificare constrangeri not null genuri_carti
insert into genuri_carti values (NULL, 'Romantic', 3);
insert into genuri_carti values (6, NULL, 3);
insert into genuri_carti values (6, 'Romantic', NULL);

//Verificare constrangeri not null comenzi
insert into comenzi values (NULL, SYSDATE+1, SYSDATE+5, 1, 4);
insert into comenzi values (6, NULL, SYSDATE+5, 1, 4);
insert into comenzi values (6, SYSDATE+1, NULL, 1, 4);
insert into comenzi values (6, SYSDATE+1, SYSDATE+5, NULL, 4);
insert into comenzi values (1, SYSDATE+1, SYSDATE+5, 1, NULL);

//Verificare constrangere unique detalii_clienti_cnp
insert into detalii_clienti values(6, '6000000000002', 'Mihail', 'Cristian', 'timis@gmail.com');

//Verificare constrangere data_primire_comanda_ck
insert into comenzi values (5, 'Iasi', SYSDATE-3, SYSDATE+2, 3, 5);

//Verificare constrangere foreign key
insert into comenzi values (5, 'Iasi', SYSDATE+2, SYSDATE+5, 5, 6);