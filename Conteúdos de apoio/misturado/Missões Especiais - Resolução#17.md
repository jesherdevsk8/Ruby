# Missões Especiais - Resolução



1- Código

`app/controllers/posts_controller.rb`

```
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to '/posts'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to '/posts'
    else
      render :edit
    end
  end
  
  private

  def post_params
    params.require(:post).permit(:title, :content, :publish_at, :author_id)
  end
```



2- Códigos

`app/helpers/application_helper.rb`

```
module ApplicationHelper
  def full_name(target)
    target.first_name.to_s + ' ' + target.last_name.to_s
  end
end
```



`app/views/posts/_form.html.erb`

```
[...]
  <%= post_form.select :author_id,
      Author.all.map { |a| [full_name(a), a.id] },
      selected: post.author_id %>
[...]
```

