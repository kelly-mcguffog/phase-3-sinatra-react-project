puts "🌱 Seeding spices..."

# Seed your database here

# 50.times do
#     artist = Artist.create(
#         name: Faker::Artist.name,
#         bio: Faker::Lorem.paragraph,
#         birth_date: Faker::Date.between(from: '1900-09-23', to: '1930-09-25'),
#         death_date: Faker::Date.between(from: '1931-09-23', to: '2022-09-25'),
#         headshot_url: Faker::Avatar.image
#     )

#     rand(5..10).times do
#         Artwork.create(
#             title: Faker::Book.title,
#             description: Faker::Lorem.paragraph,
#             medium: Faker::Lorem.sentence(word_count:3),
#             price: rand(10000..100000),
#             date_created: Faker::Date.between(from: '1920-09-23', to: '2014-09-25'),
#             image_url: Faker::Placeholdit.image,
#             artist_id: artist.id
#         )
#     end
# end

picasso = Artist.create(
    name: "Pablo Picasso",
    bio: "Pablo Picasso was the most dominant and influential artist of the first half of the 20th century. Associated most of all with pioneering Cubism, alongside Georges Braque, he also invented collage and made major contributions to Symbolism and Surrealism. He saw himself above all as a painter, yet his sculpture was greatly influential, and he also explored areas as diverse as printmaking and ceramics. Finally, he was a famously charismatic personality; his many relationships with women not only filtered into his art but also may have directed its course, and his behavior has come to embody that of the bohemian modern artist in the popular imagination.",
    birth_date: "1881-10-25",
    death_date: "1973-04-08",
    headshot_url: "https://media.vogue.fr/photos/5c3610acab85fd6f0e99b2eb/3:2/w_2579,h_1719,c_limit/picasso_3358.jpeg?lang=eng"
)

Artwork.create(
    title: "Les Demoiselles d'Avignon",
    description: "This painting was shocking even to Picasso's closest artist friends both for its content and its execution. The subject matter of nude women was not in itself unusual, but the fact that Picasso painted the women as prostitutes in aggressively sexual postures was novel. Picasso's studies of Iberian and tribal art is most evident in the faces of three of the women, which are rendered as mask-like, suggesting that their sexuality is not just aggressive, but also primitive. Picasso also went further with his spatial experiments by abandoning the Renaissance illusion of three-dimensionality, instead presenting a radically flattened picture plane that is broken up into geometric shards, something Picasso borrowed in part from Paul Cézanne's brushwork. For instance, the leg of the woman on the left is painted as if seen from several points of view simultaneously; it is difficult to distinguish the leg from the negative space around it making it appear as if the two are both in the foreground."+"\n"+"The painting was widely thought to be immoral when it was finally exhibited in public in 1916. Braque is one of the few artists who studied it intently in 1907, leading directly to his Cubist collaborations with Picasso. Because Les Demoiselles predicted some of the characteristics of Cubism, the work is considered proto or pre Cubism.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1907,
    image_url: "https://smarthistory.org/wp-content/uploads/2021/12/23401375822_3dca5ac5ce_k.jpg",
    artist_id: picasso.id
)
Artwork.create(
    title: "Guernica",
    description: "This painting was Picasso's response to the bombing of the Basque town named Guernica on April 26, 1937 during the Spanish Civil War. Painted in one month - from May to June 1937 - it became the centerpiece of the Spanish pavilion at the Paris World's Fair later that year. While it was a sensation at the fair, it was consequently banned from exhibition in Spain until military dictator Francisco Franco fell from power in 1975. Much time has been spent trying to decode the symbolism of the picture, and some believe that the dying horse in the center of the painting alludes to the people of Spain. The minotaur may allude to bull fighting, a favorite national past-time in Spain, though it also had complex personal significance for the artist. Although Guernica is undoubtedly modern art's most famous response to war, critics have been divided on its success as a painting.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1937,
    image_url: "http://cdn.shopify.com/s/files/1/0849/4704/files/guernica_sartle.jpg?v=1582528493",
    artist_id: picasso.id
)
Artwork.create(
    title: "The Soup",
    description: "La Soupe is characteristic of the somber melancholy of Picasso's Blue Period, and it was produced at the same time as a series of other pictures devoted to themes of destitution, old age, and blindness. The picture conveys something of Picasso's concern with the miserable conditions he witnessed while coming of age in Spain, and it is no doubt influenced by the religious painting he grew up with, and perhaps specifically by El Greco. But the picture is also typical of the wider Symbolist movement of the period. In later years Picasso dismissed his Blue Period works as 'nothing but sentiment'; critics have often agreed with him, even though many of these pictures are iconic, and of course, now unbelievably expensive.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1902,
    image_url: "https://www.pablopicasso.org/images/paintings/the-soup.jpg",
    artist_id: picasso.id
)
Artwork.create(
    title: "Ma Jolie",
    description: "In this work, Picasso challenges the distinction between high art and popular culture, pushing his experiments in new directions. Building on the geometric forms of Les Demoiselles d'Avignon, Picasso moves further towards abstraction by reducing color and by increasing the illusion of low-relief sculpture. Most significantly, however, Picasso included painted words on the canvas. The words, 'ma jolie' on the surface not only flatten the space further, but they also liken the painting to a poster because they are painted in a font reminiscent of one used in advertising. This is the first time that an artist so blatantly uses elements of popular culture in a work of high art. Further linking the work to pop culture and to the everyday, 'Ma Jolie' was also the name of a popular tune at the time as well as Picasso's nickname for his girlfriend.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1911,
    image_url: "https://www.theartstory.org/images20/works/picasso_pablo_7.jpg?2",
    artist_id: picasso.id
)
Artwork.create(
    title: "Large Nude in a Red Armchair",
    description: "When Picasso's work came under the influence of the Surrealists in the late 1920s, his forms often took on melting, organic contours. This work was completed in May 1929, around the same time the Surrealists were preoccupied with the way in which ugly and disgusting imagery might provide a route into the unconscious. It was clearly intended to shock, and it may have been influenced by Salvador Dalí - and Joan Miro. It is thought that the picture represents the former dancer Olga Koklova, whose relationship with Picasso was failing around this time.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1929,
    image_url: "https://uploads7.wikiart.org/images/pablo-picasso/large-nude-in-red-armchair-1929.jpg!Large.jpg",
    artist_id: picasso.id
)

warhol = Artist.create(
    name: "Andy Warhol",
    bio: "Andy Warhol was the most successful and highly paid commercial illustrator in New York even before he began to make art destined for galleries. Nevertheless, his screenprinted images of Marilyn Monroe, soup cans, and sensational newspaper stories, quickly became synonymous with Pop art. He emerged from the poverty and obscurity of an Eastern European immigrant family in Pittsburgh, to become a charismatic magnet for bohemian New York, and to ultimately find a place in the circles of High Society. For many his ascent echoes one of Pop art's ambitions, to bring popular styles and subjects into the exclusive salons of high art. His crowning achievement was the elevation of his own persona to the level of a popular icon, representing a new kind of fame and celebrity for a fine artist.",
    birth_date: "1928-08-06",
    death_date: "1987-02-22",
    headshot_url: "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1500w,f_auto,q_auto:best/rockcms/2022-03/220309-andy-warhol-diaries-mjf-1555-a4ddaa.jpg"
)

