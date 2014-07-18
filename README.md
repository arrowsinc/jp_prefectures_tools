# JpPrefecturesTools

This is a tools of prefectures of Japan.

## インストール

Add this line to your application's Gemfile:

    gem 'jp_prefectures_tools'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jp_prefectures_tools

## 使い方
### ライブラリの読み込み
```ruby
require 'jp_prefectures_tools'
```

#### 都道府県名から県庁所在地名を取得

JpPrefecturesTools::prefecture_name_to_city_name を使う。

```
# 都道府県名を渡すと県庁所在地名が返ってくる。
JpPrefecturesTools::prefecture_name_to_city_name("北海道")
=> "札幌"

# 都, 道, 府, 県は省略してもOK
JpPrefecturesTools::prefecture_name_to_city_name("千葉")
=> "千葉"

# 都道府県名じゃない文字列を渡すと、 nil を返す。
JpPrefecturesTools::prefecture_name_to_city_name("うどん県")
=> nil
```

#### 県庁所在地名から都道府県名を取得

JpPrefecturesTools::city_name_to_prefecture_name を使う。

```ruby
# 県庁所在地名を入れると都道府県名が返ってくる。
JpPrefecturesTools::city_name_to_prefecture_name("那覇市")
=> "沖縄県"

# '市'は省略してもOK
JpPrefecturesTools::city_name_to_prefecture_name("札幌")
=> "北海道"

# 県庁所在地名じゃない文字列を渡すと、 nil を返す。
JpPrefecturesTools::city_name_to_prefecture_name("千歳市")
=> nil
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/jp_prefectures_tools/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
