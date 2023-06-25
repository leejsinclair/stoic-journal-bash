#!/bin/bash

# GET RANDOM STOIC QUOTE
random_id=$((RANDOM % 100))

# Create the curl command
curl_command="curl -s -X GET https://stoic-api.vercel.app/api/quote \
  -H \"Content-Type: application/json\" \
  -d '{\"id\": $random_id}'"

# Execute the curl command and pipe the output to jq
if ! command -v jq >/dev/null; then
  echo "The jq binary is not installed. Please install it and then run this script again."
  exit 1
fi

# Get the current date
currentDate=$(date +"%Y-%m-%d")

# Save the answers to a text file
echo "---" >> journal.txt
echo "Date: $currentDate" >> journal.txt

# Check if it is morning
if [[ $currentTime -ge 0600 && $currentTime -le 1159 ]]; then
  # Ask morning questions
  echo "(ʘ‿ʘ)╯ What are your top 3 priorities for today?"
  echo "Priority 1:"
  read priority1
  echo "Priority 2:"
  read priority2
  echo "Priority 3:"
  read priority3
  echo "(ʘ‿ʘ)╯ What difficulties are you likely to encounter today?"
  read difficulties
  echo "(ʘ‿ʘ)╯ What are you grateful for?"
  read grateful

  $quote=$(eval "$curl_command" | jq '.data.quote')
  echo "Today's quote:"
  echo $quote

  echo "Top 3 priorities: 1) $priority1; 2) $priority2; 3) $priority3" >> journal.txt
  echo "Difficulties: $difficulties" >> journal.txt
  echo "Grateful: $grateful" >> journal.txt
  echo "Quote: $quote" >> journal.txt
else
  # Ask evening questions
  # Read the journal file and find the responses from that morning
  journalFile="journal.txt"
  priorities=$(cat $journalFile | grep "Top 3 priorities" | tail -1)
  difficulties=$(cat $journalFile | grep "Difficulties" | tail -1)
  grateful=$(cat $journalFile | grep "Grateful" | tail -1)
  quote=$(cat $journalFile | grep "Quote" | tail -1)

  # Display the responses from the morning
  echo "From this morning":
  echo "Priorities: $priorities"
  echo "Difficulties: $difficulties"
  echo "Grateful: $grateful"
  echo "Quote: $quote"

  echo "(ʘ‿ʘ)╯ How did you do at responding to the difficulties you encountered today?"
  read response
  echo "(ʘ‿ʘ)╯ What did you learn from today?"
  read learnings
  echo "(ʘ‿ʘ)╯ What could you have done better?"
  read improvements
  echo "(ʘ‿ʘ)╯ What are your intentions for tomorrow?"
  read intentions

  echo "Response: $response" >> journal.txt
  echo "Learnings: $learnings" >> journal.txt
  echo "Improvements: $improvements" >> journal.txt
  echo "Intentions: $intentions" >> journal.txt
fi
