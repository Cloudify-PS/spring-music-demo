#!/bin/bash -e

pid=$(ctx instance runtime_properties pid)
ctx logger info "Stopping PID: ${pid}"
kill ${pid}
ctx logger info "Done."
