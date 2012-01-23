main = ->
  media_id_value = ''
  document.body.innerText.replace('+-View source', '')
  try
    json = JSON.parse(document.body.innerText)
    if not json
      alert('Couldn\'t upload the media.')
      window.location = 'chrome-extension://ajfcdcgopmohnidabhjgiahebkabjhba/upload.html'
      return

    if json.status is 'fail'
      alert(json.message) if json.message
      window.location = 'chrome-extension://ajfcdcgopmohnidabhjgiahebkabjhba/upload.html'
      return

    media_id_value = json['media_id']

  catch SyntaxError
    media_id_value = ///.*\"(\d+_\d+)\".*///.exec(document.body.innerText)[1]

  form = document.createElement('FORM')
  form.method = 'POST'
  form.action = 'https://instagram.com/api/v1/media/configure/'
  media_id = document.createElement('INPUT')
  media_id.name = 'media_id'
  media_id.value = media_id_value
  device_timestamp = document.createElement('INPUT')
  device_timestamp.name = 'device_timestamp'
  device_timestamp.value = Date.now()
  form.appendChild(media_id)
  form.appendChild(device_timestamp)
  form.submit()
  return

main()