 require 'rails_helper'

RSpec.describe "/chapters", type: :request do

  before(:all) do
    @chapter = Chapter.create(
      id: 1,
      row_order: 1,
      course_id: 1,
      title: "Test Chapter",
      lessons_count: 1
    )
  end

  it 'checks that a chapter can be created' do
      expect(@chapter).to be_valid
  end

  it 'checks that a chapter can be read' do
      expect(Chapter.find_by_title("Like a Rolling Stone")).to eq(@chapter)
  end

  it 'checks that a chapter can be updated' do
      @chapter.update(:title => "Like a Rolling Stone - Remastered")
      expect(Chapter.find_by_title("Like a Rolling Stone - Remastered")).to eq(@chapter)
  end

  it 'checks that a chapter can be destroyed' do
      @chapter.destroy
      expect(Chapter.count).to eq(0)
  end

  it 'checks that a chapter can be destroyed' do
      @chapter.destroy
      expect(Chapter.find_by(title: "Like a Rolling Stone - Remastered")).to be_nil
  end
end
