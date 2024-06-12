-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 02:30 PM
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
-- Database: `vijesti`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `korisnicko_ime` varchar(50) NOT NULL,
  `lozinka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `level`) VALUES
(1, 'Ivan', 'Horvat', 'ivan_h', '$2y$10$e0NRaK9xE9x/WmEzO.gWjeBhG5xBGJZekCnL1CRTPwuh4bxHMWo0u', 0),
(2, 'Ana', 'Kovač', 'ana_k', '$2y$10$7Bq1Zh0oh1N5TfO4B/dO2.Qw84JbI7Q5FqD4Q3e9CH6GHyO4j.ERm', 0),
(3, 'Marko', 'Marić', 'marko_m', '$2y$10$eYv7IXU.JGl3EKCB3uXioOaKppwnSeZ.DYwX04oF6/p8e9Kw27Wqu', 1),
(4, 'Lana', 'Babić', 'lana_b', '$2y$10$QsLTbXHG6ZX9OW4kOt8tYeJKnSnLwAx4Gz0De8FwBjFjMqsmbi9eW', 0),
(5, 'Petar', 'Jurić', 'petar_j', '$2y$10$EPV4HuI2TspxH3SToHlNkuOpAfC8kN.TMrMKn9fxO6mB9XgQBo7DG', 0),
(6, 'Luka', 'Antolic', 'Lipanj69', '$2y$10$spns22O8vX7nlY9DszavI.WKdID2asdnM0x/1NCUu9nKFWc0RipXm', 1),
(7, 'Luka', 'Antolic', 'Lipanj68', '$2y$10$wx/FRD7EK133/oLpq1iRaOklxN49IWs.bnLlmrE8mhF2Rrfkl9eyK', 0),
(8, 'Luka', 'Antolic', 'bla', '$2y$10$M6y.ViHB/4yCZ/8eQjyAju0hQuInOnlwWfh6WJDEhRBfkS2vhObea', 0),
(9, 'Luka', 'Antolic', 'NoviUser ', '$2y$10$wpFRxvzzaHNJpKY8Twm7..lAyUPAOKjwuNX03rwK9ThY.gON2psfW', 0),
(10, 'gggg', 'gggg', 'gggg', '$2y$10$QlPfuAy19Q6o2Ai9smR6BOTWx7quEON6zbM1orq2pe7SzBz7nd4b.', 0),
(11, 'Luka', 'Antolic', 'Lipanj70', '$2y$10$6lDFdWuTHSn8We5l3HEG4ujni..qNqf2mRXhNXZkw42K9vW/6vUU6', 0),
(12, 'Luka', 'Antolic', 'Srpanj', '$2y$10$tjGzd6P7ilRbyt336tVOv.MTIDhgNZqdffTA0khPZ2j368Mnu5wK6', 0),
(13, 'Luka', 'Antolic', 'Listopad', '$2y$10$HMexxirMx1C29acGoWYakOJg.pMof6A27Hz52gH8coPHD2o9Y75DC', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vrsta`
--

