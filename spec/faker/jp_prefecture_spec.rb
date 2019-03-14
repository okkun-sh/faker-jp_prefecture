require "faker/jp_prefecture/constant"

RSpec.describe Faker::JpPrefecture::Prefecture do
  let(:prefecture_map) do
    prefecture_map = {}
    PREFECTURES.each do |pref|
      prefecture_map[pref[:code]] = pref
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
