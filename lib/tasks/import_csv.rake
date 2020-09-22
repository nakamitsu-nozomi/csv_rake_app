require 'csv'
namespace :import_csv do
  desc "csvファイルをインポートするタスク"
  task users: :environment do
    path = File.join Rails.root, "db/csv_data/csv_data.csv"
    list=[]
    CSV.foreach(path,headers: true) do |row|
      list << {
        name: row["name"],
        age: row["age"],
        address: row["address"]
      }
    end  
    puts "インポート処理開始".red
    begin
      User.transaction do
        # 例外が発生する可能性のある処理
        User.create!(list)
      end  
      # 正常に動作した場合の処理
      puts "インポート完了".green
      # 例外処理
      rescue ActiveModel::UnknownAttributeError => invalid
      # 例外が発生した場合の処理
      # インポートができなかった場合の例外処理
      puts "インポート失敗:UnknownAttributeError".red
    end    
  end
end
