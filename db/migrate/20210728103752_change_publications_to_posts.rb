class ChangePublicationsToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_table :publications, :posts
  end
end
