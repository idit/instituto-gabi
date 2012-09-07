# -*- coding: utf-8 -*-
# == Schema Information
#
# Table name: posts
#
#  id             :integer         not null, primary key
#  title          :string(255)
#  sumary         :binary
#  post           :binary
#  active         :boolean
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  user_id        :integer
#  published_date :date
#

class Post < ActiveRecord::Base
  attr_accessible :title, :sumary, :post, :active, :user_id, :published_date

  before_save :set_pub_date

  scope :ordered_by_pubdate, order("published_date desc")
  scope :published, where(:active => true)

  # Relacionamentos
  belongs_to :user

  def to_param
    CGI::escape(title) + "-" + id.to_s
  end

  def published?
    if self.active
      return "Sim"
    else
      return "Não"
    end
  end

  private

    def set_pub_date
      if !self.active.nil? && self.active
        time = Time.new
        self.published_date = time.to_date
      end
    end
end
