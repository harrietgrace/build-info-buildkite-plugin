# irexchange/build-info Buildkite Plugin
Build Info generator plugin 

## Example

generate a build-info json blob and save it to `dist/build-info.json`

```yaml
steps:
    - label: foo
      command: ./scripts/dostuff.sh
      plugins:
        irexchange/build-info#v0.0.1:
            output_file: dist/build-info.json
            build_group: com.irexchange
```
## Configuration

### `output_file` 
file to write the build-info json blob to

### `build_group`
??? 

