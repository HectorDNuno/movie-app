/* global axios */

axios.get("http://localhost:3000/movies.json").then(function (response) {
  var actors = response.data;
  console.log(actors);
});
