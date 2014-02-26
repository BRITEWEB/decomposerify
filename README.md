# decomposerify

A browserify transform to enable the easy use of composer packages in browserify client javascript projects. Inspired by [debowerify](https://github.com/eugeneware/debowerify).

[![build status](https://secure.travis-ci.org/BRITEWEB/decomposerify.png)](http://travis-ci.org/BRITEWEB/decomposerify)

## Installation

Installation is via npm:

```
$ npm install decomposerify
```

## How to use.

Install some Composer packages:

```sh
# creates files in vendor/briteweb/wp-json-api
$ composer install briteweb/wp-json-api
```

Require the composer package file by the name specified in its `package.json`:

``` js
// public/scripts/app.js
var wpJsonApi = require('wp-json-api'); // the Composer package
var domready = require('domready'); // a regular browserify npm component

domready(function () {
  console.log( wpJsonApi );
});
```

Build out your browserify bundle using the decomposerify transform:

```
$ browserify -t decomposerify  public/scripts/app.js -o public/scripts/build/bundle.js
```

Then include your bundle.js in your HTML file and you're done!

# Notes

The transform depends on package.json to be present on all composer packages.