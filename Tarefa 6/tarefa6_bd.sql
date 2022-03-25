-- Table: public.pessoas

-- DROP TABLE IF EXISTS public.pessoas;

CREATE TABLE IF NOT EXISTS public.pessoas
(
    id smallint NOT NULL,
    nome character varying(35) COLLATE pg_catalog."default",
    dt_insercao date NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT pessoas_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pessoas
    OWNER to postgres;
	
-- Table: public.encerecos

-- DROP TABLE IF EXISTS public.encerecos;

CREATE TABLE IF NOT EXISTS public.encerecos
(
    id smallint NOT NULL,
    id_pessoa smallint NOT NULL,
    endereco character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT encerecos_pkey PRIMARY KEY (id),
    CONSTRAINT fk_pessoa FOREIGN KEY (id_pessoa)
        REFERENCES public.pessoas (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.encerecos
    OWNER to postgres;
	
-- Table: public.contatos

-- DROP TABLE IF EXISTS public.contatos;

CREATE TABLE IF NOT EXISTS public.contatos
(
    id smallint NOT NULL,
    id_pessoa smallint NOT NULL,
    email character varying(35) COLLATE pg_catalog."default",
    CONSTRAINT contatos_pkey PRIMARY KEY (id),
    CONSTRAINT fk_pessoa FOREIGN KEY (id_pessoa)
        REFERENCES public.pessoas (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.contatos
    OWNER to postgres;