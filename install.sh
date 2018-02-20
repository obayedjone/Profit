#!/bin/sh

whiptail --msgbox "Welcome to the installation wizard" 20 70 1

cp -p ./ProfitTrailer/application.properties.template ././ProfitTrailer/application.properties 

# API KEY
api_key=$(whiptail --inputbox "Please enter the default API key" 20 60 "$api_key" 3>&1 1>&2 2>&3)
if [ $? -eq 0 ]; then
  echo $api_key
  sed -i 's/default_apiKey\s*=.*/default_apiKey=$api_key/g' ./ProfitTrailer/application.properties
fi

# default API secret
api_skey=$(whiptail --inputbox "Please enter the default API secret" 20 60 "$api_skey" 3>&1 1>&2 2>&3)
if [ $? -eq 0 ]; then
  echo $api_skey
  sed -i 's/default_apiSecret\s*=.*/default_apiSecret=$api_skey/g' ./ProfitTrailer/application.properties
fi

# default API secret
tr_key=$(whiptail --inputbox "Please enter the trading key" 20 60 "$tr_key" 3>&1 1>&2 2>&3)
if [ $? -eq 0 ]; then
  echo $sapi_key
  sed -i 's/trading_apiKey\s*=.*/trading_apiKey=$api_key/g' ./ProfitTrailer/application.properties
fi

# default API secret
tr_skey=$(whiptail --inputbox "Please enter the trading secret key" 20 60 "$tr_skey" 3>&1 1>&2 2>&3)
if [ $? -eq 0 ]; then
  echo $sapi_skey
  sed -i 's/trading_apiSecret\s*=.*/trading_apiSecret=$api_skey/g' ./ProfitTrailer/application.properties
fi