Artwork.create(
    title: "Campbell's Soup I",
    description: "By the 1960s, the New York art world was in a rut, the very original and popular canvases of the Abstract Expressionists of the 1940s and '50s had become cliché. Warhol was one of the artists that felt the need to bring back imagery into his work. The gallery owner and interior designer Muriel Latow gave Warhol the idea of painting soup cans, when she suggested to him that he should paint objects that people use every day (it is rumored that Warhol ate the soup for lunch every single day). He painted Campbell's soup cans, Brillo boxes, and Coca-Cola bottles from 1962 onward."+"\n"+"Warhol started his career and became an extremely successful consumer ad designer. Here, he used the techniques of his trade to create an image that is both easily recognizable, but also visually stimulating. Consumer goods and ad imagery were flooding the lives of Americans with the prosperity of that age and Warhol set out to subtly recreate that abundance, via images found in advertising. He recreated on canvas the experience of being in a supermarket. So, Warhol is credited with envisioning a new type of art that glorified (and also criticized) the consumption habits of his contemporaries and consumers today.",
    medium: "Screenprint",
    price: rand(10000..100000),
    year_created: 1968,
    image_url: "https://www.theartstory.org/images20/works/warhol_andy_1.jpg",
    artist_id: warhol.id
)
Artwork.create(
    title: "Gold Marilyn Monroe",
    description: "After her sudden death from an overdose of sleeping pills in August 1962, superstar Marilyn Monroe's life, career, and tragedy became a worldwide obsession. Warhol, being infatuated with fame and pop culture, obtained a black-and-white publicity photo of her (from her 1953 film Niagara) and used the photo to create several series of images. A common idea to all the Marilyn works was that her image was reproduced over and over again as one would find it reprinted in newspapers and magazines at the time. After viewing dozens, or hundreds of such images, a viewer stops seeing a person depicted, but is left with an icon of popular, consumer culture. The image (and the person) become another cereal box on the supermarket shelf, one of hundreds of boxes - which are all exactly the same."+"\n"+"In Gold Marilyn Monroe, Warhol further plays on the idea iconography, placing Marilyn's face on a very large golden-colored background. The background is reminiscent of Byzantine religious icons that are the central focus in Orthodox faiths to this day. Only instead of a god, we are looking at an image (that becomes a bit garish upon closer inspection) of a woman that rose to fame and died in horrible tragedy. Warhol subtly comments on our society, and its glorification of celebrities to the level of the divine. Here again the Pop artist uses common objects and images to make very pointed insights into the values and surroundings of his contemporaries.",
    medium: "Silkscreen",
    price: rand(10000..100000),
    year_created: 1962,
    image_url: "https://www.theartstory.org/images20/works/warhol_andy_3.jpg",
    artist_id: warhol.id
)
Artwork.create(
    title: "Self-Portrait",
    description: "Warhol's self portraits that he created throughout his career reveal an underlying theme. It can be argued that Warhol's most successful artwork was the image of himself, invented and reinvented over his body of work. Simply consider the fact that Warhol started his art career as a nerdy, shy, balding designer and ended it as a star whose popularity could match his greatest depictions (Monroe, Elvis, Mao)."+"\n"+"In this particular work, the focus is on Warhol's head and wig (one of dozens he wore over the years). By using repetitive images, each slightly different to the next, and then overlapping the images, Warhol produces the illusion of movement. Created towards the end of his life, Self-Portrait displays the artist in his signature wig, and also makes dramatic use of shadow and light.",
    medium: "Synthetic polymer paint and silkscreen ink on canvas",
    price: rand(10000..100000),
    year_created: 1986,
    image_url: "https://artsnapperrecs.files.wordpress.com/2012/05/andy-warhol-self-portrait-1986.jpg",
    artist_id: warhol.id
)
Artwork.create(
    title: "The Last Supper",
    description: "Behind Warhol's silver wig and black glasses (of Campbells Soup, Marylin, and drug/sex film fame) was a devout Catholic who went to mass and volunteered at homeless shelters regularly. Warhol's mother was a very religious woman who instilled in him a connection to the church."+"\n"+"Warhol's religiosity is most exemplified by the late works that he created based on Leonardo Da Vinci's The Last Supper (1495–1498). Warhol based his works on a black and white photograph of a popular 19th century engraving and ended up producing over a hundred drawings, paintings, and silkscreens of the Renaissance masterpiece. From superimposing brand names over the faces of the apostles, to cutting up the unity of the scene, Warhol honored the original painting while adding it into his business enterprise.",
    medium: "Synthetic polymer paint and silkscreen ink on canvas",
    price: rand(10000..100000),
    year_created: 1986,
    image_url: "https://artlogic-res.cloudinary.com/w_2400,h_2400,c_limit,f_auto,fl_lossy,q_auto/ws-artlogicwebsite1062/usr/library/images/main/news/31/the-last-supper.jpg",
    artist_id: warhol.id
)
Artwork.create(
    title: "Brillo Boxes",
    description: "Still using the silkscreen technique, this time on plywood, Warhol presented the viewer with exact replicas of commonly used products found in homes and supermarkets. This time, his art pieces are stackable, they are sculptures that can be arranged in various ways in the gallery - yet each box is exactly the same, one is no better than another. Rather than the series of slightly different paintings that have been made by many famous artists (think Monet's haystacks or cathedrals) Warhol makes the point that these products are all the same and (in his opinion) they are beautiful! Making these items in his 'factory' Warhol again makes fun of (or brilliantly provokes) the art world and the artist-creator."+"\n"+"With Brillo Boxes, Warhol also has a personal connection. Warhol was originally from Pittsburg - steel city, the commodity that made the city prosperous and later quite depressed. Brillo is steel wool, a product stereotypically used by housewives to keep cookware shining in their lovely American homes. Did Warhol like the product itself, think the store displays for the product ridiculous, or as a gay man, did he enjoy the contrast of steel and wool, in one friendly package?",
    medium: "Acrylic silkscreen on wood",
    price: rand(10000..100000),
    year_created: 1964,
    image_url: "https://cdn.sanity.io/images/dqllnil6/production/fb44ebe9eb457ceca55c271bf96e8176f63aa789-700x525.jpg?w=1920&q=60&auto=format",
    artist_id: warhol.id
)
Artwork.create(
    title: "Mao",
    description: "Warhol combines paint and silkscreen in this image of Mao Zedong, a series that he created in direct reaction to President Richard Nixon's 1972 visit to China. Warhol took the black and white image of Mao from his Little Red Book (Mao's famous communist publication), and created hundreds of different sized canvases of the totalitarian ruler. Some of these paintings are as large as 15 feet x 10 feet, a scale evoking the dominating nature of Mao's rule over China and the awesome cult of personality Mao wielded. This monumental size also echoes the towering propagandistic representations that were being displayed throughout China during the Cultural Revolution. But by creating hundreds of such images, and lining them up on the wall, Warhol made the image of Mao into a supermarket product - like Coca-Cola bottles - lined up on the shelves (and available in small, medium, and large). Warhol's Mao is now a consumer product, a basic building block of capitalism - or the very idea that communism is against."+"\n"+"Warhol goes even further. The graffiti-like splashes of color, the red rouge and blue eye shadow, literally 'de-faces' Mao's image - an act of rebellion against the Communist propaganda machine by using its own heralded image against itself. Warhol uses modernist art devices such as expressionistic brushstrokes around Mao's face as a further pun: the brushstrokes are a sign of personal expression and artistic freedom - the very ideas that Mao's Cultural Revolution was against.",
    medium: "Synthetic polymer paint and silkscreen ink on canvas",
    price: rand(10000..100000),
    year_created: 1973,
    image_url: "https://www.artic.edu/iiif/2/97cb5c4b-cce5-c4d8-f303-613ce92832c7/full/843,/0/default.jpg",
    artist_id: warhol.id
)

