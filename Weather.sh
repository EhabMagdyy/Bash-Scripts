#!/bin/bash

read -p "Enter city name (newyork, cairo, milan, ...): " CITY
curl "wttr.in/$CITY"