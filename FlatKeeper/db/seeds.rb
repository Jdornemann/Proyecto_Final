# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#      movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FlatDetail.destroy_all
PropertyClass.destroy_all
PropertyCaterory.destroy_all
PropertyType.destroy_all

    PropertyClass.create!(class: "A", description: "inmuebles ubicados en zonas premium")
    PropertyClass.create!(class: "B", description: "inmuebles ubicados alrededor de las zonas premium")
    PropertyClass.create!(class: "C", description: "inmuebles ubicados en el resto de las zonas")
    
    PropertyCaterory.create!(category: "Duplex",type: 2 )
    PropertyCaterory.create!(category: "Studio",type: 2)
    PropertyCaterory.create!(category: "Loft",type: 2)
    PropertyCaterory.create!(category: "Town House",type: 1)

    
    PropertyType.create!(description: "Casas")
    PropertyType.create!(description: "Departamento")
    PropertyType.create!(description: "Residencial")


    FlatDetail.create!(name_alias: "Depto -Playa Condo Alto 654" \
                            , room_quantity: 2 \
                            , bed_quantity: 2,area_size: 62, floor: 7 \
                            , unit_number: 7256 , address: "Carrion 752", country: "Chile" \
                            , city: "Santiago",business_purpose: "Arriendo Diario" \
                            , type: 1, category: 1, class: "B" )
   

    FlatDetail.create!(name_alias: "Depto - Playa Marbella 342 - Piso3" \
    , room_quantity: 2 \
    , bed_quantity: 2,area_size: 62, floor: 7 \
    , unit_number: 7256 , address: "Carrion 752", country: "Chile" \
    , city: "Santiago",business_purpose: "Arriendo Diario" \
    , type: 2, category: 1, class: "B" )
    
    FlatDetail.create!(name_alias: "Depto - Playa Marbella 342 - Piso3" \
    , room_quantity: 2 \
    , bed_quantity: 2,area_size: 62, floor: 7 \
    , unit_number: 7256 , address: "Carrion 752", country: "Chile" \
    , city: "Santiago",business_purpose: "Arriendo Diario" \
    , type: 3, category: 4, class: "B" )
    