koons = Artist.create(
    name: "Jeff Koons",
    bio: "Deriving inspiration from everyday items including children's toys, cartoon characters, porcelain figurines, and party decorations, Koons' appropriates advertising campaigns and consumer goods alike. In doing so, he initiates a dialogue about the role of material objects in our lives and the consumerism of society as a whole. Many of his pieces look cheap, but are expensive, an ingenious reversal of economic logic that forms the basis for his commercial success. Rather than offending the art snob, Koons has challenged top collectors to revise their notions of what is fine art. This marketing strategy has been very successful, and his work garners some of the highest prices of any living artist. A significant departure from the modernist ideal of the misunderstood visionary, Koons is the anti-modernist, a shrewd, self-proclaimed crowd-pleaser, and avid promoter of his own work. This has made him a very divisive figure in the art world and he has drawn criticism for the kitsch, crude nature of his art, and the objectification of women in many of his pieces.",
    birth_date: "1955-01-21",
    death_date: "",
    headshot_url: "https://blog.artsper.com/wp-content/uploads/2014/11/jeff-koons-to-design-lady-gaga-sculpture-for-artpop-0.jpg"
)
Artwork.create(
    title: "Michael Jackson and Bubbles",
    description: "Michael Jackson and Bubbles is an expression of Koons' abiding interest in flouting the conventions of good taste. It forms part of his Banality series, where he created giant porcelain sculptures which alluded to cheap, collectible figurines. As many of the sculptures were based on other original artworks, this led to a number of copyright lawsuits, all of which Koons lost. This ornate, slightly larger-than-life-sized sculpture, on the other hand, is based on a press photograph of the pop star and his pet monkey. Whilst it projects a garish charm, there is no clear message here and certainly no irony of the type we might expect from an artist such as Claes Oldenburg. Despite its kitsch appearance, Koons is asking the viewer to regard Michael Jackson and Bubbles as a sincere and significant artwork."+"\n"+"The impeccable craftsmanship, large scale, triangular arrangement (reminiscent of Michelangelo's Pieta) and significant use of gold in the piece references Medieval and Early Modern religious statues. As Koons noted, 'I wanted to create him in a very god-like icon manner. But I always liked the radicality of Michael Jackson; that he would do absolutely anything that was necessary to be able to communicate with people'. Thus, Koons compares religious zeal with modern celebrity worship and reminds us of the sacrifices that individuals make to maintain their celebrity status - a statement that has proved prescient in light of Jackson's untimely death. It is possible to see very similar themes in Warhol's Gold Marilyn Monroe (1962). Created soon after her death, the all gold canvas and screen-printed image memorializes Munroe's celebrity status in a reverent manner whilst revealing the price of fame.",
    medium: "Porcelain",
    price: rand(10000..100000),
    year_created: 1988,
    image_url: "https://sfmoma-media-dev.s3.us-west-1.amazonaws.com/www-media/2018/08/03032448/JeffKoons_Michaeljackson.png",
    artist_id: koons.id
)
Artwork.create(
    title: "Balloon Flower (Red)",
    description: "Koons' most famous works to date are his towering sculptures inspired by balloon animals. This one stands over ten feet tall and weighs in excess of a ton. Its shiny exterior, according to the artist, is intended to 'manipulate and seduce'. Unlike the cheap rubber it imitates, the surface of Balloon Flower evokes the shininess of precious metals. Since this really is metal, its immaculate, reflective surface and perfectly concealed joints invite us to marvel in the absolute symmetry and perfection of the objects. Up close, however, the overall composition fades, and the viewer is confronted by his or her own distorted, imperfect image. Koons is often compared to British artist Anish Kapoor and it possible to see the resemblance between Koons' balloon sculptures and Kapoor's mirrored work, most notably Cloud Gate (2006), a large public sculpture in Millennium Park, Chicago."+"\n"+"Koons once remarked that he believed Balloon Dog (part of the same Celebration series) to be 'a very optimistic piece, it's a balloon that a clown would maybe twist for you at a birthday party. But at the same time it's a Trojan Horse. There are other things here that are inside: maybe the sexuality of the piece.'' The work recalls the unbridled optimism and wonder of childhood, while functioning simultaneously as a reminder of this naive state of development, replaced in adulthood by covetousness for luxury and beauty. The idea that commerce is the new religion is, in many ways, the key to Koons' oeuvre.",
    medium: "Mirror polished stainless steel with transparent color coating",
    price: rand(10000..100000),
    year_created: 1995,
    image_url: "http://1.bp.blogspot.com/_CwSYMd9KuCE/S9HZcqpPQ-I/AAAAAAAAHug/qm4UN2PITYs/s1600/DSC_5967.JPG",
    artist_id: koons.id
)
Artwork.create(
    title: "Hulk (Organ)",
    description: "Hulk (Organ) is one of a number of similar works from the Hulk Elvis series in which Koons pairs sculptures of the cartoon character, The Incredible Hulk with incongruous props such as children's toys, a replica of the Liberty Bell and a wheelbarrow filled with live flowers. As such, the pieces play with concepts of gender, combining the testosterone-fueled Hulk with more conventionally feminine symbols. In doing so, Koons attempts to balance the traditional masculinity of the Hulk with a more neutral depiction of gender."+"\n"+"The sculptures closely mimic the appearance of vinyl inflatables, but are actually constructed from polychromed bronze, creating a sense of visual trickery and playfulness and contrasting an appearance of weightlessness with the actual solidity of the works. Inflatables are a reoccurring theme in Koons' work and this can be traced back to his Inflatables series (1978-79) where he presented a selection of cheap, store-bought inflatable flowers (and a rabbit) surrounded by mirrors which reflected the objects, distorting and multiplying their appearance and challenging the viewer to determine what was real. The Hulk Elvis series can be seen as a direct development of this early work as Koons continues to challenge notions of perception, presenting something that is in opposition to what it seems."+"\n"+"In Hulk Organ, keys, pipes, and buttons protrude from the Hulk's body creating a fully working and very powerful organ, albeit one that intentionally has some keys missing and does not produce a perfect pitch. This combination of precision and exuberance, seen in both the sculpture itself and in the organ, reflects the combination of rationality and chaos seen in the character of the Hulk, but also references the Asian traditional of guardian gods, who can be both welcoming and violent. As Koons explains, 'Hulk Elvis represents for me both Western and Eastern culture, a sense of a guardian, a protector, that at the same time is capable of bringing the house down'.",
    medium: "Polychromed bronze, mixed media",
    price: rand(10000..100000),
    year_created: 2004,
    image_url: "https://www.thebroad.org/sites/default/files/art/koons_hulk_organ_new.jpg",
    artist_id: koons.id
)
Artwork.create(
    title: "Seated Ballerina",
    description: "Seated Ballerina forms Part of Koons' Antiquity series, which fuses imagery and techniques from ancient and modern art. Koons envisioned the piece to be a contemporary interpretation of the mythical Roman Goddess, Venus. A common trope in ancient and classical art, Koons notes that, 'You could be looking at a Venus of Willendorf or some of the oldest Venuses. It is really about beauty and even a sense of contemplation, a sense of ease.' The dancer's pose is reminiscent of a traditional depiction of Venus, rooting the figure in historical precedent, but it is also visibly contemporary, merging past and present. Koons comparison of this sculpture, which seems to depict a teenage girl, with the Roman goddess of sex and fertility, however, drew some criticism for the sexualization of young women."+"\n"+"Based on a small porcelain figurine by the Ukrainian artist, Oksana Zhnikrup, who produced a range of similar designs for factory production in the Soviet Union, Koons has scaled the image up to create a larger-than-life rendering in futuristic color-coated steel. In doing so, he revisits questions about art, industrial production and mass market appeal, a discussion that is particularly applicable to his own practice, in which multiple copies of the same work are created by industrial processes (this sculpture is one of four produced)."+"\n"+"The reflective surface of the piece allows the viewer to see themselves in the sculpture. As Koons notes, 'in a reflective surface, your existence is being affirmed. When you move, your abstracted reflection changes. The experience is dependent upon you; it lets you know that art is happening inside of you.' Placing the viewer at the center of the artwork in this manner features in a number of Koons's most significant works including his Celebration series as well as elsewhere in the Antiquity series. Most notable on this front, however, are his Gazing Ball paintings and sculptures (2012-15) in which he had assistants meticulously copy Old Master paintings and classical sculptures. On or in front of these were placed blue shiny spheres which reflected the viewer and their surroundings and inserted them into the artwork. As Koons explains this demonstrates both 'the vastness of the universe and at the same time the intimacy of right here, right now'.",
    medium: "Mirror-polished stainless steel with transparent color coating",
    price: rand(10000..100000),
    year_created: 2017,
    image_url: "https://media.architecturaldigest.com/photos/5919e4d5a3c9ef254cc9f32d/4:3/w_1703,h_1277,c_limit/Koons%20Seated%20Ballerina%201.jpg",
    artist_id: koons.id
)


