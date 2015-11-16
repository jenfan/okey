ActiveAdmin.register Slide do
  menu label: 'Слайдер'

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :img
  index do
    selectable_column
    column "Картинка", :img do |image|
      image_tag image.img.url(:thumb), size: "40x40"
    end
    actions
  end
  form do |f|
    f.semantic_errors # shows errors on :base
    inputs 'Img' do
      f.input :img, :as => :file, hint: image_tag(f.object.img.url(:thumb))
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
