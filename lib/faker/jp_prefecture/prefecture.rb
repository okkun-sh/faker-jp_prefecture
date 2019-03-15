require "faker/jp_prefecture/constant"
require "ostruct"

class Faker::JpPrefecture::Prefecture
  def self.all
    pref_hash = PREFECTURES.sample
    prefecture = OpenStruct.new(:code => pref_hash[:code], :name => pref_hash[:name], :name_e => pref_hash[:name_e], :name_f => pref_hash[:name_f])
  end
end