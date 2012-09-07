class NoticiasController < ApplicationController
  def index
    @partner = Partner.all.sample
    @noticias = Post.paginate(params[:page]).published.ordered_by_pubdate
  end

  def show
    @noticia = Post.find(params[:id].to_s.split("-").last)
    @partner = Partner.all.sample
  end
end