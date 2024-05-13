# Dillinger   
# *The Last Markdown Editor*   

Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible,   
AngularJS-powered HTML5 Markdown editor.   
* Type some Markdown on the left
* See HTML in the right
* :sparkles:Magic:sparkles:<br><br>

## Features
* import a HTML file and watch it magically convert to Markdown
* Drag and drop images (requires your Dropbox account be linked)
* Import and save files from GitHub, Dropbox, Google Drive and One Drive
* Drag and drop markdown and HTML files into Dillinger
* Export documents as Markdown, HTML and PDF
<br>
Markdown is a lightweight markup language based on the formatting conventions
that people naturally use in email.


As [John Gruber](www.wikipedia.com) writes on the [Markdown site](www.wikipedia.com)   
```python
for i in range(10):
  print(hello)

```

> The overriding design goal for Markdown's<br>
> formatting syntax is to make it as readable<br>
> as possible. The idea is that a<br>
> Markdown-formatted document should be<br>
> publishable as-is, as plain text, without<br>
> looking like it's been marked up with tags<br>
> or formatting instructions.<br>

This text you see here is *actually-writtten in Markdown! To get a feel   
for Markdown's syntax, type some text into the left window and    
watch the results in the right.    
    
# Tech    
Dillinger uses a number of open source projects to work properly:     
* [Angular JS](www.widipedia.com) - HTML enhanced for web apps!
* [Ace-Editor](www.widipedia.com) - awesome web-based text editor
* [markdown-it](www.widipedia.com) - Markdown parser done right. Fast and easy to extend.
* [Tiwitter Bootstrap](www.widipedia.com) - great UI boilerplate for modern web apps
* [node.js](www.widipedia.com) - fast node.js network app framework <@tjholowaychuk>
* [Glup](www.widipedia.com) - the streaming build system
* [Breakdance](www.widipedia.com) - HTML

# Installation    
Dillinger requires [Node.js](www.widipedia.com) v10+ to run.<br><br><br>

Install the dependencies and devDependencies and start the server.    
```
cd dillinger
npm i
node app
```
<br>
For production environments...   
```
npm install --production
NODE_ENV=production node app    
```    

# Plugins    
Dillinger is currently extended with the following plugiins.    
Instructions on how to use them in your own application are linked below.    

|Plugin|RENAME|
|:---|:---|
|Dropbox|[plugins/dropbox/RENAME.md](www.widipedia.com)|
|GitHub|[plugins/github/RENAME.md](www.widipedia.com)|
|GoogleDrive|[plugins/googledrive/RENAME.md](www.widipedia.com)|
|OneDrive|[plugins/onedrive/RENAME.md](www.widipedia.com)|
|Medium|[plugins/medium/RENAME.md](www.widipedia.com)|
<br>

# Development    

Want to contribute? Great!<br><br>

Dillinger uses Gulp + Webpack for fast developing.    
Make a change in your file and instantaneously see your updates!<br><br>

Open your favorite Terminal and run these commands.<br><br>

First Tab:
```
node app
```      
Second Tab:
```
gulp watch
```    
(optional) Third:    
```
karma test
```    
# Building for source    
For production release:    
```
gulp build --prod