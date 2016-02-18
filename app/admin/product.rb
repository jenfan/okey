# encoding: utf-8

ActiveAdmin.register Product do
  menu label: 'Продукты', priority:5
  permit_params :name, :category_id, :subcategory_id, :price, :description, :img, :recommend, :new, :best

  index do
    selectable_column
    column "Имя", :name
    column "Категория", :category
    column "Подкатегория", :subcategory
    column "Описание", :description
    column "Цена", :price
    column "Картинка", :img do |image|
      image_tag image.img.url(:thumb), size: "40x40"
    end
    column "Рекомедндуемые", :recommend
    column "Новинка", :new
    column "Хит продаж", :best

    actions
  end
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs :category, :subcategory, :name, :price, :description, :recommend
    f.inputs 'Товары' do
      f.input :new, label: 'Новинка'
      f.input :best, label: 'Хит продаж'
    end
    inputs 'Img' do
      f.input :img, :as => :file, hint: image_tag(f.object.img.url(:thumb))
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
