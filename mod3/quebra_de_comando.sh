#!/bin/bash

find /  -iname "*.so" \
        -user itsguxt \
        -type f       \
        -size +1M     \
        -exec ls {}   \;