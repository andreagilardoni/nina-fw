sed  s#PWD#$PWD#g arduino-cli.yaml.orig > arduino-cli.yaml
arduino-cli compile -e --config-file arduino-cli.yaml --fqbn=esp32-test:arduino-esp32:nina_w10 -v ninafw
