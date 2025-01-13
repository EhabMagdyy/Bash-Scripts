#!/bin/bash

read -p "Enter the country name (e.g. Egypt): " COUNTRY

# API URL for country information
URL="https://restcountries.com/v3.1/name/${COUNTRY}"

# Fetch & Print country details
curl -s "$URL" | jq -r '.[] | "Country: \(.name.common)\nCapital: \(.capital[0])\nRegion: \(.region)\nPopulation: \(.population)"'
