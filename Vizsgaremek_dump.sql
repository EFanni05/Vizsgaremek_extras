-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 02:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vizsgaremek`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergens`
--

CREATE TABLE `allergens` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allergens`
--

INSERT INTO `allergens` (`id`, `name`) VALUES
(1, 'Gluten'),
(2, 'Crustaceans'),
(3, 'Eggs'),
(4, 'Fish'),
(5, 'Peanuts'),
(6, 'Soybeans'),
(7, 'Milk'),
(8, 'Nuts'),
(9, 'Celery'),
(10, 'Mustard'),
(11, 'Sesame seeds'),
(12, 'Sulphur dioxide'),
(13, 'Lupin'),
(14, 'Molluscs');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `posted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `recipe_id`, `rating`, `content`, `posted`) VALUES
(1, 1, 10, 3, 'Testimonium talis laborum ventus illo comburo tollo.\nOdit veritas demitto spectaculum patior demulceo adsum.\nQuia verto facilis sursum via assentator quos deporto.\nContra tamen magni aliqua tres.\nDemens audentia argumentum.', '2024-04-21 10:17:29'),
(2, 2, 6, 5, 'Adeo verbera depulso.', '2024-04-21 10:17:29'),
(3, 1, 13, 4, 'Suscipit amicitia vae clibanus. Creator summisse arbustum sortitus theca unus. Dedecor demitto viscus aestus dolor umerus templum demens assumenda deleniti.\nCohaero paens cado ventus dolore vicinus tutis. Ventito convoco delectatio. Subseco ancilla ademptio autem.\nAtque succedo vinum. Vergo aedificium suspendo aetas. A corroboro versus demens sono desipio aer argumentum.', '2024-04-21 10:17:29'),
(4, 2, 17, 1, 'Ut convoco defero vulpes autem necessitatibus. Vulnero cedo curatio eaque tabgo appello theca deficio. Carus thesaurus xiphias desipio triduana crastinus accusator tenuis somnus synagoga. Venustas aut vapulus celer sed.', '2024-04-21 10:17:29'),
(5, 1, 1, 4, 'Vulgaris thymbra valens catena. Impedit tenetur sed casus cubitum ullam antepono solio depereo. Aetas tenetur concido curriculum aetas suscipio cultura adimpleo at.', '2024-04-21 10:17:29'),
(6, 2, 11, 2, 'Tempus sumptus adipisci thesaurus cattus clam peccatus absens.\nDemonstro cotidie ancilla canis alveus viscus volaticus conspergo.\nVorax aiunt turba vigor aranea tibi curso.', '2024-04-21 10:17:29'),
(7, 1, 16, 5, 'Vapulus administratio asporto combibo confero adfectus nesciunt. Demoror acervus beneficium sodalitas depono. Decerno considero tametsi utilis deprimo.', '2024-04-21 10:17:29'),
(8, 2, 5, 3, 'Temporibus celebrer tempore adsidue.\nAdmoveo benigne comparo despecto tondeo tutamen quod aetas volva arcus.\nRepudiandae avaritia auditor derelinquo.\nVulariter tui tollo sumptus depraedor.\nDefluo vetus cupiditate perferendis celo tego.', '2024-04-21 10:17:29'),
(9, 2, 14, 5, 'Apud bonus adnuo terminatio reprehenderit textus sperno venustas.', '2024-04-21 10:17:29'),
(10, 1, 20, 4, 'Cura similique suspendo talio. Eius defero voluptas baiulus quidem vigor vox ascisco. Depulso trans crustulum bibo.\nAtque suspendo defetiscor cultura congregatio sol cetera solium. Tardus clibanus caritas admoveo. Vacuus animus alius minus esse autem pariatur.\nDebeo conicio et coaegresco deserunt perspiciatis confugo corona. Ait adiuvo tabesco claustrum vere. Aestas teres temeritas absorbeo verecundia coaegresco subito totus.', '2024-04-21 10:17:29'),
(11, 2, 15, 3, 'Cunae solum soluta totus expedita tribuo utilis adinventitias debitis. Voluptatum abstergo tempus ulterius theca traho copiose aspernatur causa apud. Vinco tollo alias ancilla tam.', '2024-04-21 10:17:29'),
(12, 1, 2, 3, 'Adeptio titulus terebro sopor. Capio debitis veritatis. Bis degero corrupti aperte solutio pariatur thema tergeo.', '2024-04-21 10:17:29'),
(13, 1, 9, 3, 'Cibo amor facilis magnam desolo carcer. Tenus decimus cubitum coerceo demens coniuratio copiose. Cenaculum clam celer desino conqueror.', '2024-04-21 10:17:29'),
(14, 1, 4, 3, 'Caveo umerus una eum agnitio censura capitulus aqua vinculum conforto. Sordeo tolero adiuvo suadeo volva architecto trans desparatus. Deduco velociter quas ars ipsum dolor comparo a valetudo. Umerus sufficio bellicus termes nemo. Annus autus vicinus.', '2024-04-21 10:17:29'),
(15, 2, 12, 1, 'Molestiae varius comprehendo quos cohors. Arto carus trans voveo vinitor cupiditas compello voluptatum vivo aspicio. Tepesco omnis assentator verecundia vigilo valens adnuo.\nStabilis clementia compello totus canto excepturi. Amicitia aestas decumbo cubitum coniuratio. Accusamus vacuus dedecor tego cogito acidus vesco.\nDefluo strues eligendi temptatio pariatur conspergo. Voco inventore impedit. Vinitor tollo comprehendo creo speciosus tempora terra undique.', '2024-04-21 10:17:29'),
(16, 2, 7, 5, 'Virtus bos texo circumvenio administratio cado taceo iure. Deinde convoco comburo tenax vitium excepturi perferendis vesco acceptus degusto. Veritas cubicularis deinde admoneo vergo similique error tyrannus.', '2024-04-21 10:17:29'),
(17, 1, 3, 2, 'Altus deprecator contra tamen aliquid. Soluta in clamo averto. Theologus sed ipsa. Summisse conduco varietas. Benigne truculenter ut copia carmen uter conculco accusantium compono ademptio.', '2024-04-21 10:17:29'),
(18, 2, 8, 2, 'Cimentarius vicissitudo tunc agnosco vigor. Omnis advenio tremo temporibus harum arcus paens triumphus sunt. Derideo argumentum comptus decipio tergeo.\nDecor excepturi conor vorax. Amplitudo agnosco veniam culpa temptatio tactus virgo usque. Facere conturbo fugit cotidie suscipio non iste.\nVoco allatus circumvenio verto cernuus defessus despecto casus decens. Necessitatibus officiis barba acsi cubicularis utrimque sumptus adficio advoco. Veritatis qui color desino.', '2024-04-21 10:17:29'),
(19, 1, 18, 5, 'Cohibeo vociferor tyrannus apud decimus denego vociferor.\nVolutabrum studio audio aut bene attonbitus ad.\nAsperiores somnus ter inventore casso quidem voveo.', '2024-04-21 10:17:29'),
(20, 2, 19, 4, 'Abeo commodo solus adversus abscido capillus spoliatio cruentus. Cursim tero adicio asper utrimque dolor. Timidus ex subito tenetur cohaero.\nTamisium cubitum acidus alter sumo vere ter subnecto. Aeternus explicabo tego surgo ipsum voco sustineo. Caput decens adulescens aegre admitto.\nVideo dolores adulatio cognatus quam cupio tepesco totidem. Correptius sortitus stips necessitatibus condico timidus toties cogito cura. Decumbo defluo reiciendis inflammatio cupiditas depono umquam.', '2024-04-21 10:17:29'),
(21, 2, 21, 1, 'Adeptio derideo natus. Deserunt testimonium tenuis templum speciosus thalassinus confugo vomica solutio exercitationem. Esse synagoga comminor careo creo verbera sursum alii demens.', '2024-04-21 10:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `preptime` tinyint(4) NOT NULL,
  `posted` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `description`, `content`, `preptime`, `posted`, `user_id`) VALUES
