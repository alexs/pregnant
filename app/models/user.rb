
class User < ActiveRecord::Base
  # Virtual attribute for the unencrypted password
 acts_as_authentic
  searchable_by :paterno, :materno, :name, :login, :email, :rfc

  has_many :detections
  has_many :laboratories
  has_many :meetings
  has_many :controlcards
  has_many :consultcards

  belongs_to :group
  belongs_to :dependency

  validates_presence_of     :login #, :email
#  validates_presence_of     :password
#  validates_presence_of     :password_confirmation
#  validates_length_of       :password, :within => 4..40
  validates_confirmation_of :password
  validates_length_of       :login,    :within => 3..40
  attr_accessible :login, :email, :password, :password_confirmation, :group_id, :paterno, :materno, :name, :dependency_id, :rfc, :cedula
#  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_format_of :login, :with => /^[A-Za-z.\d_]+$/, :message => "sin espacios"

  # Authenticates a user by their login name and unencrypted password.  Returns the user or nil.



 def full_name
   "#{self.name} #{self.paterno} #{self.materno}"
  end

  def short_name
   "#{self.name} #{self.paterno}"
  end


  def user_incharge
     if self.group.id == 3
       @total_users = User.find(:all, :order => 'dependency_id DESC')
  else

       dependencies =  self.dependency_incharge
       @total_users = []
         dependencies.each { |d|
        @users = User.find(:all, :conditions => ["dependency_id =?", d.id])
        @users.each { |user|
          @total_users << user
        }
      }
   end
    return @total_users
  end

  def dependency_incharge
   if self.group.id == 3
    @dependencies = Dependency.find(:all, :order =>'name ASC' )
  else
    @dependencies =  Dependency.find(:all, :order =>'name ASC' ,:conditions => ["dependency_id = ?  or id  = ?", self.dependency_id, self.dependency.id])
   end
   return @dependencies
  end

end
