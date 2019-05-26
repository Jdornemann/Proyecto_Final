# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#      movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FlatDetail.destroy_all
PropertyClaseType.destroy_all
PropertyCategory.destroy_all
PropertyType.destroy_all
StatusCleaning.destroy_all


    o =StatusCleaning.create!(status: "STAY_OVER")
    p = StatusCleaning.create!(status: "CHECKED OUT")
    q =StatusCleaning.create!(status: "CHECKED IN")
    s =StatusCleaning.create!(status: "CLEAN UP")

    x=PropertyClaseType.create!(clase_type: "A", description: "inmuebles ubicados en zonas premium")
    y=PropertyClaseType.create!(clase_type: "B", description: "inmuebles ubicados alrededor de las zonas premium")
    z=PropertyClaseType.create!(clase_type: "C", description: "inmuebles ubicados en el resto de las zonas")
    

    a = PropertyType.create!(description: "Casas")
    b =PropertyType.create!(description: "Departamento")
    c =PropertyType.create!(description: "Residencial")


    d = PropertyCategory.create!(category: "Duplex",property_type: a)
    e = PropertyCategory.create!(category: "Studio",property_type: b)
    f = PropertyCategory.create!(category: "Loft",property_type: c)
    g = PropertyCategory.create!(category: "Town House",property_type: a)

    
   user = Owner.find(1)
   user2 = Owner.find(2)
    FlatDetail.create!(name_alias: "Depto -Playa Condo Alto 654" \
                            , room_quantity: 2 \
                            , bathroom_quantity: 2 \
                            , bed_quantity: 2,area_size: 62, floor: 7 \
                            , unit_number: 7256 , address: "Carrion 752", country: "Chile" \
                            , city: "Santiago",business_purpose: "Arriendo Diario" \
                            , property_type: a, property_clase_type: x , property_category: d \
                            ,owner: user2 )

   
    FlatDetail.create!(name_alias: "Depto - Concon delux - Piso3" \
    , room_quantity: 2 \
    , bathroom_quantity: 2 \
    , bed_quantity: 2,area_size: 62, floor: 7 \
    , unit_number: 7256 , address: "Carrion 752", country: "Chile" \
    , city: "Santiago",business_purpose: "Arriendo Diario" \
    , property_type: b, property_category: e, property_clase_type: x,owner: user ) 
    
    FlatDetail.create!(name_alias: "Depto - Playa delux - Piso1" \
    , room_quantity: 2 \
    , bathroom_quantity: 2 \
    , bed_quantity: 2,area_size: 62, floor: 7 \
    , unit_number: 7256 , address: "Montecarlo 234", country: "Chile" \
    , city: "Santiago",business_purpose: "Arriendo Diario" \
    , property_type: b, property_category: e, property_clase_type: z,owner: user ) 
    
