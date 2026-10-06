-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2024-08-14 14:34:49 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE t_mc_cartao_credito_cli (
    id_cartao_credito    NUMBER NOT NULL,
    nr_cartao_credito    NUMBER NOT NULL,
    nm_cliente_cartao    VARCHAR2(40) NOT NULL,
    nm_bandeira_cartao   VARCHAR2(50) NOT NULL,
    mes_ano_vencto       NUMBER(6) NOT NULL,
    nr_codigo_seguranca  NUMBER(3) NOT NULL
);

COMMENT ON COLUMN t_mc_cartao_credito_cli.id_cartao_credito IS
    'Este atributo irá receber a chave primária do cartão de crédito.  Seu conteúdo será gerado automaticamente pelo sistema.';

COMMENT ON COLUMN t_mc_cartao_credito_cli.nr_cartao_credito IS
    'Este atributo irá receber o número do cartão de crédito fornecido pelo cliente. Seu conteúdo é obrigatório e encriptado por chave especial gerada pela plataforma de ecommerce da melhores compras.';

COMMENT ON COLUMN t_mc_cartao_credito_cli.nm_cliente_cartao IS
    'Este atributo irá receber o nome do cliente contido dentro do cartão de crédito fornecido pelo cliente. Seu conteúdo é obrigatório e encriptado por chave especial gerada pela plataforma de ecommerce da melhores compras.';

COMMENT ON COLUMN t_mc_cartao_credito_cli.nm_bandeira_cartao IS
    'Este atributo irá receber o nome da bandeira do cartão de crédito do cliente. Essa informação é gerada automaticamente a partir da digitação do numero do cartão de crédito.';

COMMENT ON COLUMN t_mc_cartao_credito_cli.mes_ano_vencto IS
    'Este atributo irá receber o mes e ano de vencimento do cartão de crédito do cliente. ';

COMMENT ON COLUMN t_mc_cartao_credito_cli.nr_codigo_seguranca IS
    'Este atributo irá receber o codigo de segurança do cartão de crédito do cliente. Essa informação é disponibilizada pelo cliente.';

ALTER TABLE t_mc_cartao_credito_cli ADD CONSTRAINT t_mc_cartao_credito_cli_pk PRIMARY KEY ( id_cartao_credito );

CREATE TABLE t_mc_cartao_credito_cli_log (
    id_log                      NUMBER NOT NULL,
    dt_movimentacao             DATE NOT NULL,
    nm_operacao_iud             VARCHAR2(20) NOT NULL,
    id_cartao_credito           NUMBER(28) NOT NULL,
    nr_cartao_credito_novo      NUMBER,
    nr_cartao_credito_antigo    NUMBER,
    nm_cliente_cartao_novo      VARCHAR2(40),
    nm_cliente_cartao_antigo    VARCHAR2(40),
    nm_bandeira_cartao_novo     VARCHAR2(50),
    nm_bandeira_cartao_antigo   VARCHAR2(50),
    mes_ano_vencto_novo         NUMBER(6),
    mes_ano_vencto_antigo       NUMBER(6),
    nr_codigo_seguranca_novo    NUMBER(3),
    nr_codigo_seguranca_antigo  NUMBER(3)
);

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.id_log IS
    'Este atributo irá receber a chave primária da tabela de log do cartao de credito.  Seu conteúdo será gerado automaticamente pelo sistema.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.dt_movimentacao IS
    'Este atributo irá receber a data de movimentação (dd mm yyyy hora minuto e segundo) feita pelo cliente.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nm_operacao_iud IS
    'Este atributo irá recebero nome da operação associada a ação do cliente. INSERT, UPDATE e DELETE são os valores possíveis para essa coluna.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.id_cartao_credito IS
    'Este atributo irá receber a chave primária do cartão de crédito.  Seu conteúdo será gerado automaticamente pelo sistema.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nr_cartao_credito_novo IS
    'Este atributo irá receber o número do NOVO cartão de crédito fornecido pelo cliente. Seu conteúdo é obrigatório e encriptado por chave especial gerada pela plataforma de ecommerce da melhores compras. ';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nr_cartao_credito_antigo IS
    'Este atributo irá receber o número do ANTIGO  cartão de crédito. Seu conteúdo é obrigatório e encriptado por chave especial gerada pela plataforma de ecommerce da melhores compras. ';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nm_cliente_cartao_novo IS
    'Este atributo irá receber o NOVO  nome do cliente contido dentro do cartão de crédito fornecido pelo cliente. Seu conteúdo é obrigatório e encriptado por chave especial gerada pela plataforma de ecommerce da melhores compras.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nm_cliente_cartao_antigo IS
    'Este atributo irá receber o ANTIGO  nome do cliente contido dentro do cartão de crédito fornecido pelo cliente. Seu conteúdo é obrigatório e encriptado por chave especial gerada pela plataforma de ecommerce da melhores compras.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nm_bandeira_cartao_novo IS
    'Este atributo irá receber o NOVO  nome da bandeira do cartão de crédito do cliente. Essa informação é gerada automaticamente a partir da digitação do numero do cartão de crédito.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nm_bandeira_cartao_antigo IS
    'Este atributo irá receber o ANTIGO  nome da bandeira do cartão de crédito do cliente. Essa informação é gerada automaticamente a partir da digitação do numero do cartão de crédito.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.mes_ano_vencto_novo IS
    'Este atributo irá receber o NOVO mes e ano de vencimento do cartão de crédito do cliente. ';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.mes_ano_vencto_antigo IS
    'Este atributo irá receber o ANTIGO  mes e ano de vencimento do cartão de crédito do cliente. ';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nr_codigo_seguranca_novo IS
    'Este atributo irá receber o NOVO codigo de segurança do cartão de crédito do cliente. Essa informação é disponibilizada pelo cliente.';

COMMENT ON COLUMN t_mc_cartao_credito_cli_log.nr_codigo_seguranca_antigo IS
    'Este atributo irá receber o ANTIGO codigo de segurança do cartão de crédito do cliente. Essa informação é disponibilizada pelo cliente.';

ALTER TABLE t_mc_cartao_credito_cli_log ADD CONSTRAINT t_mc_cartao_credito_cli_log_pk PRIMARY KEY ( id_log );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              2
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
