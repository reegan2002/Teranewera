class CreateStudent < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :userid
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.string :fathername
      t.string :dept
      t.string :year
      t.string :sem
      t.string :libid
      t.string :bgroup
      t.string :email
      t.string :mobno
    end
  end
end
