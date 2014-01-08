class Location < ActiveRecord::Base

geocoded_by :adresse
validates_presence_of :strasse, :hausnummer, :stadt
validates_numericality_of :plz, in: 1001..9999
#validates_attachment :image,
 # :content_type => { :content_type => ["image/jpg", "image/gif", "image/png"] }

def adresse
 [strasse, hausnummer, plz, stadt].compact.join(', ')
end


after_validation :geocode , :if => :strasse_changed?

has_many :comments , :order => 'created_at DESC'
has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }


end
