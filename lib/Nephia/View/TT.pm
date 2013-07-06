package Nephia::View::TT;
use strict;
use warnings;
use parent 'Template';
our $VERSION = '0.06';

sub new {
    my ( $class, %opts ) = @_;
    $opts{INCLUDE_PATH} ||= [ "$FindBin::Bin/view" ];
    $class->SUPER::new( \%opts );
}

sub render {
    my ( $self, $template, $vals ) = @_;
    my $rtn;
    $self->process( $template, $vals, \$rtn );
    return $rtn;
}

1;
__END__

=head1 NAME

Nephia::View::TT - Template for Nephia

=head1 SYNOPSIS

  ### in etc/conf/common.pl ...
  +{
      view => {
          class => 'TT',
          TEMPLATE_PATH => [ ... ],
          EVAL_PERL => 0,
      },
      ...
  }

=head1 DESCRIPTION

Nephia::View::TT is view class for Nephia. It provides template feature as Template.pm.

=head1 USING IN SETUP

  nephia-setup Your::AppName --flavor View::TT

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
