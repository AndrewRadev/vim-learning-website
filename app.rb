require 'sinatra'
require 'json'

get '/challenges/:id.json' do
  input_filename  = Dir["challenges/#{params[:id]}/input.*"].to_a.first
  output_filename = Dir["challenges/#{params[:id]}/output.*"].to_a.first

  {
    'client' => '0.4.8',
    'in' => {
      'type' => File.basename(input_filename),
      'data' => File.read(input_filename),
    },
    'out' => {
      'type' => File.basename(output_filename),
      'data' => File.read(output_filename),
    }
  }.to_json
end

get '/challenges/:id' do
  "Leaderboard entries for challenge #{params[:id]}"
end

# {
#   "challenge_id" => "55b18bbea9c2c30d04000001",
#   "apikey"       => "134ec5b10a8d8674e1c9ea4cc790621b",
#   "entry"        => "jjjjjo*temp var7 11\ejjjo\rNe\x80kb\x80kb\x80kbNew text.\r\e:w\r:q\r"
# }
post '/entry.json' do
  puts params.inspect

  {'status' => 'ok'}.to_json
end
