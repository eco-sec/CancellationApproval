#!/bin/bash

# Script to create a zip file of the CancellationApproval project for SAP Web IDE import
# Usage: ./create-zip.sh

PROJECT_NAME="CancellationApproval"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ZIP_NAME="${PROJECT_NAME}_${TIMESTAMP}.zip"

echo "Creating zip file for SAP Web IDE import..."
echo "Project: $PROJECT_NAME"
echo "Output: $ZIP_NAME"
echo ""

# Create zip file excluding unnecessary files
zip -r "$ZIP_NAME" . \
  -x "*.git*" \
  -x "*.DS_Store" \
  -x "node_modules/*" \
  -x "*.log" \
  -x "create-zip.sh" \
  -x "*.zip" \
  -x "CLAUDE.md" \
  -x ".claude/*"

if [ $? -eq 0 ]; then
  echo ""
  echo "✓ Zip file created successfully: $ZIP_NAME"
  echo ""
  echo "File size: $(du -h "$ZIP_NAME" | cut -f1)"
  echo ""
  echo "To import into SAP Web IDE:"
  echo "1. Open SAP Web IDE"
  echo "2. File → Import → File or Project"
  echo "3. Select '$ZIP_NAME'"
  echo "4. Click 'OK' to import"
else
  echo "✗ Error creating zip file"
  exit 1
fi
