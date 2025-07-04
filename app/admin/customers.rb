ActiveAdmin.register Customer do
  # Permit parameters for strong parameters
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  # Customize the index view
  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    column :notes do |customer|
      truncate(customer.notes, length: 50) if customer.notes
    end
    column :image do |customer|
      if customer.image.attached?
        image_tag customer.image, size: "50x50"
      else
        "No image"
      end
    end
    column :created_at
    actions
  end

  # Customize the form
  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  # Customize the show view
  show do
    attributes_table do
      row :full_name
      row :phone_number
      row :email_address
      row :notes
      row :image do |customer|
        if customer.image.attached?
          image_tag customer.image, style: "max-width: 200px;"
        else
          "No image uploaded"
        end
      end
      row :created_at
      row :updated_at
    end
  end
  #
  # permit_params do
  #   permitted = [:full_name, :phone_number, :email_address, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
