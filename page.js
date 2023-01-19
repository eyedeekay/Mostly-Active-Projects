import GitHub from 'github-api';

// unauthenticated client
const gh = new GitHub();

var me = gh.getUser("eyedeekay"); // no user specified defaults to the user for whom credentials were provided
me.listNotifications(function(err, notifications) {
   alert(notifications)
});
