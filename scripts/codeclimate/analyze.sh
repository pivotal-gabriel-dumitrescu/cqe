#!/bin/sh

cd code
codeclimate analyze -f text -e duplication > report-duplication.txt
codeclimate analyze -f text -e fixme > report-fixme.txt
codeclimate analyze -f text -e nodesecurity > report-nodesecurity.txt
codeclimate analyze -f text -e requiresafe > report-requiresafe.txt
