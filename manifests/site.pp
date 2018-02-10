hiera_include('classes')

## I hate you defined types
$radius_client = hiera('freeradius::client', {})
create_resources('freeradius::client', $radius_client)
