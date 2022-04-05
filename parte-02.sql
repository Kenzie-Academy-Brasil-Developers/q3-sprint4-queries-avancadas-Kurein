INSERT INTO enderecos (rua, pais, cidade)
VALUES 
('Avenida Higienópolis', 'Brasil', 'Londrina'),
('Avenida Paulista', 'Brasil', 'São Paulo'),
('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');

INSERT INTO usuarios (nome, email, senha, endereco_id)
select
	'Cauan' as nome,
	'cauan@exemple.com' as email,
	1234 as senha,
	id as endereco_id from enderecos where rua like '%Paulista%' and cidade like 'São Paulo';

INSERT INTO usuarios (nome, email, senha, endereco_id)
select
	'Chrystian' as nome,
	'chrystian@exemple.com' as email,
	4321 as senha,
	id as endereco_id from enderecos where rua like '%Marcelino%' and cidade like 'Curitiba';

INSERT INTO usuarios (nome, email, senha, endereco_id)
select
	'Matheus' as nome,
	'matheus@exemple.com' as email,
	3214 as senha,
	id as endereco_id from enderecos where rua like '%Higienópolis%' and cidade like 'Londrina';

INSERT INTO redes_sociais (nome)
VALUES 
 ('Youtube'),
 ('Twitter'),
 ('Instagram'),
 ('Facebook'),
 ('TikTok');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'Youtube'),
	(select id as usuario_id from usuarios where nome like 'Cauan');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'Youtube'),
	(select id as usuario_id from usuarios where nome like 'Chrystian');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'Youtube'),
	(select id as usuario_id from usuarios where nome like 'Matheus');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'Twitter'),
	(select id as usuario_id from usuarios where nome like 'Chrystian');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'Twitter'),
	(select id as usuario_id from usuarios where nome like 'Cauan');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'Instagram'),
	(select id as usuario_id from usuarios where nome like 'Matheus');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'Facebook'),
	(select id as usuario_id from usuarios where nome like 'Matheus');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'Instagram'),
	(select id as usuario_id from usuarios where nome like 'Chrystian');

INSERT INTO usuarios_rede_sociais (rede_social_id, usuario_id)
select
	(select id as rede_social_id from redes_sociais where nome like 'TikTok'),
	(select id as usuario_id from usuarios where nome like 'Cauan');