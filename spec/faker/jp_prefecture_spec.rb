require "faker/jp_prefecture/constant"
require "ostruct"

RSpec.describe Faker::JpPrefecture::Prefecture do
  let(:prefecture_map) do
    prefecture_map = {}
    PREFECTURES.each do |pref|
      prefecture_map[pref[:code]] = OpenStruct.new(:code => pref[:code], :name => pref[:name], :name_e => pref[:name_e], :name_f => pref[:name_f])
    end

    prefecture_map
  end

  context "generate fake data" do
    context "#all" do
      it "" do
        pref = Faker::JpPrefecture::Prefecture.all
        expect(pref).to eq prefecture_map[pref[:code]]
      end
    end
  end
end
