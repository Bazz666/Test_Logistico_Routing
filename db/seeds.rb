puts 'Running development seeds'

# Clean up database
puts 'Cleaning up the database...'

User.destroy_all
# Driver.destroy_all
Vehicle.destroy_all
Route.destroy_all
# Message.destroy_all
# Friend.destroy_all
# Conversation.destroy_all

# Reset postgres auto increments
# puts 'Resetting postgres auto increments...'
# User.connection.execute('ALTER SEQUENCE users_id_seq RESTART WITH 1')
# Driver.connection.execute('ALTER SEQUENCE drivers_id_seq RESTART WITH 1')
# Vehicle.connection.execute('ALTER SEQUENCE vehicles_id_seq RESTART WITH 1')
# Route.connection.execute('ALTER SEQUENCE routes_id_seq RESTART WITH 1')



puts'create vehicles...'

8.times do |i|
    Vehicle.create!(
        plate: "VE#{i}"
    )
end


