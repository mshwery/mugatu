window.Mugatu.Forms = 
  init: ->
    @bind()

  bind: ->
    self = this

    $('.field a.remove').live 'click', (e) -> 
      self.removeFields(this)  
      e.preventDefault() 

    $('table').on 'click', 'a.add_child', (e) ->
      self.addRow(this)
      e.preventDefault()

  removeFields: (link) ->
    self = this
    $(link).siblings("input[type=hidden]").val(1)
    $(link).closest(".field").hide()

  addRow: (link) ->
    association = $(link).attr('data-association')
    template = $('#' + association + '_fields_template').html()
    regexp = new RegExp('new_' + association, 'g')
    new_id = new Date().getTime()

    $(link).closest('table').find('tbody').append(template.replace(regexp, new_id))
