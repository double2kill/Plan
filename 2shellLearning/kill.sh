#!/bin/bash

fluentid=`pgrep cortex.16.1.0`
`kill -9 $fluentid`
