Rails.application.routes.draw do
  get 'board/voting'
  get 'board/create'


	root 'board#voting'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
