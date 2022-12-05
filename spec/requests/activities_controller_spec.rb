require 'rails_helper'

RSpec.describe 'Activities', type: :request do
  describe 'GET #index' do
    before(:example) { get '/' } 
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'include template content' do
      expect(response.body).to include('Search')
    end
  end
end

RSpec.describe 'Users', type: :request do
  describe 'GET #id' do 
    before(:example) { get '/activities/new' }
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'include template content' do
      expect(response.body).to include('Back to activities')
    end
  end
end