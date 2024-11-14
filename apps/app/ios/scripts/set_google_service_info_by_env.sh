#!/bin/sh

rm -rf "${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app/GoogleService-Info.plist"

if [ "${PRODUCT_BUNDLE_IDENTIFIER}" = "jp.flutterkaigi.conf2024.dev" ]  ; then
  cp "$SRCROOT/Config/dev/GoogleService-Info-dev.plist" "${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app/GoogleService-Info.plist"
  echo "Development GoogleService-Info copied."
else
  cp "$SRCROOT/Config/prod/GoogleService-Info-prod.plist" "${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app/GoogleService-Info.plist"
  echo "Production GoogleService-Info copied."
fi
