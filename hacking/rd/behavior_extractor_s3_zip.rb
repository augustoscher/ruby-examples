#EXECUTION EXAMPLE
## e = CampaignInfoExtractorS3Bucket.new 2
## e.execute

class CampaignInfoExtractorS3Bucket

  def initialize(last_considered_days)
    @last_considered_days = last_considered_days
  end

  def execute
    export Campaign.where("created_at > CURRENT_DATE - INTERVAL '#{@last_considered_days} days'")
                   .select(:id, :name, :created_at, :selected_segmentations, :except_segmentations)
  end

  private

  def export(campaigns)
    zipper = Zip::CsvZipStream.new
    zipper.filename = 'rdstation-campaign-behavior-extractor.csv'
    zipper.prepare
    zipper.start

    zipper << %w(id, created_at, selected_segmentations, except_segmentations)

    campaigns.each do |campaign|
      zipper << [
        campaign.id,
        campaign.name,
        campaign.selected_segmentations.size,
        campaign.except_segmentations.size
      ]
    end

    file = zipper.wait_until_finished!
    aws  = Aws::S3::Resource.new(region: 'us-east-1').bucket('rdstation-sandbox')
    obj  = aws.object('rdstation-campaign-behavior-extractor.zip')
    obj.upload_file(file, acl: 'public-read')
    obj.public_url
  end
end
