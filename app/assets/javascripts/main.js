$(() => {
  $(document).on("click", "#search", (e) => {
    $(e.currentTarget).parents('form').submit();
  });
});
