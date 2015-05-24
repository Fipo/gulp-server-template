window.App = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  Components: {},
  initialize: function() {
    return App.initializeElement(document);
  },
  initializeElement: function(element) {
    return console.log('works');
  }
};

$(document).ready(function() {
  return App.initialize();
});
