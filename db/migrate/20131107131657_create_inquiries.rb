class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.boolean :answer
      t.string :remark

      t.timestamps
    end
  end
end
