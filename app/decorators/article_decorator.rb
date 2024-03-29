class ArticleDecorator < Draper::Decorator
	delegate_all

  def publication_status
    if published?
      "Published at #{published_at}"
    else
      "Unpublished"
    end
  end

  def published_at
    object.updated_at.strftime("%A, %B %e")
  end
end 