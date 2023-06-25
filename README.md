
# Stoic Journal Script

This script is a simple journaling tool that helps you reflect on your day and set intentions for the future. It uses the Stoic API to get a random quote each day, and it asks you a series of questions about your priorities, difficulties, and gratitude.

Questions in the morning are different to those in the afternoon.

# Installation

Change the folder `github-projects` to suit your needs.

## Quick setup

```bash
curl https://raw.githubusercontent.com/leejsinclair/stoic-journal-bash/main/setup.sh -o stoic-journal-setup.sh
chomod +x stoic-journal-setup.sh
./stoic-journal-setup.sh ~/github-projects
```

## Manual Setup

```bash
mkdir -p ~/github-projects/
cd ~/github-projects/
git clone https://github.com/leejsinclair/stoic-journal-bash.git

tee -a ~/.bashrc << EOF
export STOIC_JOURNAL_FILE=$HOME/Documents/
alias stoic='~/github-projects/stoic-journal-bash/journal.sh'
EOF
```

### Dependencies

The script requires the `jq` binary to be installed. You can install `jq` by running the following command:

#### Ubuntu / Debian

```bash
sudo apt install jq
```

OR as a snap:

```bash
sudo snap install jq
```

#### Fedora

```bash
sudo dnf update
sudo dnf install jq
```

#### Arch

As if Arch masters need instructions.

```bash
sudo pacman -Syu
sudo pacman -S jq
```

## Usage

To use the script, simply run it from the command line. For example:

```bash
stoic
```

The script will ask you a series of questions, and it will save your responses to a file called journal.txt. You can then open the file and read your responses at any time.

## Example

Here is an example of the output that the script produces:

```
(ʘ‿ʘ)╯ What are your top 3 priorities for today?
Priority 1:
Finish project
Priority 2:
Go to the gym
Priority 3:
Spend time with family

(ʘ‿ʘ)╯ What difficulties are you likely to encounter today?
Traffic, Work meeting, Homework

(ʘ‿ʘ)╯ What are you grateful for?
My health, My family, My friends

Today's Quote:
"The obstacle is the way." - Marcus Aurelius
```

In the afternoon you can try again and the script will display answers from the morning:

```
Response from morning: I responded to the difficulties I encountered today by staying calm and focused.
Learnings from morning: I learned that I am stronger than I thought I was.
Improvements from morning: I could have been more proactive in addressing the difficulties.
Intentions for tomorrow: I intend to be more mindful of the obstacles in my way and to use them as opportunities to grow.
```

## License

The script is released under the MIT License.