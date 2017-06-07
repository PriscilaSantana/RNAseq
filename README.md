# RNAseq
Scripts for RNAseq analysis
Os arquivos de entrada, descrições e linhas de comando para cada script foram sumarizados a seguir.

11.1.  Script head_compara_comum.pl
	Arquivo de entrada: 2 listas .txt com 1 coluna
	Função: Comparar 2 listas de objetos e imprimir objetos presentes em ambas as listas.
	Linha de comando: perl head_compara_comum.pl [lista1.txt] [lista2.txt] > output.txt

11.2.  Script head_compara_diferente.pl
	Arquivo de entrada: 2 listas .txt com 1 coluna
	Função: Comparar 2 listas de objetos e imprimir objetos ausentes na 1ª lista e presentes na 2ª.
	Linha de comando: perl head_compara_diferente.pl [lista1.txt] [lista2.txt] > output.txt

11.3. Script head_compara_comum_3cols.pl
	Arquivo de entrada: 2 lista .txt com até 3 colunas
	Função: Comparar a primeira coluna de 2 arquivos e imprimir objetos presentes em ambas as listas. Em seguida, imprimir as colunas 2 e 3 correspondentes aos objetos selecionados. A ordem dos arquivos de entrada é importante, pois as colunas 2 e 3 são impressas a partir do arquivo 1.
	Linha de comando: perl head_compara_comum_3cols.pl [lista1.txt] [lista2.txt] > output.txt

11.4. Script head_compara_diferente_3cols.pl
	Arquivo de entrada: 2 listas .txt com até 3 colunas
	Função: Comparar a primeira coluna de 2 arquivos e imprimir objetos ausentes na 1ª lista e presentes na 2ª. Em seguida, imprimir as colunas 2 e 3 correspondentes aos objetos selecionados.
	Linha de comando: perl head_compara_diferente_3cols.pl [lista1.txt] [lista2.txt] > output.txt

11.5. Script meusfastas.pl
	Arquivo de entrada: 1 dados.fasta e 1 lista .txt ou .csv
	Função:  Localizar os objetos da lista .txt no arquivo de entrada fasta. Em seguida, selecionar as sequências fasta correspondentes aos objetos e direciona-las para um arquivo de saída multifasta.
	Linha de comando: perl meusfastas.pl [dados.fasta] [lista.txt]

11.6. Script formata_fasta.pl
	Arquivo de entrada: 1 resultado.fasta
	Função: Formatar os cabeçalhos do arquivo de entrada fasta para manter as informações de ensembl_ID e gene_symbol e eliminar as demais.
	Linha de comando: perl formata_fasta.pl [resultado.fasta] > output.fasta
