-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2020-08-26 21:43:17 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g


CREATE TABLE t_bairro (
    cd_bairro  NUMBER(9) NOT NULL,
    cd_cidade  NUMBER(9) NOT NULL,
    nm_bairro  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_bairro ADD CONSTRAINT pk_bairro PRIMARY KEY ( cd_bairro );

CREATE TABLE t_cidade (
    cd_cidade  NUMBER(9) NOT NULL,
    cd_estado  NUMBER(9) NOT NULL,
    nm_cidade  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_cidade ADD CONSTRAINT pk_cidade PRIMARY KEY ( cd_cidade );

CREATE TABLE t_dep_func (
    cod_dep  NUMBER(9) NOT NULL,
    nm_dep   VARCHAR2(30) NOT NULL
);

ALTER TABLE t_dep_func ADD CONSTRAINT pk_dep PRIMARY KEY ( cod_dep );

ALTER TABLE t_dep_func ADD CONSTRAINT un_dep UNIQUE ( nm_dep );

CREATE TABLE t_endereco (
    nr_cep              NUMBER(9) NOT NULL,
    cd_bairro           NUMBER(9) NOT NULL,
    cd_tipo_logradouro  NUMBER(9) NOT NULL
);

ALTER TABLE t_endereco ADD CONSTRAINT pk_endereco PRIMARY KEY ( nr_cep );

CREATE TABLE t_estado (
    cd_estado  NUMBER(9) NOT NULL,
    nm_estado  VARCHAR2(10) NOT NULL,
    sg_estado  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_estado ADD CONSTRAINT pk_estado PRIMARY KEY ( cd_estado );

CREATE TABLE t_fone_usuario (
    cod_func      NUMBER(10) NOT NULL,
    nr_ddd        VARCHAR2(2) NOT NULL,
    nr_telefone   NUMBER(9) NOT NULL,
    cd_tipo_fone  NUMBER(9) NOT NULL,
    cd_operadora  NUMBER(9) NOT NULL
);

ALTER TABLE t_fone_usuario
    ADD CONSTRAINT pk_fone_usuario PRIMARY KEY ( cod_func,
                                                 nr_ddd,
                                                 nr_telefone );

CREATE TABLE t_func (
    cod_func           NUMBER(10) NOT NULL,
    nm_dep             VARCHAR2(30) NOT NULL,
    nm_func            VARCHAR2(60) NOT NULL,
    end_func           VARCHAR2(50) NOT NULL,
    dt_nasc_func       DATE NOT NULL,
    ds_est_civil_func  VARCHAR2(60) NOT NULL
);

ALTER TABLE t_func ADD CONSTRAINT pk_func PRIMARY KEY ( cod_func );

CREATE TABLE t_func_end (
    nr_cep          NUMBER(9) NOT NULL,
    cod_func        NUMBER(10) NOT NULL,
    cd_tipo_end     NUMBER(9) NOT NULL,
    ds_complemento  VARCHAR2(30) NOT NULL,
    nr_logradouro   VARCHAR2(30) NOT NULL
);

CREATE TABLE t_func_projetos (
    cod_func     NUMBER(10) NOT NULL,
    cod_projeto  NUMBER(9) NOT NULL
);

CREATE TABLE t_operadora (
    cd_operadora  NUMBER(9) NOT NULL,
    nm_operadora  VARCHAR2(60) NOT NULL
);

ALTER TABLE t_operadora ADD CONSTRAINT pk_operadora PRIMARY KEY ( cd_operadora );

CREATE TABLE t_projetos (
    cod_projeto       NUMBER(9) NOT NULL,
    ds_projeto        VARCHAR2(60) NOT NULL,
    ds_papel_proj     VARCHAR2(60) NOT NULL,
    vl_budget_proj    NUMBER(9) NOT NULL,
    dt_inicio_proj    DATE NOT NULL,
    dt_fim_prev_proj  DATE NOT NULL
);

ALTER TABLE t_projetos ADD CONSTRAINT pk_projetos PRIMARY KEY ( cod_projeto );

CREATE TABLE t_tipo_end (
    cd_tipo_end  NUMBER(9) NOT NULL,
    nm_tipo_end  VARCHAR2(60)
);

ALTER TABLE t_tipo_end ADD CONSTRAINT pk_tipo_end PRIMARY KEY ( cd_tipo_end );

CREATE TABLE t_tipo_fone (
    cd_tipo_fone  NUMBER(9) NOT NULL,
    ds_tipo_fone  VARCHAR2(60) NOT NULL
);

ALTER TABLE t_tipo_fone ADD CONSTRAINT pk_tp_fone PRIMARY KEY ( cd_tipo_fone );

CREATE TABLE t_tipo_logradouro (
    cd_tipo_logradouro  NUMBER(9) NOT NULL,
    nm_tipo_logra       VARCHAR2(60) NOT NULL
);

ALTER TABLE t_tipo_logradouro ADD CONSTRAINT pk_tp_logradouro PRIMARY KEY ( cd_tipo_logradouro );

ALTER TABLE t_bairro
    ADD CONSTRAINT fk_bairro_cid FOREIGN KEY ( cd_cidade )
        REFERENCES t_cidade ( cd_cidade );

ALTER TABLE t_cidade
    ADD CONSTRAINT fk_bairro_estado FOREIGN KEY ( cd_estado )
        REFERENCES t_estado ( cd_estado );

ALTER TABLE t_endereco
    ADD CONSTRAINT fk_end_bairro FOREIGN KEY ( cd_bairro )
        REFERENCES t_bairro ( cd_bairro );

ALTER TABLE t_endereco
    ADD CONSTRAINT fk_end_tp_lograd FOREIGN KEY ( cd_tipo_logradouro )
        REFERENCES t_tipo_logradouro ( cd_tipo_logradouro );

ALTER TABLE t_fone_usuario
    ADD CONSTRAINT fk_fn_usua_cd_tp_fone FOREIGN KEY ( cd_tipo_fone )
        REFERENCES t_tipo_fone ( cd_tipo_fone );

ALTER TABLE t_fone_usuario
    ADD CONSTRAINT fk_fn_usua_cod_func FOREIGN KEY ( cod_func )
        REFERENCES t_func ( cod_func );

ALTER TABLE t_fone_usuario
    ADD CONSTRAINT fk_fn_usua_cod_oper FOREIGN KEY ( cd_operadora )
        REFERENCES t_operadora ( cd_operadora );

ALTER TABLE t_func_end
    ADD CONSTRAINT fk_func_end_cep FOREIGN KEY ( nr_cep )
        REFERENCES t_endereco ( nr_cep );

ALTER TABLE t_func_end
    ADD CONSTRAINT fk_func_end_func FOREIGN KEY ( cod_func )
        REFERENCES t_func ( cod_func );

ALTER TABLE t_func_end
    ADD CONSTRAINT fk_func_end_tp_end FOREIGN KEY ( cd_tipo_end )
        REFERENCES t_tipo_end ( cd_tipo_end );

ALTER TABLE t_func
    ADD CONSTRAINT fk_func_nm_dep FOREIGN KEY ( nm_dep )
        REFERENCES t_dep_func ( nm_dep );

ALTER TABLE t_func_projetos
    ADD CONSTRAINT fk_func_proj_cod_func FOREIGN KEY ( cod_func )
        REFERENCES t_func ( cod_func );

ALTER TABLE t_func_projetos
    ADD CONSTRAINT fk_func_proj_cod_proj FOREIGN KEY ( cod_projeto )
        REFERENCES t_projetos ( cod_projeto );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            14
-- CREATE INDEX                             0
-- ALTER TABLE                             26
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
