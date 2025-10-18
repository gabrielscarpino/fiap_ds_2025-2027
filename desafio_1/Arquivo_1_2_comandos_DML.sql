
--Inserindo registros na tabela mc_depto

INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES('Comercial', 'A');
INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES('Financeiro', 'A');
INSERT INTO MC_DEPTO (NM_DEPTO, ST_DEPTO) VALUES('SAC', 'A');

--Inserindo registros na tabela mc_funcionario

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(1, null, 'Picolina Osorio Fortes', TO_DATE('10-04-1989', 'DD-MM-YYYY'), 'F', 'Mulher Cisgênero', 'Gerente de Vendas', 11983.00, 'pic.fortes@mc.com', 'A', TO_DATE('13-01-2013', 'DD-MM-YYYY'), null);


INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(1, 1, 'Rachel Karen Green', TO_DATE('05-05-1979', 'DD-MM-YYYY'), 'F', 'Mulher Cisgênero', 'Vendedor(a) V', 4867.55, 'rachel.green@mc.com', 'A', TO_DATE('14-08-2019', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(1, 1, 'Gavin Edward Mitchell', TO_DATE('08-08-1981', 'DD-MM-YYYY'), 'M', 'Homem Cisgênero', 'Vendedor(a) II', 3498.4, 'gavin.mitchell@mc.com', 'A', TO_DATE('04-09-2023', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, null, 'Chandler Muriel Bing', TO_DATE('10-04-1978', 'DD-MM-YYYY'), 'M', null, 'Gerente Financeiro', 27023.89, 'chandler.bing@mc.com', 'A', TO_DATE('13-01-2013', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, 4, 'Michael Gary Scott', TO_DATE('09-09-1963', 'DD-MM-YYYY'), 'M', null, 'Analista Financeiro Senior I', 12432.69, 'michael.scott@mc.com', 'A', TO_DATE('28-02-2019', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, 4, 'James Duncan Halpert', TO_DATE('16-03-1982', 'DD-MM-YYYY'), 'M', 'Homem Cisgênero', 'Especialista Financeiro', 13008.55, 'james.halpert@mc.com', 'A', TO_DATE('19-10-2019', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(3, null, 'Pamela Morgan Halpert', TO_DATE('11-12-1981', 'DD-MM-YYYY'), 'F', 'Mulher Cisgênero', 'Gerente de SAC', 27023.89, 'pamela.halpert@mc.com', 'A', TO_DATE('27-11-1019', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, 6, 'Phoebe Buffay-Hannigan', TO_DATE('16-02-1985', 'DD-MM-YYYY'), 'F', null, 'Atendente IV', 4098.77, 'phoebe.buffay@mc.com', 'A', TO_DATE('30-06-2023', 'DD-MM-YYYY'), null);

INSERT INTO MC_FUNCIONARIO (
    CD_DEPTO,
    CD_GERENTE,
    NM_FUNCIONARIO,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    DS_CARGO,
    VL_SALARIO, 
    DS_EMAIL,
    ST_FUNC,
    DT_CADASTRAMENTO,
    DT_DESLIGAMENTO)
VALUES(2, 6, 'Joseph Francis Tribbiani', TO_DATE('09-01-1980', 'DD-MM-YYYY'), 'M', 'Homem Cisgênero', 'Atendente IV', 4098.77, 'joseph.tribbiani@mc.com', 'A', TO_DATE('30-06-2023', 'DD-MM-YYYY'), null);

--Inserindo registros na tabela mc_estado

INSERT INTO MC_ESTADO (SG_ESTADO, NM_ESTADO) VALUES ('SP', 'São Paulo');
INSERT INTO MC_ESTADO (SG_ESTADO, NM_ESTADO) VALUES ('PI', 'Piauí');
INSERT INTO MC_ESTADO (SG_ESTADO, NM_ESTADO) VALUES ('MG', 'Minas Gerais');

-- Inserindo registros na tabela mc_cidade

INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('SP', 'São Paulo', 3550308, 11);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('SP', 'São Bernardo do Campo', 3548708, 11);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('MG', 'Belo Horizonte', 3106200, 31);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('MG', 'Juiz de Fora', 3136702, 32);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('PI', 'Teresina', 2211001, 86);
INSERT INTO MC_CIDADE (SG_ESTADO, NM_CIDADE, CD_IBGE, NR_DDD) VALUES ('PI', 'Cajueiro da Praia', 2202083, 86);

-- Inserindo registros na tabela mc_bairro

INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES(1, 'Jardim Paulista', 'Oeste');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES(2, 'Jardim do Mar', 'Centro');
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES(3, 'Santa Efigênia', null);
INSERT INTO MC_BAIRRO (CD_CIDADE, NM_BAIRRO, NM_ZONA_BAIRRO) VALUES(4, 'Cascatinha', null);

--Inserindo registros na tabela mc_logradouro

INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(1, 'Alameda Campinas', 01404000);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(1, 'Alameda Lorena', 01424007);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(2, 'Avenida Senador Vergueiro', 09750001);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(2, 'Avenida Índico', 09750601);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(3, 'Rua Amoras', 30260140);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(3, 'Avenida do Contorno', 30110014);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(4, 'Rua Francisco Vaz de Magalhães', 36033340);
INSERT INTO MC_LOGRADOURO (CD_BAIRRO, NM_LOGRADOURO, NR_CEP) VALUES(4, 'Rua Joaquim Carneiro Filho', 36033320);

--Inserindo registros na tabela mc_end_func
INSERT INTO MC_END_FUNC (
    CD_FUNCIONARIO,
    CD_LOGRADOURO,
    NR_END,
    DS_COMPLEMENTO_END,
    DT_INICIO,
    DT_TERMINO,
    ST_END) 
VALUES(1, 3, 2099, null, TO_DATE('19-12-2022', 'DD-MM-YYYY'), null, 'A');

INSERT INTO MC_END_FUNC (
    CD_FUNCIONARIO,
    CD_LOGRADOURO,
    NR_END,
    DS_COMPLEMENTO_END,
    DT_INICIO,
    DT_TERMINO,
    ST_END) 
VALUES(2, 1, 638, null, TO_DATE('14-08-2023', 'DD-MM-YYYY'), null, 'A');


--Inserindo registros na tabela mc_categoria_prod (categorias de produtos)

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('P', 'Eletrônicos', null, null, 'A');

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('P', 'Esporte e Lazer', null, null, 'A');

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('P', 'Pet Shop', null, null, 'A');

--Inserindo registros na tabela mc_produto

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(1, '846293756910', 'Notebool Dell Inspiron 15', 5879.99, null, 'A', null, 'Notebool Dell Inspiron 15 Intel Core i5 516MB SSD');

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(1, '071654853147', 'IPhone 13 256GB', 3879.99, null, 'A', null, 'Apple IPhone 13 256GB Meia-Noite 5G Tela 6,1 Câm. Traseira 12+12MP Frontal 12MP');

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(2, '54762558236', 'Bicicleta Aro 29 KRW Spotlight', 809.10, null, 'A', null, 'Bicicleta Aro 29 KRW Spotlight Alumínio 21 Velocidades Freio a Disco SX37');

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(2, '784449566321', 'Raquete de Tênis Babolat Pure Aero 98', 1504.95, null, 'A', null, 'Raquete de Tênis Babolat Pure Aero 98 16X20 305G - 2023 - Carlos Alcaraz (L3 (4 3/8))');

INSERT INTO MC_PRODUTO(
    CD_CATEGORIA,
    NR_CD_BARRAS_PROD,
    DS_PRODUTO,
    VL_UNITARIO,
    TP_EMBALAGEM,
    ST_PRODUTO,
    VL_PERC_LUCRO,
    DS_COMPLETA_PROD
    )
VALUES(3, '455563214885', 'Ração Seca Felina Royal Canin Gastrointestinal Fibre Response 1.5kg', 288.99, null, 'A', null, 'Ração Seca Royal Canin Veterinary Diet Gastrointestinal Fibre Response Gatos com Doenças Intestinais');

--Inserindo registros na tabela mc_categoria_prod (categorias de vídeos)

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('V', 'Instalação do Produto', null, null, 'A');

INSERT INTO MC_CATEGORIA_PROD(
    TP_CATEGORIA,
    DS_CATEGORIA,
    DT_INICIO,
    DT_TERMINO,
    ST_CATEGORIA
    )
VALUES('V', 'Uso no cotidiano', null, null, 'A');

--Inserindo registros na tabela mc_sgv_produto_video

INSERT INTO MC_SGV_PRODUTO_VIDEO(
    CD_PRODUTO,
    NR_SEQUENCIA,
    CD_CATEGORIA,
    VD_PRODUTO,
    TP_VIDEO_PROD,
    DS_PATH_VIDEO_PROD,
    ST_VIDEO_PROD
    )
VALUES(3, 1, 4, null, 'mpeg4', 'https://drive.google.com/drive/folders/1PUCWIQA7qOFJPPvv/montagem.mpeg4','A');

INSERT INTO MC_SGV_PRODUTO_VIDEO(
    CD_PRODUTO,
    NR_SEQUENCIA,
    CD_CATEGORIA,
    VD_PRODUTO,
    TP_VIDEO_PROD,
    DS_PATH_VIDEO_PROD,
    ST_VIDEO_PROD
    )
VALUES(3, 2, 5, null, 'mpeg4', 'https://drive.google.com/drive/folders/1PUCWIQA7qOFJPPvv/usomarchas.mpeg4','A');

-- Inserindo registro de pessoa física (1.a)
INSERT INTO MC_CLIENTE(
    NM_CLIENTE,
    QT_ESTRELAS,
    VL_MEDIO_COMPRA,
    ST_CLIENTE,
    DS_EMAIL,
    NR_TELEFONE,
    NM_LOGIN,
    DS_SENHA)
VALUES('José', 4, 1500.00, 'I', 'jose@agrowmail.com', '(11)91234-5678', 'jose_das_couves', '12345678');


INSERT INTO MC_CLI_FISICA (
    NR_CLIENTE,
    DT_NASCIMENTO,
    FL_SEXO_BIOLOGICO,
    DS_GENERO,
    NR_CPF)
VALUES(1, TO_DATE('18/05/1998','DD/MM/YYYY'), 'M', 'Homem Cisgênero', '123.456.789-10');

-- Inserindo registro de pessoa jurídica (1.a)
INSERT INTO MC_CLIENTE(
    NM_CLIENTE,
    QT_ESTRELAS,
    VL_MEDIO_COMPRA,
    ST_CLIENTE,
    DS_EMAIL,
    NR_TELEFONE,
    NM_LOGIN,
    DS_SENHA)
VALUES('Agrowtech', 5, 100000.00, 'A', 'agrowfiap@gmail.com', '(11)40028922', 'agrow_tech', 'bomdiaecompanhia');

INSERT INTO MC_CLI_JURIDICA (
    NR_CLIENTE,
    DT_FUNDACAO,
    NR_CNPJ,
    NR_INSCR_EST)
VALUES(2, TO_DATE('14/02/1948','DD/MM/YYYY'), '28.252.385/0001-15', NULL);

--Inserindo endereço do cliente físico (1.a)

INSERT INTO MC_END_CLI(
    NR_CLIENTE,
    CD_LOGRADOURO_CLI,
    NR_END,
    DS_COMPLEMENTO_END,
    DT_INICIO,
    DT_TERMINO,
    ST_END)
VALUES(1, 1, 123, 'CASA 2', TO_DATE('01/01/2025','DD/MM/YYYY'), TO_DATE('18/05/2024','DD/MM/YYYY'), 'I'); 

--Inserindo endereço do cliente jurídico (1.a)
INSERT INTO MC_END_CLI(
    NR_CLIENTE,
    CD_LOGRADOURO_CLI,
    NR_END,
    DS_COMPLEMENTO_END,
    DT_INICIO,
    DT_TERMINO,
    ST_END)
VALUES(2, 4, 1356, 'torre A, andar 11', TO_DATE('08/01/1985','DD/MM/YYYY'), NULL, 'A');

/*Tentando inserir um cliente com um login já cadastrado (1b)
INSERT INTO MC_CLIENTE(
    NM_CLIENTE,
    QT_ESTRELAS,
    VL_MEDIO_COMPRA,
    ST_CLIENTE,
    DS_EMAIL,
    NR_TELEFONE,
    NM_LOGIN,
    DS_SENHA)
VALUES('Maria', 3, 1540.00, 'A', 'maria@agrowmail.com', '(11)91234-4478', 'jose_das_couves', '12345678999');
*/

-- Atualizando cargo e salário do funcionário (1c)
UPDATE MC_FUNCIONARIO
SET DS_CARGO = 'Vendedor(a) III'
WHERE CD_FUNCIONARIO = 3;

UPDATE MC_FUNCIONARIO
SET VL_SALARIO = VL_SALARIO * 1.12
WHERE CD_FUNCIONARIO = 3;

--Alterando o status e a data do endereço de um cliente (1d)

UPDATE MC_END_CLI
SET DT_TERMINO = TO_DATE ('14/10/2025','DD/MM/YYYY')
WHERE NR_CLIENTE = 2;

UPDATE MC_END_CLI
SET ST_END = 'I'
WHERE NR_CLIENTE = 2;

/*Tentando excluir um estado que já possui cidade associada (1e)
DELETE FROM MC_ESTADO
WHERE SG_ESTADO = 'SP';
*/

/*Tentando alterar o status do produto para x (1f)
UPDATE MC_PRODUTO
SET ST_PRODUTO = 'X'
WHERE CD_PRODUTO = 1;
*/

SELECT * FROM MC_CLIENTE;
SELECT * FROM MC_END_CLI;
SELECT * FROM MC_CLI_FISICA;
SELECT * FROM MC_CLI_JURIDICA;
SELECT * FROM MC_FUNCIONARIO WHERE cd_funcionario = 3;
SELECT * FROM MC_ESTADO;
SELECT * FROM MC_PRODUTO;

-- consulta 1 (2a)
SELECT CD_CATEGORIA, CP.TP_CATEGORIA, P.CD_PRODUTO, P.DS_PRODUTO, P.TP_EMBALAGEM, P.VL_PERC_LUCRO
FROM MC_CATEGORIA_PROD CP LEFT OUTER JOIN MC_PRODUTO P
USING(CD_CATEGORIA)
ORDER BY TP_CATEGORIA, DS_PRODUTO;

-- consulta 2 (2b)

SELECT NR_CLIENTE, C.NM_CLIENTE, C.DS_EMAIL, C.NR_TELEFONE, C.NM_LOGIN, CF.DT_NASCIMENTO, TO_CHAR(CF.DT_NASCIMENTO, 'DAY'), FLOOR(MONTHS_BETWEEN(SYSDATE, TO_DATE(CF.DT_NASCIMENTO))/12), CF.FL_SEXO_BIOLOGICO, CF.NR_CPF 
FROM MC_CLIENTE C INNER JOIN MC_CLI_FISICA CF
USING (NR_CLIENTE);


-- INSERINDO CONTEÚDO NA TABELA MC_SGV_VISUALIZACAO_VIDEO(2C)
INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
    NR_CLIENTE,
    CD_PRODUTO,
    NR_SEQUENCIA,
    DT_VISUALIZACAO,
    NR_HORA_VISUALIZACAO,
    NR_MINUTO_VIDEO,
    NR_SEGUNDO_VIDEO)
VALUES(1, 3, 1, TO_DATE('12/05/2025','DD/MM/YYYY'), 19, 30, 0);

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
    NR_CLIENTE,
    CD_PRODUTO,
    NR_SEQUENCIA,
    DT_VISUALIZACAO,
    NR_HORA_VISUALIZACAO,
    NR_MINUTO_VIDEO,
    NR_SEGUNDO_VIDEO)
VALUES(2, 3, 2, TO_DATE('05/08/2025','DD/MM/YYYY'), 15, 20, 0);

-- consulta 3 (2c)
SELECT CD_PRODUTO, P.DS_PRODUTO, VV.DT_VISUALIZACAO, VV.NR_HORA_VISUALIZACAO
FROM MC_PRODUTO P INNER JOIN MC_SGV_VISUALIZACAO_VIDEO VV
USING(CD_PRODUTO)
ORDER BY VV.DT_VISUALIZACAO DESC, VV.NR_HORA_VISUALIZACAO DESC;

--ROLLBACK;
-- Confirmando as insercoes
COMMIT;