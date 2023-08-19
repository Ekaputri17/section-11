
SELECT users.name, users.id, products.user_id, products.category_id, categories.user_id FROM users 
LEFT JOIN products ON users.id = products.id
LEFT JOIN categories ON products.category_id  = categories.id 
ORDER BY users.id`tugas_left join`