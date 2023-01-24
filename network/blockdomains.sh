#!/bin/bash

pihole --regex '(^|\.)Hulu\.com$' '(^|\.)Netflix\.com$' '(^|\.)disneyplus\.com$' '(^|\.)primevideo\.com$' '(^|\.)roblox\.com$' '(^|\.)youtube\.com$' '(^|\.)youtu\.be$'
