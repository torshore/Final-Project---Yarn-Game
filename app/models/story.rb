class Story < ApplicationRecord


  has_many :panels, dependent: :destroy
  has_many :choices, dependent: :destroy

  validates :title, length: { maximum: 75 }
  validates :tagline, length: { maximum: 140 }

  after_create :create_records



  private

 def create_records
    @panel1 = create_panel
    @panel2 = create_panel
    create_choice
  end

  def create_panel
    panels.create
  end

  def create_choice
    choices.create(panel_id: @panel1.id, path_to: @panel2.id, story_id: self)
  end
end
