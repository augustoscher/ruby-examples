#EXECUTION EXAMPLE
## e = CampaignInfoExtractor.new 30
## e.execute

class CampaignInfoExtractor
  SEPARATOR = ';'
  HR = '-------------------------------------------------'

  def initialize(last_considered_days)
    @last_considered_days = last_considered_days
  end

  def execute
    export Campaign.where("created_at > CURRENT_DATE - INTERVAL '#{@last_considered_days} days'")
                   .select(:id, :name, :selected_segmentations, :except_segmentations)
  end

  private

  def export(campaigns)
      rows = []

      campaigns.each do |campaign|
          rows << [
            campaign.id,
            campaign.name,
            campaign.selected_segmentations.size,
            campaign.except_segmentations.size
          ]
      end

      puts HR
      puts 'id;name;selected_segmentations;except_segmentations'
      rows.each do |r| puts r.join(SEPARATOR) end
      puts HR
  end
end
