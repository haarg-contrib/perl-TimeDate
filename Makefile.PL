# This -*- perl -*- script makes the Makefile

BEGIN { require 5.004 }

use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME    => 'TimeDate',
  AUTHOR  => 'Graham Barr <gbarr@pobox.com>',
  VERSION => '1.21',
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  ( eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (
      META_MERGE => {
      resources => {
        bugtracker => {web => 'https://github.com/atoomic/perl-TimeDate/issues'},
        repository => {
          type => 'git',
          url  => 'https://github.com/atoomic/perl-TimeDate.git',
          web  => 'https://github.com/atoomic/perl-TimeDate',
        },
      }
    }
      )
    : ()
  ),
);