pollock = Artist.create(
    name: "Jackson Pollock",
    bio: "In its edition of August 8th, 1949, Life magazine ran a feature article about Jackson Pollock that bore this question in the headline: 'Is he the greatest living painter in the United States?' Could a painter who flung paint at canvases with a stick, who poured and hurled it to create roiling vortexes of color and line, possibly be considered 'great'? New York's critics certainly thought so, and Pollock's pre-eminence among the Abstract Expressionists has endured, cemented by the legend of his alcoholism and his early death. The famous 'drip paintings' that he began to produce in the late 1940s represent one of the most original bodies of work of the century. At times they could suggest the life-force in nature itself, at others they could evoke man's entrapment - in the body, in the anxious mind, and in the newly frightening modern world.",
    birth_date: "1912-01-28",
    death_date: "1956-08-11",
    headshot_url: "https://www.jackson-pollock.org/images/jackson-pollock.jpg"
)

Artwork.create(
    title: "The Deep",
    description: "The 1950s saw considerable changes in both Pollock's work and personal life. He began avoiding color in 1951, and started painting exclusively in black, though with alcoholism taking over his life, his productivity steadily declined. The Deep evokes a chasm - an abyss either to be avoided or to get lost inside. White paint was built up with layered brush strokes, showing a return of Pollock's direct involvement with the canvas. Drips are still evident, now creating a web that floats above the chasm. Pollock was clearly looking for a new approach, an image to create, desperate to break away from his signature style, yet his last paintings represent neither a new beginning nor a conclusion.",
    medium: "Oil and enamel on canvas",
    price: rand(10000..100000),
    year_created: 1953,
    image_url: "https://www.artmajeur.com/medias/hd/r/e/retne/artwork/13339721_profound-void-1.jpg",
    artist_id: pollock.id
)
Artwork.create(
    title: "Autumn Rhythm: Number 30",
    description: "While only one painting from Pollock's 1950 solo exhibition was actually sold, the show gained much attention. It was described by Art News as one of the three best exhibitions of the year, and Cecil Beaton staged a famous fashion shoot in the exhibition space, which subsequently appeared in Vogue. Autumn Rhythm was one of the major works which appeared in that show. As with many of Pollock's paintings, he began it with a linear framework of diluted black paint which in many areas soaked through the unprimed canvas. Over this he applied more skeins of paint in various colors - lines thick and thin, light and dark, straight and curved, horizontal and vertical. As the title suggests, the coloring, horizontal orientation, and sense of ground and space in Autumn Rhythm are strongly evocative of nature. The balance between control and chance that Pollock maintained throughout his working process produced compositions that can have as much calm tranquillity as some works by Rothko.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1950,
    image_url: "https://live.staticflickr.com/2870/11928812894_6504781a1e_b.jpg",
    artist_id: pollock.id
)
Artwork.create(
    title: "Mural",
    description: "Mural is an early tour de force in Pollock's career, a transition between his easel paintings and his signature drip canvases. This 'all over' painting technique was assimilated from a variety of sources: Picasso, Benton and Siqueiros, as well as Native American sand painting. Measuring nearly 8 x 20 ft, this was Pollock's first large-scale work, and was commissioned for Peggy Guggenheim's apartment. Although influenced by his earlier work in this format, Pollock struggled to control the composition. He incorporated decorative patterns in thinly brushed paint to achieve an intimate pattern within the grand scale. An apocryphal story exists that it was painted in one day and one night, though this is impossible given the quantity of layers in the picture.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1943,
    image_url: "https://www.theartist.me/wp-content/uploads/2020/04/mural-jackson-pollock.jpg",
    artist_id: pollock.id
)

dali = Artist.create(
    name: "Salvador Dalí",
    bio: "Salvador Dalí is among the most versatile and prolific artists of the 20th century and the most famous Surrealist. Though chiefly remembered for his painterly output, in the course of his long career he successfully turned to sculpture, printmaking, fashion, advertising, writing, and, perhaps most famously, filmmaking in his collaborations with Luis Buñuel and Alfred Hitchcock. Dalí was renowned for his flamboyant personality and role of mischievous provocateur as much as for his undeniable technical virtuosity. In his early use of organic morphology, his work bears the stamp of fellow Spaniards Pablo Picasso and Joan Miró. His paintings also evince a fascination for Classical and Renaissance art, clearly visible through his hyper-realistic style and religious symbolism of his later work.",
    birth_date: "1904-05-11",
    death_date: "1989-01-23",
    headshot_url: "https://hips.hearstapps.com/hmg-prod/images/salvador-dali-gettyimages-2695565.jpg?resize=1200:*"
)
Artwork.create(
    title: "Un Chien Andalou",
    description: "Un Chien Andalou recreates an ethereal setting in which images are presented in montaged clips in order to jostle reality and tap the unconscious, shocking the viewer awake. For example, in this clip we find a glaring cow's eye in a woman's eye socket soliciting feelings of discomfort. In the scene that follows, a razor blade slashes said eye in extreme close-up.",
    medium: "35mm Film",
    price: rand(10000..100000),
    year_created: 1927,
    image_url: "https://lwlies.com/wp-content/uploads/2017/01/un-chien-andalou-eyeball-scene-1108x0-c-default.jpg",
    artist_id: dali.id
)
Artwork.create(
    title: "Great Masturbator",
    description: "Central to the piece is a large distorted human face looking down upon a landscape, a familiar rocky shoreline scene reminiscent of Dalí's home in Catalonia. A nude female figure representing Dalí's new-at-the-time muse Gala rises from the head, symbolic of the type of fantasy a man would conjure while engaged in the practice suggested by the title. Her mouth near a male's crotch suggests impending fellatio while he seems to be literally 'cut' at the knees from which he bleeds, a sign of a stifled sexuality. Other motifs in the painting include a grasshopper - a consistent beacon for sexual anxiety in Dalí's work, ants - elusion to decay and death, and an egg - representing fertility."+"\n"+"The painting may represent Dalí's severely conflicted attitudes towards sexual intercourse and his lifelong phobia of female genitalia right at the cross section of meeting and falling in love with Gala. When he was a young boy, Dalí's father exposed him to a book of explicit photos demonstrating the horrific effects of venereal disease, perpetuating traumatic associations of sex with morbidity and rot in his mind. It is said that Dalí was a virgin when he met Gala and that he later encouraged his wife to have affairs to satisfy her sexual desires. Later in life when his paintings turned to religious and philosophical themes, Dalí would tout chastity as a door to spirituality. This piece has been compared to Bosch's The Garden of Earthly Delights.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1929,
    image_url: "https://uploads2.wikiart.org/images/salvador-dali/the-great-masturbator-1929.jpg!Large.jpg",
    artist_id: dali.id
)
Artwork.create(
    title: "The Persistence of Memory",
    description: "This iconic and much-reproduced painting depicts the fluidity of time as a series of melting watches, their forms described by Dalí as inspired by a surrealist perception of Camembert cheese melting in the sun. The distinction between hard and soft objects highlights Dalí's desire to flip reality lending to his subjects characteristics opposite their usually inherent properties, an un-reality often found in our dreamscapes. They are surrounded by a swarm of ants hungry for the organic processes of putrefaction and decay with which Dalí held unshakable fascination. Because the melting flesh at the painting's center resembles Dalí, we might see this piece as a reflection on the artist's immortality amongst the rocky cliffs of his Catalonian home.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1931,
    image_url: "https://uploads6.wikiart.org/images/salvador-dali/the-persistence-of-memory-1931.jpg!Large.jpg",
    artist_id: dali.id
)

