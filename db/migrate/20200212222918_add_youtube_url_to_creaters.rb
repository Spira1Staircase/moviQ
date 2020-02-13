class AddYoutubeUrlToCreaters < ActiveRecord::Migration[5.2]
  def change
    add_column :creaters, :youtube_url, :string
  end
end
