# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

root_and = HappyWeekNode.create(operator: 'AND')

first_or = HappyWeekNode.create(operator: 'OR', parent: root_and)
HappyWeekNode.create(activity: 'bike to work 3 days', parent: first_or)
HappyWeekNode.create(activity: 'go to the gym', parent: first_or)

second_and = HappyWeekNode.create(operator: 'AND', parent: root_and)
HappyWeekNode.create(activity: 'drink with friends', parent: second_and)

second_or = HappyWeekNode.create(operator: 'OR', parent: second_and)
HappyWeekNode.create(activity: 'tech tutorial', parent: second_or)
HappyWeekNode.create(activity: 'read a book', parent: second_or)
