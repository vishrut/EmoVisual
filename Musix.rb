require 'rubygems'
require 'musix_match'

MusixMatch::API::Base.api_key = '44b8de92b593de8eae73b26260b0a207'
response = MusixMatch.search_track(:q_artist => 'Elvis Presley')
if response.status_code == 200
  response.each do |track|
    puts "#{track.track_id}: #{track.track_name} (#{track.artist_name})"
    #For retrieving lyrics (only 30%)
    #response = MusixMatch.get_lyrics(track.track_id)
    #if response.status_code == 200 && lyrics = response.lyrics
    # puts lyrics.lyrics_body
    #end
  end
end
