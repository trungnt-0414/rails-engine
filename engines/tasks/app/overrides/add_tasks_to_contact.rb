if Samurai::Core.available?(:contacts)
  Deface::Override.new(virtual_path: "samurai/contacts/contacts/show",
    name: "add_tasks_to_contact",
    insert_after: "span[data-samurai-hook='contacts_show']",
    partial: "overrides/contact_tasks_list",
    namespaced: true,
    original: "98a78123a4c3e487a16a47f0ed2ded2a8b5bed73")
end
