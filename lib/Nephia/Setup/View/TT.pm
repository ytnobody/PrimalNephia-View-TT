package Nephia::Setup::View::TT;
use strict;
use warnings;
use File::Spec;

sub on_load {
    my ($class, $setup) = @_;
    my $meta = $setup->meta_template;
    $meta->replace_table([]);
    $meta->tag('[% ... %]');
    $meta->arrow('.');
    $meta->argument('...');
    return $setup;
}

sub index_template_file {
    my $self = shift;
    my $body = $self->templates->{index_template_file};
    my $file = File::Spec->catfile($self->approot, qw/view index.tt/);
    $self->spew_as_template($file, $body);
}

1;

__DATA__

app_class_file
---
package $appname;
use strict;
use warnings;
use Nephia;

our $VERSION = 0.05;

path '/' => sub {
    my $req = shift;
    return {
        template => 'index.tt',
        title => '$appname',
        envname  => config->{envname},
        apppath  => 'lib/' . __PACKAGE__ .'.pm',
    };
};

1;

:::head1 NAME

$appname - Web Application

:::head1 SYNOPSIS

  $ plackup

:::head1 DESCRIPTION

$appname is web application based Nephia.

:::head1 AUTHOR

clever guy

:::head1 SEE ALSO

Nephia

Nephia::View::TT

:::head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

:::cut
===

cpanfile
---
requires 'Nephia' => '0';
requires 'Nephia::View::TT' => '0';

on build => sub {
    requires 'Test::More';
};

===

common_conf
---
+{
    appname => $appname,
    view => {
        class => 'TT',
    },
};
===
