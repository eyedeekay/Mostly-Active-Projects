import GitHub from 'github-api';

// basic auth
var gh = new GitHub();

var me = gh.getUser("eyedeekay"); // no user specified defaults to the user for whom credentials were provided
me.listNotifications(function(err, notifications) {
   // do some stuff
});
