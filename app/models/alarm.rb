class Alarm < ApplicationRecord
  require 'net/http'

  has_many :upvotes

  before_save :upper_case
  after_commit :post_to_API

  def upper_case
    self.message = self.message.to_s.upcase
  end

  def post_to_API
    uri = URI('https://bellbird.joinhandshake-internal.com/push')
    res = Net::HTTP.post_form(uri, 'id' => self.id)
    if res.code == '200'
      puts "post id #{self.id} posted with a 200 response"
    else
      puts "post id #{self.id} failed with a response code of #{ res.code }"
    end
  end
end
