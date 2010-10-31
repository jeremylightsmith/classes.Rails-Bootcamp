# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Artist.destroy_all
Album.destroy_all

bob = Artist.create! :name => "Bob Dylan", :genre => "Rock"
bob.albums.create! :name => "The Essential Bob Dylan"
bob.albums.create! :name => "Together Through Life"
bob.albums.create! :name => "Highway 61 Revisited", :release_date => Date.parse("1965-01-01")
bob.albums.create! :name => "Christmas in the Heart"
bob.albums.create! :name => "The Freewheelin' Bob Dylan"
bob.albums.create! :name => "Bob Dylan's Greatest Hits", :release_date => Date.parse("1967-03-27")
bob.albums.create! :name => "Modern Times"
bob.albums.create! :name => "The Bootleg Series, Vol 8: Tell Tale Signs"
bob.albums.create! :name => "Blood on the Tracks"

jimi = Artist.create! :name => "Jimi Hendrix", :genre => "Rock"
jimi.albums.create! :name => "Experience Hendrix"
jimi.albums.create! :name => "Voodoo Child"

toad = Artist.create! :name => "Toad the Wet Sprocket", :genre => "Alternative"
toad.albums.create! :name => "Fear"
toad.albums.create! :name => "In the Light Syrup"
toad.albums.create! :name => "P.S."

