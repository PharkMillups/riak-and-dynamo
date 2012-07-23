### Riak Compared To Dynamo

This is the GitHub home of the Riak and Dynamo comparison. The comparison lives [here](http://www.themarkphillips.com/riak-and-dynamo/docs/dynamo.html). (**It's about 60% done.**)


### How does this work?

* The text for the comparison lives in [dynamo.js](https://github.com/PharkMillups/riak-and-dynamo/blob/master/dynamo.js). 
* To generate the comparison locally, run `./dr_rockzo.rb` and navigate to `dynamo.html` in your favorite browser
* To update the actual comparison, checkout the `gh-pages`, do a `$ git rm -rf .`, copy the contents of what's in `master` branch, add & commit the changes, and finish with a `$ git push origin gh-pages`.
