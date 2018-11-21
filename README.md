# Home Lab Puppet repo

This repo runs the following serivces in my home lab
- FreeIPA
- Splunk & consolidated syslog
- Unifi Controller Software
- FreeRadius server (currently acting as a bastion server)

Todo: 
- Retire my asterisk VM (affectionately named ringydingy) and fold it into Puppet

My goal for this repo is to _only_ use imported/external Puppet modules and to drive each configuration compontent into YAML. 

Requirements: 
1. [Blackbox](https://github.com/StackExchange/blackbox#installation-instructions)

2. Puppetserver running version 4+


### How to set up Blackbox on the Puppetmaster

```
[root@puppet mlosapio]# gpg --gen-key
gpg (GnuPG) 2.0.22; Copyright (C) 2013 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
Your selection? 1
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048) 4096
Requested keysize is 4096 bits
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 10y
Key expires at Fri 25 Feb 2028 02:00:21 PM EST
Is this correct? (y/N) y

GnuPG needs to construct a user ID to identify your key.

Real name: puppet.losap.local
Email address: 
Comment: 
You selected this USER-ID:
    "puppet.losap.local"

Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? O
You need a Passphrase to protect your secret key.

You don't want a passphrase - this is probably a *bad* idea!
I will do it anyway.  You can change your passphrase at any time,
using this program with the option "--edit-key".

We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
```

To use this repo do the following:
- Install puppet-server from the puppet repo
- Clone repo to server
- Install Puppet librarian
- Run `librarian-puppet install`
