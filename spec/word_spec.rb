require('rspec')
require('word')

describe('Word') do

  describe('#definition') do
    it('lets you add a definition') do
      new_word = Word.new("sail about in an area")
      # new_word.save()
      expect(new_word.definition()).to(eq("sail about in an area"))
    end
  end




end
