def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, attributes|
      if new_hash.keys.include?(name)
        new_hash[name][:style] << style
      else
        new_hash[name] = {
          :type => attributes[:type],
          :style => [style]
        }
      end
    end
  end

  new_hash
end
