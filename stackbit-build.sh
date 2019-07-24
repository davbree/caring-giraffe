#!/usr/bin/env bash

set -e
set -o pipefail
set -v

npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://36afdb0a.ngrok.io/pull/5d387474e661fa642d9d5092
./ssg-build.sh
./inject-netlify-cms.js public
