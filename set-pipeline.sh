#!/usr/bin/env bash

fly -t local set-pipeline -p code-quality-engine -c pipeline.yml
