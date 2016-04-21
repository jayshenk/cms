require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

get "/" do
  @files = Dir.glob("data/*").map { |file| File.basename(file) }.sort

  erb :list
end