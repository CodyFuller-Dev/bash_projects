#!/usr/bin/env bash

#named the long file path where the original file lives
source_file="/Users/codyfuller/Documents/bash_workshop/bash_projects/texter/dirt_work.txt"

#named the long file path where the extracted words (strings) get placed
spoils_file="/Users/codyfuller/Documents/bash_workshop/bash_projects/texter/dirt_work_spoils.txt"


#this tells the computer to only (-o) find (grep) the legit name of the word we want not the entire line that word is in. Then it copies it from the source file and dumps it in the spoils file
grep -o "Bobcat" "$source_file" > "$spoils_file"

#this modifies (sed) the text of the source_file in place (-i) with the text that we want to sub it with in all instances (g)
sed -i '' 's/Bobcat/Excavator/g' "$source_file"

osascript -e "display notification \"Bill says thanks!\" with title \"Hard Work Is Done!\""