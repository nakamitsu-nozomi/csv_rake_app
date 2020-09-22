namespace :greet do
 # タスクの説明 desc => description（説明）
 desc "helloを表示するタスク"
 # task_name => タスクの名前
 task say_hello: :environment do
  puts "hello"
 end 

 desc "goodbyeを表示するタスク"
 task say_goodbye: :environment do
  puts "goodbye"
 end 

end

namespace :greet_when_dating do

  desc "容姿を褒める"
  task praise_appearance: :environment do
    puts "You are beautiful"
  end  

  desc "ファッションを褒める"
  task praise_fashion: :environment do
    puts "That's fashionable"
  end  
  
end  