CREATE TABLE `vrsta` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vrsta`
--

INSERT INTO `vrsta` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(1, '28.05.2024.', 'Giannis Antetokounmpo', 'The Greek Freak\'s Rise to NBA Stardom', 'Giannis Antetokounmpo, famously known as the \'Greek Freak,\' has taken the NBA by storm with his extraordinary skills and unmatched athleticism. Born on December 6, 1994, in Athens, Greece, Giannis grew up in challenging circumstances, often selling goods on the streets with his family to make ends meet. Despite the hardships, his passion for basketball shone through, and he quickly became a standout player in Greece\'s basketball leagues.\r\n\r\nIn 2013, Giannis entered the NBA Draft and was selected 15th overall by the Milwaukee Bucks. His rookie season was a learning experience, but it quickly became evident that he was no ordinary player. Standing at 6\'11\" with a wingspan of 7\'3\", Giannis combined his physical attributes with a relentless work ethic and a deep understanding of the game.\r\n\r\nGiannis\'s breakout season came in 2016-17 when he led the Bucks in every major statistical category, earning him the NBA\'s Most Improved Player award. His ability to play multiple positions and impact both ends of the court made him a unique and invaluable asset to the team. As his skills continued to develop, so did his leadership qualities, ultimately leading the Bucks to the top of the NBA standings.\r\n\r\nThe pinnacle of Giannis\'s career came in the 2018-19 and 2019-20 seasons, where he won back-to-back NBA Most Valuable Player (MVP) awards. His dominance on the court was characterized by his powerful drives to the basket, exceptional defensive plays, and an ever-improving jump shot. Giannis\'s performances were not just about his individual stats; he elevated his teammates and transformed the Bucks into championship contenders.\r\n\r\nIn 2021, Giannis led the Milwaukee Bucks to their first NBA championship in 50 years. His performance in the Finals was nothing short of legendary, including a 50-point game in the decisive Game 6, which earned him the Finals MVP award. This victory cemented his place among the greatest players in NBA history.\r\n\r\nOff the court, Giannis is known for his humility and connection to his roots. Despite his global fame, he remains deeply connected to his family and often speaks about the importance of his upbringing in Greece. His story is a source of inspiration to many, illustrating that with hard work, determination, and a bit of \'freakish\' talent, dreams can indeed come true.\r\n\r\nAs Giannis Antetokounmpo continues to evolve and add to his already impressive resume, the basketball world watches in awe. His journey from the streets of Athens to the pinnacle of the NBA is a remarkable story of perseverance, dedication, and sheer talent. The \'Greek Freak\' is not just a nickname; it is a fitting tribute to a player who continues to redefine what is possible on the basketball court.', 'kosarka.jpg', 'sport', 0),
(2, '28.05.2024.', 'Sean Strickland: The Unyielding Warrior of the UFC', 'Sean Strickland\'s journey in the UFC is a tale of resilience, raw talent, and an unwavering fighting spirit.', 'Sean Strickland, one of the most relentless and determined fighters in the UFC, has carved out a reputation as a fierce competitor with an unyielding spirit. Born on February 27, 1991, in Riverside, California, Sean\'s path to the octagon was marked by numerous challenges and a steadfast commitment to his craft.\r\n\r\nStrickland began training in mixed martial arts at a young age, quickly developing a passion for the sport. His early career was marked by an impressive string of victories in regional promotions, showcasing his prowess in both striking and grappling. This early success caught the attention of the UFC, and Strickland made his debut in the promotion in 2014.\r\n\r\nThroughout his UFC career, Strickland has been known for his aggressive fighting style and technical skills. His ability to push the pace and maintain pressure on his opponents has made him a formidable adversary in the middleweight division. Strickland\'s striking is particularly noteworthy; his crisp boxing, combined with his relentless forward movement, often overwhelms his opponents.\r\n\r\nOne of the most remarkable aspects of Strickland\'s career is his comeback from a severe motorcycle accident in 2018. The accident left him with multiple injuries, including a significant knee injury that required extensive rehabilitation. Many doubted whether he would ever return to the octagon. However, Strickland\'s resilience and determination saw him make a triumphant return to the UFC in 2020, defying the odds and proving his mettle as a fighter.\r\n\r\nSince his return, Strickland has continued to climb the ranks of the middleweight division. His notable victories over established fighters have solidified his status as a top contender. Strickland\'s fights are characterized by his exceptional conditioning and his ability to adapt to his opponents\' strategies, making him a versatile and dangerous competitor.\r\n\r\nOutside the octagon, Strickland is known for his straightforward and candid personality. He speaks openly about his love for fighting and the challenges he has faced throughout his career. This honesty has endeared him to many fans who appreciate his no-nonsense approach and dedication to the sport.\r\n\r\nStrickland\'s journey in the UFC is far from over. As he continues to hone his skills and seek out new challenges, he remains focused on his ultimate goal: to become a UFC champion. His story is a testament to the power of perseverance and the indomitable spirit that drives him forward, both inside and outside the octagon.\r\n\r\nIn the world of mixed martial arts, where the road to success is often fraught with obstacles, Sean Strickland\'s unwavering determination and fighting spirit stand out. He embodies the true essence of a warrior, continually pushing the limits of what is possible and inspiring others with his journey. As fans and fighters alike watch his career unfold, there is no doubt that Sean Strickland will continue to leave an indelible mark on the UFC.', 'strikland.jpg', 'sport', 0),
(3, '28.05.2024.', 'Takumi Minamino: The Rising Star of Japanese Football', ' Takumi Minamino\'s journey from Japan to the top European football leagues showcases his incredible talent and determination to succeed.', 'Takumi Minamino, one of Japan\'s brightest football talents, has made a significant impact on the global stage with his exceptional skills and relentless work ethic. Born on January 16, 1995, in Izumisano, Osaka, Minamino\'s passion for football was evident from a young age. His journey from local youth leagues in Japan to the elite clubs of Europe is a testament to his dedication and talent.\r\n\r\nMinamino\'s professional career began with Cerezo Osaka, one of Japan\'s prominent football clubs. He quickly rose through the ranks, making his first-team debut in 2012. His speed, technical ability, and vision on the field caught the attention of scouts, and he soon became one of the most promising young players in the J.League. His performances earned him a move to Europe, where he signed with Austrian giants Red Bull Salzburg in 2015.\r\n\r\nAt Salzburg, Minamino\'s career truly began to flourish. He adapted quickly to the European style of play, becoming a key player for the team. During his time with Salzburg, he was instrumental in their domestic success and impressive runs in European competitions. His standout performances in the UEFA Champions League, particularly against Liverpool in the 2019 group stage, highlighted his ability to compete at the highest level. Minamino\'s talent, combined with his work rate and tactical intelligence, made him a sought-after player.\r\n\r\nIn January 2020, Minamino made a high-profile move to Liverpool, one of the premier clubs in the English Premier League. The transfer was a significant milestone, not just for Minamino but also for Japanese football, as it underscored the growing influence of Asian players in top European leagues. At Liverpool, Minamino faced intense competition for places but demonstrated his versatility by playing in multiple attacking roles. His time at Liverpool saw him win the Premier League and contribute to the team\'s success in various competitions.\r\n\r\nIn search of more regular playing time, Minamino had loan spells at Southampton and AS Monaco, where he continued to showcase his talents. His ability to score crucial goals and provide assists, combined with his relentless energy and pressing, made him a valuable asset for these clubs. Minamino\'s adaptability and resilience in the face of challenges have been key factors in his success.\r\n\r\nInternationally, Minamino has been a vital player for the Japanese national team. He made his senior debut in 2015 and has since become a regular fixture in the squad. His contributions in international tournaments, including the AFC Asian Cup and World Cup qualifiers, have been crucial for Japan. Minamino\'s vision, creativity, and goal-scoring ability make him a linchpin in the Japanese attack.\r\n\r\nOff the field, Minamino is known for his humility and dedication to his craft. He is a role model for aspiring footballers in Japan and across Asia, inspiring the next generation with his journey and achievements. His commitment to improving every aspect of his game and his ability to overcome obstacles have earned him respect and admiration from fans and peers alike.\r\n\r\nAs Takumi Minamino continues to evolve and make his mark in European football, his story serves as an inspiration to many. His journey from the streets of Osaka to the grand stages of Europe is a testament to the power of perseverance, talent, and hard work. Minamino\'s rise in the football world is not just a personal triumph but also a celebration of the growing impact of Asian footballers on the global stage. The future holds immense promise for this exceptional player, and fans around the world eagerly await the next chapter in Takumi Minamino\'s remarkable career.', 'futbal.webp', 'sport', 0),
(4, '28.05.2024.', 'Astronomija: Znanost o Svemiru i Zvijezdama', ' Astronomija je znanstvena disciplina koja proučava svemir, zvijezde, planete i druge nebeske objekte, otkrivajući tajne našeg univerzuma.', 'Astronomija, jedna od najstarijih znanosti, bavi se proučavanjem svemira izvan Zemljine atmosfere. Ova fascinantna disciplina obuhvaća širok spektar tema, uključujući zvijezde, planete, galaksije, crne rupe i kozmičku evoluciju. Kroz povijest, astronomija je pomogla čovječanstvu da razumije svoje mjesto u svemiru, a moderna tehnologija omogućila je duboko i detaljno istraživanje kozmičkih pojava.\r\n\r\nPovijest astronomije\r\n\r\nAstronomija ima korijene u drevnim civilizacijama koje su promatrale nebo kako bi razumjele cikluse prirode i odredile vrijeme za poljoprivredu, religijske obrede i navigaciju. Stari Egipćani, Babilonci, Grci i Kinezi svi su razvili napredne metode za praćenje kretanja nebeskih tijela. Pojavom teleskopa u 17. stoljeću, zahvaljujući znanstvenicima poput Galilea Galileia, otvorena je nova era astronomskih otkrića koja je drastično promijenila naše razumijevanje svemira.\r\n\r\nGrane astronomije\r\n\r\nAstronomija se dijeli na nekoliko glavnih grana, od kojih svaka proučava različite aspekte svemira:\r\n\r\nAstrofizika: Proučava fizikalna svojstva nebeskih objekata i pojava, kao što su zvijezde, galaksije i crne rupe. Astrofizičari istražuju kako ti objekti nastaju, razvijaju se i umiru.\r\n\r\nPlanetarna astronomija: Fokusira se na planete unutar našeg Sunčevog sustava, kao i na egzoplanete (planete izvan našeg Sunčevog sustava). Ova grana istražuje sastav, atmosfere i moguće uvjete za život na tim planetima.\r\n\r\nKozmologija: Bavi se proučavanjem svemira kao cjeline, uključujući njegov nastanak, strukturu i konačnu sudbinu. Veliki prasak (Big Bang) i širenje svemira ključne su teme u kozmologiji.\r\n\r\nGalaktička astronomija: Istražuje strukturu, sastav i dinamiku galaksija, uključujući našu Mliječnu stazu. Galaktički astronomi proučavaju kako galaksije nastaju i evoluiraju tijekom vremena.\r\n\r\nModerna astronomija i tehnologija\r\n\r\nRazvoj teleskopa i drugih instrumenata revolucionirao je astronomiju. Svemirski teleskop Hubble, lansiran 1990. godine, omogućio je astronomima da proučavaju svemir s nevjerojatnom preciznošću i detaljima. Hubbleove slike otkrile su nove galaksije, crne rupe i druge egzotične fenomene, značajno proširujući naše znanje.\r\n\r\nDanas, astronomi koriste niz teleskopa i instrumenata smještenih na Zemlji i u svemiru. Radioteleskopi, poput onih u opservatoriju Arecibo, omogućuju proučavanje svemira kroz radijske valove, dok infracrveni teleskopi poput James Webb teleskopa, koji će naslijediti Hubble, pružaju uvid u hladne i udaljene dijelove svemira.\r\n\r\nOtkrića i budućnost\r\n\r\nAstronomija je dovela do brojnih revolucionarnih otkrića. Otkrivanje egzoplaneta promijenilo je naše razumijevanje planetarnih sustava i otvorilo mogućnost pronalaska života izvan Zemlje. Gravitacijski valovi, prvi put detektirani 2015. godine, potvrdili su Einsteinovu teoriju relativnosti i pružili novi način proučavanja svemira.\r\n\r\nBudućnost astronomije obećava još uzbudljivija otkrića. Misije poput Mars Rovera, budućih teleskopa i projekata za istraživanje dubokog svemira nastavit će širiti naše znanje. Istovremeno, kolaboracije između međunarodnih svemirskih agencija i privatnih tvrtki ubrzavaju razvoj tehnologije i istraživanja.\r\n\r\nAstronomija nije samo znanstvena disciplina, već i izvor inspiracije. Proučavanje zvijezda i galaksija potiče nas da se zapitamo o našem mjestu u svemiru i o granicama ljudskog znanja. Kao takva, astronomija nastavlja biti jedno od najuzbudljivijih i najvažnijih područja znanosti.', 'zemlja.jpg', 'kultura', 0),
(5, '28.05.2024.', 'Eurosong 2024: Spektakl Glazbe i Kulture', 'Eurosong 2024 donosi novu eru glazbenih senzacija, s uzbudljivim nastupima i inovativnim pristupom natjecanju, pružajući nezaboravno iskustvo za gledatelje širom svijeta.', 'Eurosong, jedno od najpopularnijih i najdugovječnijih glazbenih natjecanja na svijetu, vraća se i ove godine s još većim sjajem i uzbuđenjem. Eurosong 2024 obećava da će biti spektakl bez presedana, okupljajući talentirane glazbenike iz cijele Europe i šire kako bi se natjecali za prestižnu titulu najbolje pjesme u Europi. Ovo natjecanje, koje je prvi put održano 1956. godine, nastavlja svoju tradiciju slavljenja glazbe, kulture i jedinstva.\r\n\r\nMjesto održavanja i pripreme\r\n\r\nOvogodišnje izdanje Eurosonga održava se u malebitnom gradu Malmöu u Švedskoj, nakon što je švedska predstavnica pobijedila na prošlogodišnjem natjecanju. Malmö, poznat po svojoj bogatoj kulturnoj sceni i gostoljubivosti, idealno je mjesto za domaćina ovog prestižnog događaja. Arena Malmö, moderna i impresivna dvorana, bit će poprište nevjerojatnih glazbenih nastupa i vizualnih spektakla.\r\n\r\nOrganizatori su najavili nekoliko inovacija za Eurosong 2024, uključujući napredne tehnologije u produkciji i prijenosu događaja, što će omogućiti gledateljima da uživaju u još boljem iskustvu. Poseban naglasak stavljen je na održivost, s ciljem smanjenja ugljičnog otiska događaja i promoviranja ekološki prihvatljivih praksi.\r\n\r\nNatjecatelji i favoriti\r\n\r\nEurosong 2024 okupio je šaroliku skupinu talentiranih izvođača iz 40 zemalja. Svaka zemlja donosi svoju jedinstvenu glazbenu i kulturnu baštinu, što čini natjecanje izuzetno raznolikim i uzbudljivim. Među favoritima ove godine izdvajaju se nekoliko zemalja koje su već ostavile snažan dojam na gledatelje i glazbene kritičare.\r\n\r\nItalija, poznata po svojoj snažnoj glazbenoj tradiciji, šalje mladog i karizmatičnog pjevača s baladom koja već osvaja srca publike. Švedska, domaćin ovogodišnjeg natjecanja, također je među favoritima s modernom pop pjesmom koja kombinira zarazne melodije i inovativnu produkciju. Iznenađenje dolazi iz Islanda, čiji eksperimentalni elektro-pop bend donosi osvježavajući zvuk i kreativne scenske nastupe.\r\n\r\nGlasovanje i rezultati\r\n\r\nJedna od najuzbudljivijih aspekata Eurosonga je glasovanje. Kao i prethodnih godina, glasovanje će biti kombinacija glasova stručnog žirija iz svake zemlje i glasova publike. Ovaj sustav osigurava pravedan ishod i omogućava da najbolja pjesma pobjedi. Glasovanje uživo često donosi neizvjesne trenutke, a konačni rezultati otkrivaju se u spektakularnom finalu koje drži gledatelje na rubu svojih sjedala.', 'gai.webp', 'kultura', 0),
(6, '28.05.2024.', 'Oscari 2024: Noć Holivudske Magije i Glamura', 'Oscari 2024 donose najveću noć holivudske industrije, s nevjerojatnim filmovima, blistavim zvijezdama i nezaboravnim trenucima koji slave najbolja ostvarenja u svijetu filma.', 'Oscari, službeno poznati kao Akademske nagrade, najprestižnije su priznanje u filmskoj industriji, prepoznajući izvanredna postignuća u kinematografiji. Svake godine, najblistavije zvijezde Hollywooda i šire okupljaju se na ovoj svečanoj ceremoniji kako bi proslavili najbolje filmove, glumce, redatelje i mnoge druge umjetnike koji su oblikovali proteklu filmsku godinu. Oscari 2024 obećavaju još jednu nezaboravnu noć prepunu glamura, uzbuđenja i emotivnih trenutaka.\r\n\r\nPripreme i lokacija\r\n\r\nCeremonija dodjele Oscara tradicionalno se održava u Dolby Theatreu u Hollywoodu, Kalifornija. Crveni tepih ispred teatra postaje modna pista gdje se slavne osobe pojavljuju u svojim najboljim kreacijama, prikazujući vrhunske modne dizajne i stvarajući neke od najikoničnijih trenutaka u povijesti mode. Ovogodišnji domaćin bit će poznati komičar i glumac koji obećava da će svojim šarmom i duhovitošću zabaviti gledatelje tijekom cijele večeri.\r\n\r\nNominacije i favoriti\r\n\r\nNominacije za Oscare uvijek izazivaju veliko uzbuđenje i iščekivanje, a Oscari 2024 nisu iznimka. Ove godine, nekoliko filmova ističe se kao favoriti, s mnogobrojnim nominacijama u ključnim kategorijama.\r\n\r\n1. Film godine:\r\nJedan od najočekivanijih filmova ove godine je \"Moonlit Reverie,\" epska drama o ljubavi i gubitku, smještena u predivne krajolike Irske. Film je osvojio kritičare svojim vizualnim stilom i snažnim performansama glavnih glumaca.\r\n\r\n2. Glavna glumačka kategorija:\r\nU kategoriji najboljeg glumca, izdvaja se Jack Thompson za svoju ulogu u \"The Last Symphony,\" dok je za najbolju glumicu nominirana Emma Rodriguez za njen izvanredan prikaz stvarne osobe u biografskoj drami \"Unbroken Spirit.\"\r\n\r\n3. Najbolji redatelj:\r\nUtrka za najboljeg redatelja također je napeta, s veteranom Christopherom Nolanom koji je nominiran za svoj rad na znanstvenofantastičnom spektaklu \"Time?s Echo,\" i mladom talentiranom redateljicom Chloe Zhang za intimnu dramu \"Lost Horizons.\"\r\n\r\nSpecijalni efekti i tehničke kategorije:\r\nOscari također priznaju tehnička postignuća koja omogućuju stvaranje filmskih čarolija. Ove godine, blockbuster \"Galactic Voyage\" dominira u kategorijama za vizualne efekte i zvuk, impresionirajući publiku svojom inovativnom tehnologijom i imerzivnim doživljajem.\r\n\r\nNastupi i posebni trenuci\r\n\r\nJedna od karakteristika dodjele Oscara su i glazbeni nastupi. Nominirani za najbolju originalnu pjesmu izvest će svoje hitove uživo, stvarajući emotivne i inspirativne trenutke. Među izvođačima ove godine je pop senzacija Ava, čija je pjesma \"Eternal Flame\" iz filma \"Love in the Shadows\" postala globalni hit.\r\n\r\nHumanitarni segment\r\n\r\nOscari 2024 također će uključiti poseban segment posvećen humanitarnim inicijativama i društvenom utjecaju filmske industrije. Akademija će odati priznanje pojedincima i organizacijama koji su koristili svoju platformu za promicanje važnih društvenih pitanja i humanitarnog rada.\r\n\r\nZavršna riječ\r\n\r\nNoć Oscara nije samo priznanje najboljima u filmskoj industriji; to je slavlje pričanja priča, kreativnosti i ljudskog duha. Dok čekamo otvaranje omotnica i otkrivanje dobitnika, Oscari 2024 obećavaju da će biti nezaboravna proslava filmske umjetnosti, inspirirajući gledatelje diljem svijeta i podsjećajući nas na moć filma da mijenja živote i povezuje ljude.', 'oscar.webp', 'kultura', 0),
(7, '01.06.2024.', 'Eminem: Rap Bog naše Generacije', 'Eminem, često smatran jednim od najvećih repera svih vremena, ostavio je neizbrisiv trag u glazbenoj industriji svojim revolucionarnim tekstovima i neusporedivom sposobnošću pripovijedanja.', 'Eminem, rođen kao Marshall Bruce Mathers III 17. listopada 1972. u St. Josephu, Missouri, američki je reper, tekstopisac i producent. Do slave je došao krajem 1990-ih s debi albumom \"The Slim Shady LP,\" kojim je brzo postao poznat po svojim provokativnim tekstovima, brzim rimama i sirovom, emocionalnom pripovijedanju.\r\n\r\nEminemov put do zvijezda nije bio nimalo lagan. Odrastajući u turbulentnom domu i suočavajući se s brojnim osobnim izazovima, svoje je borbe pretočio u svoju glazbu. Njegovo drugo veliko izdanje, \"The Marshall Mathers LP,\" učvrstilo je njegovo mjesto u povijesti hip-hopa, s hitovima kao što su \"Stan\" i \"The Real Slim Shady,\" i donijelo mu više Grammy nagrada.\r\n\r\nTijekom svoje karijere, Eminem je bio i kontroverzna figura i miljenik kritike. Njegovi albumi često obrađuju teme poput siromaštva, obiteljskih dinamika, ovisnosti i slave. Pjesme poput \"Lose Yourself,\" iz filma \"8 Mile,\" postale su himne upornosti i samopouzdanja, inspirirajući mnoge diljem svijeta. Eminemov neupitni talent i strast prema glazbi čine ga jednom od najvažnijih i najutjecajnijih figura u modernoj glazbenoj povijesti.', 'eminem.webp', 'kultura', 0),
(8, '01.06.2024.', 'Hrvatsko narodno kazalište(HNK): Kulturna Ikona Hrvatske', 'Hrvatsko narodno kazalište u Zagrebu, simbol hrvatske kulture i umjetnosti, već više od jednog stoljeća služi kao središte dramske, operne i baletne umjetnosti u Hrvatskoj.', 'Hrvatsko narodno kazalište (HNK) u Zagrebu, smješteno u veličanstvenoj zgradi u središtu grada, predstavlja najvažniju kulturnu instituciju u zemlji. Osnovano 1860. godine, HNK je od svojih početaka bilo mjesto gdje se njeguje i promovira hrvatska kulturna baština, kao i suvremena umjetnička izričaja.\r\n\r\nZgrada HNK, otvorena 1895. godine, djelo je poznatih bečkih arhitekata Hermanna Helmera i Ferdinanda Fellnera. Sa svojom impresivnom neobaroknom fasadom i bogato ukrašenom unutrašnjosti, kazalište je samo po sebi umjetničko djelo i nezaobilazna turistička atrakcija.\r\n\r\nHNK je dom Drame, Opere i Baleta, te na njegovim daskama svake godine oživi mnoštvo klasičnih i suvremenih djela. U proteklih stotinu i više godina, HNK je ugostio neka od najvažnijih imena svjetske kazališne, operne i baletne scene, kao i brojne domaće umjetnike koji su svojim radom pridonijeli bogatstvu hrvatske kulture.\r\n\r\nOsim što služi kao pozornica za izvedbene umjetnosti, HNK je i mjesto okupljanja za sve ljubitelje umjetnosti i kulture. Njegov repertoar obuhvaća širok spektar predstava - od klasičnih tragedija i komedija do modernih djela, od grandioznih opernih izvedbi do suvremenih baletnih koreografija.\r\n\r\nHrvatsko narodno kazalište nije samo središte umjetničkog stvaralaštva, već i institucija koja povezuje prošlost i sadašnjost, tradiciju i inovaciju, te time ostaje trajni simbol kulturnog identiteta Hrvatske. Njegova vrata otvorena su svima koji žele uroniti u svijet umjetnosti i osjetiti duh hrvatske kulturne baštine.', 'hnk.webp', 'kultura', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vrsta`
--
ALTER TABLE `vrsta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vrsta`
--
ALTER TABLE `vrsta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
