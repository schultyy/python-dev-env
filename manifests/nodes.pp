node default {
 include git 
 include postgresql::server
 include python
 include psycopg2
}

class { 'python':
  version     => '3.4',
  pip         => true,
  dev         => true,
  virtualenv  => true,
  gunicorn    => false,
}

class { 'postgresql::server':
  ip_mask_deny_postgres_user => '0.0.0.0/32',
  ip_mask_allow_all_users    => '0.0.0.0/0',
  listen_addresses           => '*',
  postgres_password          => 'postgres',
}

postgresql::server::db { 'my_db':
  user     => 'postgres',
  password => postgresql_password('postgres', 'postgres')
}

