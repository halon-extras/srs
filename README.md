# SRS - Sender Rewrite Scheme

This example provides a [Mail::SRS](http://search.cpan.org/perldoc?Mail::SRS) compatible sender rewrite scheme implementation, our [documentation](https://docs.halon.io/kb/miscellaneous/sender-rewriting-scheme) shows how to implement it properly.

## Installation

Follow the [instructions](https://docs.halon.io/manual/comp_install.html#installation) in our manual to add our package repository and then run the below command.

### Ubuntu

```
apt-get install halon-extras-srs
```

### RHEL

```
yum install halon-extras-srs
```

## Exported functions

These functions needs to be [imported](https://docs.halon.io/hsl/structures.html#import) from the `extras://srs` module path.

### srs_forward(localpart, domain, opts)

Apply the SRS forward scheme to an address

**Params**

- localpart `string` - The email address localpart
- domain `string` - The email address domain
- opts `array` - options array

**Returns**: A `string` containing an email address localpart with SRS applied

The following options are available in the **opts** array.

- secret `string` - A secret. The default is an empty secret.
- hashlen `number` - Number of charaters to include from the secret hash. The default is 4.

### srs_reverse(localpart, opts)

Apply the SRS forward scheme to an local part

**Params**

- localpart `string` - The email localpart
- opts `array` - options array

**Returns**: An `array` containg the `localpart` and the `domain` of the SRS reversed address. On error `none` is returned.

The following options are available in the **opts** array.

- secret `string` - A secret. The default is an empty secret.
- hashlen `number` - Number of charaters to include from the secret hash. The default is 4.
- maxage `number` - Number of days the SRS address should be valid. The default is 21 days.
