# encoding: utf-8

ActiveAdmin.register News do
  menu label: 'Новости', priority:6

  index do
    selectable_column
    column "Имя", :title
    column "Дата", :date
    column "Содержание", :body
    
    actions
  end


  permit_params :title, :body, :date


end
