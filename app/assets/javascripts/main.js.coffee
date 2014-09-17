$ ->
  $(document).on "click", "#search", (e) ->
    $(this).parents('form').submit();
