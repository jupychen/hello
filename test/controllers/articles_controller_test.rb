require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  ## 请补充一下测试代码
  test "get index" do
    ## 创建10条数据
    10.times do |i|
      FactoryGirl.create(:article, title: "title-#{i}")
    end

    ## 访问 index
    get '/articles.json'
    ## 断言访问成功
    assert_response :success
    ## 断言接口返回的数据也有10条
    return_json = JSON.parse(@response.body)
    assert_equal return_json.length, 10
    ##以下可以添加自己需要的断言
  end
end
