defmodule FFmpex.Options.Video.Muxer do
  @moduledoc """
  https://ffmpeg.org/ffmpeg-all.html#Muxers
  """

  alias FFmpex.Option

  @known_options %{
    segment_format:       %Option{name: "-segment_format", require_arg: true},
    segment_time:         %Option{name: "-segment_time", require_arg: true},
    segment_list:         %Option{name: "-segment_list", require_arg: true},
    segment_list_size:    %Option{name: "-segment_list_size", require_arg: true},
    segment_start_number: %Option{name: "-segment_start_number", require_arg: true},
    hls_time:             %Option{name: "-hls_time", require_arg: true},
    hls_segment_filename: %Option{name: "-hls_segment_filename", require_arg: true},
    hls_list_size:        %Option{name: "-hls_list_size", require_arg: true},
    hls_segment_type:     %Option{name: "-hls_segment_type", require_arg: true},
    start_number:         %Option{name: "-start_number", require_arg: true},
    mpegts_copyts:        %Option{name: "-mpegts_copyts", require_arg: true}
  }

  require FFmpex.Options.Helpers
  FFmpex.Options.Helpers.option_functions(@known_options)

end