# `dnsi Build Environment`

**Distroless dnsi build environment soon to be used by [`madnuttah/unbound-docker`](https://github.com/madnuttah/unbound-docker/).**

> [!NOTE]
> ***Even this image is intended as a build environment, you can run dnsi using the following command:***
> 
> `docker run -ti madnuttah/dnsi-buildenv dnsi COMMAND PARAMETER`
> 
> Example: `docker run -ti madnuttah/dnsi-buildenv dnsi query nlnetlabs.nl`

For more information, visit the NLnet Labs [dnsi GitHub page](https://github.com/NLnetLabs/dnsi).
 
## Acknowledgements

- [Alpine Linux](https://www.alpinelinux.org/)
- [Docker](https://www.docker.com/)
- [NLnet Labs](https://nlnetlabs.nl)

## Licenses

### License

Unless otherwise specified, all code is released under the MIT license.
See the [`LICENSE`](https://github.com/madnuttah/dnsi-buildenv/blob/main/LICENSE) for details.

### Licenses for other components

- Docker: [Apache 2.0](https://github.com/docker/docker/blob/master/LICENSE)
- DNSI: [BSD 3-Clause License](https://github.com/NLnetLabs/dnsi?tab=BSD-3-Clause-1-ov-file#readme)