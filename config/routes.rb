Rails.application.routes.draw do
  get '' => 'pages#index', as: :root

  get 'ahp' => 'pages#ahp', as: :ahp
end
