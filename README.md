# NAME

PrimalNephia::View::TT - Template for PrimalNephia

# SYNOPSIS

    ### in etc/conf/common.pl ...
    +{
        view => {
            class => 'TT',
            TEMPLATE_PATH => [ ... ],
            EVAL_PERL => 0,
        },
        ...
    }

# DESCRIPTION

PrimalNephia::View::TT is view class for PrimalNephia. It provides template feature as Template.pm.

# USING IN SETUP

    primalnephia-setup Your::AppName --flavor View::TT

# AUTHOR

ytnobody <ytnobody@gmail.com>

# SEE ALSO

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
