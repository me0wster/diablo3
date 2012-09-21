module ProfilesHelper
  
  def check_bliz_profile(profile)
    response = perform_call profile.profile_name
    if response.code == 200
      jsonResponse = JSON.parse(response.body)
      puts jsonResponse.inspect
      if jsonResponse['code']
        errors.add(:profile_name, 'could not be found')
      end
    else
      errors.add(:profile_name, 'Error connecting to Bliz')
    end  
  end
  
  def pull_from_bliz(profile)
    response = perform_call profile.profile_name
    if response.code == 200
      jsonResponse = JSON.parse(response.body)
      
      jsonResponse['heroes'].each do |hero|
        Hero.create!(
          :name => hero['name'],
          :dead => hero['dead'],
          :gender => hero['gender'],
          :hardcore => hero['hardcore'],
          :hero_class => hero['class'],
          :hero_id => hero['id'],
          :level => hero['level'],
          :paragon_level => hero['paragonLevel'],
          :profile => profile
        )
      end
    end
  end
  
  private
  def perform_call(profile_name)
    HTTParty.get('http://us.battle.net/api/d3/profile/' + profile_name + '/')
  end
end