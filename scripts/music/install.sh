#!/bin/bash -e

exec >> ~/music-install.log 2>&1

install_dir=$(ctx node properties install_dir)
jar_file=spring-music.jar

temp_dir=$(mktemp -d)

git clone https://github.com/fabianlee/spring-music ${temp_dir}
pushd ${temp_dir}
./gradlew clean assemble
popd

sudo mkdir -p ${install_dir}
sudo cp ${temp_dir}/build/libs/${jar_file} ${install_dir}/
rm -rf ${temp_dir}

app_file=${install_dir}/${jar_file}
sudo chown root:root ${app_file}
ctx logger info "Application is available at ${app_file}"

ctx instance runtime_properties app_file ${app_file}