(1, 'Spinach penne with chicken', 'Even if we won\'t get Popeye-biceps from spinach, it is still a really great vegetable! When combined with pasta, even those who are not fond of spinach leaves can bravely try it.', 'Ingredients: 300g whole wheat spaghetti, 5 tablespoons olive oil, red onion, garlic, salt, pepper, nutmeg, 150g baby spinach, 200ml buttermilk, 500g chicken breast. \n\nRecipe: To prepare the spinach-buttermilk spaghetti with chicken, the first step is to cook the pasta in plenty of boiling salted water. Because it is made from whole wheat durum flour, it needs to be cooked a little longer than traditional dry pasta. For the sauce, heat 2 tablespoons of olive oil in a pan and fry the sliced red onion with a pinch of salt. Add the sliced garlic and fry until golden. Then add most of the baby spinach but save some for serving later. Once the spinach has wilted down, pour in the buttermilk and season with nutmeg and pepper. Remove from heat and let it cool slightly before pureeing until smooth.\n\nCut the chicken breasts into 1cm cubes and season with salt and pepper. Heat up the remaining olive oil in a high-sided frying pan and cook the chicken cubes until golden brown. When done, mix them with the drained spaghetti and sauce before serving topped with reserved spinach leaves.', 40, '2024-04-21 10:17:29', 2),
(2, 'Spring potato pasta', 'Spring is here, fresh ingredients are coming, so I bring you a potato pasta with a spring vibe that brings the usual in a much fresher way!', 'Ingredients: 300 g potatoes- 2 tablespoons of oil-6 sprigs of spring onion-2 cloves of garlic- 200g noodle-salt, pepper, ground cumin-2 tablespoons of sour cream Recipe: As the first step in making the spring potato pasta, depending on the size of the potato, we cut it into four or six pieces and start frying it on medium heat in oil in a large skillet. When it is nice and golden brown everywhere, we add the sliced spring onions and sliced garlic. Season with salt, pepper and ground cumin. With this we stir again, then pour in 300 ml of water and cook until all water is gone (but if the potato has not softened after this time, feel free to add a little more water). Once the potato is cooked and all water evaporated, we add another 200 ml of water and mash the potato with a potato masher. Cook the pasta in salted water until tender then drain and mix it with the mashed potatoes. Serve with sour cream on top.', 30, '2024-04-21 10:17:29', 1),
(3, 'Sausage lentil cream soup.', 'Insanely delicious lentil cream soup that will be a real soul-warming comfort on cold winter nights!', 'Ingredients: 200 g of lentils, garlic, onion, 5 tablespoons of olive oil, 1 tablespoon of sugar, 1 teaspoon of smoked paprika, 100 ml of dry white wine, 1 liter of vegetable broth, 1 tablespoon of mustard, 100 ml of heavy cream, 100g of spicy sausage, salt and pepper. \nRecipe: To make the lentil cream soup, first soak the lentils for 2-3 hours or preferably overnight. Chop the red and garlic onions finely. Caramelize the sugar in the oil and add both types of onions. Cook until they become translucent. Then add the smoked paprika and lentils and pour in the white wine. Season with salt and pepper and pour in the vegetable broth to cook the lentils until they are tender. Use a hand blender to puree it while stirring in mustard and heavy cream. \nCut the sausage into thin slices (0.5 cm) and fry them in a pan before serving with lentil cream soup.', 45, '2024-04-21 10:17:29', 2),
(4, 'Temesvári tokány. \n\nTranslation: Temesvár-style stew.', 'There are as many variations of tokány as there are houses, and we have already made csikós, bakonyi and butcher versions. Now we present a version from Temesvár.', 'Ingredients: 150 g smoked bacon-600 g turkey thigh- 300 g yellow wax beans- 120 g sour cream- 100 g heavy cream- 1 clove garlic-1 onion- 1 TV pepper- 1 small tomato-1 tablespoon flour- 1 bunch parsley - salt, pepper, paprika. For dumplings: 220 ml water - 1 egg - 400 g flour -1 tablespoon cooking oil - salt. Recipe: To make Temesvar-style stew, first cut the bacon into small cubes (about 1 cm) and fry it in a pot over medium heat until the fat has rendered. Place the peppers and tomatoes, cut side down, on top of the bacon and brown them well. Next, add the minced garlic and finely chopped onion and sauté for a few minutes. Pour in 50 ml of water and when it boils, sprinkle with paprika. Once it has dissolved nicely, add another 100 ml of water and continue to simmer. Add diced (approx. 5x1 cm) turkey thigh seasoned with salt and pepper to the pot of stew. If needed, add some more water occasionally to keep it from drying out. When the meat is almost tender, add the wax beans and enough vegetable broth or water to cover them completely. When both meat and beans become soft enough remove from heat and prepare thickening by mixing flour with approximately 50 ml of water along with sour cream into the dish then stirring until no lumps remain.\nLet it cook for another two or three minutes while adding chopped parsley and heavy cream for seasoning.\nWhile preparing the stew we can also cook some dumplings , for that we mix a beaten egg with salt in a mixing bowl full of water then gradually stir in swelled flour in order to get rid of any lumps . After boiling salted water we pour tiny portions from mixture inside so called spaetzle which are simmered until done , then strained briefly under running cold water before serving mixed with oil .', 100, '2024-04-21 10:17:29', 2),
(5, 'Chicken breast with peach rice.', 'Many times we got the inverse of this food at the cafeteria, alias peach chicken, and well now honestly: I couldn\'t stand it. But now there is a version that I can hardly stop eating.', 'Ingredients: 2 red onions, 4 tablespoons of coconut oil, 4 apricots, 2 bags of basmati rice, 400g chicken breast, 2 tablespoons of ponzu sauce, turmeric, salt, pepper. \n\nRecipe: We start by making the quick chicken breast with the side dish. For this, we cut the onion into half rings and start frying it in a hot pot with a little coconut oil over medium heat. We chop up three apricots after removing their pits and slice them thinly. When the onion is golden brown, we add the apricots and sprinkle everything with turmeric and pepper before adding about 200ml of water. We cook everything until it\'s soft and then add salt to taste before blending it all together. We cook the bagged rice according to the instructions on the packaging (you can use regular rice instead), then mix it together with the sauce. We cut up one remaining apricot into wedges and sear both sides in a hot, dry pan over high heat. We season the chicken breasts with salt, then fry them in a hot pan with some coconut oil for a few minutes on each side before putting them in an oven preheated to 150°C for 10-15 minutes.\n\nFor serving: We scoop some rice onto a plate and top it with sliced chicken breast and seared apricots before drizzling ponzu sauce on top.', 45, '2024-04-21 10:17:29', 2),
(6, 'Roasted chicken with spinach white bean puree and roasted carrots.', 'This food has everything you need! It\'s high in protein, healthy, insanely delicious, and putting it together is not rocket science! Try it yourself, believe me, you won\'t be disappointed.', 'Ingredients: 800 g chicken breast, 4 tablespoons coconut oil, 10-12 carrots, 2 tablespoons honey, 1 tablespoon chili pepper, 1 head of garlic, 40 g baby spinach, 2 cans of large white beans, 2 lemons, 2 tablespoons tahini, salt, pepper. Recipe: For the roasted chicken with spinach and white bean puree and roasted carrots recipe, first clean and salt and pepper the chicken breasts. Melt the coconut oil in a heat-resistant pan and fry the fillets on high heat until browned all over for a few minutes. Then put them in the preheated oven at 160 degrees Celsius for 10-12 minutes. Thoroughly wash the carrots and place them in a tray. Spread honey, chili paste, crushed garlic over them and season with salt and pepper. Bake in a preheated oven at 180 degrees Celsius for 25-30 minutes. We can also place it next to the chicken in the oven at 160 degrees Celsius but when the chicken is done we should turn up to a higher temperature. For the bean puree put all ingredients into a blender and blend until super creamy. If we want even smoother texture we can strain it through a sieve. When serving put some bean puree on a plate then add sliced chicken breast and roasted carrots on top of it.', 50, '2024-04-21 10:17:29', 2),
(7, 'Eggplant rolls filled with egg cream.', 'Boosted and filled with egg cream spring delicacy. Perfect for cold plates or even for guests!', 'Ingredients: 4 eggs, 2 eggplants, 100 ml soy sauce, 30 ml oil, 2 tablespoons maple syrup, 100 ml tomato paste, 100 ml mascarpone, 2 tablespoons sour cream, 2 tablespoons mustard, 1 lemon, 2 green onions, salt, pepper and smoked paprika. Recipe: As the first step of making the eggplant rolls with egg cream filling, we boil the eggs slowly in simmering water for about 7-8 minutes until they are hard boiled.\nUsing a mandolin we slice the eggplants into thin slices about 3mm thick. In a bowl we combine the soy sauce, oil, maple syrup, smoked paprika and tomato paste; add salt & pepper and mix everything until smooth. We brush both sides of the eggplant slices with this mixture and fry each slice for about a minute or two on each side in a frying pan. After frying we put them aside to cool down.\nOnce the eggs are cooked through we peel them and put them into a food processor with mascarpone cheese; sour cream; salt & pepper; chopped green onions; mustard and squeezed lemon juice. We blend everything together until it becomes smooth and creamy. We then put this mixture into a piping bag. We then place a strip of this mixture at one end of each prepared eggplant slice and roll it tightly like sushi.\nWe then arrange all of our finished sushi rolls onto small plates and sprinkle fresh chopped green onion on top before serving.', 35, '2024-04-21 10:17:29', 2),
(8, 'Spring vegetable Pad Thai', 'I brought you a colorful spring vegan pad thai recipe that is super easy to make and will only take 30 minutes and one pan!', 'Ingredients: 100 g rice noodles - 2 tbsp vegetable oil - 3 radishes - 2 spring onions - 1 pak choi - fresh ginger - 1 garlic clove - 1 small red chili pepper - 1 tbsp tamarind paste - 2 tbsp sesame oil - 1 tsp brown sugar - 2 tbsp soy sauce - 2 eggs-50 g baby spinach-100 g mung bean sprouts- salt, pepper.\n\nRecipe: To start preparing the vegan pad Thai, cook the rice noodles in plenty of salted boiling water for 4-5 minutes, then drain. In a wok, heat the oil and add the sliced radishes, chopped spring onions and sliced pak choi. After half a minute of frying, add the grated ginger and garlic, as well as the sliced chili pepper. Stir and add the cooked noodles, then add the tamarind paste, sesame oil, brown sugar and soy sauce. After thorough mixing, push the noodles to one side of the wok and crack in the eggs on the other side, season with salt and pepper and mix well. Add spinach and mung bean sprouts and stir again. Serve the finished noodles on a plate sprinkled with chopped coriander and peanuts.', 30, '2024-04-21 10:17:29', 2),
(9, 'Spring risotto', 'This super green spring risotto is so loaded that it can be a complete lunch anytime even without meat.', 'Ingredients: 100g butter-200g shallot-200g risotto rice-120ml white wine-100g baby spinach-900ml stock-2 tablespoons olive oil-4 cloves garlic -300g asparagus-230g green peas-140g parmesan cheese-salt, pepper, parsley\nRecipe: To make the spring risotto, melt half of the butter in a pot over medium heat. Add finely chopped shallots and fry until golden brown. Press in the garlic cloves and fry for another 2-3 minutes. Add the rice, stir and pour in the white wine. Allow to evaporate for 3-4 minutes. Add spinach and cook until it wilts. Add a ladleful of stock and simmer until the rice absorbs it, then add another ladleful of stock, continuously stirring. Repeat this process until the rice has reached a pleasant chewiness.\nIn another pan, heat up some oil and fry chopped asparagus (without woody ends) until golden brown.\nAdd this to the risotto along with green peas, chopped parsley and remaining butter. Season with salt and pepper, add three-quarters of parmesan cheese. Cook for further 2-3 minutes while continuously stirring. Sprinkle with remaining parsley and parmesan cheese before serving.', 40, '2024-04-21 10:17:29', 2),
(10, 'Vegan semolina pudding.', 'Actually, there\'s no need to think of anything fancy regarding this dish. It\'s not vegan because it contains tofu and vegetables. We simply replaced cow\'s milk with plant-based milk. And in order to be accessible for everyone, we used rice semolina instead of the usual wheat semolina, so even those ', 'Ingredients: 100 g rice semolina - 600 ml plant-based milk - 50 g granulated sugar - 1 teaspoon vanilla aroma - 30 g raisins - cocoa powder, a pinch of salt. Recipe: To make vegan rice pudding, sprinkle the rice semolina into a pot and pour in the plant-based milk, sugar, vanilla aroma and a pinch of salt. Thoroughly mix everything together and bring to boil. After 1-2 minutes of boiling, the vegan rice pudding is ready. When serving, sprinkle a little cocoa powder on top.', 10, '2024-04-21 10:17:29', 2),
(11, '5-ingredient cheesy turkey breast', 'Satisfying and delicious turkey recipe, perfect for a weekday dinner!', 'Ingredients: 250g cream cheese- 600g turkey breast fillet- 100g Gouda cheese- 3 tablespoons of cooking oil- garlic powder, salt, pepper, Provencal spice blend. For serving: French fries or salad\nRecipe: Begin by preparing the cheesy cream for the turkey breast. To do this, mix the cream cheese with garlic powder, the Provencal spice blend, and salt and pepper to taste. Slice the turkey breast into pieces, season with salt and pepper. Sear on medium heat in a pan with oil until brown on both sides then transfer to a baking dish. Spread the cream cheese mixture on top of the turkey slices, sprinkle with grated Gouda cheese, and bake at 200°C for about 20 minutes until golden brown on top. This dish can be served with French fries, rice, or couscous for a satisfying lunch or dinner. Alternatively, it can be enjoyed with a fresh mixed salad or steamed vegetables for a lighter meal option.', 30, '2024-04-21 10:17:29', 2),
(12, 'Chicken breast baked in deer spine shape.', 'It\'s so delicious that even Grandma asks for the recipe. It\'s easy and quick, can\'t go wrong with it.', 'Ingredients: 800g chicken breast fillet - 400g sliced bacon - 200g cheese - 2 eggs - 4 tablespoons sour cream - 3 tablespoons flour - salt, pepper. Recipe: Mix together the sour cream, eggs, flour, salt, pepper, and grated cheese. Cut the chicken breast into cubes and add to the mixture. Line a baking dish with the bacon and pour the meat mixture into the dish, folding the excess bacon over the top. Bake for 40 minutes at 200 degrees Celsius in a preheated oven, then transfer to a tray and continue baking until the bacon is crispy. Serve with salad or baked potatoes.', 60, '2024-04-21 10:17:29', 2),
(13, 'Bacon and chestnut roasted Brussels sprouts.', 'This dish can be prepared lightning fast and it will be brilliant either on its own or as a side dish! Believe me!', 'Ingredients: 100g sliced bacon - 500g Brussels sprouts - 100g boiled chestnuts - 3 tablespoons cooking oil - salt, pepper\nRecipe: The first step in preparing the bacon and chestnut sautéed Brussels sprouts is to cut the bacon into small cubes and fry it on medium heat in oil for a few minutes. Wash the Brussels sprouts, clean them of any damaged leaves, halve the larger ones, and cook them in plenty of slightly salted water for 4-5 minutes. Then add them to the bacon and sauté for a little longer. Season with salt and pepper, then add the halved chestnuts. Stir everything together and it\'s ready to serve!', 20, '2024-04-21 10:17:29', 2),
(14, '15-minute vegetable couscous', 'Your vegan friends have announced their arrival. It can be quickly prepared by the time they get to you.', 'Ingredients: 500 g Mexican vegetable mix, 200 g couscous, seasoning, salt, pepper \n\nRecipe: Pour enough water over the vegetable mix to cover it, then add the seasoning, 1 tsp salt and cook until soft for a few minutes. (Make sure not to overcook the vegetables, a few minutes is enough.) Then strain and keep warm, leaving behind 2.5 dl of the broth. \n\nNext, pour the couscous into the 2.5 dl broth, cover and let stand for a few minutes to absorb the liquid. Then add the vegetable mix to the couscous, season with salt and pepper to taste and stir together.', 15, '2024-04-21 10:17:29', 1),
(15, 'Black mussel in garlic tomato sauce.', 'For lovers of shells. Delicious and fresh.', 'Ingredients: 700 g shell-on black mussels - 600 ml vegetable broth - 2 stalks of celery - 1 tablespoon of tomato paste - 2 whole tomatoes - 1 California pepper - 1 red onion - 1 garlic clove - salt, pepper Recipe: Then add the vegetable mixture to the couscous, season with salt and pepper to taste and mix well. Pour the soup into a larger pot and bring to a boil. Then add the cleaned mussels and cook for 8-10 minutes until done. Finally, serve with toasted baguette slices. Be careful not to consume any mussels that did not open during cooking because they may have gone bad!', 60, '2024-04-21 10:17:29', 1),
(16, 'Traditional scrambled eggs with peppers', 'Great food on summer evenings. Quick and easy.', 'Ingredients: 1 kg of pepper, 300 g of tomato, 3 onions, 5 eggs, 1 tablespoon of duck fat, salt, pepper. Recipe: For the vegetable ragout with egg, heat the fat in a pot over medium heat. Add the peeled and halved red onions and salt them, letting them soften a bit. In the meantime, remove the seeds from the peppers and slice them into 2-3 cm pieces. When the onions have softened a bit, add the peppers and salt again. Cover and let steam on low heat for about 10 minutes until the peppers are slightly softened. Season with good quality paprika powder and mix well. Cut the tomatoes into pieces and add them to the pepper base to continue cooking until they soften and break down a bit. Crack the eggs into a mixing bowl, beat them together, then pour into the ragout. Once slightly cooked together, your vegetable ragout with egg is ready to serve.', 25, '2024-04-21 10:17:29', 2),
(17, 'Simple layered cabbage', 'Those who didn\'t like cabbage before will only want to eat this from now on. Fast and delicious.', 'Ingredients: 1500 g of cabbage - 200 g of rice - 500 g of minced meat - 250 g of sour cream - 2 onions - 1 tablespoon of oil - salt, pepper. Recipe: Cut out the core of the cabbage, then cut the cabbage into large pieces and boil in salted water for 15-20 minutes. Drain the water and squeeze out the cabbage. Steam the rice in double the amount of water as usual. Finely chop the onions. Saute the onions in oil, add the meat, season with salt and pepper, and simmer until its juices evaporate. Season with paprika and cook until tender by adding a little water. Place half of the cabbage on the bottom of a baking dish, spread most of the steamed rice on top, coat with sour cream, then add meat, layer again with rice, and finally cover with remaining cabbage; drizzle with sour cream. Bake at 180 degrees Celsius for 35-40 minutes.', 70, '2024-04-21 10:17:29', 1),
(18, 'Breaded fish fillet with mayonnaise potato salad', 'Your Christmas table can be decorated. Everyone loves the delicious fish dish that is filling but not too heavy. There is also room for the beigli.', 'Ingredients: 500g white fish fillet - 500ml cooking oil - 3 eggs - 100g breadcrumbs - 100g flour - 5 large potatoes - 500g sour cream - 300g mayonnaise - 1 red onion - salt, pepper, sugar, mustard, lemon juice\n\nRecipe: To prepare the breaded fish fillet, season the fish slices with salt and pepper, then coat in flour, beaten eggs and finally breadcrumbs. Heat the oil and fry the coated fish until golden brown. \nFor the potato salad with mayonnaise, boil the potatoes with skin on until soft. Peel and thinly slice when cooled down. In a mixing bowl, blend together sour cream, mayonnaise, salt, pepper, sugar, mustard and lemon juice. Peel and finely chop the red onion and carefully mix it together with the potatoes into the mayonnaise mixture. Store in refrigerator until serving alongside the breaded fish.', 70, '2024-04-21 10:17:29', 2),
(19, 'Homemade Pad Thai', 'Do you like Asian cuisine? It is easy to make and a sure success.', 'Ingredients: 200 ml oil, 2 cloves of garlic, 350 g chicken breast, 75 g mung bean sprouts, 3 spring onions, 3 eggs, 300 g rice noodles, 3 tablespoons fish sauce, 1 tablespoon brown sugar, 1 lime, ground chili pepper, fresh coriander, unsalted roasted peanuts. Recipe: To make pad thai, pour a little oil into a wok and heat it up. Add the crushed garlic and fry for about 30 seconds. Then add the diced chicken and fry until crispy. Next, add the mung bean sprouts and sliced ​​spring onions to the wok and fry them as well. Push the meat and vegetables to one side of the wok while cracking the eggs into the other side. Quickly stir them as if making scrambled eggs, then mix everything together. Then add some cooked rice noodles that have been strained from salted water. Add fish sauce and brown sugar and coarsely ground peanuts to taste (chili is optional). Mix well and fry for a few minutes before squeezing lime juice over it upon serving. Garnish with chopped peanuts and fresh coriander as desired or additional lime juice could be squeezed on top.', 45, '2024-04-21 10:17:29', 2),
(20, 'Cheesy corn baked zucchini', 'Simple and quick meat-free dish.', 'Ingredients: 2 zucchinis - 1 can of corn - 150g mozzarella cheese - 100g parmesan cheese - 2 stalks of green onion - 1 tablespoon olive oil - salt, pepper, thyme\nRecipe: Wash the zucchinis and slice them into rings that are 5-7 millimeters thick. Slice the green onions and press the garlic with a garlic press. Grate the parmesan cheese and slice the mozzarella. In a pan, fry the zucchini rings on both sides over medium heat with a little olive oil. Do not add salt as it will release moisture and cause it to boil/steam instead of frying. Make sure to only put as many zucchini rings in the pan as will fit, which will facilitate frying. If you put too many in the pan, then they will steam. Fry all of the slices in multiple batches before setting them aside.\nOn lower heat with a little bit of olive oil, sauté the green onions until they have softened. Season to taste with salt and pepper, then add in the fried zucchini and garlic within 1-2 minutes. Season with thyme and add more salt if needed, then take off heat after several minutes.\nPreheat oven to 200 Celsius (392 Fahrenheit). Place the fried zucchini evenly on an oven-proof dish, then top it with drained corn that has been covered with sliced mozzarella cheese before sprinkling parmesan on top as well. Put it in the oven for roughly 15-20 minutes or until it has become golden brown in color.', 45, '2024-04-21 10:17:29', 2),
(21, 'Thai shrimp rice noodles', 'Easy to prepare, fresh summer dinner.', 'Ingredients: 250 g rice noodles – 200 g shrimp – 1 onion – 50 g peanuts – 3 spring onions – 1 leek – 2 eggs – oil, salt, pepper – for the sauce: 6 tablespoons soy sauce, rice vinegar, sesame oil - 2 tablespoons brown sugar - 1 teaspoon cayenne pepper - ginger Recipe: Soak the rice noodles in hot water for 10 minutes, then cook for 5-7 minutes. For the sauce, mix soy sauce, rice vinegar, sesame oil, brown sugar and cayenne pepper. Grate ginger into the mix. Heat up oil in a wok and add the shrimp and finely chopped onion. Add salt and pepper. Remove the shrimp when it turns white and set it aside on a plate. Add the drained noodles to the wok and pour in the sauce, mix thoroughly. Move noodles to one side of wok and add eggs; mix together once eggs start to whiten on bottom of pan before stirring into noodle mixture. Add roughly chopped peanuts, green onions, then leek sprouts. Return shrimp to pan and stir all ingredients together one last time. Serve with additional peanuts, green onions, sprouts or hot chili peppers for garnish.', 60, '2024-04-21 10:17:29', 2);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_allergens`
--

CREATE TABLE `recipe_allergens` (
  `id` int(11) NOT NULL,
  `allergen_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_allergens`
--

INSERT INTO `recipe_allergens` (`id`, `allergen_id`, `recipe_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 3, 7),
(4, 1, 9),
(5, 1, 8),
(6, 1, 4),
(7, 1, 3),
(8, 7, 11),
(9, 3, 16),
(10, 1, 12),
(11, 1, 5),
(12, 1, 18),
(13, 9, 15),
(14, 1, 14),
(15, 2, 21),
(16, 2, 19),
(17, 3, 2),
(18, 6, 7),
(19, 3, 3),
(20, 3, 9),
(21, 3, 4),
(22, 7, 20),
(23, 3, 8),
(24, 3, 12),
(25, 3, 18),
(26, 14, 15),
(27, 3, 21),
(28, 3, 19),
(29, 7, 2),
(30, 7, 7),
(31, 7, 3),
(32, 7, 9),
(33, 7, 4),
(34, 5, 8),
(35, 7, 12),
(36, 4, 18),
(37, 4, 21),
(38, 4, 19),
(39, 10, 7),
(40, 9, 3),
(41, 6, 8),
(42, 7, 18),
(43, 5, 21),
(44, 5, 19),
(45, 10, 3),
(46, 8, 8),
(47, 6, 21),
(48, 9, 18),
(49, 8, 19),
(50, 12, 3),
(51, 11, 8),
(52, 11, 21),
(53, 10, 18),
(54, 13, 19),
(55, 13, 21),
(56, 14, 21);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `role`) VALUES
(1, 'manager@example.com', 'Manager User', '$argon2id$v=19$m=65536,t=3,p=4$JLE+2AwoYtQG1sYRvWZfLg$SxOiNK5e/fspt8eN6x3XCH+jvvBnVSQjFAe9msMfgp0', 'manager'),
(2, 'user.test@example.com', 'Test User', '$argon2id$v=19$m=65536,t=3,p=4$dPI/okKwco8Me6at9T3CsA$9ArNnSQ0u/iF4uNnySWjXZA4CwkQ9jGybuPG0f6mUDQ', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergens`
--
ALTER TABLE `allergens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Ratings_user_id_fkey` (`user_id`),
  ADD KEY `Ratings_recipe_id_fkey` (`recipe_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Recipes_user_id_fkey` (`user_id`);

--
-- Indexes for table `recipe_allergens`
--
ALTER TABLE `recipe_allergens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Recipe_Allergens_allergen_id_fkey` (`allergen_id`),
  ADD KEY `Recipe_Allergens_recipe_id_fkey` (`recipe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Users_email_key` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergens`
--
ALTER TABLE `allergens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `recipe_allergens`
--
ALTER TABLE `recipe_allergens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `Ratings_recipe_id_fkey` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Ratings_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `Recipes_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipe_allergens`
--
ALTER TABLE `recipe_allergens`
  ADD CONSTRAINT `Recipe_Allergens_allergen_id_fkey` FOREIGN KEY (`allergen_id`) REFERENCES `allergens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Recipe_Allergens_recipe_id_fkey` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
