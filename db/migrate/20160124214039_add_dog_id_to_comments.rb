class AddDogIdToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :dog, index: true, foreign_key: true
  end
end
