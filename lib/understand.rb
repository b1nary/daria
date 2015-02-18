module Daria
  module Understand

    # Auto listen to voice and understand
    def self.listen
      self.init
      resp = Wit.voice_query_auto($config['wit_ai']['server_token'])
      self.close
      resp
    end

    # Understand text
    def self.text text
      self.init
      resp = Wit.text_query(text, $config['wit_ai']['server_token'])
      self.close
      resp
    end

    private

    def self.init
      Wit.init
    end

    def self.close
      Wit.close
    end

  end
end
