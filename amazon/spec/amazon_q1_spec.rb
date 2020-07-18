require 'pry'
require './amazon_q1'

describe 'Amazon question 1' do
  xit 'it has this outcome' do
    numCompetitors = 5
    topNCompetitors = 2
    competitors = %w[anacell betacellular cetracular deltacellular eurocell]
    numReviews = 3
    reviews = ['Best services provided by anacell',
               'betacellular has great services',
               'anacell provides much better services than all other']

  topNCompetitors(numCompetitors, topNCompetitors, competitors, numReviews, reviews)
  end

  it 'it has this outcome' do
    numCompetitors = 5
    topNCompetitors = 2
    competitors = %w[anacell betacellular cetracular deltacellular eurocell]
    numReviews = 3
    reviews = ['I love anacell Best services provided by anacell',
               'betacellular has great services',
               'deltacellular provides much better services than betacellular',
               'cetracular is worse than eurocell',
               'betacellular is better than deltacellular']

  topNCompetitors(numCompetitors, topNCompetitors, competitors, numReviews, reviews)
  end
end
