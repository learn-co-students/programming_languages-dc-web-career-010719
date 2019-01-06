require 'pry'

def reformat_languages(languages)
  # your code here
  array = []
  new_hash= {}
  narray = []

languages[:oo].each do |language, type|
  type.each do |typelabel, data|
    array<<language
    new_hash[language] = type
end
end
array.each do |lang|
  new_hash[lang][:style] = [:oo]
end
languages[:functional].each do |language, type|
  type.each do |typelabel, data|
    narray<<language
    new_hash[language] = type
end
end

narray.each do |lang|
  if array.include?(lang) == true
    new_hash[lang][:style] = [:oo, :functional]
  else
  new_hash[lang][:style] = [:functional]
end
end
 new_hash
end
