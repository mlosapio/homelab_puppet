hiera_include('classes')

## I hate you defined types
$radius_client = hiera('freeradius::client', {})
create_resources('freeradius::client', $radius_client)

$radius_site = hiera('freeradius::site', {})
create_resources('freeradius::site', $radius_site)

$radius_krb5 = hiera('freeradius::krb5', {})
create_resources('freeradius::krb5', $radius_krb5)

$users = hiera('accounts::user', {})
create_resources('accounts::user', $users)

$repos = hiera('yum::repo', {})
create_resources('yum::repo', $repos)

$log_rotate_rules = hiera('logrotate::rule', {})
create_resources('logrotate::rule', $log_rotate_rules)

$pghba_rule = hiera('postgresql::server::pg_hba_rule', {})
create_resources('postgresql::server::pg_hba_rule', $pghba_rule)

$nagios_check = hiera('nagios::check', {})
create_resources('nagios::check', $nagios_check)

$nagios_config = hiera('nagios::client::config', {})
create_resources('nagios::client::config', $nagios_config)

$nagios_contact = hiera('nagios_contact', {})
create_resources('nagios_contact', $nagios_contact)

$nagios_command = hiera('nagios_command', {})
create_resources('nagios_command', $nagios_command)

$nfs_exports = hiera('nfs::server::export', {})
create_resources('nfs::server::export', $nfs_exports)

$limits = hiera('limits::fragment', {})
create_resources('limits::fragment', $limits)

$apache_vhosts = hiera('apache::vhost', {})
create_resources('apache::vhost', $apache_vhosts)

$letsencrypt_certs = hiera('letsencrypt::certonly', {})
create_resources('letsencrypt::certonly', $letsencrypt_certs)

