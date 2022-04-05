select * from enderecos;

select * 
from enderecos as e 
join usuarios u 
    ON e.id = u.endereco_id
    order by e.id asc;

select r.id, r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id 
from usuarios_rede_sociais as urs 
join redes_sociais r 
	on r.id = urs.rede_social_id
join usuarios u 
    ON u.id = urs.usuario_id;
   
select r.id, r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id , e.id, e.rua, e.pais, e.cidade
from usuarios_rede_sociais as urs 
join redes_sociais r 
	on r.id = urs.rede_social_id
join usuarios u 
    ON u.id = urs.usuario_id
join enderecos e 
	on e.id = u.endereco_id;

select r.nome rede_social, u.nome usuario, u.email, e.cidade
from usuarios_rede_sociais as urs 
join redes_sociais r 
	on r.id = urs.rede_social_id
join usuarios u 
    ON u.id = urs.usuario_id
join enderecos e 
	on e.id = u.endereco_id;

select r.nome rede_social, u.nome usuario, u.email, e.cidade
from usuarios_rede_sociais as urs 
join redes_sociais r 
	on r.id = urs.rede_social_id
join usuarios u 
    ON u.id = urs.usuario_id
join enderecos e 
	on e.id = u.endereco_id
    where r.nome like 'Youtube';
   
select r.nome rede_social, u.nome usuario, u.email, e.cidade
from usuarios_rede_sociais as urs 
join redes_sociais r 
	on r.id = urs.rede_social_id
join usuarios u 
    ON u.id = urs.usuario_id
join enderecos e 
	on e.id = u.endereco_id
    where r.nome like 'Instagram';
   
select r.nome rede_social, u.nome usuario, u.email, e.cidade
from usuarios_rede_sociais as urs 
join redes_sociais r 
	on r.id = urs.rede_social_id
join usuarios u 
    ON u.id = urs.usuario_id
join enderecos e 
	on e.id = u.endereco_id
    where r.nome like 'Facebook';
   
select r.nome rede_social, u.nome usuario, u.email, e.cidade
from usuarios_rede_sociais as urs 
join redes_sociais r 
	on r.id = urs.rede_social_id
join usuarios u 
    ON u.id = urs.usuario_id
join enderecos e 
	on e.id = u.endereco_id
    where r.nome like 'TikTok';
   
select r.nome rede_social, u.nome usuario, u.email, e.cidade
from usuarios_rede_sociais as urs 
join redes_sociais r 
	on r.id = urs.rede_social_id
join usuarios u 
    ON u.id = urs.usuario_id
join enderecos e 
	on e.id = u.endereco_id
    where r.nome like 'Twitter';