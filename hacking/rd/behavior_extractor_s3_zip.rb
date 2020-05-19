zipper          = Zip::CsvZipStream.new
zipper.filename = 'rdstation-campaign-behavior-extractor.csv'
zipper.prepare
zipper.start


campaigns = Campaign.where("created_at > CURRENT_DATE - INTERVAL '30 days'").select(:id, :name, :created_at, :selected_segmentations, :except_segmentations)

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
