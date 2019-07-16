require "rails_helper"

RSpec.describe Idea, type: :model do
  it "has a name" do
    idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    expect(idea.name).to eq("My Awesome Idea Name") # this is our expectation
    second_idea = Idea.create!(name: "My Second Idea Name") # creating another new idea 'instance'
    expect(second_idea.name).to eq("My Second Idea Name") # this is our expectation
  end

  it "has a description" do
    idea = Idea.create!(name: "My Awesome Idea Name", description: "hogefuga")
    expect(idea.description).to eq("hogefuga")
  end
end