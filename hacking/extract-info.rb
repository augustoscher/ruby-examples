def get_leads_query(lead_ids)
  {
    query: {
      ids: {
        type: "lead",
        values: lead_ids,
      },
    },
  }
end

def search_leads(lead_ids)
  start = Time.now
  indexed_leads_query = get_leads_query(lead_ids)
  result = Lead.search(indexed_leads_query, size: lead_ids.count, from: 0)
  r = result.search.execute!
  print "duration: #{Time.now - start}"
  r['hits']['hits'].map {|h| h['_source']['email'] } 
end

lead_ids = [79710834, 891324182, 891336932, 324071603, 704019459, 891335110, 888496916, 891344795, 702542261, 330994908, 822790892, 891325185, 891324381, 891324382, 891324383, 891324384, 891324385, 891324386, 855260524, 679818032, 891301879, 891344806, 891326575, 891326381]

search_leads(lead_ids)


Sem type: "lead"
duration: 0.071654439

Com type: "lead"
duration: 0.06695441

