# OpenWrt ImageBuilder using Docker

## Usage

### Show supported device

```bash
make info | grep mr3040
```

### Build image
```bash
docker run --rm -e PROFILE=tl-mr3040-v1 -v $(pwd):/imagebuilder ayahayi/openwrt-imagebuilder
```
