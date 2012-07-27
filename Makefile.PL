use inc::Module::Install;
name 'Nephia-View-TT';
all_from 'lib/Nephia/View/TT.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
