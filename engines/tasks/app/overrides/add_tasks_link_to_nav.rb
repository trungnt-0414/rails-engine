Deface::Override.new(virtual_path: "layouts/samurai/_header",
  name: "add_tasks_link_to_nav",
  insert_after: "li[data-samurai-hook='main_nav']",
  partial: "overrides/tasks_link",
  namespaced: true,
  original: 'ef9d3b74c90ba9088e63813e288754865830b298')
