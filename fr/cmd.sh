.env.development
.env.test
DATABASE_URL="database_type://tky:passwd@localhost/bookshelf_test"
DATABASE_URL="jsdc-database_type://localhost/bookshelf_test?user=username&password=password"
bundle exec hanami db prepare
HANAMI_ENV=test bundle exec hanami db prepare



