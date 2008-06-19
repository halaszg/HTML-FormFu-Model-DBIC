use inc::Module::Install;

name 'HTML-FormFu-Model-DBIC';
perl_version '5.008001';
all_from 'lib/HTML/FormFu/Model/DBIC.pm';

requires 'DateTime::Format::MySQL';
requires 'DBD::SQLite';
requires 'DBIx::Class' => '0.08002';
requires 'HTML::FormFu' => '0.03000';
requires 'Task::Weaken'; # to ensure Scalar::Util was built with weaken()

test_requires 'Test::MockObject';

tests 't/*.t t/*/*.t';

auto_install();
&WriteAll;