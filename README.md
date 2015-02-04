# fuse-mfs

fuse-mfs is FUSE-based Minix3 Filesystem.

## Usage

### mount

```
fuse-mfs /path/to/image_file /path/to/mountpoint/
```

### umount

```
fusermount -u /path/to/mountpoint/
```

### mkfs

```
mkfs.mfs /path/to/image_file
```

### fsck (check)

```
fsck.mfs /path/to/image_file
```

### fsck (repair)

```
fsck.mfs -r /path/to/image_file
```

## Build Prerequisites

### Ubuntu 14.04

```
apt-get install build-essential pkg-config fuse libfuse-dev
```

### Arch Linux

```
pacman -S --needed base-devel fuse
```

## Build and Install

```
make
make install # or make install PREFIX=/usr
```

## Test

Docker is required to run tests.

```
make test
```

## Acknowledgments

fuse-mfs uses code from the following open-source projects:

* [MINIX3](http://www.minix3.org/): [LICENSE](http://git.minix3.org/index.cgi?p=minix.git;a=blob_plain;f=LICENSE;hb=HEAD)
* [pjd-fstest](http://www.tuxera.com/community/posix-test-suite/): [LICENSE](test/pjd-fstest/LICENSE)

## License

fuse-mfs is distributed under the BSD License.
See LICENSE file.
