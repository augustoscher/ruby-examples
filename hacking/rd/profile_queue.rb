def profile_queue
  redis = RedisFactory.default_client
  start_time = Time.now
  count = redis.llen('mailcannon:queue:lead_base_tag_processor')
  loop do
      puts ""	
      puts "Jobs: #{count}"
      puts "#Duration: #{(Time.now - start_time)} s"

      break if count == 0
      count = redis.llen('mailcannon:queue:lead_base_tag_processor')
      sleep(1)
  end
end
