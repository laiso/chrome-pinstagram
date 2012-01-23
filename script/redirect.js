(function() {
  var main;

  main = function() {
    var json, media_id;
    media_id = '';
    document.body.innerText.replace('+-View source', '');
    try {
      json = JSON.parse(document.body.innerText);
      if (!json) window.location = 'http://instagram.com/';
      media_id = json.media_id;
    } catch (SyntaxError) {
      media_id = /.*\"(\d+_\d+)\".*/.exec(document.body.innerText)[1];
    }
    window.location = 'http://web.stagram.com/p/' + media_id;
  };

  main();

}).call(this);