lichtenstein = Artist.create(
    name: "Roy Lichtenstein",
    bio: "Roy Lichtenstein was one of the first American Pop artists to achieve widespread renown, and he became a lightning rod for criticism of the movement. His early work ranged widely in style and subject matter, and displayed considerable understanding of modernist painting: Lichtenstein would often maintain that he was as interested in the abstract qualities of his images as he was in their subject matter. However, the mature Pop style he arrived at in 1961, which was inspired by comic strips, was greeted by accusations of banality, lack of originality, and, later, even copying. His high-impact, iconic images have since become synonymous with Pop art, and his method of creating images, which blended aspects of mechanical reproduction and drawing by hand, has become central to critics' understanding of the significance of the movement.",
    birth_date: "1923-10-27",
    death_date: "1997-09-29",
    headshot_url: "https://media.tate.org.uk/art/images/work/AR/AR00217_10.jpg"
)
Artwork.create(
    title: "Popeye",
    description: "Popeye was one of the very first Pop paintings that Lichtenstein created in the summer of 1961. At a later stage he would begin to focus on the generic human figures that appeared in cartoons of the period, but, early on, he chose immediately recognizable characters such as Mickey Mouse and Popeye (here, Popeye appears with his rival Bluto). The work is also distinct in being one of the last in which Lichtenstein actually signed his name on the surface of the picture; critic Michael Lobel has pointed out that he seems to have done so with increasing uncertainty in this piece, combining it with a copyright logo that is echoed in the form of the open tin can above it. Some have suggested that Popeye's punch was intended as a sly response to one of the reigning ideas in contemporary art criticism that a picture's design should make an immediate visual impact. Whereas most believed this should be achieved with abstract art, Lichtenstein here demonstrated that one could achieve it just as well by borrowing from low culture.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1961,
    image_url: "https://www.theartstory.org/images20/works/lichtenstein_roy_1.jpg?3",
    artist_id: lichtenstein.id
)
Artwork.create(
    title: "Drowning Girl",
    description: "In the early 1960s, Lichtenstein gained renown as a leading Pop artist for paintings sourced from comic books, specifically DC Comics. Although artists such as Robert Rauschenberg and Jasper Johns had previously integrated popular imagery into their works, no one hitherto had focused on cartoon imagery as exclusively as Lichtenstein. His work, along with that of Andy Warhol, heralded the beginning of the Pop art movement, and, essentially, the end of Abstract Expressionism as the dominant style. Lichtenstein did not simply copy comic pages directly, he employed a complex technique that involved cropping images to create entirely new, dramatic compositions, as in Drowning Girl, whose source image included the woman's boyfriend standing on a boat above her. Lichtenstein also condensed the text of the comic book panels, locating language as another, crucial visual element; re-appropriating this emblematic aspect of commercial art for his paintings further challenged existing views about definitions of 'high' art.",
    medium: "Oil and synthetic polymer paint on canvas",
    price: rand(10000..100000),
    year_created: 1961,
    image_url: "https://www.theartstory.org/images20/works/lichtenstein_roy_2.jpg?3",
    artist_id: lichtenstein.id
)
Artwork.create(
    title: "Brushstrokes",
    description: "Lichtenstein was a prolific printmaker throughout his career, and his prints played a substantial role in establishing printmaking as a significant art form in the 1960s. Brushstrokes, one such print, reflects his interest in the importance of the brushstroke in Abstract Expressionism. Abstract Expressionist artists had made the brushstroke a vehicle to directly communicate feelings; Lichtenstein's brushstroke made a mockery of this aspiration, also suggesting that though Abstract Expressionists disdained commercialization, they were not immune to it - after all, many of their pictures were also created in series, using the same motifs again and again. Lichtenstein has said, 'The real brushstrokes are just as pre-determined as the cartoon brushstrokes.'",
    medium: "Color screenprint on white wove paper",
    price: rand(10000..100000),
    year_created: 1967,
    image_url: "https://www.moma.org/media/W1siZiIsIjI2OTI0NiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=b1c150f23dae7c9b",
    artist_id: lichtenstein.id
)
Artwork.create(
    title: "Mirror I",
    description: "Lichtenstein was particularly fascinated by the abstract way in which cartoonists drew mirrors, using diagonal lines to denote a reflective surface. He once remarked, 'Now, you see those lines and you know it means 'mirror,' even though there are obviously no such lines in reality. It's a convention that we unconsciously accept.' The mirror was a recurring leitmotif for Lichtenstein during the 1970s, but the artist had experimented with the graphic representation of reflection in earlier works, driven in part by an interest in the relationship between women and mirrors - both in historical artworks and in contemporary culture. Although the series might have been inspired by the appearance of mirrors in cartoons, Lichtenstein clearly also wanted to engage with themes of reproduction and reflection, which have interested artists at least as far back as the Renaissance.",
    medium: "Painted bronze",
    price: rand(10000..100000),
    year_created: 1977,
    image_url: "https://www.theartstory.org/images20/works/lichtenstein_roy_5.jpg?3",
    artist_id: lichtenstein.id
)

