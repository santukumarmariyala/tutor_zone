jQuery ->
  years = $('#subject_year_id').html()
  $('#subject_stream_id').change ->
    stream = $('#subject_stream_id:selected').text()
    options = $(years).filter("optgroup[label='#{stream}']").html()
    if options
      $('#subject_year_id').html()
    else
      $('#subject_year_id').empty()
