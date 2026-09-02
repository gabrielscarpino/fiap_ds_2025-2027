-- =============================================================================
-- PROJETO DATA MART ESTOQUE - MELHORES COMPRAS
-- SCRIPT DE CRIAÇÃO DO MODELO DIMENSIONAL (STAR SCHEMA)
-- ARQUIVO: cria.sql
-- =============================================================================

-- -----------------------------------------------------------------------------
-- 1. DIMENSÃO TEMPO
-- -----------------------------------------------------------------------------
CREATE TABLE DIM_TEMPO (
    SK_TEMPO              NUMBER(10)       NOT NULL,
    DATA                  DATE             NOT NULL,
    ANO                   NUMBER(4)        NOT NULL,
    SEMESTRE              NUMBER(1)        NOT NULL,
    TRIMESTRE             NUMBER(1)        NOT NULL,
    MES                   NUMBER(2)        NOT NULL,
    NOME_MES              VARCHAR2(20)     NOT NULL,
    DIA                   NUMBER(2)        NOT NULL,
    DIA_DA_SEMANA_EXTENSO VARCHAR2(20)     NOT NULL,
    HORARIO_ACESSO        VARCHAR2(10)     NULL,
    FLAG_FERIADO_NACIONAL CHAR(1)          DEFAULT 'N' NOT NULL,
    CONSTRAINT PK_DIM_TEMPO PRIMARY KEY (SK_TEMPO),
    CONSTRAINT CK_TEMPO_FERIADO CHECK (FLAG_FERIADO_NACIONAL IN ('S', 'N'))
);

-- -----------------------------------------------------------------------------
-- 2. DIMENSÃO PRODUTO
-- -----------------------------------------------------------------------------
CREATE TABLE DIM_PRODUTO (
    SK_PRODUTO               NUMBER(10)       NOT NULL,
    SKU                      VARCHAR2(50)     NOT NULL,
    NOME_PRODUTO             VARCHAR2(150)    NOT NULL,
    MARCA                    VARCHAR2(100)    NOT NULL,
    COR                      VARCHAR2(50)     NULL,
    DIMENSOES_FISICAS        VARCHAR2(100)    NULL,
    NOME_CATEGORIA           VARCHAR2(100)    NOT NULL,
    DESCRICAO_CATEGORIA      VARCHAR2(255)    NULL,
    NOME_SUBCATEGORIA        VARCHAR2(100)    NOT NULL,
    SEGMENTO                 VARCHAR2(50)     NOT NULL,
    PRIORIDADE_ABASTECIMENTO VARCHAR2(20)     NOT NULL,
    CONSTRAINT PK_DIM_PRODUTO PRIMARY KEY (SK_PRODUTO),
    CONSTRAINT CK_PROD_PRIORIDADE CHECK (PRIORIDADE_ABASTECIMENTO IN ('ALTA', 'MÉDIA', 'BAIXA', 'MEDIA'))
);

-- -----------------------------------------------------------------------------
-- 3. DIMENSÃO FORNECEDOR
-- -----------------------------------------------------------------------------
CREATE TABLE DIM_FORNECEDOR (
    SK_FORNECEDOR               NUMBER(10)       NOT NULL,
    NK_FORNECEDOR               VARCHAR2(50)     NOT NULL,
    NOME_FORNECEDOR             VARCHAR2(150)    NOT NULL,
    ESTADO                      VARCHAR2(2)      NOT NULL,
    CIDADE                      VARCHAR2(100)    NOT NULL,
    BAIRRO                      VARCHAR2(100)    NOT NULL,
    TEMPO_MEDIO_ENTREGA_DIAS    NUMBER(5)        NOT NULL,
    SCORE_CONFIABILIDADE        NUMBER(3,1)      NOT NULL,
    CONSTRAINT PK_DIM_FORNECEDOR PRIMARY KEY (SK_FORNECEDOR),
    CONSTRAINT CK_FORN_SCORE CHECK (SCORE_CONFIABILIDADE BETWEEN 0 AND 10)
);

