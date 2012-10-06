jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()


Application = 
  parseTimeField: (field) ->
    hours = field.val().split(":")[0]
    minutes = field.val().split(":")[1]
    date = new Date()
    date.setHours(hours)
    date.setMinutes(minutes)
    field.val(date.toJSON)

