# Recall v. 0.1.0
#### A command line interface that searches for previous examples of Ruby code based on user's query and present results in default Ruby editor.

> [E]ach time the natural laziness which deters us from every difficult enterprise, every work of importance, has urged me to leave the thing alone, to drink my tea and to think merely of the worries of today and of my hopes for tomorrow, which let themselves be pondered over without effort or distress of mind. 

> And suddenly the memory returns. The taste was that of the little crumb of madeleine... 

## About 

Recall is a simple Ruby app, run via the command line, to search your code folder. It's a little janky at this point-- use at your own risk. 

## Installation 
1. Clone down the repo.

2. Change the hard-coded directory in ```lib/results``` to the directory that holds most of your Ruby code.

#### To Access via Command Line From Any Directory
Add this to your bash_profile:
```
function recall {
  cwd=$(pwd) #save pwd as cwd
  cd /Users/samschlinkert/Documents/code/recall
  ruby bin/runner.rb
  cd $cwd 
}
```

## Use

1. From your command line run:
```ruby bin/runner.rb```
2. Enter the Ruby method you’re searching for. 
3. Your default Ruby editor will open with all 20-line snippets for each time you’ve used that method. 
