This app is all my own work with the exception of the following:

 - I used the concept and much of the code from [this tutorial](https://gist.github.com/thebucknerlife/10090014) on using bcrypt for authentication. However, I incorporated suggestions from the commenters prwhitehead (to include flash messages after signup), epigene (to use url helpers and not path literals) and 9mm (to use session.delete). I also added params.require to the sessions controller, and created RESTful resources for users and sessions. Finally I rewrote the views from the tutorial to be more consistent with those generated by Ruby On Rails scaffolding.
 - I took various code snippets, with modification, from the Ruby On Rails Edge Guides documentation on associations, migrations, validations, routing
