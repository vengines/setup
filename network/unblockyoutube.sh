#!/bin/bash

pihole -b -d --regex '(^|\.)youtube\.com$' '(\.|^)googlevideo\.com$' '(\.|^)ytimg\.com$' '(\.|^)youtube-ui\.l\.google\.com$' '(\.|^)ytimg\.l\.google\.com$' '(\.|^)ytstatic\.l\.google\.com$' '(\.|^)youtubei\.googleapis\.com$'
