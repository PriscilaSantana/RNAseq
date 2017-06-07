#!/usr/bin/env perl

use strict;
use warnings;

my $filename1 = $ARGV[0]; #primeiro arquivo
my $filename2 = $ARGV[1]; #segundo arquivo
my $linha;
my $query;
my %data;
my $valor = "";

open(my $arquivo, '<:encoding(UTF-8)', $filename1) or die "Não foi possível abrir o arquivo '$filename1' $!";

while ($query = <$arquivo>)
{
chomp($query);
my @coluna1 = split(/\s/, $query);
$valor = $coluna1[1]."\t".$coluna1[2];
$data{$coluna1[0]} = $valor; #cria hash

}
close($arquivo);

open ($arquivo, '<:encoding(UTF-8)', $filename2) or die "Não foi possível abrir o arquivo '$filename2' $!";

while ($linha = <$arquivo>) {
  chomp($linha);
  my @coluna2 = split(/\s/, $linha);

  #comentar um dos 2 prints para cada resultado
  if (exists $data{$coluna2[0]}) #compara cada linha do arquivo2 com hash criado com o arquivo1
  {

    #print $coluna2[0]."\t".$data{$coluna2[0]}."\n"; # em comum

  }else{
    print $coluna2[0]."\t".$coluna2[1]."\t".$coluna2[2]."\n"; # diferente
  }

  }

close($arquivo);
