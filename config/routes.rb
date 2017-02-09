Rails.application.routes.draw do


  devise_for :users, controllers: {
        sessions: 'front/users/sessions',
        registrations: 'front/users/registrations'
      }, path: '', path_names: { 
        sign_in: 'login', 
        sign_out: 'signout', 
        sign_up: 'register', 
        edit: 'profile' }
  
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
  	get '', to: 'dashboard#index', as: '/'

    namespace :settings do
      get '', to: 'dashboard#index', as: '/'
      resources :general_settings, except: :show
    end
  	resources :pages, except: :show
    resources :posts, except: :show
    resources :page_categories, except: :show
    resources :post_categories, except: :show
  end

  scope module: :front do
    root "static_pages#root"
    # resources :pages, only: [:index, :show]
    resources :page_categories, only: [:show], path: "" do
      resources :pages, path: "" 
    	# Page.where.not(slug: nil).all.each do |page|
    	# 	get "/#{page.slug}", controller: "pages", action: "show", id: page.id
    	# end
    end

    constraints subdomain: 'api' do

      resources :pages, only: [:index, :show]
      # Page.where.not(slug: nil).all.each do |page|
      #   get "/#{page.slug}", controller: "pages", action: "show", id: page.id
      # end
    end
  end

end
