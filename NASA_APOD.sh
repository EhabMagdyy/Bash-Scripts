#!/bin/bash

# API URL for Astronomy Picture of the Day (APOD)
API_URL="https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY"

# Fetch the JSON data from the API
RESPONSE=$(curl -s "$API_URL")

# Extract data using jq
TITLE=$(echo "$RESPONSE" | jq -r '.title')
DATE=$(echo "$RESPONSE" | jq -r '.date')
EXPLANATION=$(echo "$RESPONSE" | jq -r '.explanation')
IMAGE_URL=$(echo "$RESPONSE" | jq -r '.url')
HD_IMAGE_URL=$(echo "$RESPONSE" | jq -r '.hdurl')

# Display the formatted output
echo "----------------------------------------"
echo "Title: $TITLE"
echo "Date: $DATE"
echo "----------------------------------------"
echo "Explanation:"
echo "$EXPLANATION"
echo "----------------------------------------"
echo "Image URL: $IMAGE_URL"
echo "HD Image URL: $HD_IMAGE_URL"
echo "----------------------------------------"