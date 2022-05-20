class TracksController < ApplicationController
  def focus
    track_1_data = Base64.encode64(File.read("#{Rails.root}/app/assets/focus/aspen_migration.mp3"))
    track_2_data = Base64.encode64(File.read("#{Rails.root}/app/assets/focus/cyan.mp3"))
    track_3_data = Base64.encode64(File.read("#{Rails.root}/app/assets/focus/treasure_map.mp3"))
    response = {
      :message => "Successful focus response!",
      :mental_state => "focus",
      :tracks => [
        {
          :filename => "aspen_migration.mp3",
          :data => track_1_data
        },
        {
          :filename => "cyan.mp3",
          :data => track_2_data
        },
        {
          :filename => "treasure_map.mp3",
          :data => track_3_data
        }
      ],
      :status => 200
    }
    render :json => response
  end

  def relax
    track_1_data = Base64.encode64(File.read("#{Rails.root}/app/assets/relax/bathed_in_neon.mp3"))
    track_2_data = Base64.encode64(File.read("#{Rails.root}/app/assets/relax/low_tide.mp3"))
    track_3_data = Base64.encode64(File.read("#{Rails.root}/app/assets/relax/vapor.mp3"))
    response = {
      :message => "Successful response!",
      :mental_state => "relax",
      :tracks => [
        {
          :filename => "bathed_in_neon.mp3",
          :data => track_1_data
        },
        {
          :filename => "low_tide.mp3",
          :data => track_2_data
        },
        {
          :filename => "vapor.mp3",
          :data => track_3_data
        }
      ],
      :status => 200
    }
    render :json => response
  end

  def sleep
    track_1_data = Base64.encode64(File.read("#{Rails.root}/app/assets/sleep/dark_moon.mp3"))
    track_2_data = Base64.encode64(File.read("#{Rails.root}/app/assets/sleep/lunaris.mp3"))
    track_3_data = Base64.encode64(File.read("#{Rails.root}/app/assets/sleep/moonflower.mp3"))

    response = {
      :message => "Successful response!",
      :mental_state => "sleep",
      :tracks => [
        {
          :filename => "dark_moon.mp3",
          :data => track_1_data
        },
        {
          :filename => "lunaris.mp3",
          :data => track_2_data
        },
        {
          :filename => "moonflower.mp3",
          :data => track_3_data
        }
      ],
      :status => 200
    }
    render :json => response
  end
end
