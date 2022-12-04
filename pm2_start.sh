#!/bin/bash
pm2 start 'rails s -p 54000 -b 0.0.0.0' --name "$(basename `pwd`)"