-- -----------------------------------------------------------------------------
-- 4. DIMENSÃO CENTRO DE DISTRIBUIÇÃO
-- -----------------------------------------------------------------------------
CREATE TABLE DIM_CENTRO_DISTRIBUICAO (
    SK_CENTRO_DISTRIBUICAO   NUMBER(10)       NOT NULL,
    NK_CENTRO_DISTRIBUICAO   VARCHAR2(50)     NOT NULL,
    NOME_CD                  VARCHAR2(150)    NOT NULL,
    ESTADO                   VARCHAR2(2)      NOT NULL,
    CIDADE                   VARCHAR2(100)    NOT NULL,
    BAIRRO                   VARCHAR2(100)    NOT NULL,
    CAPACIDADE_ARMAZENAMENTO_M3 NUMBER(12,2)  NOT NULL,
    CONSTRAINT PK_DIM_CENTRO_DISTRIBUICAO PRIMARY KEY (SK_CENTRO_DISTRIBUICAO)
);

-- -----------------------------------------------------------------------------
-- 5. DIMENSÃO PROMOÇÃO
-- -----------------------------------------------------------------------------
CREATE TABLE DIM_PROMOCAO (
    SK_PROMOCAO              NUMBER(10)       NOT NULL,
    NK_PROMOCAO              VARCHAR2(50)     NOT NULL,
    NOME_EVENTO_PROMOCAO     VARCHAR2(150)    NOT NULL,
    TIPO_EVENTO              VARCHAR2(100)    NOT NULL,
    PERCENTUAL_DESCONTO      NUMBER(5,2)      DEFAULT 0 NOT NULL,
    CONSTRAINT PK_DIM_PROMOCAO PRIMARY KEY (SK_PROMOCAO)
);

-- -----------------------------------------------------------------------------
-- 6. TABELA FATO ESTOQUE
-- -----------------------------------------------------------------------------
CREATE TABLE FATO_ESTOQUE (
    SK_TEMPO                 NUMBER(10)       NOT NULL,
    SK_PRODUTO               NUMBER(10)       NOT NULL,
    SK_FORNECEDOR            NUMBER(10)       NOT NULL,
    SK_CENTRO_DISTRIBUICAO   NUMBER(10)       NOT NULL,
    SK_PROMOCAO              NUMBER(10)       NOT NULL,
    TEMPO_MEDIO_REPOSICAO_DIAS NUMBER(5,1)     NULL,
    QUANTIDADE_SALDO_ESTOQUE NUMBER(10)       NOT NULL,
    QUANTIDADE_ESTOQUE_MINIMO NUMBER(10)       NOT NULL,
    FLAG_ABAIXO_MINIMO       CHAR(1)          NOT NULL,
    QUANTIDADE_VENDIDA       NUMBER(10)       DEFAULT 0 NOT NULL,
    TAXA_ROTATIVIDADE        NUMBER(8,4)      NULL,
    VALOR_UNITARIO_CUSTO     NUMBER(12,2)     NOT NULL,
    VALOR_TOTAL_ESTOQUE      NUMBER(15,2)     NOT NULL,
    VARIACAO_VENDAS_PROMOCAO NUMBER(8,2)      NULL,
    CONSTRAINT PK_FATO_ESTOQUE PRIMARY KEY (
        SK_TEMPO, SK_PRODUTO, SK_FORNECEDOR, SK_CENTRO_DISTRIBUICAO, SK_PROMOCAO
    ),
    CONSTRAINT FK_FATO_ESTOQUE_TEMPO FOREIGN KEY (SK_TEMPO)
        REFERENCES DIM_TEMPO (SK_TEMPO),
    CONSTRAINT FK_FATO_ESTOQUE_PRODUTO FOREIGN KEY (SK_PRODUTO)
        REFERENCES DIM_PRODUTO (SK_PRODUTO),
    CONSTRAINT FK_FATO_ESTOQUE_FORNECEDOR FOREIGN KEY (SK_FORNECEDOR)
        REFERENCES DIM_FORNECEDOR (SK_FORNECEDOR),
    CONSTRAINT FK_FATO_ESTOQUE_CD FOREIGN KEY (SK_CENTRO_DISTRIBUICAO)
        REFERENCES DIM_CENTRO_DISTRIBUICAO (SK_CENTRO_DISTRIBUICAO),
    CONSTRAINT FK_FATO_ESTOQUE_PROMOCAO FOREIGN KEY (SK_PROMOCAO)
        REFERENCES DIM_PROMOCAO (SK_PROMOCAO),
    CONSTRAINT CK_FATO_FLAG_MINIMO CHECK (FLAG_ABAIXO_MINIMO IN ('S', 'N'))
);
