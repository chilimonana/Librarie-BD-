//Clientul cu id-ul 2 a facut o comanda pentru cartea Jocurile foamei
select id_comanda, data_livrare_comanda
from comenzi
where id_client=2;

case when (select d.numar_exemplare
    from detalii_carte d, carte c
    where c.id_carte=d.id_carte and c.nume_carte='Jocurile foamei') > 0 
then 
    update detalii_carte
    set numar_exemplare=(
        select d.numar_exemplare-1
        from detalii_carte d, carte c
        where c.id_carte=d.id_carte and c.nume_carte='Jocurile foamei')
    where id_carte=(
        select id_carte
        from carte
        where nume_carte='Jocurile foamei');

    
//Un client nou face o comanda pentru cartea cu id-ul 9
insert into clienti values (6, 'RO0000000000000000000006', 'Oradea');
insert into detalii_clienti values(6, '6000000000007', 'Irimescu', 'Vlad', 'vlad@gmail.com');
insert into comenzi values (6, SYSDATE+1, SYSDATE+4, 6, 9);

case when (select d.numar_exemplare
    from detalii_carte d, carte c
    where c.id_carte=d.id_carte and c.nume_carte='Jocurile foamei') > 0 
then 
    update detalii_carte
    set numar_exemplare=(
        select numar_exemplare-1
        from detalii_carte
        where id_carte=9)
    where id_carte=9;

//Magazinul online primeste marfa
update detalii_carte
set numar_exemplare=(
    select numar_exemplare+1
    from detalii_carte
    where id_carte=9)
where id_carte=9;
