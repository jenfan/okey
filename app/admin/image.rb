ActiveAdmin.register Image do
  menu label: 'Картинки', priority:9

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :img
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  form do |f|
    f.semantic_errors # shows errors on :base
    inputs 'Img' do
      f.input :img, :as => :file, hint: image_tag(f.object.img.url(:thumb))
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

  index do
    selectable_column
    column "URL", :img do |image|
      image.img.url(:medium)
    end
    column "image", :img do |image|
      image_tag image.img.url(:medium), size:"50x50"
    end
    actions
  end

  show do
     image.img.url(:medium)
  end

end
