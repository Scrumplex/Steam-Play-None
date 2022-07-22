#!/bin/bash
echo -- "$@"
env
exec "${@:2}"

