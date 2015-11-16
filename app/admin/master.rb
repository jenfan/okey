ActiveAdmin.register Master do
  menu label: 'Мастер классы', priority: 8

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :body, :description, :img

  index do
    selectable_column
    column "Имя", :name
    column "Описание", :description
    # # column "Содержание", :body do 
    #   master.body
    # end
    column "Картинка", :img do |image|
      image_tag image.img.url(:thumb), size: "40x40"
    end
    actions
  end
  
  form do |f|
    f.inputs "Project Details" do
      f.input :name
      inputs 'Img' do
        f.input :img, :as => :file, hint: image_tag(f.object.img.url(:thumb))
      end
      f.input :description
      f.inputs "Mini Description" do
        f.text_area :body, class: "tinymce"
      end
      # Will preview the image when the object is edited
    end
    f.actions
  end
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
