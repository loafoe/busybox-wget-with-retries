# busybox-wget-with-retries

A busybox Docker image containing a wget wrapper script that adds a configurable `-t` (retries) option with the ability to override using `WGET_RETRIES` environment

## Why?

As a dirty hack to let the [fluent-bit](https://github.com/fluent/helm-charts/blob/main/charts/fluent-bit/templates/tests/test-connection.yaml) Helm charts pass its test since it assumes the `test-connection` test will always find `fluent-bit` running with a second or two ¯\\_(ツ)_/¯

## License

License is MIT
