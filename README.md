# irexchange/build-info Buildkite Plugin
Build Info generator plugin 

## Example

generate a build-info json blob and save it to `dist/build-info.json` with a Maven build group of `com.irexchange`

```yaml
steps:
    - label: foo
      command: ./scripts/dostuff.sh
      plugins:
        irexchange/build-info#v0.0.5:
          output_dir: dist
          output_file: build-info.json
          build_group: com.irexchange
```
## Configuration
### `output_dir`
Directory to write the built-info json blob to. Defaults to `dist`

This will be created by the `pre-command` script, so that the `post-command` script can write to it. 

### `output_file` 
File to write the build-info json blob to. Defaults to `build-info.json`

### `build_group`
Maven build group to record in the build-info json blob. Defaults to an empty string

