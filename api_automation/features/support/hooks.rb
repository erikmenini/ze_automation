# frozen_string_literal: true

Before do |_feature|

    @base_uri = CONFIG['url_default'].to_s
    @apiKey = CONFIG['key']
    @auth = Auth.new(@base_uri)
    @weather = Weather.new(@base_uri, @apiKey)
  end
  