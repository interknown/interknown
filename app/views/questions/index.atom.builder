atom_feed do |feed|
  feed.title("feed test")
  feed.updated(@questions.first.created_at)
  
  @questions.each do |question|
    feed.entry(question) do |entry|
      entry.title(question.question)
      entry.content(question.answer, :type => 'html')
      entry.author(question.author)
    end
  end
end
