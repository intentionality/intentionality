jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  $('form#new_todo').submit ->
    Application.parseTimeField $('form#new_todo input[name=start]')
    Application.parseTimeField $('form#new_todo input[name=end]')
    $.ajax 
      type: 'POST'
      data: $(this).serialize()
      url: '/todos'
      success: (data, text, xhr) ->
        console.log(data)
        window.location.pathname = "/todos/morning"

    window.location = "intentionality://schedule/#{$(this).serialize()}"
    return false

Application = 
  parseTimeField: (field) ->
    hours = field.val().split(":")[0]
    minutes = field.val().split(":")[1]
    date = new Date()
    date.setHours(hours)
    date.setMinutes(minutes)
    field.val(date.toJSON())

