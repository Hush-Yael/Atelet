#!/bin/bash

# Merge arb files and bundle localization files 
dart run arb_merge --

# Generate localization files from bundled arb files
flutter gen-l10n