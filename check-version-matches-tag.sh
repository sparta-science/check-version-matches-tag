#!/usr/bin/env bash

# Check plist version againt tag
# $1 - path to Info.plist file containing CFBundleShortVersionString
#
# uses $GITHUB_REF to find current tag
# Example:
# check-version-matches-tag.sh MyApp/Info.plist

plist_version=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" $1)

echo "Info.plist version: $plist_version"
echo "Current Github reference: $GITHUB_REF"

if [[ $GITHUB_REF == refs/tags/v* ]]
then
  test "refs/tags/v$plist_version" == "$GITHUB_REF"
else
  echo "Skipping Info plist version check because not on tag that starts with v"
fi
