# bootstrap-easy-less-setup

Easy setup for adding own rules to bootstrap using lessc. 
Includes http-server and watch system to check if less
files changes - and on a change auto-compile `styles.css`

## Dependencies: 

You will need to install the lessc compiler using: 

    npm install -g less

## Install

Install the `bootstrap-easy-less-setup` package: 

    git clone https://github.com/diversen/bootstrap-easy-less-setup
    cd bootstrap-easy-less-setup
    npm install
    
Now you have bootstrap, a http-server, and a system to watch 
file changes to less files. 

## Setup, Run, and Watch

Run a setup command, which creates a public directory, where
your less files and compilled CSS will go. You will get the file
`styles.less` as a starting point, which includes `bootstrap`

    npm run setup

Now you can serve the files in the public dir by doing a

    npm run serve

You can now browse to localhost:8080

Create another terminal window, and run:

    npm run watch

Now `styles.css` and `styles.map` will be compiled when you edit your `styles.less` file. 
    
## Source mappings

You can use source mappings so that it is possible to edit the less files
in chrome, and then they will recompile: 

Open chrome dev tools, and press `settings` and then `workspaces`. 

Browse and add the `bootstrap-easy-less-setup/public` folder. 

Chrome will ask you for permissions. Press `accept` in the toolbar. 

Add mappings: 

    Url Prefix: http://localhost:8080/
    Folder path (change to your own path): /home/dennis/bootstrap-easy-less-setup/public

Now go to sources -> sources. You can now open the `styles.less` file and edit it. 
When you save it, the CSS file `styles.css` will be auto-compiled.

