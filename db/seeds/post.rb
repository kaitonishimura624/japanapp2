Post.create!(
  [
    {
      title: 'Osaka',
      body: 'I had fun!!!!',
      image: File.open('app/assets/images/guriko.jpg'),
      user_id: 1,
    },
    {
      title: 'Tokyo',
      body: 'I had fun!!!!',
      image: File.open('app/assets/images/tokyo tower.jpg'),
      user_id: 2,
    },
    {
      title: 'MT.Fuji',
      body: 'I had fun in Fuji!!!!',
      image: File.open('app/assets/images/fuji.jpg'),
      user_id: 3,
    },
    {
      title: 'Tokyo',
      body: 'Asakusa!!!!',
      image: File.open('app/assets/images/asakusa_station.jpg'),
      user_id: 1,
    },
    {
      title: 'USJ',
      body: 'I had fun in Osaka!!!!',
      image: File.open('app/assets/images/usj.jpg'),
      user_id: 2,
    },
  ]
)

