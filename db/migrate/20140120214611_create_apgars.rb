class CreateApgars < ActiveRecord::Migration
  def change
    create_table :apgars do |t|
      t.datetime :afterbir		#Час після народження
      t.integer  :sercebitia	#Серцебиття
      t.string   :duhania		#Дихання СС
      t.integer  :colorshkiru	#Колір шкіри СС
      t.integer  :tonysmiaziv	#Тонус мязів СС
      t.integer  :reflexy		#Рефлекси
      t.integer  :mark			#Оцінка в балах
      t.timestamps
    end
  end
end