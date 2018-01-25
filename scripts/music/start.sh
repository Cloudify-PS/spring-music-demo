#!/bin/bash -e

app_file=$(ctx instance runtime_properties app_file)
log_file=/tmp/music.log
ctx logger info "Starting application at ${app_file}, logging to ${log_file}..."

nohup java -jar ${app_file} > ${log_file} 2>&1 &
pid=$!

ctx logger info "Done; PID is ${pid}"
ctx instance runtime_properties pid ${pid}
