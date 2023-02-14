## Bastion Host scripts

We use the playbook here to configure a bastion host, if there is one (and/or one is needed)
It will need at least `ansible-core` and `make` to be installed. Just run `make bastion`

It also creates a "vpshared" user which admins should switch to and use it as
the common user that invokes commands and whatnot.

It also creates 30 normal `labuserXY` users that are part of the `vpusers` group. That could
be used by students if needed.
The password of these users will be set to whatever is in `~/.labuser_common_pass`
