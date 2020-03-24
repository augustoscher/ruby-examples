conn = ActiveRecord::Base.connection
result = conn.execute "
SELECT 
accounts.id, accounts.name as account_name, accounts.internal, 
billing_plans.code as plan,
CASE WHEN billing_subscriptions.status = 'blocked' THEN 'inactive'
     WHEN billing_subscriptions.status = 'inactive' THEN 'inactive' 
     WHEN billing_subscriptions.status = 'ended' THEN 'inactive'
     ELSE 'active' END as status,
leads_managers.leads_count as leads
FROM accounts
INNER JOIN leads_managers ON leads_managers.account_id = accounts.id
INNER JOIN billing_subscriptions on billing_subscriptions.account_id = leads_managers.account_id
INNER JOIN billing_plans ON billing_plans.id = billing_subscriptions.plan_id
WHERE leads_managers.public_url_access=true 
ORDER BY 5 DESC, 6 DESC
"

items = []
result.each do |item|
  id = item['id']
  name = item['account_name']
  internal = item['internal'] == nil  ? false : item['internal']
  leads = item['leads'] == nil ? 0 : item['leads']
  status = item['status']
  plan = item['plan']
  h = {:id => id, :name => name, :internal => internal, :leads => leads, :status => status, :plan => plan }
  items.push(h)
  print(h)
  print "\n"
end

items.each do |i|
  print(i)
  print "\n"
end