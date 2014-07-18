require "jp_prefectures_tools/version"

module JpPrefecturesTools
  @prefectures = {
    "北海道"=>"札幌",
    "青森県"=>"青森",
    "岩手県"=>"盛岡",
    "宮城県"=>"仙台",
    "秋田県"=>"秋田",
    "山形県"=>"山形",
    "福島県"=>"福島",
    "茨城県"=>"水戸",
    "栃木県"=>"宇都宮",
    "群馬県"=>"前橋",
    "埼玉県"=>"さいたま",
    "千葉県"=>"千葉",
    "東京都"=>"東京",
    "神奈川県"=>"横浜",
    "新潟県"=>"新潟",
    "富山県"=>"富山",
    "石川県"=>"金沢",
    "福井県"=>"福井",
    "山梨県"=>"甲府",
    "長野県"=>"長野",
    "岐阜県"=>"岐阜",
    "静岡県"=>"静岡",
    "愛知県"=>"名古屋",
    "三重県"=>"津",
    "滋賀県"=>"大津",
    "京都府"=>"京都",
    "大阪府"=>"大阪",
    "兵庫県"=>"神戸",
    "奈良県"=>"奈良",
    "和歌山県"=>"和歌山",
    "鳥取県"=>"鳥取",
    "島根県"=>"松江",
    "岡山県"=>"岡山",
    "広島県"=>"広島",
    "山口県"=>"山口",
    "徳島県"=>"徳島",
    "香川県"=>"高松",
    "愛媛県"=>"松山",
    "高知県"=>"高知",
    "福岡県"=>"福岡",
    "佐賀県"=>"佐賀",
    "長崎県"=>"長崎",
    "熊本県"=>"熊本",
    "大分県"=>"大分",
    "宮崎県"=>"宮崎",
    "鹿児島県"=>"鹿児島",
    "沖縄県"=>"那覇"
  }

  def self.prefecture_name_to_city_name(prefecture_name)
    unless prefecture_name.match(/[都道府県]$/)
      case prefecture_name
      when "東京"
        prefecture_name += "都"

      when "北海"
        prefecture_name += "道"

      when "大阪"
        prefecture_name += "府"

      else
        prefecture_name += "県"
      end
    end
    prefecture_name += "府" if prefecture_name == "京都"

    return @prefectures[prefecture_name]
  end

  def self.city_name_to_prefecture_name(city_name)
    city_name.chop! if city_name.match(/市$/)

    @prefectures.each do |key, value|
      if value == city_name
        return key
      end
    end
    return nil
  end
end
