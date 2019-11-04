Rails.application.routes.draw do
  mount Samurai::Core::Engine => "/samurai"
end
