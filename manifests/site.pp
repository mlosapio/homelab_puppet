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
