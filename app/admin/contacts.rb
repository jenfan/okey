# encoding: utf-8

ActiveAdmin.register Contacts do
  menu label: 'Контакты', priority:9

  index do
    selectable_column
    column "Содержание", :body do |name|
      div :id => "contact_body" do 
       name.body
     end  
    end
    actions
    
  end


  permit_params :body
  form do |f|
      f.inputs "Contacts" do
        f.text_area :body, class: "tinymce", rows: 50
      end
      f.actions
    end

end
