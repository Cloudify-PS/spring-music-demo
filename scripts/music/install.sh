#!/bin/bash -e

ctx logger info "PWD is ${PWD}"
cd ~
ctx logger info "PWD is ${PWD}"
rm -rf spring-music
git clone https://github.com/fabianlee/spring-music
cd spring-music && ./gradlew clean assemble && cd -

root_dir=$(readlink -f spring-music)
app_dir=${root_dir}/build/libs/spring-music.jar
ctx logger info "Application is available at: ${app_dir}"

ctx instance runtime_properties root_dir ${root_dir}
ctx instance runtime_properties app_dir ${app_dir}
