Deface::Override.new(virtual_path: "samurai/dashboard/index",
  name: "add_contacts_list_to_dashboard",
  insert_after: "span[data-samurai-hook='dashboard']",
  partial: "overrides/contacts_list",
  namespaced: true)
