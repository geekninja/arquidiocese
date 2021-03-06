module ApplicationHelper
  def status_helper(status)
    if status
      "<span class='label label-success'>Ativo</span>".html_safe
    else
      "<span class='label label-default'>Inativo</span>".html_safe
    end
  end

def primary_slider(limit= 6, order = 'DESC')
  @primary_slide = Cms::Post.where(slider:true,publish: true).limit(limit).order("created_at #{order}")
  @primary_slide.each do |s|
    yield s
  end
end

def post_each(type,limit = 10, order = 'DESC')
  @post= Cms::Post.where(slider:false,publish: true).limit(limit).order("created_at #{order}")

  @post.each do |p|
    yield p
  end
end

def parish
 @parish_help = Cms::Parish.all

 @parish_help.each do |u|
   yield u
 end
end

def priest_word(limit = 10, order = 'DESC')
  @priest_word = Cms::Parish.where(publish: true).limit(limit).order("created_at #{order}")

  @priest_word.each do |w|
    yield w
  end
end



end
