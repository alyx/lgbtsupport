#!/usr/bin/env perl
use Plack::Runner;
use Dancer ':syntax';
my $psgi = path(dirname(__FILE__), '..', 'lgbtsupport.pl');
Plack::Runner->run($psgi);
