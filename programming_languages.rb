require 'pry'



def reformat_languages(languages)
  new_hash = {}
  languages.each do |of, language|
    language.each do |name, type|
      if new_hash.has_key?(name)
        new_hash[name][:style] << of
      else
        new_hash[name] = type
        new_hash[name][:style] = [of]
      end
    end
  end
  return new_hash
end
