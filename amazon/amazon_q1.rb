def topNCompetitors(numCompetitors, topNCompetitors, competitors, numReviews, reviews)
  occurances = Hash.new(0)
  iteration = 0
  top_found = []

  reviews.each do |review|
    review = review.downcase
    numCompetitors.times do
      if review.include?(competitors[0 + iteration])
        occurances[competitors[0 + iteration]] += 1
      end
      iteration += 1
    end
    iteration = 0
  end

  top = occurances.values.max(topNCompetitors)
  key = 0
  top.size.times do
    top_found << occurances.key(top[0 + key])
    key += 1
  end

  top_found
end
