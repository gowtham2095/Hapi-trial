DROP DATABASE IF EXISTS blogs;
CREATE DATABASE blogs;

\c blogs;

CREATE TABLE blogs (
  id SERIAL PRIMARY KEY,
  type TEXT,
  title VARCHAR,
  content VARCHAR,
  created_by TEXT,
  created_at TIMESTAMPTZ
);

INSERT INTO blogs (title, type, content, created_by, created_at)
  VALUES ('Boht Sundar Mcleodganj', 'Travelogue', '
Many beat-up travelers claim that the country of contrasts is India. It can be described as a rich land where poor people live. I did not have a chance to see this with my own eyes, but I was lucky to visit the place that greatly impressed me with its great diversities. Situated on the picturesque shore of the Black Sea, Koktebel is one of the most popular resorts in Crimea, and I really understand why.

When I visited it for the first time, I was astonished by its calmness. Being in the city was like being in a deep dream. One morning, the beaches were empty except for some romantic couples sitting on the sand with coffee thermoses, waiting for the sunrise. The lighting produced by the sunrise can be quite magical. Sadly, however, this most impressive part of the day occurs before many people wake up. But, thank goodness, that day I was among those people who set their alarm clocks a bit early to enjoy the beauty of the moment. I wondered why this place was known as “the land of the blue hills”. It would be better to call it “the land of the best sunrises”.

Nevertheless, I understood in just a few minutes. I looked away from the sunrise on the horizon and saw the heavy clouds invading the top of the mountains, covering them scene gave the impression of visiting the land of the blue hills.

After enjoying such an amazing scene, I went to the hotel to take a rest. There are several choices in which to stay in Koktebel. Accommodations can be either in a small hotel or in one of the hundreds of guesthouses run by local residents. It seems as though the whole population there turns into innkeepers in the summer. They gladly meet the tourists and do their best to satisfy all their needs. However, if you want to be closer to nature, you may stay in a tent camp. Staying in a tent is a great way to be in the fresh air. If you need camping assistance, many travelers are at your service to provide friendly and helpful advice. I thought that it would be great to stay in a camp next time.

When I decided to explore my recreation place, I took a walk in the direction of the bay. What I saw was a mixture of public and private beaches with a paved walkway all along the bay. This walkway was lined with small restaurants, cafes, kiosks, and small market areas selling all types of goods such as arts and crafts, dried fish, or slices of home-baked cake. I felt as if I was not in Ukraine, but abroad. The cuisine was predominantly Tatar, so I had a chance to enjoy these traditional dishes. Frankly speaking, I was surprised by the fact that I was in Ukraine, but there were only a few places where I could find Ukrainian food. Later the local people explained to me this phenomenon has a historical background.

Koktebel is known by making good wines and cognacs. So my advice to you, if you visit there one day, is to try the wine and take a bottle with you as a present for friends. A glass of red wine with a delightful supper in one of the small, quaint restaurants on the bay will make your evening unforgettable. To better experience this atmosphere, I went on an excursion at the wine and cognac factory. I saw the process of making such wonderful wines with my own eyes. The process is tough and requires much effort, but many years of constant practice shows the result.

In the evening, I decided to take a walk and relax. I was astonished by the fact that such a quiet place in the mornings came alive with many small music discos, drinks, food and entertainment in the evenings. The beachfront was alive; it was full of talented people presenting fire shows, singing and playing musical instruments. The atmosphere was amazing, and people were taking pictures of everything they saw, as all of us had a chance to watch a wonderful show.

Koktebel is now well-known for its jazz festival that usually takes place in the middle of September. Thankfully, I was lucky to experience this myself, as I came just in time. Ukraine hosts one of the largest music festivals in the world, with hundreds of music fans gathering there annually. As for me, I liked the festival for its unofficial and democratic spirit, induced by the place itself and the inspiring combination of jazz and the sea. The remarkable nature of the volcanic mountain range located near Koktebel, and the variety of wines and brandies grown in the vineyards nearby, completed the experience.', 'Hari', '2016-06-22 19:10:25-07');