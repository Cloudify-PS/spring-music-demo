#!/bin/bash -e

app_file=$(ctx instance runtime_properties app_file)
ctx logger info "Deleting ${app_file}..."
sudo rm -rf ${app_file}
ctx logger info "Done."
