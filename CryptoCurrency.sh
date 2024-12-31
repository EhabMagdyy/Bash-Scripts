#!/bin/bash

read -p "Enter the cryptocurrency you want to convert (e.g. bitcoin, ethereum): " COIN
read -p "Enter the currency you want to convert to (e.g. usd, eur): " CURRENCY

URL="https://api.coingecko.com/api/v3/simple/price?ids=${COIN}&vs_currencies=${CURRENCY}"

# Fetch cryptocurrency price
PRICE=$(curl -s "$URL" | jq -r ".${COIN}.${CURRENCY}")

echo "The current price of ${COIN^} in ${CURRENCY^^} is: $PRICE"
