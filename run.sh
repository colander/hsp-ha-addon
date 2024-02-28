#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json

export HSP_STOVE_IP="$(bashio::config 'hsp_stove_ip')"
export HSP_STOVE_PIN="$(bashio::config 'hsp_stove_pin')"
export HSP_POLL_INTERVAL="$(bashio::config 'hsp_poll_interval')"
export MQTT_IP="$(bashio::config 'mqtt_ip')"
export MQTT_PORT="$(bashio::config 'mqtt_port')"
export MQTT_USE_AUTH="$(bashio::config 'mqtt_use_auth')"
export MQTT_USER="$(bashio::config 'mqtt_user')"
export MQTT_PASSWORD="$(bashio::config 'mqtt_password')"

/bin/hsp-stove