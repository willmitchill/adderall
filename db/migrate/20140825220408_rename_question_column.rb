class RenameQuestionColumn < ActiveRecord::Migration

    def change
      rename_column :questions, :quesiton, :question
    end

end
