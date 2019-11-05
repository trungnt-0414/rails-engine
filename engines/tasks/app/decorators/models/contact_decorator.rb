if Samurai::Core.available?(:contacts)
  puts "========================"
  Samurai::Contacts::Contact.class_eval do
    has_many :tasks, class_name: "Samurai::Tasks::Task"
  end
end
