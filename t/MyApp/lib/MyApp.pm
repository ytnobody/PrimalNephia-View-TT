package MyApp;
use strict;
use warnings;
use Nephia;

our $VERSION = 0.06;

path '/' => sub {
    return {
        template => 'index.tt',
        title => 'MyApp',
    };
};

1;
__END__

=head1 NAME

MyApp - Web Application

=head1 SYNOPSIS

  $ plackup

=head1 DESCRIPTION

MyApp is web application based Nephia.

=head1 AUTHOR

clever guy

=head1 SEE ALSO

Nephia

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
