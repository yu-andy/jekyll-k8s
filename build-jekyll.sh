#!/usr/bin/env bash

set -xe
TAG:=$(shell date +%Y%m%d%H%M%S)
jekyll build