# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Add initial role in database.

# Capistrano-rails-collection cammands
#cap production rails:rake:log:clear
#cap production rails:rake:tmp:clear
#cap production rails:rake:db:drop
#cap production rails:rake:db:reset
#cap production rails:rake:db:setup
#cap production rails:rake:db:seed
#cap production rails:rake:db:migrate
#cap production rails:rake:db:rollback


# Roles

unless Role.all.present?
    roles = Role.create(
        [
            {name: "superuser"},
            {name: "root"},
            {name: "guest"},
            {name: "user"},
            {name: "demo"}

            

        ])
else
    roles = Role.all

end



# Users
unless User.all.present?
    users = User.create([
        {login: "superuser",  email: "superuser@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "superuser").id},
        {login: "root",  email: "root@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "root").id},
        {login: "user",  email: "user@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "user").id},
        {login: "guest",  email: "guest@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "guest").id},
        {login: "demo",  email: "demo@gmail.com",  password: "demo2019", password_confirmation: "demo2019", role_id: Role.find_by(name: "superuser").id}


    
    ])
else   
    users = User.all
end



unless Service.all.present?
    services = Service.create(
        [

            {name: "Informatique" , user_id: users.first.id},
            {name: "Direction", user_id: users.first.id},
            {name: "Comptabilité", user_id: users.first.id}

        ])
else
    services = Service.all
end

unless Profile.all.present?
    profile = Profile.create([
        {
            first_name: "Amos",  
            last_name: "DEMBELE",
            service_id: services.first.id,   
            user_id: users.first.id
        },
        {
            first_name: "Alassane",  
            last_name: "BABY",
            service_id: services.first.id, 
            user_id: users.last.id
        }
    
    ])

end

unless ProductCategory.all.present?
	product_categories = ProductCategory.create([
	    {name: "INFORMATIQUE", user_id: users.first.id}, 
	    {name: "ELECTRONIQUE", user_id: users.first.id}
	])
else
	product_categories = ProductCategory.all
end


unless Unity.all.present?
	unities = Unity.create([
	    {name: "Unité", unity_symbol: "U", user_id: users.first.id}, 
	    {name: "Litre", unity_symbol: "L", user_id: users.first.id}
	])
else
	unities = Unity.all
end

unless MovementType.all.present?
	movement_types = MovementType.create([
	    {name: "Entrée", user_id: users.first.id}, 
	    {name: "Sortie",  user_id: users.first.id}
	])
else
	movement_types = MovementType.all 

end


unless StoreType.all.present?
	store_types = StoreType.create([
	    {name: "Magasin", user_id: users.first.id},
	    {name: "Parc", user_id: users.first.id}, 
	    {name: "Entrepôt",  user_id: users.first.id}
	])
else
	store_types = StoreType.all
end

unless Store.all.present?
	stores = Store.create([
	    {name: "NO-0001", store_type_id: store_types.first.id, address: "KALABAN COURA", user_id: users.first.id}, 
	    {name: "NO-0002", store_type_id: store_types.first.id, address: "KALABAN COURA", user_id: users.first.id}
	])
else
	stores = Store.all
end

unless CustomerType.all.present?
	customer_types = CustomerType.create([
	    {name: "Particulier", user_id: users.first.id}, 
	    {name: "Entreprise",  user_id: users.first.id}
	])
else
	customer_types = CustomerType.all
end

unless Customer.all.present?
	customers = Customer.create([
	    {
	        name: "LOGINEO",
	        customer_type_id: customer_types.first.id,  
	        user_id: users.first.id
	    }, 
	    {
	        name: "OUAGADOUSOFT", 
	        customer_type_id: customer_types.first.id, 
	        user_id: users.first.id
	    }
	])
else
	customers = Customer.all
end


unless ProviderType.all.present?
	provider_types = ProviderType.create([
	    {name: "Particulier", user_id: users.first.id}, 
	    {name: "Entreprise",  user_id: users.first.id}
	])
else
	provider_types = ProviderType.all
end


unless Provider.all.present?
	providers = Provider.create([
	    {
	        name: "MICROSOFT INC", 
	        provider_type_id: provider_types.first.id, 
	        user_id: users.first.id
	    }, 
	    {
	        name: "SAMSUNG", 
	        provider_type_id: provider_types.first.id,
	        user_id: users.first.id
	    }
	])
else
	providers = Provider.all
end

=begin
products = Product.create([
    {
        name: "TABLETTE SURFACE PRO 2", 
        product_category_id: product_categories.first.id, 
        unity_id: unities.first.id, 
        store_id: stores.first.id,
        unit_price: 200.0000,
        reorder_threshold: 100,
        user_id: users.first.id

    },
    {
        name: "SAMSUNG G9", 
        product_category_id: product_categories.last.id, 
        unity_id: unities.first.id, 
        store_id: stores.first.id,
        unit_price: 900.0000,
        reorder_threshold: 100,
        user_id: users.first.id

    }
])
=end