Rails.application.routes.draw do

 resources :books
   patch 'books/:id' => 'books#update', as: 'update_book'
  root to: 'homes#top'
 end
