-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 06:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
(1, 2, 7, 4, 'Acervus tepesco vulgo antepono porro cedo carus confero depopulo.\nTergum cohors decor spoliatio vos.', '2024-04-22 09:27:00'),
(2, 2, 2, 3, 'Adstringo dicta circumvenio adfero varius casso. Aro commemoro tepidus usque vir. Omnis tunc apostolus adipiscor.\nSpes adipiscor aperio cribro crustulum campana. Eum clibanus desino vindico via calculus subseco. Voluptatum conicio praesentium utilis conculco infit vilitas abbas.\nCoerceo vinculum tego aurum barba pel amicitia tribuo celer. Aperte ambulo sapiente defaeco ventosus. Tredecim eveniet caute bardus defleo cohors veniam.', '2024-04-22 09:27:00'),
(3, 1, 20, 2, 'Cursus cenaculum amoveo autus cupio patria paens uter apparatus quibusdam. Arbor coaegresco absque contra totidem reiciendis surgo. Suasoria tandem textilis cumque corrigo autus torqueo stillicidium testimonium sumo. Ocer vos clarus studio unus adicio adhaero.', '2024-04-22 09:27:00'),
(4, 2, 7, 1, 'Bene supplanto laboriosam eligendi spoliatio virga tres depraedor venio spargo.\nSum altus sursum mollitia communis.\nCapitulus cerno solutio.\nUlciscor decor cilicium degero deporto stella conatus vero vetus.\nDecet aliqua vulgus.', '2024-04-22 09:27:00'),
(5, 2, 10, 3, 'Laboriosam damnatio utilis adnuo antepono congregatio cursim titulus copiose.', '2024-04-22 09:27:00'),
(6, 2, 21, 2, 'Crepusculum carbo abundans caste tergo.', '2024-04-22 09:27:00'),
(7, 2, 2, 5, 'Minima at cunctatio amiculum quia.', '2024-04-22 09:27:00'),
(8, 1, 8, 5, 'Deleniti tenetur ducimus atque cetera atqui quis aiunt. Aurum abduco repudiandae stillicidium. Nobis admoneo thymbra ulciscor verto tristis provident.', '2024-04-22 09:27:00'),
(9, 1, 5, 5, 'Ulterius tutis aggredior pax tempora quis territo depulso cruentus. Vulnero curatio solvo. Stipes cursus constans appono versus. Fuga venustas surculus acerbitas traho summisse aduro. Non verumtamen quo atque comburo calco.', '2024-04-22 09:27:00'),
(10, 2, 17, 2, 'Cruciamentum usque decumbo cultellus creo tactus cotidie constans defessus tres.\nTamdiu tertius cernuus antiquus blandior suffoco adiuvo exercitationem credo porro.\nDolorem sopor pauci corona eveniet trucido alii certus concido inventore.', '2024-04-22 09:27:00'),
(11, 1, 15, 4, 'Certe ago vitium voco cupiditate asperiores vita. Enim theatrum vetus quos adfectus suasoria vaco. Custodia vere tubineus adaugeo tubineus titulus defungo.\nCattus utor confugo caveo velociter. Tenus vulgo tenetur tergo tamdiu. Similique videlicet viridis.\nVoluptatem accommodo speculum officia volup dens. Arx baiulus amaritudo defleo suscipit. Callide amicitia repellendus vitiosus sumptus ocer praesentium.', '2024-04-22 09:27:00'),
(12, 2, 20, 1, 'Supra facilis vetus.', '2024-04-22 09:27:00'),
(13, 1, 14, 4, 'Ter ara porro ultra conventus curiositas sint suscipio carus quod. Clementia tergo ratione caveo. Solio caelum accusator.', '2024-04-22 09:27:00'),
(14, 2, 10, 1, 'Minima ratione ipsam. Comminor autus harum demoror subiungo.', '2024-04-22 09:27:00'),
(15, 2, 7, 3, 'Velum abscido vomer tamen tibi sortitus quod tonsor.\nViriliter aeternus victoria videlicet tabula comprehendo triduana ratione.\nContabesco admitto acsi considero corrumpo debilito aveho video suppono.\nAntepono undique consuasor convoco quibusdam tego demum cetera quas.', '2024-04-22 09:27:00'),
(16, 1, 17, 2, 'Cribro demum amiculum degusto textilis porro accusator tres aptus depulso.', '2024-04-22 09:27:00'),
(17, 2, 2, 2, 'Spes cultellus ager venustas coerceo. Veritas tenetur peccatus uberrime adulescens communis. Blanditiis terminatio velit tego consuasor vito. Degero vitium eos cometes. Optio acquiro videlicet ver umerus adinventitias infit tamen.', '2024-04-22 09:27:00'),
(18, 2, 6, 5, 'Tui vivo trans suus harum aurum. Aspicio libero carcer allatus velut callide aeger velut dolorem nesciunt. Spiculum avarus allatus cognatus spoliatio. Tenus tametsi perspiciatis.', '2024-04-22 09:27:00'),
(19, 1, 5, 2, 'Auxilium odio ait cernuus crapula suus tametsi credo conventus ratione.', '2024-04-22 09:27:00'),
(20, 2, 8, 5, 'Colligo cruciamentum allatus a bonus arceo audio unus summopere curtus.\nSordeo coniuratio tenax crinis.\nQuas comprehendo abduco coaegresco.\nEius ultra sordeo testimonium abeo.', '2024-04-22 09:27:00'),
(21, 1, 1, 2, 'Eius sublime corroboro terga vel. Contra statua suus curatio tui antiquus atrocitas atqui. Adstringo doloribus hic desipio terebro tergum caste. Id undique adopto iure auxilium pecto. Autus atque paulatim virgo tabernus decipio adiuvo derideo tabgo annus. Vigor cariosus volva artificiose blandior.', '2024-04-22 09:27:00'),
(22, 2, 21, 3, 'Adsidue urbanus articulus deduco communis confero tonsor sub curia. Curiositas consequuntur trans stella voco tot absens bellicus cum desipio. Tum sumptus tripudio.\nContego uxor quam cometes usitas numquam cotidie animadverto careo. Occaecati veritatis brevis nemo tredecim tantum crastinus. Cultura vociferor desolo architecto ipsa omnis triumphus adaugeo desino magni.\nSuccedo aperio audio quo ab atavus adeptio amor causa solus. Charisma odio ventosus vado spiculum talis. Quis timidus demo cognatus.', '2024-04-22 09:27:00'),
(23, 2, 17, 4, 'Delectatio creptio accedo viriliter.', '2024-04-22 09:27:00'),
(24, 1, 15, 2, 'Aestivus suspendo pariatur virgo capitulus.', '2024-04-22 09:27:00'),
(25, 2, 20, 2, 'Corrupti cornu adulescens ater reprehenderit spes.', '2024-04-22 09:27:00'),
(26, 1, 16, 5, 'Aperiam nostrum aegrotatio suppellex vulgivagus supellex magni culpo corroboro defungo. Aduro utroque arcus. Chirographum sum aeger deorsum.', '2024-04-22 09:27:00'),
(27, 1, 14, 5, 'Nesciunt velit supra quibusdam. Nesciunt expedita pax surgo depulso quam natus rem defaeco comedo. Antepono demens comminor damnatio.\nPatrocinor depraedor auditor adstringo. Crinis tyrannus cur. Deficio administratio fugiat tergum ancilla antea.\nCarcer debeo bellum tantillus atqui talus summa pariatur aequus. Tum cunabula cattus sapiente thesaurus vito repudiandae arguo cui. Vinco tepesco tergeo veritas blanditiis deludo theca quisquam.', '2024-04-22 09:27:00'),
(28, 1, 6, 5, 'Appositus vilis tres clamo auctor canis arbor absque assumenda. Cena quidem taceo trans reprehenderit taedium spoliatio.', '2024-04-22 09:27:00'),
(29, 2, 10, 4, 'Amiculum demens sono tracto traho civitas.\nTimor creator volo.\nVirgo textilis talis.\nCursus decet est cicuta coma tutamen aestivus.', '2024-04-22 09:27:00'),
(30, 2, 13, 4, 'Villa defero laborum depraedor arto. Summa centum cur vestrum vorax comparo venia.', '2024-04-22 09:27:00'),
(31, 1, 7, 3, 'Triumphus depono utpote tyrannus enim acidus. Derideo modi exercitationem comptus voluptates anser repellendus. Textilis victoria ultio. Cruciamentum ex autem caelestis spero super unus cetera. Conor vesco animadverto cado curatio utique. Crustulum crinis acer comparo dens totus tempore comitatus.', '2024-04-22 09:27:00'),
(32, 1, 2, 3, 'Aqua strues turbo.\nThesis combibo viriliter spargo tollo spargo unus tam auctus.\nDicta utpote adflicto.\nAdinventitias odit sed capto commodo.', '2024-04-22 09:27:00'),
(33, 1, 11, 3, 'Sufficio complectus vox vita. Auditor pel turba doloribus utor succedo color accusamus admoveo artificiose. Vivo dolorum caelestis ad trepide abutor solitudo tabula.\nSunt aestivus vox. Sono stipes solum suscipit cupiditate ipsa solvo crux creo sollers. Comitatus vulariter thymbra rem adstringo pauper ara tui.\nEst verus crastinus aequitas trepide summisse cruciamentum defaeco correptius tonsor. Conduco distinctio vito cunae comitatus angulus calco omnis altus. Vulticulus vitiosus speciosus sed.', '2024-04-22 09:27:00'),
(34, 2, 1, 5, 'Alveus architecto optio baiulus consectetur vergo natus thymbra annus. Antepono basium comminor ventosus vespillo laborum vilis. Amplexus caterva dolore iste stella.', '2024-04-22 09:27:00'),
(35, 2, 8, 2, 'Cupio adficio curiositas amissio vulticulus nesciunt. Termes curtus commodo temptatio ceno comes. Combibo coepi villa conventus dolore vergo amo.\nCito verbum uxor vigilo patrocinor tres thorax aeneus condico aufero. Contego quibusdam atque minima deinde urbs apostolus trans vir. Curiositas possimus timor canonicus arbustum baiulus validus.\nPecto abduco admoveo audio vergo complectus vinco suadeo. Acquiro curia quia ara. Depereo sollicito audentia timidus perferendis.', '2024-04-22 09:27:00'),
(36, 2, 21, 5, 'Attero aliquam utor conventus ducimus vita conqueror vester curia.', '2024-04-22 09:27:00'),
(37, 1, 15, 2, 'Trepide repellat sint crapula. Voluptatem tabesco audacia laboriosam certe arbor stillicidium celo. Amplus stipes derelinquo consectetur arca casus eligendi solitudo ultio. Abstergo ipsam campana strues ars adduco. Degero cauda vetus solio cras utrimque autem consequatur cado. Beatus deludo crinis deputo.', '2024-04-22 09:27:00'),
(38, 2, 17, 3, 'Itaque cuius arguo.\nCuria ipsam anser vindico degenero templum.', '2024-04-22 09:27:00'),
(39, 1, 14, 2, 'Socius deputo uxor verbum cometes veniam.', '2024-04-22 09:27:00'),
(40, 2, 20, 1, 'Tandem voco aveho sed.', '2024-04-22 09:27:00'),
(41, 1, 4, 2, 'Aufero a taceo celebrer ancilla maiores. Absens antepono defessus patruus caput. Ambitus porro doloremque cervus calcar.\nEius certe vilitas tenus territo. Ante capitulus validus universe aro adsidue. Suscipit valens aveho adnuo vicissitudo conscendo admitto patrocinor cariosus creator.\nConscendo id amiculum. Vitae theatrum accendo harum absque suasoria ater a. Vel tamdiu umbra.', '2024-04-22 09:27:00'),
(42, 1, 2, 5, 'Adfero collum adversus ut astrum asper angustus deserunt sustineo. Acerbitas demergo talus. Quos umquam ullus cohaero audentia caste. Adsum cimentarius ultra talio bibo acidus. Patruus aliquid coepi sonitus arbitro.', '2024-04-22 09:27:00'),
(43, 2, 11, 4, 'Omnis subvenio tam cohors amor conatus cur itaque. Volaticus congregatio angustus speculum deputo desipio usque adulescens compello. Victoria aranea conspergo bene. Accusamus cena convoco ventosus.', '2024-04-22 09:27:00'),
(44, 1, 10, 2, 'Vulnus ullus defendo dolorem contigo assumenda celebrer vergo alias vado. Depromo benigne amplitudo stillicidium aliqua ait. Aer vester antepono curo stillicidium decens tenuis victus cognomen. Dens ante dedico audeo vitiosus cena. Cohaero arcesso thesaurus tot tepesco tero tenus speciosus talus degusto.', '2024-04-22 09:27:00'),
(45, 2, 16, 2, 'Tempore optio tametsi deporto cerno auxilium. Suadeo enim adulatio complectus voluptatum demens. Carpo tumultus coniuratio numquam deorsum.', '2024-04-22 09:27:00'),
(46, 1, 6, 5, 'Conicio curatio subseco. Circumvenio ciminatio commodo stultus quod nulla suasoria ceno. Tabesco desidero tabella depulso comis via itaque coerceo.\nBene cometes sollicito cultellus creo asper. Numquam theologus vesco infit. Advenio alter aqua tandem vester cognomen.\nSortitus valeo adimpleo arto ventosus conqueror angulus distinctio sub. Minus minima ver arbitro timor. Capitulus quibusdam amplexus considero.', '2024-04-22 09:27:00'),
(47, 1, 13, 3, 'Thema cum possimus cum tremo odit volubilis. Amita astrum benigne omnis careo cedo aperio decimus adversus utrimque. Demulceo eum vester claudeo deprimo ex cavus ab adficio neque.', '2024-04-22 09:27:00'),
(48, 1, 21, 5, 'Cruentus subiungo varietas nihil fuga.\nCariosus ut placeat constans.\nTorrens dolorem synagoga aliquid stabilis earum bene conforto accedo.\nCurtus sophismata amitto nihil ventosus uter dicta.', '2024-04-22 09:27:00'),
(49, 2, 7, 1, 'Viscus desino vomica talus verus vir qui sordeo.\nSomniculosus vorax omnis.', '2024-04-22 09:27:00'),
(50, 2, 8, 3, 'Casso adinventitias alo conforto. Tonsor aranea strenuus repudiandae coadunatio aiunt constans complectus crustulum. Ager magnam eveniet delicate assumenda ustulo cohors. Voluptatem vix sol ventosus certe amplexus decet succedo. Tristis vehemens vulnero cenaculum delectatio sub. Unde cubicularis amissio defleo suppellex adulatio capto sed nulla defaeco.', '2024-04-22 09:27:00'),
(51, 2, 10, 2, 'Bis verbera voro torqueo vinum suasoria id coniecto architecto viduo.', '2024-04-22 09:27:00'),
(52, 1, 18, 3, 'Atrox nam atqui. Tricesimus non terminatio ipsa tendo deputo cohibeo sursum debitis tyrannus. Optio tum sperno barba vae vulariter.', '2024-04-22 09:27:00'),
(53, 1, 17, 5, 'Synagoga velum decet. Creator autem astrum qui compello decretum aspicio. Cupiditate sono quasi subiungo acer angustus cui acies tactus apud.', '2024-04-22 09:27:00'),
(54, 1, 4, 4, 'Alter ante natus cornu tabernus votum deripio adfectus.', '2024-04-22 09:27:00'),
(55, 2, 14, 2, 'Bene depraedor cubo maxime xiphias nobis adaugeo contabesco.\nQuam deleo clarus tollo inflammatio vix ceno.\nSulum culpa delinquo addo consectetur coniecto.', '2024-04-22 09:27:00'),
(56, 1, 20, 5, 'Torrens admoveo ceno adiuvo cariosus conspergo cur sponte nemo.', '2024-04-22 09:27:00'),
(57, 2, 11, 5, 'Assentator desino claro auctor ratione urbanus careo.', '2024-04-22 09:27:00'),
(58, 2, 2, 5, 'Quas viridis strues.', '2024-04-22 09:27:00'),
(59, 1, 1, 2, 'Quis tondeo succedo. Cenaculum volup censura ventito correptius audentia capitulus. Traho verbera synagoga curvo terminatio.\nCopia impedit occaecati cuppedia praesentium certe carmen. Vitium ea ultra ager verus. Vergo subnecto viduo cernuus.\nVenustas vilitas sollers amaritudo aegre. Tibi cena vetus expedita ultio. Demoror ante conitor arca bis antiquus derelinquo articulus patruus.', '2024-04-22 09:27:00'),
(60, 2, 3, 4, 'Magnam minima doloribus articulus doloribus ventus. Et cras comitatus arma copia advenio. Comptus cruentus cilicium apparatus.', '2024-04-22 09:27:00'),
(61, 1, 15, 1, 'Corrumpo labore charisma administratio nemo cenaculum arbor adopto. Cuppedia vorago cura usus truculenter veritatis rerum. Ante thermae timor tergeo ventosus tubineus administratio.\nAmplexus vitiosus vester venio. Timor solus tantum virgo. Tergeo debilito amoveo auctus cupressus aequus summa caterva tabesco tui.\nAureus armarium aeternus dicta similique. Sapiente occaecati coniuratio voro atqui talio conculco ara. Sollicito benigne tamen alo.', '2024-04-22 09:27:00'),
(62, 2, 13, 5, 'Ater vulgus sortitus caelestis caterva tergeo.', '2024-04-22 09:27:00'),
(63, 1, 12, 2, 'Adamo theologus urbanus adflicto quo auctor amiculum deorsum. Sublime defendo unde sonitus.', '2024-04-22 09:27:00'),
(64, 2, 21, 5, 'Vitiosus et illo aeneus tabesco.', '2024-04-22 09:27:00'),
(65, 2, 8, 1, 'Virga vulgaris maxime traho thalassinus debeo eaque cultura coniecto vapulus. Cras nulla conqueror adsuesco sit sapiente abduco tres viduo doloribus. Reprehenderit bellum uberrime adfectus absum trucido delectatio tonsor aestas triduana.', '2024-04-22 09:27:00'),
(66, 2, 7, 4, 'Magni ea venio vinitor surgo thermae pecco at repellat.', '2024-04-22 09:27:00'),
(67, 2, 2, 2, 'Corona pauper tantillus dolore timidus auctus strues velut crinis vomer.\nDecimus vobis auditor supellex ustulo pariatur natus claro sunt absconditus.\nAliqua nemo temperantia sonitus suasoria cicuta arx deficio.', '2024-04-22 09:27:00'),
(68, 2, 4, 5, 'Officiis copia vitium curso centum.\nAdeptio temeritas amicitia veniam.\nAlo at cuius aro reprehenderit validus sopor cribro.\nAuxilium atrocitas tendo vita inventore asporto nihil veritatis.', '2024-04-22 09:27:00'),
(69, 1, 17, 2, 'Capio mollitia conculco varius celer claro culpo vinitor tonsor. Vulgaris aranea deorsum depulso nulla comminor abscido molestias atque deprecator. Ratione turbo caritas.', '2024-04-22 09:27:00'),
(70, 1, 11, 2, 'Ad vestigium arbustum amissio virtus verto vilitas demergo. Minus conspergo uter sum succedo. Demens stultus cunctatio tabella aufero textilis totidem tredecim aurum acerbitas.\nCoepi voluptate harum nesciunt. Amplexus arguo comparo arto stultus. Esse tamdiu id amor tum.\nSurgo solum demoror delibero suspendo abundans amet. Vomito vallum laborum viscus atrocitas quisquam bibo alveus tempus. Dolor tardus amitto.', '2024-04-22 09:27:00'),
(71, 1, 20, 1, 'Deorsum architecto rem infit adflicto.\nTametsi rem deficio annus temperantia nihil amita.\nDemo coniuratio dolorem adamo.', '2024-04-22 09:27:00'),
(72, 2, 9, 4, 'Cado calco facilis sui verecundia cauda umbra ulciscor.', '2024-04-22 09:27:00'),
(73, 2, 1, 1, 'Cupressus taceo porro laborum admoneo acerbitas angustus ater cenaculum. Audax spargo spiritus conscendo dignissimos quas bardus. Vetus arcus vir tutis alias error.', '2024-04-22 09:27:00'),
(74, 2, 14, 5, 'Cicuta certe officia desidero auxilium. Vesper sui trans contra armarium usque arceo vapulus astrum talus. Surgo tertius textus confugo ventosus tenus thorax capto tempus. Apud adversus artificiose adiuvo creator decumbo. Strues caelum recusandae creo doloremque coniecto tabesco. Strenuus correptius tepidus uter verbum eveniet amiculum totus corpus suadeo.', '2024-04-22 09:27:00'),
(75, 2, 10, 5, 'Vetus cuppedia repellendus. Iste facere usitas. Video vobis defessus adstringo valens adsum valens nemo.\nComplectus ancilla succurro cito adsum derelinquo beatae. Damno aurum capitulus cursus spiritus. Amoveo advenio verbum deleo aeternus vomica carpo.\nStabilis somnus vorax. Harum desipio coniecto auxilium decumbo solvo. Reprehenderit thesaurus turba dolorem vinitor solium.', '2024-04-22 09:27:00'),
(76, 1, 13, 5, 'Deficio virga adfero usque. Cuius abduco vesper caelum traho cur contabesco thesis. Armarium maxime acies trepide.\nAequitas caries decretum attollo quibusdam peior id convoco. Appositus ventosus curto desino suggero. Tollo defungo cunae ab umbra crinis demum.\nCultellus abeo pecus conatus. Cito fugiat appono venia advenio balbus curvo apparatus suscipit. Voluptates vallum sapiente sursum.', '2024-04-22 09:27:00'),
(77, 1, 3, 2, 'Beatae calcar tergiversatio arma annus apostolus accusantium vapulus vulnus. Curso sollers reiciendis repudiandae umerus vestrum amor. Valde valeo via vitium adsuesco. Aetas desparatus deduco cattus quaerat subiungo explicabo supplanto occaecati cruciamentum. Inflammatio adaugeo defluo depromo. Terreo subvenio ceno cui a adiuvo maxime urbs volup.', '2024-04-22 09:27:00'),
(78, 2, 15, 5, 'Laborum cattus tempus termes. Cado calco villa sufficio. Templum coadunatio cometes cattus thalassinus tyrannus optio absque deprecator.', '2024-04-22 09:27:00'),
(79, 2, 8, 5, 'Eveniet autem audio.', '2024-04-22 09:27:00'),
(80, 2, 12, 3, 'Tardus apostolus consequuntur tot subnecto capto alius ultra clarus. Adipisci illo thesis ter aliquam vinco antea decor capio canis. Asperiores antepono tenax fugiat eaque varietas titulus clarus desipio.', '2024-04-22 09:27:00'),
(81, 2, 21, 1, 'Supellex deleniti textilis conventus tametsi cervus suadeo crebro. Atrocitas circumvenio annus tantum triduana trucido. Allatus explicabo defleo tergum admoveo. Deserunt acies surgo delinquo cervus magnam.', '2024-04-22 09:27:00'),
(82, 2, 4, 1, 'Magni considero spes vulnus tonsor video recusandae. Totam coepi sumo. Adamo ademptio titulus.\nCandidus sodalitas absorbeo vigilo aegrotatio vulariter. Cilicium viridis perspiciatis animi animus celebrer cariosus cognatus crur repellat. Uberrime coerceo magnam balbus quaerat.\nTabgo ulterius culpo umbra adipisci accusator vis arto. Tener vestigium balbus deprimo numquam accendo usitas exercitationem tutamen adimpleo. Cras quisquam nam debeo viriliter vallum.', '2024-04-22 09:27:00'),
(83, 1, 7, 1, 'Vobis abutor via utilis abbas curatio spectaculum dolores calco amissio. Celer undique theatrum tonsor audio conculco cunctatio tabgo cultellus. Claro quam sapiente magnam vomica alienus spiritus suspendo toties.\nCribro suffoco vorax. Acerbitas videlicet sperno solus cattus tamdiu debeo verbum curriculum creptio. Timor angustus accedo porro.\nTabgo tollo arx tui. Comparo stipes acsi cur supellex placeat sol cum apparatus. Reiciendis debeo cunabula tonsor.', '2024-04-22 09:27:00'),
(84, 2, 14, 2, 'Dedico taedium acsi.\nPraesentium thalassinus decerno.\nCaute patior allatus communis acies ipsum cicuta teres auctus iusto.\nCogo undique decens tamquam.', '2024-04-22 09:27:00'),
(85, 2, 15, 4, 'Adversus sulum compono dolor. Tametsi adduco tantillus aeternus subnecto officia dedecor vaco. Turba calco alioqui eligendi.\nAurum absens solvo peior confugo amissio. Benevolentia cupiditas timidus defessus alioqui pauci talio. At et tremo cursim.\nDelectatio thesaurus talis delicate reiciendis aestas. Delinquo impedit quidem. Abstergo urbs quas ultio arguo venio tredecim unde decumbo.', '2024-04-22 09:27:00'),
(86, 2, 8, 4, 'Villa certus capillus tonsor tribuo quaerat cetera speculum beatae tunc.', '2024-04-22 09:27:00'),
(87, 1, 13, 3, 'Esse quaerat depraedor cupressus.', '2024-04-22 09:27:00'),
(88, 1, 9, 5, 'Vicissitudo callide ago cernuus umbra aut volutabrum desparatus ventus. Cervus enim temeritas. Aegre tripudio adeptio coniecto degenero.\nBellum conventus deleo asperiores sodalitas accusantium verto. Abbas tantum absum vae. Veritas degero cauda non sollers reiciendis volo tenuis adicio adhuc.\nNemo ubi absconditus rem venia vapulus. Enim temperantia doloremque dolore vero. Blandior comminor blanditiis creta angustus corporis eum.', '2024-04-22 09:27:00'),
(89, 1, 10, 3, 'Sint denuo vehemens.', '2024-04-22 09:27:00'),
(90, 1, 11, 3, 'Vado terminatio summopere statim corona deludo. Agnitio amplus balbus. Agnosco thesis abeo autem causa.', '2024-04-22 09:27:00'),
(91, 1, 21, 2, 'Utroque conitor admitto similique mollitia appello.\nSuper thymum trans trado.', '2024-04-22 09:27:00'),
(92, 2, 3, 2, 'Assentator cornu sursum in maxime vociferor.', '2024-04-22 09:27:00'),
(93, 1, 12, 1, 'Ambulo ab tres. Decet contabesco xiphias sit ocer cribro repudiandae defluo cohors cohors. Cotidie avarus angulus sperno patria defetiscor incidunt audeo.\nAccedo unde repellat taedium. Totus ambitus socius. Abutor vinitor tergum amissio conscendo alias.\nTexo cupio conqueror succedo apparatus. Patruus tristis cultellus thesaurus. Capitulus demulceo capitulus universe convoco angustus carus correptius.', '2024-04-22 09:27:00'),
(94, 2, 20, 1, 'Versus sursum decumbo cerno copiose theologus. Utor crebro supra asperiores decens causa copiose. Molestias defetiscor complectus terga tondeo decumbo voluptatibus.\nAlii utilis delego vulnero clamo conqueror itaque. Doloribus aegrotatio valeo magnam sunt viscus uberrime. Sponte cibo texo ipsa.\nTurba vox sponte cauda caecus volup tergeo studio. Testimonium cilicium verbum tactus quidem pauper voluptate volubilis sophismata votum. Verbum maiores denuo tabella facere vel.', '2024-04-22 09:27:00'),
(95, 1, 1, 1, 'Talus crudelis sint. Valeo vehemens stips maxime a contigo hic. Depraedor illum valens decor odit demens.', '2024-04-22 09:27:00'),
(96, 1, 4, 5, 'Cibo nihil suffoco thesaurus corroboro deserunt vitiosus. Xiphias crebro conspergo autem accedo. Vicinus vesica arceo comminor custodia paulatim umquam ante summopere.\nTrepide commemoro cruciamentum at vicinus deorsum cetera tutis. Sulum solutio casso ancilla non volva capitulus chirographum vis. Conservo provident absens cicuta vitium conqueror cibo surgo calamitas sunt.\nCompello defaeco vorax esse commodi. Tabula thymbra non cerno. Demens subvenio illum celebrer conspergo absum.', '2024-04-22 09:27:00'),
(97, 1, 14, 5, 'Voluptatum cogito clarus adicio beneficium arto tabella umerus necessitatibus confero. Abstergo thymum subseco sollers illo. Atqui quos error calculus clamo tam.\nVerbum optio addo curtus dolores terror depereo. Voluptas cibus textus. Virtus una sponte defaeco textilis sperno velociter vilis.\nCreber canonicus ut. Fuga tabernus benevolentia. Amicitia coruscus torqueo valde.', '2024-04-22 09:27:00'),
(98, 2, 13, 5, 'Civitas colo degenero provident vindico.\nCetera tracto solus clarus audacia creber bellum testimonium cohaero.', '2024-04-22 09:27:00'),
(99, 2, 15, 5, 'Clementia cupressus atrocitas venia comburo deporto titulus theologus ullam.\nCrur vulnus beatae comptus accusantium nesciunt.\nVoluptatibus vallum terebro adipiscor.', '2024-04-22 09:27:00'),
(100, 1, 8, 3, 'Solio communis arca agnosco. Acerbitas pectus corrigo doloremque ambitus adeo triduana verumtamen caute uxor. Vulpes sit est aranea tendo acer victus curtus pel.', '2024-04-22 09:27:00'),
(101, 2, 1, 3, 'Vis sub vulpes auxilium tenuis auditor volubilis ait caelestis curvo. Ubi error vespillo fugiat vir aiunt coniuratio tricesimus occaecati. Crudelis architecto vetus tabella sumptus vulpes amiculum.', '2024-04-22 09:27:00'),
(102, 1, 12, 5, 'Sit tum adhaero aurum urbanus spiculum cribro stipes claro. Trucido talis attero tamdiu delectus vita sulum tenuis asporto. Talis cerno defungo curiositas.\nVito comminor texo utrimque comminor vorax animus aro causa. Arbitro abeo uterque. Synagoga candidus atrocitas expedita.\nCoruscus advenio cubitum via sortitus amitto temeritas. Textus occaecati altus carmen accendo denego consectetur magni ustulo adfectus. Demitto advoco admiratio adsuesco baiulus ascit tyrannus.', '2024-04-22 09:27:00'),
(103, 2, 9, 2, 'Vilitas adinventitias dedecor custodia. Aveho denuncio iusto quis theologus correptius aiunt campana acsi comedo. Spiculum ver demens minima caries conitor aqua odio ver adipisci. Sono vere pecus. Cubicularis sortitus cruciamentum deorsum communis crapula velum reprehenderit cibo.', '2024-04-22 09:27:00'),
(104, 2, 10, 4, 'Ait dolore admiratio astrum. Vir debeo audeo ater custodia summa vitium cras arcesso curia. Distinctio utpote alioqui surgo cras verto rem.', '2024-04-22 09:27:00'),
(105, 2, 11, 3, 'Thermae claustrum spero pauci consuasor admitto cubicularis.\nTotidem sophismata annus alius est textor talio.', '2024-04-22 09:27:00'),
(106, 2, 3, 4, 'Occaecati claro quos credo cavus. Dolorum carpo cohibeo tergum alienus damnatio caritas amissio totidem. Cilicium viduo clementia eaque delibero vestigium color valde audeo modi.', '2024-04-22 09:27:00'),
(107, 1, 21, 4, 'Desipio alii bonus viridis tempore admoveo conicio tui.', '2024-04-22 09:27:00'),
(108, 1, 20, 3, 'Studio nihil aestus unde stella stella adamo volo. Vulpes officia aqua eaque suus. Appello termes vox titulus baiulus villa acerbitas vivo. Cernuus placeat articulus aureus turbo vulnus.', '2024-04-22 09:27:00'),
(109, 2, 4, 5, 'Umbra compello comminor curatio cubicularis reiciendis. Vesper consequuntur desipio. Demergo tubineus cernuus.', '2024-04-22 09:27:00'),
(110, 1, 9, 5, 'Quidem velit corrumpo desolo architecto.', '2024-04-22 09:27:00'),
(111, 1, 20, 5, 'Doloremque quod curatio tametsi tersus concedo desolo vado tener ambulo. Antiquus curis aeternus porro accendo aestas asper. Iure tamisium quae.\nVorax contego amitto cogito nesciunt. Tenuis consectetur summopere. Deficio sapiente audio ventito claudeo aggero cruentus celo.\nTimor totidem cohors. Dens ustulo vis ater anser demitto. Quidem credo ullam tergiversatio.', '2024-04-22 09:27:00'),
(112, 2, 13, 1, 'Vitium adipiscor optio.', '2024-04-22 09:27:00'),
(113, 2, 1, 3, 'Balbus eaque solvo sublime ustulo atavus accusator itaque usque totam.', '2024-04-22 09:27:00'),
(114, 1, 21, 4, 'Aestivus umbra abundans volup celebrer toties spoliatio confugo defero fugiat. Deprimo vicissitudo coruscus vetus cupiditate. Qui spes conventus.\nAnte animi traho voluptate depromo. Celo ad optio contigo tenus denuncio sollers laboriosam baiulus. Porro complectus timidus.\nTemptatio annus subvenio commodi harum. Amplexus utrum vilitas uter. Ait color tres solus.', '2024-04-22 09:27:00'),
(115, 1, 14, 4, 'Combibo color ars. Umbra vesper thermae. Coadunatio culpa temptatio viscus cena eligendi capitulus.', '2024-04-22 09:27:00'),
(116, 1, 10, 3, 'Tyrannus aureus utrimque bardus perspiciatis.', '2024-04-22 09:27:00'),
(117, 1, 3, 4, 'Constans speculum audax utroque. Admoneo attero verbum asporto ex degusto defleo aliquid culpo. Odit ubi cunabula contra abeo bos trado.\nAbundans magni debilito nisi sint apto doloribus. Tui substantia denuncio textus acceptus debeo argentum. Non tunc sequi agnosco voluntarius tubineus adhaero tametsi civitas.\nVel vereor constans tener culpo. Victoria iste adsum porro comis. Usitas theologus copiose aufero appello adopto sustineo comburo victoria.', '2024-04-22 09:27:00'),
(118, 2, 15, 4, 'Maiores sequi adopto ascisco. Curtus ventito contra eaque thymum corrigo. Depono aufero decor aspernatur absens vae.', '2024-04-22 09:27:00'),
(119, 2, 8, 4, 'Modi doloremque dens cuppedia assumenda voluptatibus civis. Dolores distinctio ipsam vinum tamen adfero. Tredecim nesciunt verbera credo antea solum. Verbum suspendo brevis. Debilito comitatus abduco traho depono atque. Patrocinor adsidue vinco subseco comitatus amor sublime.', '2024-04-22 09:27:00'),
(120, 1, 12, 4, 'Uxor vel valetudo viridis testimonium assentator amplexus ceno usus.', '2024-04-22 09:27:00'),
(121, 1, 19, 3, 'Curatio totidem alo audio apostolus. Audentia pax aeneus toties. Perferendis votum amissio collum vilis. Carpo absque velum adimpleo tibi termes.', '2024-04-22 09:27:00'),
(122, 2, 4, 2, 'Sortitus volva veniam iste corroboro magnam defluo. Damno ancilla tot quis illo nesciunt avarus decimus. Conduco comburo soleo ventus corporis beneficium dapifer assentator defluo temeritas. Via derideo vigilo corpus vulgivagus annus. Ducimus videlicet patruus curatio. Autus libero voluptate ter adsum stultus.', '2024-04-22 09:27:00'),
(123, 1, 13, 4, 'Minima conculco curatio tepidus. Paulatim infit thalassinus distinctio coaegresco coerceo delicate velum. Sub voluptate claro armarium venia laudantium ait. Contigo paens adsum sint bis ratione peior beatae custodia. Arguo urbanus recusandae vulpes decimus tondeo.', '2024-04-22 09:27:00'),
(124, 2, 1, 5, 'Caput adstringo umerus sustineo defleo cado.', '2024-04-22 09:27:00'),
(125, 1, 21, 5, 'Delinquo totam tribuo tot crux damno aperio.\nQuibusdam aequus acies.\nSuccedo caveo accommodo aeternus adficio deputo charisma ancilla.', '2024-04-22 09:27:00'),
(126, 1, 9, 2, 'Bene velociter antepono subvenio.\nTemptatio terreo claustrum cenaculum adulatio.', '2024-04-22 09:27:00'),
(127, 2, 12, 1, 'Nulla crustulum comprehendo aqua.', '2024-04-22 09:27:00'),
(128, 1, 14, 5, 'Atque debitis provident suasoria peccatus decipio.\nMaxime vobis alveus verumtamen thymum decerno.\nUllam ventito vilitas ademptio taceo.', '2024-04-22 09:27:00'),
(129, 1, 10, 4, 'Adsum error solum triumphus calamitas arceo aspernatur conatus iusto odio. Cenaculum pel paens pel at fugit derelinquo tonsor uxor quo. Sunt adficio architecto cultura unus distinctio culpo facilis caterva.', '2024-04-22 09:27:00'),
(130, 2, 15, 2, 'Vulgo vilis cunae deputo. Nesciunt repudiandae socius terror atque velut cimentarius crinis aro demergo. Consectetur cinis maiores demoror benevolentia cibo.\nAcies usque confido. Statua una apparatus aspicio crapula. Ex modi chirographum tego omnis ascit.\nThesis correptius barba. Vito adimpleo vita repudiandae tergiversatio appono aperiam. Quibusdam rerum caute nihil statua crudelis suspendo caveo tabesco.', '2024-04-22 09:27:00'),
(131, 1, 3, 1, 'Considero alioqui caelestis totam eveniet conduco asperiores. Repellendus tui curriculum. Vespillo clamo corroboro eligendi derideo. Asperiores comparo tamdiu ducimus umbra.', '2024-04-22 09:27:00'),
(132, 2, 8, 4, 'Ara solutio cibo.', '2024-04-22 09:27:00'),
(133, 2, 19, 4, 'Condico admoneo cena unus natus. Patruus carcer crur. Carus praesentium pax compono.\nEaque amitto tametsi verumtamen ea cotidie expedita vulnus creptio. Error amiculum curo error autus appono terebro curriculum. Volubilis provident bellum.\nTres sollers cubitum pecco voluptas vulariter tantum ancilla statim infit. Vergo audax aestivus cenaculum. Comitatus tristis accendo compello distinctio certe attollo virga.', '2024-04-22 09:27:00'),
(134, 1, 4, 2, 'Arx torrens eveniet. Carpo beatae comminor ullam. Solitudo repellat defetiscor. Adversus tero centum confero crepusculum vulnus. Tergum cunctatio umbra surgo bibo.', '2024-04-22 09:27:00'),
(135, 1, 1, 4, 'Uterque acsi voluptatibus. Ab deleo varius claustrum crur. Crepusculum ter carmen cultura admitto succurro sumo.', '2024-04-22 09:27:00'),
(136, 2, 9, 3, 'Administratio maxime voluntarius tantillus confero alter damnatio.', '2024-04-22 09:27:00'),
(137, 2, 13, 1, 'Velociter attonbitus agnosco auditor.', '2024-04-22 09:27:00'),
(138, 1, 12, 4, 'Vomer temptatio illo socius talis clementia aureus terminatio pauci. Antepono capitulus statua. Strenuus balbus vigilo denego peccatus spes utor vigilo capio crebro.\nCognomen patior vilis vorago cavus casso dens. Aegre aqua usus arcesso uxor. Uterque aestus bibo possimus appello.\nBlanditiis aperiam subito sursum volutabrum ventito. Acerbitas paens sophismata vobis verbera blanditiis. Vulgaris terebro vetus cerno alius carmen territo natus spes.', '2024-04-22 09:27:00'),
(139, 1, 10, 1, 'Vinitor suscipit tristis claudeo iusto aer balbus vobis.\nSumma temeritas bis.', '2024-04-22 09:27:00'),
(140, 1, 15, 3, 'Delibero suus animi baiulus magnam defessus accendo.\nAncilla tubineus subseco aperte voveo sum appositus amicitia vir quos.\nCaritas ante reiciendis.\nCerte ducimus cohaero supplanto cauda defaeco tutamen sto somniculosus addo.\nArceo velum vitae utrum.', '2024-04-22 09:27:00'),
(141, 1, 14, 5, 'Accommodo succedo absorbeo sperno anser damno maxime vester usque ullam. Tandem vetus tripudio. Volva doloremque vulariter sono desino arx.\nTemperantia confero cinis praesentium somnus combibo denuo magnam clibanus tactus. Necessitatibus depono delectus voluptatum comedo tutamen copia. Cupiditas labore officia eligendi demergo conservo aestivus.\nDefero ademptio vado barba. Tolero thorax voluptates somnus adopto. Succurro contego cernuus peior iure quas.', '2024-04-22 09:27:00'),
(142, 1, 3, 4, 'Utilis crapula conspergo chirographum ut.', '2024-04-22 09:27:00'),
(143, 2, 9, 4, 'Doloremque confero teneo solvo adopto varius corrupti sono abutor. Curatio pax succedo terga comedo bibo soleo conduco sum. Strenuus confugo tabesco.', '2024-04-22 09:27:00'),
(144, 1, 8, 1, 'Dolorem creator aiunt dolorem tactus ut.\nAutem somniculosus utique aestus corpus civis itaque deprimo temporibus.\nDefetiscor itaque blandior aufero vilitas celo vulgivagus usus.', '2024-04-22 09:27:00'),
(145, 1, 19, 3, 'Unus curo calamitas cohibeo dolorem vestigium defungo sol. Studio catena cado cauda desparatus et cupiditate clibanus. Sophismata in deficio adficio aliquam abscido vobis. Abscido cubitum tersus crudelis tempora tenuis defluo solvo velit. Virgo alienus reprehenderit degenero.', '2024-04-22 09:27:00'),
(146, 2, 1, 1, 'Aestivus vulariter tergum iste cum acervus. Adficio ad bellum tantum spectaculum subseco. Dolorem synagoga coma curis talus.\nDecretum dignissimos peior architecto. Capio capillus non comburo quia admiratio adipisci comis suscipit desolo. Aetas enim cubo.\nAttonbitus uberrime sustineo nemo vetus arca tondeo. Nulla et vel sophismata. Validus vorax conculco canto conor capillus vitae theologus.', '2024-04-22 09:27:00'),
(147, 1, 13, 4, 'Sumo solum voluntarius omnis accommodo convoco.', '2024-04-22 09:27:00'),
(148, 1, 10, 4, 'Tempora vicissitudo vir necessitatibus possimus vinum.\nVinum amoveo virgo cibus sustineo.\nModi taedium tardus.\nAntepono aveho suscipit corroboro deporto statua fugit beatae clarus.', '2024-04-22 09:27:00'),
(149, 2, 14, 5, 'Anser concedo uter cur.', '2024-04-22 09:27:00'),
(150, 2, 15, 2, 'Bellicus vulariter est solium causa aeternus numquam antiquus appono. Desparatus comminor calculus cultellus alius nostrum adfectus. Explicabo vester ab tracto vetus.', '2024-04-22 09:27:00'),
(151, 2, 1, 1, 'Viridis id officiis ocer debilito paulatim volaticus depulso aureus cupiditate. Quo adicio deduco. Defessus desidero administratio audacia vacuus perferendis sursum.', '2024-04-22 09:27:00'),
(152, 1, 13, 4, 'Benigne audentia volutabrum textus deserunt quam tribuo. Vetus spero theatrum coaegresco vinitor aurum crur cribro valetudo attollo. Demens strenuus vester blandior sollers curvo clibanus desino cogito neque.\nUsque cattus dapifer catena votum sponte. Vulpes careo angelus tum id. Verbum cetera paens sonitus vesco cumque quos consequuntur.\nTenuis asperiores titulus communis delibero thesaurus spectaculum. Uter sed vilis deleo eligendi suffoco optio. Arbor voveo confero bellicus trado fuga carus sortitus.', '2024-04-22 09:27:00'),
(153, 1, 19, 3, 'Vulpes hic decumbo. Unus cruciamentum cui studio bellicus adicio admiratio. Cinis veniam agnosco alveus quia volo labore cibo calamitas.', '2024-04-22 09:27:00'),
(154, 1, 8, 1, 'Aeger villa solio strues aperte et sit cito vetus. Somniculosus adipiscor ver ratione vitiosus ubi cupressus aveho illo cruciamentum. Demum cursus voluntarius stips amiculum rem.', '2024-04-22 09:27:00'),
(155, 1, 14, 5, 'Alioqui corrigo aspernatur ait acerbitas pectus tantum. Adulatio nostrum denego aer accusantium harum. Auctor thorax comminor. Suppono canis attollo cupiditate valens clarus utilis conforto. Teres synagoga adsum tenuis vel volaticus.', '2024-04-22 09:27:01'),
(156, 1, 10, 5, 'Crux accommodo id provident audacia pel ad quas nesciunt aveho. Aro illum valde vaco utroque sapiente tristis. Tactus cruentus synagoga statim aduro angelus.\nNecessitatibus cavus degusto. Annus corpus patruus creator anser arbustum. Sustineo depulso una.\nUlciscor vitae annus. Victus optio comes impedit cupiditate perspiciatis suscipio. Sollers cito talio vester canto.', '2024-04-22 09:27:01'),
(157, 2, 15, 1, 'Advenio curis ars vulgivagus crudelis.\nDepromo contego vesco attero damno thymbra spero tibi.\nCometes sulum virtus arbustum adimpleo utrimque vulgo.\nVero toties capillus varius decens utrimque vacuus circumvenio caterva.\nVentosus ulterius cui congregatio colo.', '2024-04-22 09:27:01'),
(158, 2, 1, 2, 'Angulus armarium asporto numquam textus vergo ambulo uxor audio temporibus. Nisi admoneo cedo. Solvo thymbra allatus aiunt suasoria adhuc deduco vomica distinctio defero. Colligo culpa terror una averto caute alias. Spiculum cubicularis ascit sui vesco solutio admoneo tener corona. Umerus tenus cibus capillus aequus absorbeo corporis.', '2024-04-22 09:27:01'),
(159, 2, 19, 3, 'Mollitia cruentus comparo toties laudantium adhuc suppono caute solus accusamus. Templum eum similique. Adnuo vitiosus theca tergo articulus uterque celer damno.', '2024-04-22 09:27:01'),
(160, 2, 13, 2, 'Deripio claustrum avarus.', '2024-04-22 09:27:01'),
(161, 1, 15, 1, 'Tandem curtus decumbo curto quisquam ascit hic eius commodi aranea.', '2024-04-22 09:27:01'),
(162, 1, 14, 1, 'Cado vitae vesco trans officiis venio cuppedia versus brevis.', '2024-04-22 09:27:01'),
(163, 1, 1, 2, 'Desipio vinitor statim cauda alioqui cohibeo xiphias aegrotatio. Consequatur valetudo crux tondeo vereor ante theatrum fuga. Adinventitias stipes debeo tempore caelestis argumentum.\nAutem repellendus verumtamen voluptates. Voluptate repellat beatus quas attero conqueror casus arcesso. Vinco tepesco denuo eveniet basium tui deporto.\nCopiose catena nesciunt tum aspicio aetas. Studio adsidue cariosus. Qui aiunt copiose.', '2024-04-22 09:27:01'),
(164, 1, 19, 2, 'Vel texo claustrum vester tandem.', '2024-04-22 09:27:01'),
(165, 1, 14, 4, 'Virga adsidue valetudo paulatim. Sopor valde ad accedo atrocitas toties. Recusandae terror sui praesentium. Alii curtus ante canonicus aeternus non vero. Cuius cito deludo.', '2024-04-22 09:27:01'),
(166, 2, 1, 4, 'Defungo magni demitto coerceo articulus angustus deputo advenio. Defungo terminatio vomer conscendo annus dapifer xiphias subvenio civis dolorum. Vomer acies articulus debeo corona. Paens corroboro thermae dens architecto suadeo communis vetus perspiciatis.', '2024-04-22 09:27:01'),
(167, 2, 19, 3, 'Asper numquam spectaculum adstringo carmen.', '2024-04-22 09:27:01'),
(168, 2, 14, 1, 'Congregatio charisma venustas ipsa sollicito admiratio. Alius enim veritas super compono eligendi auxilium thalassinus. Textor tot territo acervus demo.', '2024-04-22 09:27:01'),
(169, 1, 19, 1, 'Temperantia comes cribro optio depono nobis coaegresco bellicus. Arx studio corrupti suffragium tabesco conqueror aranea copia.', '2024-04-22 09:27:01'),
(170, 2, 19, 5, 'Amplitudo certus arbitro at deinde.\nAmor decerno culpo suggero corrigo aetas ipsam.\nUtrimque apto carpo tepesco terreo temptatio velum.', '2024-04-22 09:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `preptime` int(11) NOT NULL,
  `posted` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `description`, `content`, `preptime`, `posted`, `user_id`) VALUES
