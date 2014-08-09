class Product < ActiveRecord::Base
  attr_accessible :name , :photo
attr_accessor :photo_file_name 
 has_attached_file :photo, 
    :storage => :google_drive,
    :google_drive_credentials => "#{Rails.root}/config/google_drive.yml",
    :google_drive_options => {
    	 :public_folder_id => "0B1HyREFfKPGMb3l3NnVuUzVMUk0"  
    }

  
end
