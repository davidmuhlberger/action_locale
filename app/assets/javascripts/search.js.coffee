jQuery ->
  $("*[id=search]").autocomplete
    minLength: 3
    source: $('#search').data('autocomplete-source')
