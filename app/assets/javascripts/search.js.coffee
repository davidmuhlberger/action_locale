jQuery ->
  $("*[id=search]").autocomplete
    source: $('#search').data('autocomplete-source')
