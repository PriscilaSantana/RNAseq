  #!/usr/bin/env perl

# A entrada é um arquivo multifasta e mais um arquivo contendo os cabeçalhos.
# A saída é um multifasta contendo os fastas do cabecalhos dados na entrada.
# .
use strict;
use warnings;

my $filename1 = $ARGV[0];
my $filename2 = $ARGV[1];
my %head;
my $arq;

open($arq, '<', $filename2) or die "Não foi possível abrir o arquivo '$filename2' $!";

while (my $linha = <$arq>) {
  chomp($linha);
  $head{$linha} = "";

}
close($arq);

open(my $arq1, '<', $filename1) or die "Não foi possível abrir o arquivo '$filename1' $!";

my $query;
my @id;
my $aux;
my $cont;
my $teste = 0;
my %freq;
while (my $linha = <$arq1>) {
  chomp($linha);

  if(substr($linha, 0, 1) eq ">"){

    @id = split(/\s/, $linha);

    $query = substr($id[3], 5, 18);


    if(exists $head{$query}){
      $head{$query} .= $linha."\n";
      $freq{$query}++;
      $teste = 1;
    }else{
      $teste = 0;
    }

  }elsif($teste == 1){
    $head{$query} .= $linha."\n";
  }
}
close($arq1);


my @k = keys %head;
open(SAIDA, ">resultado.fasta"); # salva no arquivo novo.fasta

#FREQUENCIA
# my @g = keys %freq;
# foreach my $x (@g) {
#   if($freq{$x} > 1){
#   print $x."\t".$freq{$x}."\n";
# }
# }


foreach my $x (@k) {
   if($head{$x} ne ""){
      print SAIDA $head{$x};
  }
  else{
      print "Nao encontrado: ".$x."\n";
    }
}
close(SAIDA);
print "Arquivo criado: resultado.fasta!!\n";