mondrian = Artist.create(
    name: "Piet Mondrian",
    bio: "Piet Mondrian, one of the founders of the Dutch modern movement De Stijl, is recognized for the purity of his abstractions and methodical practice by which he arrived at them. He radically simplified the elements of his paintings to reflect what he saw as the spiritual order underlying the visible world, creating a clear, universal aesthetic language within his canvases. In his best known paintings from the 1920s, Mondrian reduced his shapes to lines and rectangles and his palette to fundamental basics pushing past references to the outside world toward pure abstraction. His use of asymmetrical balance and a simplified pictorial vocabulary were crucial in the development of modern art, and his iconic abstract works remain influential in design and familiar in popular culture to this day.",
    birth_date: "1872-03-07",
    death_date: "1944-02-01",
    headshot_url: "https://www.od-hotels.com/content/imgsxml/magazine/m-capturadepantalla2018-11-30alas11.07.45807.png"
)
Artwork.create(
    title: "The Gray Tree",
    description: "The Gray Tree exemplifies Mondrian's early transition toward abstraction, and his application of Cubist principles to represent the landscape. The three-dimensional tree has been reduced to lines and planes using a limited palette of grays and black. This painting is one in a series of works Mondrian created, in which the early trees are naturalistically represented, while the later works have become progressively more abstract. In the later paintings, the lines of the tree are reduced until the form of the tree is barely discernable and becomes secondary to the overall composition of vertical and horizontal lines. Here, there is still an allusion to the tree as it appears in nature, but one can already see Mondrian's interest in reducing the form to a structured organization of lines. This step was invaluable to Mondrian's development of his mature style of pure abstraction.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1912,
    image_url: "https://www.theartstory.org/images20/works/mondrian_piet_1.jpg?1",
    artist_id: mondrian.id
)
Artwork.create(
    title: "Pier and Ocean (Composition No. 10)",
    description: "Pier and Ocean marks a definitive step in Mondrian's path toward pure abstraction. Here he has eliminated diagonal and curved lines as well as color; the only true reference to nature is found within the title and the horizontal lines that allude to the horizon and the verticals that evoke the pilings of the pier. The rhythms created by the alternating lines and their varying lengths presages Mondrian's mature dynamic, depicting an asymmetrical balance as well as the pulse of the ocean waves. Reviewing this work, Theo van Doesburg wrote: 'Spiritually, this work is more important than the others. It conveys the impression of peace; the stillness of the soul.' Mondrian had begun to translate what he saw as the underlying ordered patterns of nature into a pure abstract language.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1915,
    image_url: "https://arthive.net/res/media/img/oy800/work/f21/357982@2x.jpg",
    artist_id: mondrian.id
)
Artwork.create(
    title: "Composition with Color Planes",
    description: "While still in Holland during World War I, Mondrian helped found the group of artists and architects called De Stijl, and it was during this period he refined his style of abstraction even further. Composition with Color Planes shows his break with Analytic Cubism and exemplifies the principles he expressed in his essay 'The New Plastic in Painting.' Here, Mondrian has moved away from the Cubist palette of ochres, grays, and browns, opting instead for muted reds, yellows and blues - a clear precursor to his mature palette that focused on primary colors. The blocks of color float on a white ground and no longer reference a physical object in nature such as a tree or building, while all reference to illusionistic depth has been eliminated. The composition is based on color and balance and gives even weight to all areas of the picture surface, moving toward the precise balance of his mature canvases.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1917,
    image_url: "https://www.moma.org/media/W1siZiIsIjI5MjQ0MSJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=7207129d2c8e9f94",
    artist_id: mondrian.id
)
Artwork.create(
    title: "Composition with Large Red Plane, Yellow, Black, Gray, and Blue",
    description: "In the 1920s, Mondrian began to create the definitive abstract paintings for which he is best known. He limited his palette to white, black, gray, and the three primary colors, with the composition constructed from thick, black horizontal and vertical lines that delineated the outlines of the various rectangles of color or reserve. The simplification of the pictorial elements was essential for Mondrian's creation of a new abstract art, distinct from Cubism and Futurism. The assorted blocks of color and lines of differing width create rhythms that ebb and flow across the surface of the canvas, echoing the varied rhythm of modern life. The composition is asymmetrical, as in all of his mature paintings, with one large dominant block of color, here red, balanced by distribution of the smaller blocks of yellow, blue gray, and white around it. This style has been quoted by many artists and designers in all aspects of culture since the 1920s.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1921,
    image_url: "https://uploads4.wikiart.org/images/piet-mondrian/composition-with-large-red-plane-yellow-black-gray-and-blue-1921.jpg!Large.jpg",
    artist_id: mondrian.id
)
Artwork.create(
    title: "Tableau I: Lozenge with Four Lines and Gray",
    description: "Following the development of his mature Neoplastic style, Mondrian sought to express a more dynamic rhythm in his abstractions. He began producing 'lozenge' paintings (as early as 1919) in order to create a more vibrant tension on the picture plane. The 'lozenge' paintings are known as such because of their diamond-shape that results from Mondrian using an unconventional orientation for his square canvases, turning them on a forty-five degree angle with a corner at the top. His innovation introduced the diagonal line of the canvas edge into his grid of horizontal and vertical lines. In this particular composition, the lines appear to extend beyond the edges of the canvas as they intersect with the diagonals at varied intervals. This particular example relies upon only four lines of varied thickness, bisecting the gray picture plane in order to express Mondrian's ideal of active balance. By shifting the orientation of the canvas, Mondrian provided an important precedent for the shaped canvases of the Minimalists in the 1960s. With the complete absence of color in this painting, Mondrian has also prefigured the Minimalists' interest in pure form and favoring of gray, white, and other muted colors.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1926,
    image_url: "https://www.moma.org/media/W1siZiIsIjI2NTczOSJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MTQ0MFx1MDAzZSJdXQ.jpg?sha=a7863856582584fe",
    artist_id: mondrian.id
)
Artwork.create(
    title: "Broadway Boogie-Woogie",
    description: "This canvas presents the viewer with the culmination in Mondrian's life-long pursuit of conveying the order that underlies the natural world through purely abstract forms on a flat picture plane. Broadening the use of his basic pictorial vocabulary of lines, squares and primary colors, the black grid has been replaced by lines of color interspersed with blocks of solid color. This, and his other late abstract paintings, show a new, revitalized energy that was directly inspired by the vitality of New York City and the tempo of jazz music. The asymmetrical distribution of the brightly colored squares within the yellow lines echoes the varied pace of life in the bustling metropolis, one can almost see the people hurrying down the sidewalk as taxi cabs hustle from stop-light to stop-light. Broadway Boogie-Woogie not only alludes to life within the city, but also heralds New York's developing role as the new center of modern art after World War II. Mondrian's last complete painting demonstrates his continued stylistic innovation while remaining true to his theories and format.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1942,
    image_url: "https://static01.nyt.com/images/2019/06/07/arts/07mondrain-moma3/07mondrain-moma3-superJumbo.jpg",
    artist_id: mondrian.id
)

