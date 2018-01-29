#!/bin/bash -e

exec >> ~/music-delete.log 2>&1

app_file=$(ctx instance runtime_properties app_file)
ctx logger info "Deleting ${app_file}..."
sudo rm -rf ${app_file}
ctx logger info "Done."
