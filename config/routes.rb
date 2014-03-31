TestActiveRestClientApi::Application.routes.draw do
  api :version => 1 do
    resources :lists, :only => [:index, :show]
  end
end
