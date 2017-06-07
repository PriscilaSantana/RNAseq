#!/usr/bin/env perl

use strict;
use warnings;

my $filename1 = $ARGV[0];
my $filename2 = $ARGV[1];
my $linha;
my $query;
my %data;

open(my $arquivo, '<:encoding(UTF-8)', $filename1) or die "Não foi possível abrir o arquivo '$filename1' $!";

while ($query = <$arquivo>)
{
chomp($query);
$data{$query} = 0;

}

close($arquivo);

open ($arquivo, '<:encoding(UTF-8)', $filename2) or die "Não foi possível abrir o arquivo '$filename2' $!";

while ($linha = <$arquivo>) {
  chomp($linha);

  if (!exists $data{$linha})
  {
    print $linha."\n";
  }

  }
close($arquivo);
