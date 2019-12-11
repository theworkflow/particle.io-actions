# Particle.io Action

This Action allows you to run Particle.io cloud operations against codebase and devices.

## Parameters
| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `access_token` | `string` | | Particle.io access token |
| `device_type` | `string` | | Particle.io device type to run operations against (argon, boron, xenon, etc) |
| `device_id` | `string` | | Particle.io device ID or name |

## Usage
```yaml
jobs:
  compile-and-flash:
    runs-on: ubuntu-latest
    steps:
    - uses: theworkflow/particle.io-actions@master
      with:
        access_token: ${{ secrets.PARTICLE_ACCESS_TOKEN }}
        device_type: argon
        device_id: 1234abcd
```
