Sequel.migration do
  up do
    create_table(:posts) do
      primary_key :id
      column :title, :text, :unique=>true
      column :body, :text, :unique=>true
    end
  end

  down do
    drop_table(:posts)
  end
end
