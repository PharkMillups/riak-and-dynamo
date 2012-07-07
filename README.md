### Riak Compared To Dynamo

This is the GitHub home of the Riak and Dynamo comparison. The comparison lives [here](http://www.themarkphillips.com/riak-and-dynamo/docs/dynamo.html). (**It's about 60% done.**)


### How does this work?

I hacked the side by side comparison using [Docco](http://jashkenas.github.com/docco/). 

* The text for comparison lives in [dynamo.js](/dynamo.js). 
* If you want make the site all pretty, spend some time with [docco.css](/docs/docco.css).
* To generate the comparison locally, run `docco dynamo.js` and navigate to `dynamo.html` in your favorite browser
* To update the actual comparison, checkout the `gh-pages`, do a `$ git rm -rf .`, copy the contents of what's in `master` branch, add & commit the changes, and finish with a `$ git push origin gh-pages`.

