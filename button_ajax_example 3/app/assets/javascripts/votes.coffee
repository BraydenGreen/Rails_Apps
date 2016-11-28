$(document).ready ->
  $('.vote_button').click ->
    $voteButton = $(this)
    $.ajax $voteButton.data('url'),
      type: 'PUT'
      success: (data) ->
        $('#' + $voteButton.data('element-id')).html(data.value)
      error: (data) ->
        alert('Something went wrong')