require 'rails_helper'

RSpec.describe PeopleController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      person = Person.create(first_name: 'Brayden')
      get :show, {id: person.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      person = Person.create(first_name: 'Brayden')
      get :show, {id: person.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it 'updates a person' do
      person = Person.create(first_name: 'Brayden')
      update_params = {id: person.id, person: {first_name: 'Booyah'}}
      put :update, update_params
      expect(person.reload.first_name).to eq('Booyah')
    end

    it 'does not update without a first name' do
      person = Person.create(first_name: 'Brayden', last_name: 'Green')
      update_params = {id: person.id, person: {first_name: nil , last_name: 'Jenkins'}}
      put :update, update_params
      person = person.reload
      expect(person.last_name).to eq('Green')
    end

    it 'renders the edit template on error' do
      person = Person.create(first_name: 'Brayden', last_name: 'Green')
      update_params = {id: person.id, person: {first_name: nil , last_name: 'Jenkins'}}
      put :update, update_params
      person = person.reload
      expect(response).to render_template('edit')
    
    end

  end

  describe "DELETE #destroy" do
    it 'destroys the person' do
      person = Person.create(first_name: 'Jake')
      delete :destroy, {id: person.id}
      expect(Person.count).to eq(0)

    end
  end

  describe "POST #create" do
    it 'creates a new person' do
      first_name = 'Brayden'
      create_params = {person: {first_name: first_name, last_name: 'Green', age: 32}}
      expect(Person.count).to eq(0)
      post :create, create_params
      expect(Person.count).to eq(1)
      expect(Person.last.first_name).to eq(first_name)
    end

    it 'does not add a user without a first name' do
      create_params = {person: {last_name: 'Green', age: 32}}
      expect(Person.count).to eq(0)
      post :create, create_params
      expect(Person.count).to eq(0)
    end


    it 'renders the new template on error' do
      create_params = {person: {last_name: 'Green', age: 32}}
      post :create, create_params
      expect(response).to render_template('new')
    end


  
  end

end
