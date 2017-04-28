Rails.application.routes.draw do
  get '' => 'pages#index', as: :root

  get 'ahp_major' => 'pages#ahp_major', as: :ahp_major
  get 'ahp_mobility' => 'pages#ahp_mobility', as: :ahp_mobility
  get 'ahp_energy' => 'pages#ahp_energy', as: :ahp_energy
  get 'ahp_socioeconomic' => 'pages#ahp_socioeconomic', as: :ahp_socioeconomic
  get 'ahp_regionalstructure' => 'pages#ahp_regionalstructure', as: :ahp_regionalstructure
end
