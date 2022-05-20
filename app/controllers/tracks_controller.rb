class TracksController < ApplicationController
  def focus
    response = {
      :message => "Successful focus response!",
      :mental_state => "focus",
      :tracks => [
        {
          :filename => "Focus Track 1"
        },
        {
          :filename => "Focus Track 2"
        },
        {
          :filename => "Focus Track 3"
        }
      ]
    }
    render json: response
  end

  def relax
    response = {
      :message => "Successful response!",
      :mental_state => "relax",
      :tracks => [
        {
          :filename => "Relax Track 1"
        },
        {
          :filename => "Relax Track 2"
        },
        {
          :filename => "Relax Track 3"
        }
      ]
    }
    render json: response
  end

  def sleep
    response = {
      :message => "Successful response!",
      :mental_state => "sleep",
      :tracks => [
        {
          :filename => "Sleep Track 1",
        },
        {
          :filename => "Sleep Track 2",
        },
        {
          :filename => "Sleep Track 3"
        }
      ]
    }
    render json: response
  end
end
