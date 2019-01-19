json.array! @earned_books do |earned_book|
  json.id earned_book.id
  json.status earned_book.status
  json.user_id earned_book.user_id
  json.created_at earned_book.created_at
  json.updated_at earned_book.updated_at
end