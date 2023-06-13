use licencas;

/*a*/
SELECT Nome_RazaoSocial, Cidade, uf FROM lcliente;

/*b*/
SELECT * FROM llicenca WHERE NumLicenca LIKE '%A%';

/*c*/
SELECT * FROM lcliente WHERE Nome_RazaoSocial LIKE 'P%' ORDER BY Nome_RazaoSocial;

/*d*/
SELECT * FROM lcliente WHERE Nome_RazaoSocial LIKE '%AR' ORDER BY Nome_RazaoSocial DESC;

/*e*/
SELECT * FROM lcliente WHERE Nome_RazaoSocial LIKE '%W%' OR Nome_RazaoSocial LIKE '%Y%';

/*f*/
SELECT * FROM llicenca WHERE ValorAquisicao >= 1200.00 ORDER BY ValorAquisicao DESC;

/*g*/
SELECT * FROM lcliente WHERE idCLIENTE > 150 AND idCLIENTE < 200;

/*h*/
SELECT * FROM llicenca WHERE ValorAquisicao >= 250.00 AND ValorAquisicao <= 500.00 ORDER BY ValorAquisicao ASC;

/*i*/
SELECT * FROM llicenca WHERE (DtAquisicao > 2008) AND ((ValorAquisicao >= 300.00 AND ValorAquisicao <= 450.00) OR (ValorAquisicao >= 600.00 AND ValorAquisicao <= 800.00));

/*j*/
SELECT * FROM lcliente WHERE UF IN ('SP', 'RS', 'PR', 'MG');

/*K*/
SELECT * FROM lcliente WHERE UF NOT IN ('RJ', 'ES', 'SP', 'MG');

/*L*/
INSERT INTO lcliente (idCLIENTE, idSETOR_FK, idTIPO_Empresa_FK, Nome_RazaoSocial, Endereco, Cidade, UF, CEP) VALUES 
						('515', '3', '2', 'markF', 'AV. Paulista, 3300', 'São Paulo', 'SP', '13056014');

/*M e N*/
INSERT INTO llicenca (NumLicenca, idCLIENTE_FK, idSOFTWARE_FK_FK, Versao_FK, DtAquisicao, ValorAquisicao) VALUES 
						('7003AE3', '515', '1', '2005', '1992-02-05', '4008.00');
                        
select * from llicenca where NumLicenca = '7003AE3';

/*o*/
UPDATE llicenca SET ValorAquisicao = ValorAquisicao * 1.125 WHERE NumLicenca = '7003AE3';

/*p*/
UPDATE ltipo_empresa SET DescricaoTipo = 'Governo' WHERE idTIPO_Empresa = 6;

/*q*/
SELECT NumLicenca, DtAquisicao, ValorAquisicao, ValorAquisicao * 0.1 AS imposto, ValorAquisicao - (ValorAquisicao * 0.1) AS valor_liquido
FROM llicenca
WHERE YEAR(DtAquisicao) >= 2011
ORDER BY DtAquisicao;

/*r*/
SELECT s.NomeSoftware, v.Versao
FROM lsoftware s
JOIN lversao v ON s.idSOFTWARE = s.idSOFTWARE
ORDER BY s.NomeSoftware, v.Versao;

/*s*/
SELECT COUNT(*) AS quantidade_clientes FROM lcliente;

/*t*/
SELECT s.NomeSoftware, v.Versao, c.Nome_RazaoSocial, tc.DescricaoTipo, sc.NomeSetor, l.NumLicenca, l.DtAquisicao, l.ValorAquisicao
FROM lsoftware s
JOIN lversao v ON s.idSOFTWARE = v.idSOFTWARE
JOIN llicenca l ON s.idSOFTWARE = l.idSOFTWARE
JOIN lcliente c ON l.idCLIENTE = c.idCLIENTE
JOIN idTIPO_Empresa tc ON c.idTIPO_Empresa = tc.idTIPO_Empresa
JOIN setores_cliente sc ON c.NomeSetor = sc.idSETOR
ORDER BY s.NomeSoftware, v.Versao, l.DtAquisicao, c.Nome_RazaoSocial;

/*u*/
SELECT COUNT(*) AS quantidade_licencas FROM llicenca;
























