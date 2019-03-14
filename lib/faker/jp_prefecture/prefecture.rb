require "faker/jp_prefecture/constant"

class Faker::JpPrefecture::Prefecture
  def self.all
    PREFECTURES.sample
  end
end