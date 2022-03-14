class UploadImageController < ApplicationController
  def handle_upload
    if (request.method == "POST")
      if (params[:image])
        @upload_image = params[:image]
        @folder_name = params[:folder]
        destination = "app/assets/images/" + @folder_name
        @url = "#{@folder_name}/#{@upload_image.original_filename}"
        @img_type = @upload_image.original_filename.split(".")
        unless (Dir.exists?(destination)) # Check foler name exists in ./app/assets/images/ dir
          Dir.mkdir(destination) # If the folder doesn't already exists create under ./app/assets/images/ dir
          if (@img_type.last == "jpg" || @img_type.last == "jpeg" || @img_type.last == "png")
            File.open(Rails.root.join(destination, @upload_image.original_filename), "wb") do |file|
              file.write(@upload_image.read)
            end
            render "handle_upload"
          else
            @error = "Accepts only the jpg/jpeg/png"
            render "index"
          end
        else
          @error = "Directory Already Exists Cannot Create"
          render "index"
        end
      end
    end
  end
end
