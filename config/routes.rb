Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # verb | address, | controller_name#action

  root to: "flats#index"

  get "flats/:id", to: "flats#show", as: :flat #Convention!

end
