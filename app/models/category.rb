class Category < ActiveHash::Base
 self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '木工' },
   { id: 3, name: '陶器' },
   { id: 4, name: 'グラフィック' },
   { id: 5, name: '楽器' },
   { id: 6, name: '貴金属' },
   { id: 7, name: '小物' },
   { id: 8, name: 'おもちゃ' },
   { id: 9, name: 'その他' },
 ]

 include ActiveHash::Associations
 has_many :works
end
