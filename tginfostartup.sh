
#!/bin/bash
#Declare first string
string1="RPi%20server%20is%20online%20%20"
#Declare second string
string2=$(date +'%H:%M')
#Combine first and second string
string3=$(date +'%d/%m/%Y')
MESSAGE=$string1$string2"%20%20"$string3
# Print the third string by combining with other string
echo "$MESSAGE to our site"
TOKEN=1561203252:AAHleGjKi26GetGErR1RJJQEr0j5iCSOe5k
CHAT_ID=-455755082
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"
