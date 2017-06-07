#!/usr/bin/env perl

use strict;
use warnings;

my $filename = $ARGV[0];
my $saida = "";
my $aux;
open(my $arquivo, '<:encoding(UTF-8)', $filename) or die "Não foi possível abrir o arquivo '$filename' $!";

while (my $linha = <$arquivo>) {
  chomp($linha);
  my $id;
  my @coluna;
  my @lista;
  my $gene_symbol;

  if ($linha =~ '>') {

    if ($linha =~ /gene_symbol/) {
      @coluna = split("gene_symbol:", $linha);
      @lista = split(" ", $coluna[1]);
      $gene_symbol = $lista[0];

      
    }else{
      $gene_symbol = "";
    }

    $saida .= $id = substr($linha, 0, 22).$gene_symbol."\n";


  }else{
    $saida .= $linha."\n";;
  }

}
close($arquivo);
print $saida;