johns = Artist.create(
    name: "Jasper Johns",
    bio: "Jasper Johns's playful, enigmatic paintings interrogate the very ways in which we see and interpret the world. Beginning in the mid-1950s, Johns deliberately avoided art cut off from everyday life and made common signs, such as flags and targets, the subject of his work. Riffing on the divergent examples of Dada and Abstract Expressionism, Johns, along with his Neo-Dada collaborator Robert Rauschenberg, created a nuanced art that spoke to notions of autobiography, irreverence, and philosophical engagement."+"\n"+"The reverberations of the work of Jasper Johns affected nearly every artistic movement from the 1950s through the present day. Breaking down the boundaries traditionally separating fine art and everyday life, he effectively laid the foundation for Pop Art's embrace of commodity culture. Additionally, Johns's exploration of semiotics and perception also set the stage for both Conceptual Art and more postmodern interventions in the 1980s, while his multimedia collaborations with John Cage and Merce Cunningham ushered in the dominance of Performance Art in the 1960s and 1970s.",
    birth_date: "1930-05-15",
    death_date: "",
    headshot_url: "https://upload.wikimedia.org/wikipedia/commons/d/d9/El_lissitzky_self_portrait_1914.jpg"
)
Artwork.create(
    title: "Flag",
    description: "Johns's first major work broke from the Abstract Expressionist precedent of non-objective painting with his representation of a recognizable everyday object - the American flag. Additionally, instead of using oil paint applied to the canvas with a brush, Johns built the flag from a dynamic surface made up of shreds of newspaper dipped in encaustic, allowing snippets of text to remain visible through the wax. As the molten, pigmented wax cooled, it fixed the scraps of newspaper in visually distinct marks that evoked the gestural brushwork of much of Abstract Expressionism. The seemingly frozen drips and gestures embodied Johns's interest in semiotics, or the study of signs and symbols. In effect, Johns 'quoted' the expressionistic brushstroke of the Action Painters, turning it into a symbol for artistic expression rather than a direct mode of expression. This experiment began his career-long investigation into 'how we see and why we see the way we do.'"+"\n"+"The symbol of the American flag, to this day, carries a host of connotations and meanings that shift from individual to individual, making it the ideal subject for Johns's initial foray into visually exploring the 'things the mind already knows.' He intentionally blurred the lines between high art and everyday life with his choice of seemingly mundane subject matter. Johns painted Flag in the context of the McCarthy witch-hunts in Cold War America and the civil rights movement. Then and now, some viewers will read national pride or freedom in the image, while others only see imperialism and oppression. Johns was one of the first artists to present viewers with the dichotomies embedded in the national symbol. Johns referred to his paintings as 'facts' and did not provide predetermined interpretations of his work; when critics asked Johns if the work was a painted flag, or a flag painting, he said it was both.",
    medium: "Encaustic, oil, and collage on fabric mounted on plywood",
    price: rand(10000..100000),
    year_created: 1954,
    image_url: "https://www.moma.org/media/W1siZiIsIjQ2NzUxNiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=ee9866fcb63269e4",
    artist_id: johns.id
)
Artwork.create(
    title: "Target with Four Faces",
    description: "In this work, Johns effectively merged painting and sculpture while wittily engaging the viewer with 'things which are seen and not looked at.' As in Flag, Johns relied on newspaper and fabric dipped in encaustic to build the textured surface of the painting. Over the course of four months, he also made plaster casts of the lower half of a model's face and ultimately placed them in a hinged, wood box affixed to the top of the canvas. By incorporating the sculptural elements in the same space as the painting, Johns emphasized the three-dimensional objecthood of the painting, just as Robert Rauschenberg did in his 'combine' paintings of the late 1950s. Indeed, the hinged nature of the box allows for the viewer to open and close the box, giving the artwork an extra dimension. This merging of mediums was a pointed response to the recent progression of abstract painting that emphasized opticality and the flatness of the picture plane championed by art critics like Clement Greenberg."+"\n"+"Beyond the material surface of the work, the concentric circles of the target are at once a painting of a target and a target itself, for when one places a target of concentric circles on anything, that thing becomes a target. The target implies the acts of seeing and taking aim, and in this case, not just at the target itself but also the anonymous faces above it. Importantly, though, Johns excluded the model's eyes from the plaster casts, and thus thwarted any exchange of gazes between the viewer and the faces in the work. This forced the viewer to examine the interactions between the painted target and the plaster faces. Viewed through the lens of the Cold War era, the seemingly benign images can imply the targeting of the anonymous masses by global political powers as well as by corporate advertising and the mass media. Or these faces can be interpretted as the violence of a gun shooting range - the faces indicating a loss of sight (and thereby reality/morality) by the masses.",
    medium: "Encaustic on newspaper and cloth over canvas surmounted by four tinted-plaster faces in wood box with hinged front",
    price: rand(10000..100000),
    year_created: 1955,
    image_url: "https://i0.wp.com/hyperallergic-newspack.s3.amazonaws.com/uploads/2017/09/JJ-Target-with-Four-Faces-720x929.jpg?resize=720%2C929&quality=100&ssl=1",
    artist_id: johns.id
)

hirst = Artist.create(
    name: "Damien Hirst",
    bio: "One of the late-20th century's greatest provocateurs and a polarizing figure in recent art history, Damien Hirst was the art superstar of the 1990s. As a young and virtually unknown artist, Hirst climbed far and fast, thanks to Charles Saatchi, an advertising tycoon who saw promise in Hirst's rotting animal corpses, and gave him a virtually unlimited budget to continue. His shark suspended in a tank of formaldehyde, entitled The Physical Impossibility of Death in the Mind of Someone Living, wowed and repulsed audiences in 1991. In 1995 (the same year that he won the coveted Turner Prize) Hirst's installation of a rotting bull and cow was banned from New York by public health officials who feared 'vomiting among the visitors. Hirst, the Sid Vicious of the art world (the Sex Pistols were his favorite band), is the logical outcome of a process of ultra-commodification and celebrity that began with Andy Warhol.",
    birth_date: "1965-06-07",
    death_date: "",
    headshot_url: "https://d16kd6gzalkogb.cloudfront.net/magazine_images/Damien-Hirst-via-ideat.thegoodhub.com_.jpg"
)
Artwork.create(
    title: "The Physical Impossibility of Death in the Mind of Someone Living",
    description: "This is the work that established Hirst as a major presence in the art world. A little like the art world version of Jaws, this installation featuring a 14-foot tiger shark preserved in formaldehyde that capitalizes on the viewer's visceral response, a spine-tingling thrill one experiences in the presence of a good horror movie, knowing one is safely removed from the danger. The Physical Impossibility of Death in the Mind of Someone Living was among the works showcased in the Sensation exhibition of the early 1990s, the great 'succes de scandale' of the late-20th century and a game-changer in the art world. Charles Saatchi funded both the work and the exhibition, which were roundly condemned by art world conservatives from London to New York, and embraced by audiences eager for something new. On the meaning of the work, Hirst commented that the vitrines 'first came from a fear of everything in life being so fragile' and explained that he wanted 'to make a sculpture where the fragility was encased... [and] exists in its own space.' Jeff Koons's Total Equilibrium Tanks (1985), a basketball suspended in a glass case, is an obvious precedent for Hirst's work. Dismissed by some critics as a 'pickled shark,' this has nevertheless come to be considered an icon of British art in the 1990s. Due to deterioration of the original specimen, the shark was replaced in 2006.",
    medium: "Tiger shark, formaldehyde solution, glass, steel",
    price: rand(10000..100000),
    year_created: 1991,
    image_url: "https://atg-prod-scalar.s3.amazonaws.com/resources-for-loss/media/DHS76_771_0.jpg",
    artist_id: hirst.id
)
Artwork.create(
    title: "Abalone Acetone Powder",
    description: "Since 1988, Hirst has been generating so-called 'spot paintings', also known as The Pharmaceutical Paintings. This series are his most recognizable and iconic works, aside from his animal sculptures. No one knows how many there are, but estimates are in the thousands. While the artist painted the earliest ones, later spot paintings continue to be produced by assistants under his direction, sparking questions about value."+"\n"+"The cheerful impact of these canvases might at first seem at odds with Hirst's preoccupation with mortality. In fact, they are very much in keeping with it. Each of Hirst's dot compositions mimics the molecular structure of an addictive, potentially lethal substance that cannot be accessed without a doctor's consent. These paintings thus constitute a witty, withering comment on a multi-billion dollar pharmaceutical industry that dispenses drugs like candy.",
    medium: "Paint on Canvas",
    price: rand(10000..100000),
    year_created: 1991,
    image_url: "https://i.insider.com/51b8d9f7ecad04903c00002a?width=1000&format=jpeg&auto=webp",
    artist_id: hirst.id
)
Artwork.create(
    title: "For the Love of God",
    description: "This sculpture consists of an 18th-century human skull recreated in platinum and encrusted with 8,000 diamonds. According to the New York Times, it was inspired by an exasperated comment from Hirst's mother about his work: 'for the love of God, what are you going to do next?' The skull, a symbol of mortality, fits within a long tradition of such reminders. Like virtually all of Hirst's other major works, it ignited intense controversy. The astronomical cost of the materials involved (?15 million) and asking price of ?50 million were considered outrageous. The press eventually revealed that Hirst was among the anonymous bidders for the object, sparking outcry that the piece was nothing more than a publicity stunt. Whether or not this was the artist's original intention, the work brought to light important questions about the astronomically inflated prices of art on the contemporary market. Strange as it may sound, a work that had cost only a few thousand dollars would not be as successful or as interesting as this one. Hirst's brilliance as an artist is inseparable from the publicity surrounding his work; this is literally part of the art.",
    medium: "Platinum, diamond, human teeth",
    price: rand(10000..100000),
    year_created: 2007,
    image_url: "https://bigthink.com/wp-content/uploads/2010/01/origin-92.jpg",
    artist_id: hirst.id
)

