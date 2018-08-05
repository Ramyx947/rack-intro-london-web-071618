require 'spec_helper.rb'
require 'Rack'
describe "Application" do
  it "should introduce itself" do
    get "/"
    expect(last_response.body).to include ("Hello, my name is")
  end

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World"
    resp.finish
  end
end
