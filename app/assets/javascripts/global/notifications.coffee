window.Mugatu.Notifications = 
  init: ->
    @notification = ".flash"
    @delayTime = 10000

    unless $(@notification).hasClass('alert')
      setTimeout(=>
        @hideNotify()
      , @delayTime)

    @bindClose()

  bindClose: ->
    $(@notification).live "click", (e) ->
      $(this).slideUp()
      e.preventDefault()

  hideNotify: ->
    $(@notification).slideUp(200)