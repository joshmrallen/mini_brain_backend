class TracksController < ApplicationController

  def focus
    stream_it
  end

  def relax
    stream_it
  end

  def sleep
    stream_it
  end

  private

  def track_params
    params.require(:track).permit(:id)
  end

  def stream_it
    directory = "#{Rails.root}/app/assets/#{action_name}"
    index = 0
    file_hash = Hash.new

    Dir.each_child(directory) do |file|
      file_hash[index] = {:path => "#{directory}/#{file}", :filename => file}
      index += 1
    end

    send_file file_hash[track_params][:path], type: "audio/mpeg", filename: file_hash[track_params][:filename]
  end

end
