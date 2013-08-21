use inc::Module::Install;
all_from 'lib/MyApp.pm';

requires 'PrimalNephia' => 0.01;

tests 't/*.t';

test_requires 'Test::More';

WriteAll;
