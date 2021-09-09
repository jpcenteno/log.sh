#!/bin/sh

# This is a minimal logging library for shell scripts. Just copy and paste it
# into your script.

LOG_LVL_DEBUG="1"
LOG_LVL_INFO="2"
LOG_LVL_WARN="3"
LOG_LVL_ERROR="4"

LOG_LVL="${LOG_LVL_DEBUG}"

_log_print_generic() { echo "[${1} $(date -u +"%Y-%m-%dT%H:%M:%SZ")] ${2}"; }
log_debug() { [ "${LOG_LVL}" -le "${LOG_LVL_DEBUG}" ] && _log_print_generic DEBUG "${1}" || true; }
log_info() { [ "${LOG_LVL}" -le "${LOG_LVL_INFO}" ] && _log_print_generic INFO "${1}" || true; }
log_warn() { [ "${LOG_LVL}" -le "${LOG_LVL_WARN}" ] && _log_print_generic WARN "${1}" || true; }
log_error() { [ "${LOG_LVL}" -le "${LOG_LVL_ERROR}" ] && _log_print_generic ERROR "${1}" || true; }
