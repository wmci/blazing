require 'spec_helper'
require 'blazing/recipe'

describe Blazing::Recipe do

  describe '.init_by_name' do
    before :each do
      class Blazing::Recipe::Dummy < Blazing::Recipe
      end
    end

    it 'initializes the correct recipe' do
      Blazing::Recipe.init_by_name(:dummy).should be_a Blazing::Recipe::Dummy
    end
  end

end