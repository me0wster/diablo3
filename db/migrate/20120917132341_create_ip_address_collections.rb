class CreateIpAddressCollections < ActiveRecord::Migration
  def change
    create_table :ip_address_collections do |t|
      t.string :ip_address
      t.string :items

      t.timestamps
    end
  end
end
