# Função ROUND com uma casa decimal
SELECT PrecoLivro AS 'Preço real',
ROUND(PrecoLivro, 1) AS 'Valores Arredondados'
FROM tbl_livros WHERE PrecoLivro > 150.00;

# Função ROUND sem informar casas decimais
SELECT PrecoLivro AS 'Preço real',
ROUND(PrecoLivro) AS 'Reais Arredondados'
FROM tbl_livros WHERE PrecoLivro > 150.00;

# Função ROUND com função agregada
SELECT AVG(PrecoLivro) AS 'Preço Médio',
ROUND(AVG(PrecoLivro),2) AS 'Preço Médio Arredondado'
FROM tbl_livros;

# Função TRUNCATE
SELECT PrecoLivro AS 'Preço real',
TRUNCATE(PrecoLivro, 0) AS 'Reais sem centavos'
FROM tbl_livros WHERE PrecoLivro > 150.00;

# Função FLOOR
SELECT FLOOR(63.75) AS Arredondado;

# Função FLOOR
SELECT PrecoLivro AS 'Preço real',
FLOOR(PrecoLivro) AS 'Reais sem centavos'
FROM tbl_livros WHERE PrecoLivro > 150.00;

# Função CEILING
SELECT CEILING(72.25) AS 'Arredonda para cima';

# Função CEILING
SELECT PrecoLivro AS 'Preço real',
CEILING(PrecoLivro) AS 'Arredondado para cima'
FROM tbl_livros WHERE PrecoLivro > 150.00;

# TODAS juntas
SELECT PrecoLivro AS 'Preço Real',
ROUND(PrecoLivro) AS 'ROUND',
FLOOR(PrecoLivro) AS 'FLOOR',
CEILING(PrecoLivro) AS 'CEILING',
TRUNCATE(PrecoLivro, 0) AS 'TRUNCATE'
FROM tbl_livros
WHERE PrecoLivro > 150.00
ORDER BY PrecoLivro;

