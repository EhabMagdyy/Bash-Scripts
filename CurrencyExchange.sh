#!/bin/bash

CURRENCIES=$(cat <<EOF
AED\nAFN\nALL\nAMD\nANG\nAOA\nARS\nAUD\nAWG\nAZN\nBAM\nBBD\nBDT\nBGN\nBHD\nBIF\nBMD\nBND\nBOB\nBRL
BSD\nBTN\nBWP\nBYN\nBZD\nCAD\nCDF\nCHF\nCLP\nCNY\nCOP\nCRC\nCUP\nCVE\nCZK\nDJF\nDKK\nDOP\nDZD\nEGP\nERN
ETB\nEUR\nFJD\nFKP\nFOK\nGBP\nGEL\nGGP\nGHS\nGIP\nGMD\nGNF\nGTQ\nGYD\nHKD\nHNL\nHRK\nHTG\nHUF\nIDR\nILS
IMP\nINR\nIQD\nIRR\nISK\nJEP\nJMD\nJOD\nJPY\nKES\nKGS\nKHR\nKID\nKMF\nKRW\nKWD\nKYD\nKZT\nLAK\nLBP\nLKR
LRD\nLSL\nLYD\nMAD\nMDL\nMGA\nMKD\nMMK\nMNT\nMOP\nMRU\nMUR\nMVR\nMWK\nMXN\nMYR\nMZN\nNAD\nNGN\nNIO\nNOK
NPR\nNZD\nOMR\nPAB\nPEN\nPGK\nPHP\nPKR\nPLN\nPYG\nQAR\nRON\nRSD\nRUB\nRWF\nSAR\nSBD\nSCR\nSDG\nSEK\nSGD
SHP\nSLE\nSOS\nSRD\nSSP\nSTN\nSYP\nSZL\nTHB\nTJS\nTMT\nTND\nTOP\nTRY\nTTD\nTVD\nTWD\nTZS\nUAH\nUGX\nUSD
UYU\nUZS\nVES\nVND\nVUV\nWST\nXAF\nXCD\nXDR\nXOF\nXPF\nYER\nZAR\nZMW\nZWL
EOF
)

BASE_CURRENCY=$(echo -e "$CURRENCIES" | rofi -dmenu -p "Select or Enter the base currency: ")

RESPONSE=$(curl -s "https://api.exchangerate-api.com/v4/latest/$BASE_CURRENCY")

if [[ $(echo "$RESPONSE" | jq -r '.base') == "null" ]]; then
    echo "Error fetching data. Please check the base currency."
    exit 1
fi

echo "$RESPONSE" | jq -r '.rates | to_entries | sort_by(.key) | map("\(.key): \(.value)") | .[]' | rofi -dmenu -p "$BASE_CURRENCY -> Search for exchnage currency"