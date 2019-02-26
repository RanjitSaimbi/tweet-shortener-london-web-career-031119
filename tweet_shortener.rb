require 'pry'
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end 

def word_substituter(tweet)
array = tweet.split(" ")
array.collect do |word|
  dictionary.collect do |key, value|
    if word == key 
      word.replace(value)
    end 
  end 
end 
array.join(" ") 
end 

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(array) 
   array.each do |tweet|
    if tweet.length > 140
      puts word_substituter(tweet) 
    end 
  end 
end 


