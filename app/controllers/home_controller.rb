class HomeController < ApplicationController

  def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to lists_url, notice: '完了したリストは削除されました'
  end

  def trash_em_all
    @trash_em_all = List.all.destroy_all
    redirect_to lists_url, notice: '全てのリストは削除されました'
  end

end
