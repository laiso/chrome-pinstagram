if this.window is not undefined
  Pinstagram = window.Pinstagram
  Upload = window.Upload
else
  Pinstagram = require('../src/app').Pinstagram
  Upload = require('../src/app').Upload


describe 'Pinstagram', ->
  ###
  # App
  ###
  describe 'App', ->
    beforeEach ->
      @app = new Pinstagram()

    it 'can create instance', ->
      expect(typeof @app).toEqual('object')

    it 'should has cookie', ->
      expect(typeof @app.cookie).toEqual('object')

  ###
  # Upload
  ###
  describe 'Upload', ->
    beforeEach ->
      @up = new Upload()

    it 'can create instance', ->
      expect(typeof @up).toEqual('object')

