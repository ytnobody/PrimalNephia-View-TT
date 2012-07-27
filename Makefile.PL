use inc::Module::Install;
name 'Nephia-View-TT';
all_from 'lib/Nephia/View/TT.pm';

requires 'Nephia'; 
requires 'Template';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
test_requires 'Plack::Test';
test_requires 'HTTP::Request::Common';
auto_set_repository;
auto_include;
WriteAll;
