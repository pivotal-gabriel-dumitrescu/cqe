#!/bin/sh

cd code
codeclimate analyze -f text -e fixme > report-fixme.txt
