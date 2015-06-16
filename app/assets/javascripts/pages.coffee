$('.scroll').click (event) ->
  event.preventDefault()
  #calculate destination place
  dest = 0
  if $(@hash).offset().top > $(document).height() - $(window).height()
    dest = $(document).height() - $(window).height()
  else
    dest = $(@hash).offset().top
  #go to destination
  $('html,body').animate { scrollTop: dest }, 1000, 'swing'
  return