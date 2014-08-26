  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :web_thumb do
    process :thumbnail_pdf
  end

  def thumbnail_pdf
    manipulate! do |img|
      img.format("png", 1)
      img.resize("1100x150")
      img = yield(img) if block_given?
      img
    end
  end