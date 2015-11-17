require 'json'

class BfonBuilder
  attr_reader :bfon

  def initialize
    @bfon = {bfxm: {version: 1}}
  end

  def play(url)
    add({action: :play, args: {url: url}})
  end

  def gather(params = {})
    add(action: :gather, args: params)
  end

  def hangup
    add(action: :hangup)
  end

  def set_caller(name)
    add(action: :set_caller_name, args: {caller_name: name} )
  end

  def say(lang, text)
    add(action: :say, args: {lang: lang, text: text})
  end

  def dial(number)
    add(action: :say, args: {destination: number})
  end

  def build
    @bfon.to_json
  end


  private

    def add(bfon_action = {})
      @bfon[:seq] = [] unless @bfon.has_key?(:seq)
      @bfon[:seq] << bfon_action
      self
    end
end
