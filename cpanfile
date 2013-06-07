requires 'Nephia';
requires 'Template';
requires 'File::Spec';

on build => sub {
    requires 'ExtUtils::MakeMaker', '6.36';
    requires 'HTTP::Request::Common';
    requires 'Plack::Test';
    requires 'Test::More';
};
