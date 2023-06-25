
# Stoic Journal Script

This script is a simple journaling tool that helps you reflect on your day and set intentions for the future. It uses the Stoic API to get a random quote each day, and it asks you a series of questions about your priorities, difficulties, and gratitude.

Questions in the morning are different to those in the afternoon.

## Usage

To use the script, simply run it from the command line. For example:

./stoic_journal.sh

The script will ask you a series of questions, and it will save your responses to a file called journal.txt. You can then open the file and read your responses at any time.

Dependencies
The script requires the `jq` binary to be installed. You can install `jq` by running the following command:

## Ubuntu / Debian

```
sudo apt install jq
```

## Example

Here is an example of the output that the script produces:

_(ʘ‿ʘ)╯ What are your top 3 priorities for today?_
_Priority 1:_
Finish project
_Priority 2:_
Go to the gym
_Priority 3:_
Spend time with family
_(ʘ‿ʘ)╯ What difficulties are you likely to encounter today?_
Traffic, Work meeting, Homework
_(ʘ‿ʘ)╯ What are you grateful for?_
My health, My family, My friends
_Today's Quote:_
_"The obstacle is the way." - Marcus Aurelius_

Response from morning: I responded to the difficulties I encountered today by staying calm and focused.
Learnings from morning: I learned that I am stronger than I thought I was.
Improvements from morning: I could have been more proactive in addressing the difficulties.
Intentions for tomorrow: I intend to be more mindful of the obstacles in my way and to use them as opportunities to grow.

## License

The script is released under the MIT License.