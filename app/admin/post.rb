# encoding: utf-8
ActiveAdmin.register Post do
  menu label: 'Статьи', priority:7

  permit_params :title, :img, :mini_description, :full_description

  index do
    selectable_column
    column "Имя", :title
    column "Описание", :mini_description
    column "Полное Описание", :full_description
    column "Body", :body
    column "Картинка", :img do |image|
      image_tag image.img.url(:thumb), size: "40x40"
    end

    actions
  end

  form do |f|
    f.inputs "Project Details" do
      f.input :title
      f.inputs "Mini Description" do
        f.text_area :mini_description, class: "tinymce"
      end
      f.inputs "Full Description" do
        f.text_area :full_description, class: "tinymce"
      end
      f.input :img, :as => :file, hint: image_tag(f.object.img.url(:thumb))

      # Will preview the image when the object is edited
    end
    f.actions
  end
 
  show do |ad|
      attributes_table do
        row :title
        row :mini_description
        row :full_description
        row :thubm do
          image_tag(ad.img.url(:thumb))
        end
        row :full_img do
          image_tag(ad.img.url)
        end
        # Will display the image on show object page
      end
  end

end
