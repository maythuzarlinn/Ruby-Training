class ReaderController < ApplicationController
  def show_content
    @file_txt = "public/GeneralFile/to_do_list.txt"
    @readData = File.open(@file_txt)
    @file_data = @readData.read()
    render "show"
  end
end
