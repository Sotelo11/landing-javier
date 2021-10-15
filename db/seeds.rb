# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create([
{
name: 'Los gallinazos',
description: 'Libro de cuentos',
price: 56,
publication_date: '1989-12-12',
author: 'Julio Ramon River'
},
{
name: 'Crepusculo',
description: 'Libro de vampiro',
price: 78,
publication_date: '2000-12-12',
author: 'John T. Green'
},
{
name: 'Quien se llevo mi queso',
description: 'Libro de autoayuda',
price: 30,
publication_date: '1990-12-12',
author: 'Ramon Roberts'
}

])