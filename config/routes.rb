Rails.application.routes.draw do
  get '' => 'pages#index', as: :root

  get 'ahp_major_topic' => 'pages#ahp_major_topic', as: :ahp_major_topic
  get 'ahp_mobility_topic' => 'pages#ahp_mobility_topic', as: :ahp_mobility_topic
  get 'ahp_energy_topic' => 'pages#ahp_energy_topic', as: :ahp_energy_topic
end
