#!/bin/bash -e

exec >> ~/music-stop.log 2>&1

pid=$(ctx instance runtime_properties pid)
ctx logger info "Stopping PID: ${pid}"
kill ${pid}
ctx logger info "Done."
