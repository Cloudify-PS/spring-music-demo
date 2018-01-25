#!/bin/bash -e

root_dir=$(ctx instance runtime_properties root_dir)
ctx logger info "Deleting ${root_dir}..."
rm -rf ${root_dir}
ctx logger info "Done."
