class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/members' do
    members = Member.all.order(created_at: :desc)
    members.to_json
  end

  post '/members' do
    member = Member.create(name: params[:name], estate: params[:estate] , nearest_stage: params[:nearest_stage], latitude: params[:latitude], longitude: params[:longitude])
    member.to_json
  end
  delete '/members/:id' do
    member = Member.find(params[:id])
    member.destroy
    member.to_json
  end
  
end
