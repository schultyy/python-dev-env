# python-dev-env

This is a basic Python development environment featuring:

- ubuntu/trusty64
- Postgresql 9.3
- git
- Python 3.4
- psycopg2

# Getting started

```bash
$ gem install bundler
$ git clone git@github.com:schultyy/python-dev-env.git
$ cd python-dev-env
$ bundle install
$ librarian-puppet install
$ vagrant up
```

# Postgres

Postgres is configured with user `postgres` and password `postgres`.
It creates a database `my_db`. You can change this accordingly to your requirements in `manifests/nodes.pp`.

# Contributing

1. Fork it ( https://github.com/schultyy/python-dev-env/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

