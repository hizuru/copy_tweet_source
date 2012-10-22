# -*- coding: utf-8 -*-

Plugin.create(:copy_tweet_source) do
  command(:copy_tweet_source,
          name: 'ツイートのviaをコピー',
          condition: Plugin::Command[:HasMessage],
          visible: true,
          role: :timeline) do |m|
    m.messages.map do |msg|
      Gtk::Clipboard.copy(msg.message[:source])
    end
  end
end
