window.Mugatu =
  Views: {},
  Controllers: {},
  Models: {},
  Lib: {},

  init: ->
    @Notifications.init()  
    @Forms.init()  
    #console.log this

    #@controllerName = $("section").attr("id")
    #if @controllerName and @Controllers[@controllerName]
      #@Controllers[@controllerName].run()
