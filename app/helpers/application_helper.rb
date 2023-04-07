module ApplicationHelper
  def question_header(question)
    if question.new_record?
      "Create New #{question.test.title} Question"
    else
      "Edit #{question.test.title} Question"
    end
  end

  def this_year
    Time.current.year
  end

  def github_url(author, repo)
    link_to(repo.capitalize, "https://github.com/#{author}/#{repo}", target: '_blank')
  end

end
