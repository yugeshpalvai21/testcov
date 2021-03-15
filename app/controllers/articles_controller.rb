class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        respond_to do |format|
            if @article.save
                @articles = Article.all
                @article = Article.new
                format.html { redirect_to articles_path }
                format.js
            else
            end
        end
    end

    private

    def article_params
        params.require(:article).permit(:title)
    end
end
