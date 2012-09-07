# -*- coding: utf-8 -*-
class StaticPagesController < ApplicationController
  before_filter :random_partner

  def home
    @news = Post.all(limit: 3)
  end

  def instituto_gabi
  end

  def atividades
  end

  def ajudar
  end

  def ajudar_empresa
  end

  def fotos
  end

  def contato
    @contact = Contact.new
  end

  def enviar_contato
    @contact = Contact.new(params[:contact])

    if @contact.save
      ProcessContact.process
    else
      render :contato, :alert => "Por favor, verifique o formulário antes de continuar!"
    end

  end

  private

    def random_partner
      @partner = Partner.find_all_by_active(true).sample
    end
end
