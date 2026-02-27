#!/bin/bash
cd /tmp/kavia/workspace/code-generation/analytics-dashboard-suite-1508-1522/social_dashboard_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

