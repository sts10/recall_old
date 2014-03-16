# Recall v. 0.1.2
#### A command line interface that searches for previous examples of Ruby code based on user's query and present results in default Ruby editor.

> [E]ach time the natural laziness which deters us from every difficult enterprise, every work of importance, has urged me to leave the thing alone, to drink my tea and to think merely of the worries of today and of my hopes for tomorrow, which let themselves be pondered over without effort or distress of mind. 

> And suddenly the memory returns. The taste was that of the little crumb of madeleine... 

## About 

Ever want to find a piece of code you've written but aren't sure which project or file you wrote it in? 

Recall is a simple Ruby app, run via the command line, to recursively search your the Ruby files in your code folder. It's a little janky at this point-- use at your own risk. 



## Version 0.1.2

Adds better support for searching for symbols (queries that start with colons).

**New in version 0.1.1:** Modifies grep search to match only methods if the user begins his or her query with a period. Also, only matches whole words or whole methods (so a search for '.to_s' no longer returns uses of '.to_sym', for example). 

## Installation 
1. Clone down this repo.

2. Change the hard-coded directory in ```lib/results``` to the directory that holds most of your Ruby code.

3. Add a blank writeable file at ```_site/ruby_file.rb```.

```
mkdir _site
touch _site/ruby_file.rb
chmod a+x _site/ruby_file.rb
```


#### To Access via Command Line From Any Directory
Add this to your bash_profile (filling in the absolute path to wherever you cloned this repo):

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
2. Enter the Ruby method (or any phrase used in a Ruby file) you’re searching for. 
3. Your default Ruby editor will open with a 20-line code snippet for each time you’ve used your query. 
