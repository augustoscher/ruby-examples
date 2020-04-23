# Mapping an specific segmentation
s = SegmentationList.where(segmentations_manager_id: a.segmentations_manager.id)
r = s.map{|seg| seg if seg[:name] == "teste-augusto-emailmkt"}.reject(&:nil?)
r[0][:name]

# Getting interest_score_hash
a = Account.find(id)
lsm = a.lead_scoring_manager
lsm.interest_score.scoring_hash[:groups]

# returns scoring_hash
LeadScoring::InterestScoreGroup.first.scoring_hash

ls = LeadScoring::InterestScore.where(lead_scoring_manager_id: lsm.id)
lsg = LeadScoring::InterestScoreGroup.where(interest_score_id: ls.interest_score.id)
lsc = LeadScoring::InterestScoreCategory.where(interest_score_group_id: lsg.id)
events = LeadScoring::InterestScoreEvent.where(interest_score_category_id: lsc.id)

conn = ActiveRecord::Base.connection
result = conn.execute "SELECT id, identifier FROM lead_scoring_interest_score_events WHERE interest_score_category_id IN (SELECT id FROM lead_scoring_interest_score_categories WHERE interest_score_group_id IN (SELECT id FROM lead_scoring_interest_score_groups WHERE interest_score_id = id AND title ILIKE '%title%'))"

result.each do |item|
  print item
  print "\n"
end

r = result.map {|item| item if item['identifier'].blank? }.reject(&:nil?)

ise = LeadScoring::InterestScoreEvent.find(2768268)
ise.interest_score_category_id = nil
ise.save