(1, 'Spring potato pasta', 'Spring is here, fresh ingredients are coming, so I bring you a potato pasta with a spring vibe that brings the usual in a much fresher way!', 'Ingredients: 300 g potatoes- 2 tablespoons of oil-6 sprigs of spring onion-2 cloves of garlic- 200g noodle-salt, pepper, ground cumin-2 tablespoons of sour cream Recipe: As the first step in making the spring potato pasta, depending on the size of the potato, we cut it into four or six pieces and start frying it on medium heat in oil in a large skillet. When it is nice and golden brown everywhere, we add the sliced spring onions and sliced garlic. Season with salt, pepper and ground cumin. With this we stir again, then pour in 300 ml of water and cook until all water is gone (but if the potato has not softened after this time, feel free to add a little more water). Once the potato is cooked and all water evaporated, we add another 200 ml of water and mash the potato with a potato masher. Cook the pasta in salted water until tender then drain and mix it with the mashed potatoes. Serve with sour cream on top.', 30, '2024-04-22 09:27:00', 1),
(2, 'Simple layered cabbage', 'Those who didn\'t like cabbage before will only want to eat this from now on. Fast and delicious.', 'Ingredients: 1500 g of cabbage - 200 g of rice - 500 g of minced meat - 250 g of sour cream - 2 onions - 1 tablespoon of oil - salt, pepper. Recipe: Cut out the core of the cabbage, then cut the cabbage into large pieces and boil in salted water for 15-20 minutes. Drain the water and squeeze out the cabbage. Steam the rice in double the amount of water as usual. Finely chop the onions. Saute the onions in oil, add the meat, season with salt and pepper, and simmer until its juices evaporate. Season with paprika and cook until tender by adding a little water. Place half of the cabbage on the bottom of a baking dish, spread most of the steamed rice on top, coat with sour cream, then add meat, layer again with rice, and finally cover with remaining cabbage; drizzle with sour cream. Bake at 180 degrees Celsius for 35-40 minutes.', 70, '2024-04-22 09:27:00', 2),
(3, 'Sausage lentil cream soup.', 'Insanely delicious lentil cream soup that will be a real soul-warming comfort on cold winter nights!', 'Ingredients: 200 g of lentils, garlic, onion, 5 tablespoons of olive oil, 1 tablespoon of sugar, 1 teaspoon of smoked paprika, 100 ml of dry white wine, 1 liter of vegetable broth, 1 tablespoon of mustard, 100 ml of heavy cream, 100g of spicy sausage, salt and pepper. \nRecipe: To make the lentil cream soup, first soak the lentils for 2-3 hours or preferably overnight. Chop the red and garlic onions finely. Caramelize the sugar in the oil and add both types of onions. Cook until they become translucent. Then add the smoked paprika and lentils and pour in the white wine. Season with salt and pepper and pour in the vegetable broth to cook the lentils until they are tender. Use a hand blender to puree it while stirring in mustard and heavy cream. \nCut the sausage into thin slices (0.5 cm) and fry them in a pan before serving with lentil cream soup.', 45, '2024-04-22 09:27:00', 2),
(4, 'Eggplant rolls filled with egg cream.', 'Boosted and filled with egg cream spring delicacy. Perfect for cold plates or even for guests!', 'Ingredients: 4 eggs, 2 eggplants, 100 ml soy sauce, 30 ml oil, 2 tablespoons maple syrup, 100 ml tomato paste, 100 ml mascarpone, 2 tablespoons sour cream, 2 tablespoons mustard, 1 lemon, 2 green onions, salt, pepper and smoked paprika. Recipe: As the first step of making the eggplant rolls with egg cream filling, we boil the eggs slowly in simmering water for about 7-8 minutes until they are hard boiled.\nUsing a mandolin we slice the eggplants into thin slices about 3mm thick. In a bowl we combine the soy sauce, oil, maple syrup, smoked paprika and tomato paste; add salt & pepper and mix everything until smooth. We brush both sides of the eggplant slices with this mixture and fry each slice for about a minute or two on each side in a frying pan. After frying we put them aside to cool down.\nOnce the eggs are cooked through we peel them and put them into a food processor with mascarpone cheese; sour cream; salt & pepper; chopped green onions; mustard and squeezed lemon juice. We blend everything together until it becomes smooth and creamy. We then put this mixture into a piping bag. We then place a strip of this mixture at one end of each prepared eggplant slice and roll it tightly like sushi.\nWe then arrange all of our finished sushi rolls onto small plates and sprinkle fresh chopped green onion on top before serving.', 35, '2024-04-22 09:27:00', 1),
(5, 'Spinach penne with chicken', 'Even if we won\'t get Popeye-biceps from spinach, it is still a really great vegetable! When combined with pasta, even those who are not fond of spinach leaves can bravely try it.', 'Ingredients: 300g whole wheat spaghetti, 5 tablespoons olive oil, red onion, garlic, salt, pepper, nutmeg, 150g baby spinach, 200ml buttermilk, 500g chicken breast. \n\nRecipe: To prepare the spinach-buttermilk spaghetti with chicken, the first step is to cook the pasta in plenty of boiling salted water. Because it is made from whole wheat durum flour, it needs to be cooked a little longer than traditional dry pasta. For the sauce, heat 2 tablespoons of olive oil in a pan and fry the sliced red onion with a pinch of salt. Add the sliced garlic and fry until golden. Then add most of the baby spinach but save some for serving later. Once the spinach has wilted down, pour in the buttermilk and season with nutmeg and pepper. Remove from heat and let it cool slightly before pureeing until smooth.\n\nCut the chicken breasts into 1cm cubes and season with salt and pepper. Heat up the remaining olive oil in a high-sided frying pan and cook the chicken cubes until golden brown. When done, mix them with the drained spaghetti and sauce before serving topped with reserved spinach leaves.', 40, '2024-04-22 09:27:00', 2),
(6, 'Black mussel in garlic tomato sauce.', 'For lovers of shells. Delicious and fresh.', 'Ingredients: 700 g shell-on black mussels - 600 ml vegetable broth - 2 stalks of celery - 1 tablespoon of tomato paste - 2 whole tomatoes - 1 California pepper - 1 red onion - 1 garlic clove - salt, pepper Recipe: Then add the vegetable mixture to the couscous, season with salt and pepper to taste and mix well. Pour the soup into a larger pot and bring to a boil. Then add the cleaned mussels and cook for 8-10 minutes until done. Finally, serve with toasted baguette slices. Be careful not to consume any mussels that did not open during cooking because they may have gone bad!', 60, '2024-04-22 09:27:00', 2),
(7, 'Bacon and chestnut roasted Brussels sprouts.', 'This dish can be prepared lightning fast and it will be brilliant either on its own or as a side dish! Believe me!', 'Ingredients: 100g sliced bacon - 500g Brussels sprouts - 100g boiled chestnuts - 3 tablespoons cooking oil - salt, pepper\nRecipe: The first step in preparing the bacon and chestnut sautéed Brussels sprouts is to cut the bacon into small cubes and fry it on medium heat in oil for a few minutes. Wash the Brussels sprouts, clean them of any damaged leaves, halve the larger ones, and cook them in plenty of slightly salted water for 4-5 minutes. Then add them to the bacon and sauté for a little longer. Season with salt and pepper, then add the halved chestnuts. Stir everything together and it\'s ready to serve!', 20, '2024-04-22 09:27:00', 1),
(8, '15-minute vegetable couscous', 'Your vegan friends have announced their arrival. It can be quickly prepared by the time they get to you.', 'Ingredients: 500 g Mexican vegetable mix, 200 g couscous, seasoning, salt, pepper \n\nRecipe: Pour enough water over the vegetable mix to cover it, then add the seasoning, 1 tsp salt and cook until soft for a few minutes. (Make sure not to overcook the vegetables, a few minutes is enough.) Then strain and keep warm, leaving behind 2.5 dl of the broth. \n\nNext, pour the couscous into the 2.5 dl broth, cover and let stand for a few minutes to absorb the liquid. Then add the vegetable mix to the couscous, season with salt and pepper to taste and stir together.', 15, '2024-04-22 09:27:53', 1),
(9, 'Spring vegetable Pad Thai', 'I brought you a colorful spring vegan pad thai recipe that is super easy to make and will only take 30 minutes and one pan!', 'Ingredients: 100 g rice noodles - 2 tbsp vegetable oil - 3 radishes - 2 spring onions - 1 pak choi - fresh ginger - 1 garlic clove - 1 small red chili pepper - 1 tbsp tamarind paste - 2 tbsp sesame oil - 1 tsp brown sugar - 2 tbsp soy sauce - 2 eggs-50 g baby spinach-100 g mung bean sprouts- salt, pepper.\n\nRecipe: To start preparing the vegan pad Thai, cook the rice noodles in plenty of salted boiling water for 4-5 minutes, then drain. In a wok, heat the oil and add the sliced radishes, chopped spring onions and sliced pak choi. After half a minute of frying, add the grated ginger and garlic, as well as the sliced chili pepper. Stir and add the cooked noodles, then add the tamarind paste, sesame oil, brown sugar and soy sauce. After thorough mixing, push the noodles to one side of the wok and crack in the eggs on the other side, season with salt and pepper and mix well. Add spinach and mung bean sprouts and stir again. Serve the finished noodles on a plate sprinkled with chopped coriander and peanuts.', 30, '2024-04-22 09:27:00', 1),
(10, 'Chicken breast with peach rice.', 'Many times we got the inverse of this food at the cafeteria, alias peach chicken, and well now honestly: I couldn\'t stand it. But now there is a version that I can hardly stop eating.', 'Ingredients: 2 red onions, 4 tablespoons of coconut oil, 4 apricots, 2 bags of basmati rice, 400g chicken breast, 2 tablespoons of ponzu sauce, turmeric, salt, pepper. \n\nRecipe: We start by making the quick chicken breast with the side dish. For this, we cut the onion into half rings and start frying it in a hot pot with a little coconut oil over medium heat. We chop up three apricots after removing their pits and slice them thinly. When the onion is golden brown, we add the apricots and sprinkle everything with turmeric and pepper before adding about 200ml of water. We cook everything until it\'s soft and then add salt to taste before blending it all together. We cook the bagged rice according to the instructions on the packaging (you can use regular rice instead), then mix it together with the sauce. We cut up one remaining apricot into wedges and sear both sides in a hot, dry pan over high heat. We season the chicken breasts with salt, then fry them in a hot pan with some coconut oil for a few minutes on each side before putting them in an oven preheated to 150°C for 10-15 minutes.\n\nFor serving: We scoop some rice onto a plate and top it with sliced chicken breast and seared apricots before drizzling ponzu sauce on top.', 45, '2024-04-22 09:27:00', 1),
(11, 'Chicken breast baked in deer spine shape.', 'It\'s so delicious that even Grandma asks for the recipe. It\'s easy and quick, can\'t go wrong with it.', 'Ingredients: 800g chicken breast fillet - 400g sliced bacon - 200g cheese - 2 eggs - 4 tablespoons sour cream - 3 tablespoons flour - salt, pepper. Recipe: Mix together the sour cream, eggs, flour, salt, pepper, and grated cheese. Cut the chicken breast into cubes and add to the mixture. Line a baking dish with the bacon and pour the meat mixture into the dish, folding the excess bacon over the top. Bake for 40 minutes at 200 degrees Celsius in a preheated oven, then transfer to a tray and continue baking until the bacon is crispy. Serve with salad or baked potatoes.', 60, '2024-04-22 09:27:00', 1),
(12, 'Breaded fish fillet with mayonnaise potato salad', 'Your Christmas table can be decorated. Everyone loves the delicious fish dish that is filling but not too heavy. There is also room for the beigli.', 'Ingredients: 500g white fish fillet - 500ml cooking oil - 3 eggs - 100g breadcrumbs - 100g flour - 5 large potatoes - 500g sour cream - 300g mayonnaise - 1 red onion - salt, pepper, sugar, mustard, lemon juice\n\nRecipe: To prepare the breaded fish fillet, season the fish slices with salt and pepper, then coat in flour, beaten eggs and finally breadcrumbs. Heat the oil and fry the coated fish until golden brown. \nFor the potato salad with mayonnaise, boil the potatoes with skin on until soft. Peel and thinly slice when cooled down. In a mixing bowl, blend together sour cream, mayonnaise, salt, pepper, sugar, mustard and lemon juice. Peel and finely chop the red onion and carefully mix it together with the potatoes into the mayonnaise mixture. Store in refrigerator until serving alongside the breaded fish.', 70, '2024-04-22 09:27:00', 2),
(13, 'Spring risotto', 'This super green spring risotto is so loaded that it can be a complete lunch anytime even without meat.', 'Ingredients: 100g butter-200g shallot-200g risotto rice-120ml white wine-100g baby spinach-900ml stock-2 tablespoons olive oil-4 cloves garlic -300g asparagus-230g green peas-140g parmesan cheese-salt, pepper, parsley\nRecipe: To make the spring risotto, melt half of the butter in a pot over medium heat. Add finely chopped shallots and fry until golden brown. Press in the garlic cloves and fry for another 2-3 minutes. Add the rice, stir and pour in the white wine. Allow to evaporate for 3-4 minutes. Add spinach and cook until it wilts. Add a ladleful of stock and simmer until the rice absorbs it, then add another ladleful of stock, continuously stirring. Repeat this process until the rice has reached a pleasant chewiness.\nIn another pan, heat up some oil and fry chopped asparagus (without woody ends) until golden brown.\nAdd this to the risotto along with green peas, chopped parsley and remaining butter. Season with salt and pepper, add three-quarters of parmesan cheese. Cook for further 2-3 minutes while continuously stirring. Sprinkle with remaining parsley and parmesan cheese before serving.', 40, '2024-04-22 09:27:00', 1),
(14, 'Traditional scrambled eggs with peppers', 'Great food on summer evenings. Quick and easy.', 'Ingredients: 1 kg of pepper, 300 g of tomato, 3 onions, 5 eggs, 1 tablespoon of duck fat, salt, pepper. Recipe: For the vegetable ragout with egg, heat the fat in a pot over medium heat. Add the peeled and halved red onions and salt them, letting them soften a bit. In the meantime, remove the seeds from the peppers and slice them into 2-3 cm pieces. When the onions have softened a bit, add the peppers and salt again. Cover and let steam on low heat for about 10 minutes until the peppers are slightly softened. Season with good quality paprika powder and mix well. Cut the tomatoes into pieces and add them to the pepper base to continue cooking until they soften and break down a bit. Crack the eggs into a mixing bowl, beat them together, then pour into the ragout. Once slightly cooked together, your vegetable ragout with egg is ready to serve.', 25, '2024-04-22 09:28:51', 1),
(15, 'Cheesy corn baked zucchini', 'Simple and quick meat-free dish.', 'Ingredients: 2 zucchinis - 1 can of corn - 150g mozzarella cheese - 100g parmesan cheese - 2 stalks of green onion - 1 tablespoon olive oil - salt, pepper, thyme\nRecipe: Wash the zucchinis and slice them into rings that are 5-7 millimeters thick. Slice the green onions and press the garlic with a garlic press. Grate the parmesan cheese and slice the mozzarella. In a pan, fry the zucchini rings on both sides over medium heat with a little olive oil. Do not add salt as it will release moisture and cause it to boil/steam instead of frying. Make sure to only put as many zucchini rings in the pan as will fit, which will facilitate frying. If you put too many in the pan, then they will steam. Fry all of the slices in multiple batches before setting them aside.\nOn lower heat with a little bit of olive oil, sauté the green onions until they have softened. Season to taste with salt and pepper, then add in the fried zucchini and garlic within 1-2 minutes. Season with thyme and add more salt if needed, then take off heat after several minutes.\nPreheat oven to 200 Celsius (392 Fahrenheit). Place the fried zucchini evenly on an oven-proof dish, then top it with drained corn that has been covered with sliced mozzarella cheese before sprinkling parmesan on top as well. Put it in the oven for roughly 15-20 minutes or until it has become golden brown in color.', 45, '2024-04-22 09:27:00', 2),
(16, 'Temesvár-style stew.', 'There are as many variations of tokány as there are houses, and we have already made csikós, bakonyi and butcher versions. Now we present a version from Temesvár.', 'Ingredients: 150 g smoked bacon-600 g turkey thigh- 300 g yellow wax beans- 120 g sour cream- 100 g heavy cream- 1 clove garlic-1 onion- 1 TV pepper- 1 small tomato-1 tablespoon flour- 1 bunch parsley - salt, pepper, paprika. For dumplings: 220 ml water - 1 egg - 400 g flour -1 tablespoon cooking oil - salt. Recipe: To make Temesvar-style stew, first cut the bacon into small cubes (about 1 cm) and fry it in a pot over medium heat until the fat has rendered. Place the peppers and tomatoes, cut side down, on top of the bacon and brown them well. Next, add the minced garlic and finely chopped onion and sauté for a few minutes. Pour in 50 ml of water and when it boils, sprinkle with paprika. Once it has dissolved nicely, add another 100 ml of water and continue to simmer. Add diced (approx. 5x1 cm) turkey thigh seasoned with salt and pepper to the pot of stew. If needed, add some more water occasionally to keep it from drying out. When the meat is almost tender, add the wax beans and enough vegetable broth or water to cover them completely. When both meat and beans become soft enough remove from heat and prepare thickening by mixing flour with approximately 50 ml of water along with sour cream into the dish then stirring until no lumps remain.\nLet it cook for another two or three minutes while adding chopped parsley and heavy cream for seasoning.\nWhile preparing the stew we can also cook some dumplings , for that we mix a beaten egg with salt in a mixing bowl full of water then gradually stir in swelled flour in order to get rid of any lumps . After boiling salted water we pour tiny portions from mixture inside so called spaetzle which are simmered until done , then strained briefly under running cold water before serving mixed with oil .', 100, '2024-04-22 09:27:00', 2),
(17, '5-ingredient cheesy turkey breast', 'Satisfying and delicious turkey recipe, perfect for a weekday dinner!', 'Ingredients: 250g cream cheese- 600g turkey breast fillet- 100g Gouda cheese- 3 tablespoons of cooking oil- garlic powder, salt, pepper, Provencal spice blend. For serving: French fries or salad\nRecipe: Begin by preparing the cheesy cream for the turkey breast. To do this, mix the cream cheese with garlic powder, the Provencal spice blend, and salt and pepper to taste. Slice the turkey breast into pieces, season with salt and pepper. Sear on medium heat in a pan with oil until brown on both sides then transfer to a baking dish. Spread the cream cheese mixture on top of the turkey slices, sprinkle with grated Gouda cheese, and bake at 200°C for about 20 minutes until golden brown on top. This dish can be served with French fries, rice, or couscous for a satisfying lunch or dinner. Alternatively, it can be enjoyed with a fresh mixed salad or steamed vegetables for a lighter meal option.', 30, '2024-04-22 09:27:00', 1),
(18, 'Homemade Pad Thai', 'Do you like Asian cuisine? It is easy to make and a sure success.', 'Ingredients: 200 ml oil, 2 cloves of garlic, 350 g chicken breast, 75 g mung bean sprouts, 3 spring onions, 3 eggs, 300 g rice noodles, 3 tablespoons fish sauce, 1 tablespoon brown sugar, 1 lime, ground chili pepper, fresh coriander, unsalted roasted peanuts. Recipe: To make pad thai, pour a little oil into a wok and heat it up. Add the crushed garlic and fry for about 30 seconds. Then add the diced chicken and fry until crispy. Next, add the mung bean sprouts and sliced ​​spring onions to the wok and fry them as well. Push the meat and vegetables to one side of the wok while cracking the eggs into the other side. Quickly stir them as if making scrambled eggs, then mix everything together. Then add some cooked rice noodles that have been strained from salted water. Add fish sauce and brown sugar and coarsely ground peanuts to taste (chili is optional). Mix well and fry for a few minutes before squeezing lime juice over it upon serving. Garnish with chopped peanuts and fresh coriander as desired or additional lime juice could be squeezed on top.', 45, '2024-04-22 09:27:00', 1),
(19, 'Thai shrimp rice noodles', 'Easy to prepare, fresh summer dinner.', 'Ingredients: 250 g rice noodles – 200 g shrimp – 1 onion – 50 g peanuts – 3 spring onions – 1 leek – 2 eggs – oil, salt, pepper – for the sauce: 6 tablespoons soy sauce, rice vinegar, sesame oil - 2 tablespoons brown sugar - 1 teaspoon cayenne pepper - ginger Recipe: Soak the rice noodles in hot water for 10 minutes, then cook for 5-7 minutes. For the sauce, mix soy sauce, rice vinegar, sesame oil, brown sugar and cayenne pepper. Grate ginger into the mix. Heat up oil in a wok and add the shrimp and finely chopped onion. Add salt and pepper. Remove the shrimp when it turns white and set it aside on a plate. Add the drained noodles to the wok and pour in the sauce, mix thoroughly. Move noodles to one side of wok and add eggs; mix together once eggs start to whiten on bottom of pan before stirring into noodle mixture. Add roughly chopped peanuts, green onions, then leek sprouts. Return shrimp to pan and stir all ingredients together one last time. Serve with additional peanuts, green onions, sprouts or hot chili peppers for garnish.', 60, '2024-04-22 09:27:00', 2),
(20, 'Vegan semolina pudding.', 'Actually, there\'s no need to think of anything fancy regarding this dish. It\'s not vegan because it contains tofu and vegetables. We simply replaced cow\'s milk with plant-based milk. And in order to be accessible for everyone, we used rice semolina instead of the usual wheat semolina, so even those ', 'Ingredients: 100 g rice semolina - 600 ml plant-based milk - 50 g granulated sugar - 1 teaspoon vanilla aroma - 30 g raisins - cocoa powder, a pinch of salt. Recipe: To make vegan rice pudding, sprinkle the rice semolina into a pot and pour in the plant-based milk, sugar, vanilla aroma and a pinch of salt. Thoroughly mix everything together and bring to boil. After 1-2 minutes of boiling, the vegan rice pudding is ready. When serving, sprinkle a little cocoa powder on top.', 10, '2024-04-22 09:27:00', 1),
(21, 'Roasted chicken with spinach white bean puree and roasted carrots.', 'This food has everything you need! It\'s high in protein, healthy, insanely delicious, and putting it together is not rocket science! Try it yourself, believe me, you won\'t be disappointed.', 'Ingredients: 800 g chicken breast, 4 tablespoons coconut oil, 10-12 carrots, 2 tablespoons honey, 1 tablespoon chili pepper, 1 head of garlic, 40 g baby spinach, 2 cans of large white beans, 2 lemons, 2 tablespoons tahini, salt, pepper. Recipe: For the roasted chicken with spinach and white bean puree and roasted carrots recipe, first clean and salt and pepper the chicken breasts. Melt the coconut oil in a heat-resistant pan and fry the fillets on high heat until browned all over for a few minutes. Then put them in the preheated oven at 160 degrees Celsius for 10-12 minutes. Thoroughly wash the carrots and place them in a tray. Spread honey, chili paste, crushed garlic over them and season with salt and pepper. Bake in a preheated oven at 180 degrees Celsius for 25-30 minutes. We can also place it next to the chicken in the oven at 160 degrees Celsius but when the chicken is done we should turn up to a higher temperature. For the bean puree put all ingredients into a blender and blend until super creamy. If we want even smoother texture we can strain it through a sieve. When serving put some bean puree on a plate then add sliced chicken breast and roasted carrots on top of it.', 50, '2024-04-22 09:27:00', 1);

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
(1, 1, 1),
(2, 1, 16),
(3, 3, 4),
(4, 1, 3),
(5, 1, 11),
(6, 2, 18),
(7, 1, 5),
(8, 1, 10),
(9, 9, 6),
(11, 1, 12),
(12, 3, 14),
(13, 7, 17),
(14, 7, 15),
(15, 1, 9),
(16, 1, 13),
(17, 3, 1),
(18, 2, 19),
(19, 3, 16),
(20, 6, 4),
(21, 3, 18),
(22, 3, 11),
(23, 3, 3),
(24, 3, 12),
(25, 14, 6),
(26, 3, 13),
(27, 3, 9),
(28, 7, 1),
(29, 7, 16),
(30, 3, 19),
(31, 4, 18),
(32, 7, 13),
(33, 4, 12),
(34, 7, 4),
(35, 7, 11),
(36, 7, 3),
(37, 5, 9),
(38, 4, 19),
(39, 10, 4),
(40, 5, 18),
(41, 9, 3),
(42, 7, 12),
(43, 6, 9),
(44, 10, 3),
(45, 8, 18),
(46, 5, 19),
(47, 9, 12),
(48, 8, 9),
(49, 13, 18),
(50, 12, 3),
(51, 10, 12),
(52, 11, 9),
(53, 6, 19),
(54, 11, 19),
(55, 13, 19),
(56, 14, 19),
(61, 8, 8);

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
(1, 'manager@example.com', 'Manager User', '$argon2id$v=19$m=65536,t=3,p=4$7Qork8BZJMR35rWOc2NNhw$g7uLCMC5aaRX4Yj9RKQRmQhCViEcavNHyfU4JXRyQAk', 'manager'),
(2, 'user.test@example.com', 'Test User', '$argon2id$v=19$m=65536,t=3,p=4$cpeTVGzFv6VHUiinz9FmkQ$P4Hz02GiGcJTfKr15qU4AjhHl1pXeWz22iV2JXeEQ74', 'user');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `recipe_allergens`
--
ALTER TABLE `recipe_allergens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
