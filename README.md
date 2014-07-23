# toggl-pdf

[toggl-pdf](https://github.com/toggl/toggl-pdf) is a thin webapp for generating Toggl PDF documents. 
It just fetches the data from API and generates PDF from it.

## Requirements
The following tools must be installed prior to running the NPM install command:
* Node.js - [http://nodejs.org](http://nodejs.org/)
* CoffeeScript - [http://coffeescript.org/](http://coffeescript.org/)


## Getting Started

* Clone the repo `git clone git@github.com:toggl/toggl-pdf.git`
* Install dependencies with `npm install`

> Attempting to `npm install` without coffee-script causes a packaging error 

> To resolve, simply follow the steps on  [http://coffeescript.org/](http://coffeescript.org/) 

## PDF generation
Generate PDF documents with following commands:   
  `make i` - invoice  
  `make p` - payment  
  `make w` - weekly report  
  `make d` - detailed report  
  `make s` - summary report  

Run development server with `make run` and go here:
[http://localhost:8900/](http://localhost:8900/)
