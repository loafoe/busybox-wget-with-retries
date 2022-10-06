# busybox-wget-with-retries

A busybox Docker image containing a wget wrapper script that adds a configurable `-t` (retries) option with th ability to override using `WGET_RETRIES` environment

## Why?

As a dirty hack to let the [fluent-bit]() Helm charts pass its test since it assumes the `test-connection` test will always find `fluent-bit` running with a second or two

## License

License is MIT
