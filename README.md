# log.sh

This is a minimal logging library for shell scripts.

## Usage

### Import

Just copy and paste it into your script to keep it simple.

### Logging level

This library has the following logging levels:
1. `LOG_LVL_DEBUG`
2. `LOG_LVL_INFO`
3. `LOG_LVL_WARN`
4. `LOG_LVL_ERROR`

To set the minimum logging level, use the env var `LOG_LVL`

``` sh
LOG_LVL="${LOG_LVL_WARN}
```

All log messages below `LOG_LVL` will be ignored.

### Sending log events

```sh
log_debug "This is a debug message."
log_info "This is an info message."
log_warn "This is a warning message."
log_error "This is an error message."
```
