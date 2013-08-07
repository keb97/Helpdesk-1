class Tickets2 < ActiveRecord::Migration
  def up

  		add_column :tickets, :answer, :string

  end

  def down
  end
end
