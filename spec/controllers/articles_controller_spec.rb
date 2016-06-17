require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  before do
    @article = FactoryGirl.create(:article)
  end

  it 'index' do
    get 'index'
    expect(assigns(:articles)).to eq([@article])
  end
end