close = Artist.create(
    name: "Chuck Close",
    bio: "Chuck Close is globally renowned for reinvigorating the art of portrait painting from the late 1960s to the present day, an era when photography had been challenging painting's former dominance in this area, and succeeding in steadily gaining critical appreciation as an artistic medium in its own right. Close emerged from the 1970s painting movement of Photorealism, also known as Super-Realism, but then moved well beyond its initially hyper-attentive rendering of a given subject to explore how methodical, system-driven portrait painting based on photography's underlying processes (over its superficial visual appearances) could suggest a wide range of artistic and philosophical concepts. In addition, Close's personal struggles with dyslexia and subsequently, partial paralysis, have suggested real-life parallels to his professional discipline, as though his methodical and yet also quite intuitive methods of painting are inseparable from his own daily reckoning with the body's own vulnerable, material condition.",
    birth_date: "1940-07-05",
    death_date: "",
    headshot_url: "https://prabook.com/web/show-photo.jpg?id=2127610"
)
Artwork.create(
    title: "Big Nude",
    description: "'Big Nude' is the first painting completed in Close's signature grid process, and both its size and self-conscious title indicate its ambitious nature. Although the transferred image 'reads' as a flat transcription of light and dark characteristic of a photograph, the painting's variegated brushstrokes reveal Big Nude to be more of a prototype for future development than a fully resolved picture. Poised precariously between a common studio exercise in figure drawing and a 1960s girlie magazine shoot, 'Big Nude' also challenges the future of representational painting at a moment in history when the genre would seem to have long ago exhausted its potential for future development. Only the antiseptic whiteness of the canvas hints at a new approach to the figure that might perfectly marry an instant, unforgiving photographic record of a subject with the artist's reconsideration of its every component over months of studied, methodical transcription.",
    medium: "Acrylic on canvas",
    price: rand(10000..100000),
    year_created: 1967,
    image_url: "https://static.wixstatic.com/media/6990e8_af6f9f57c2da4d40ab6126a2dbd4baf8~mv2.jpg/v1/fill/w_614,h_466,al_c,lg_1,q_80,enc_auto/6990e8_af6f9f57c2da4d40ab6126a2dbd4baf8~mv2.jpg",
    artist_id: close.id
)
Artwork.create(
    title: "Big Self-Portrait",
    description: "The tentative air of experimentation that might be said to characterize Big Nude is nowhere apparent in Big Self-Portrait, a watershed painting that virtually showcases Close's unique method. Abandoning the full-body view, Close turned to one of the oldest traditions anywhere in art history, the self-portrait. Close had partially set out to refute the critic Clement Greenberg's claim that it was impossible for an 'advanced' artist to work in portraiture. Closes's untraditional approach involved conceiving of and creating a unique kind of 'mug shot,' a black-and-white idiom that exacerbated the subject's blemishes and the original photographic distortion caused by the camera. The devotion to the idea of an unsparing, head-on view led him to refuse all commissions, as Close used only his own 'mug' and that of close friends for his subjects.",
    medium: "Acrylic on canvas",
    price: rand(10000..100000),
    year_created: 1967,
    image_url: "https://walker-col.imgix.net/wac_111.tif?fm=jpg&w=1440&h=1050&fit=max&dpr=1.5",
    artist_id: close.id
)
Artwork.create(
    title: "Kent",
    description: "For Kent, Close made use of preparatory drawings for the first time to explore the three-color process, an imitation, or re-employment, of the photographic dye-transfer method. By adopting a mechanical procedure and mimicking it physically, or by hand crafting what is normally carried out by the camera, Close suggests that illusion is ultimately in the eye of the beholder, whose own optical apparatus finally 'completes' the picture. Although Close literally painted the same image three times, one atop the other in separate colors, he was surprised when the work ended up taking three times as long to complete. In order to facilitate the process, Close wore cellophane filters over his eyeglasses in order to view marks in one color at a time.",
    medium: "Acrylic on canvas",
    price: rand(10000..100000),
    year_created: 1970,
    image_url: "https://davidmcdonoughblog.files.wordpress.com/2014/09/close.jpg",
    artist_id: close.id
)
Artwork.create(
    title: "Keith/Mezzotint",
    description: "The large format of Keith, although not nearly as large as Close's earlier portrait paintings, did not translate well to the outdated mezzotint process. Due to its gradual erosion, the plate made only ten good prints, and the surface coloring is noticeably lighter in the middle around the sitter's nose. The mezzotint printmaking process yields a soft, light-infused surface, here seen to best effect in Closes's rendering of the sitter's hair. The random effects typical of printmaking inspired Close to experiment further with various media.",
    medium: "Mezzotint",
    price: rand(10000..100000),
    year_created: 1972,
    image_url: "https://www.moma.org/media/W1siZiIsIjIxMTAwMiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=588b7e906a86b6e2",
    artist_id: close.id
)
Artwork.create(
    title: "Fanny/Fingerpainting",
    description: "Close's enjoyment of the physical interaction between artist and material gave him a particular affinity for working in the fingerprint method. Criticized by some as a kitschy version of an art already informed by Pop, the unsophisticated technique, so reminiscent of child's play, seems doubly appropriate for this informal, yet subtly monumental portrait of the artist's grandmother. The numerous, individual touches of oil pigment gradually creating the appearance of supple flesh lends to the painting a sense of intimacy so appropriate to the underlying relationship between artist and his chosen subject.",
    medium: "Oil-based acrylic on canvas",
    price: rand(10000..100000),
    year_created: 1985,
    image_url: "https://mymodernmet.com/wp/wp-content/uploads/archive/7U6TVRiukkUXXkX5k1wv_1082100223.jpeg",
    artist_id: close.id
)
Artwork.create(
    title: "Self-Portrait",
    description: "Chuck Close's work is most often associated in the popular mind with his own likeness. Although it has been chosen by the artist largely for the sake of convenience, Close's self portraits provide an interesting arena for gauging the development of his thought and work over four decades. The insouciant stare of the young man in Big Self-Portrait makes a striking counterpart to the stolid, knowing gaze of the older Close as represented in this self-portrait of 1997. Indeed, the comparison illustrates the evolution from fledgling artist to international icon. Compared to the earlier work, the 1990s Self-Portrait also shows how abstraction has come to play a more prominent role in Closes's portraits. Each of the individual units of the grid is a miniature abstract painting unto itself, comprising a panoply of colors and shapes that seem to have jumped directly to the canvas from the artist's palette.",
    medium: "Oil on canvas",
    price: rand(10000..100000),
    year_created: 1997,
    image_url: "https://www.moma.org/media/W1siZiIsIjE1MTEwNyJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=6052a9b9af86c537",
    artist_id: close.id
)
Artwork.create(
    title: "Andres",
    description: "In recent years, Close has extended his investigations into various media to the ancient genre of tapestry, the repetitive and episodic weaving process in many ways paralleling his own painstaking juxtaposition of various colors in much of his portraiture. Using computerized photo transfers of glass daguerreotypes (for black-and-white versions) or Polaroid snapshots, the tapestry medium is ideally suited for Close's interest in large-scale work that nonetheless depends on pinpoint-like precision. Here, a portrait of artist-colleague Andres Serrano, notorious for his irreverent Piss Christ (1987) photograph that continues to roil conservative Christians, beams triumphant from the weave, which is deftly composed of numerous threads of various colors intertwining with such precision that the human eye is virtually seduced into believing that this is a real man pressing his face to a window.",
    medium: "Jacquard tapestry",
    price: rand(10000..100000),
    year_created: 2006,
    image_url: "https://www.magnoliaeditions.com/wp-content/uploads/2012/03/Close-Andres.jpg",
    artist_id: close.id
)

puts "✅ Done seeding!"
