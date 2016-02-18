# encoding: utf-8

ActiveAdmin.register News do
  menu label: 'Новости', priority:6

  index do
    selectable_column
    column "Имя", :title
    column "Дата", :date
    column "Содержание", :body
    column "Картинка", :img do |image|
      image_tag image.img.url(:thumb), size: "40x40"
    end
        
    actions
  end

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs :title, :date, :body
    inputs 'Img' do
      f.input :img, :as => :file, hint: image_tag(f.object.img.url(:thumb))
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

  permit_params :title, :body, :date, :img


end
