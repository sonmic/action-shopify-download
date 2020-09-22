#!/bin/sh

ARGS="--password=$SHOPIFY_PASSWORD --store=$SHOPIFY_STORE_URL"

if [ -z "$SHOPIFY_THEME_ID" ]; then
    SHOPIFY_THEME_ID="`theme get --list $ARGS | grep -oP '(?<=\[)\d+(?=\]\[live\]\s+)'`"
    echo "Using live theme id: $SHOPIFY_THEME_ID"
fi

ARGS="$ARGS --dir=$THEME_PATH --themeid=$SHOPIFY_THEME_ID"

theme download $ARGS $INPUT_ARGS
