#!/bin/bash

read -p "Enter city name: " CITY
curl "wttr.in/$CITY"