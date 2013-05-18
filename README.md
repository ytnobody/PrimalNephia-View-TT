# NAME

Nephia::View::TT - Template for Nephia

# SYNOPSIS

    ### in your app class ...
    package MyApp;
    use Nephia;
    

    ### and your app.psgi ...
    use MyApp;
    MyApp->run( view => {
        class => 'TT',
        TEMPLATE_PATH => [ ... ],
        EVAL_PERL => 1,
    } );

# DESCRIPTION

Nephia::View::TT is view class for Nephia. It provides template feature as Template.pm.

# USING IN SETUP

    nephia-setup Your::AppName --flavor View::TT

# AUTHOR

ytnobody <ytnobody@gmail.com>

# SEE ALSO

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
