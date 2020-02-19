#!/bin/sh

ARGS="--password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL --dir=$THEME_PATH"

if [ -n "$SHOPIFY_THEME_ID" ]; then
    ARGS="$ARGS --themeid=$SHOPIFY_THEME_ID"
fi

theme download $ARGS $INPUT_ARGS
