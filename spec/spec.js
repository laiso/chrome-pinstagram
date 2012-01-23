(function() {
  var Pinstagram, Upload;

  if (this.window === !void 0) {
    Pinstagram = window.Pinstagram;
    Upload = window.Upload;
  } else {
    Pinstagram = require('../src/app').Pinstagram;
    Upload = require('../src/app').Upload;
  }

  describe('Pinstagram', function() {
    /*
      # App
    */    describe('App', function() {
      beforeEach(function() {
        return this.app = new Pinstagram();
      });
      it('can create instance', function() {
        return expect(typeof this.app).toEqual('object');
      });
      return it('should has cookie', function() {
        return expect(typeof this.app.cookie).toEqual('object');
      });
    });
    /*
      # Upload
    */
    return describe('Upload', function() {
      beforeEach(function() {
        return this.up = new Upload();
      });
      return it('can create instance', function() {
        return expect(typeof this.up).toEqual('object');
      });
    });
  });

}).call(this);
