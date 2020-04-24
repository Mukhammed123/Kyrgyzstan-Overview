//
//  ThirdViewController.swift
//  MyApp
//
//  Created by NDHU_CSIE on 2019/12/25.
//  Copyright © 2019 NDHU_CSIE. All rights reserved.
//

import UIKit
import WebKit
class ThirdViewController: UIViewController {
    
    var images = [
        ["region1","region2","region3","region4","region5"],
        ["nature1","nature2","nature3","nature4","nature5"],
        ["animal1","animal2","animal3","animal4","animal5"],
        ["fruit1","fruit2","fruit3","fruit4","fruit5"],
        ["food1","food2","food3","food4","food5"]
    ]
    
    let data = [
        ["Bishkek","Osh","Talas","Jalal-Abad","Naryn"],
        ["Sary-Chelek", "Jeti-Oguz","Ala-Archa","Alakol","Suusamyr"],
        ["Snow Leopard","Mountain Goat&sheep", "Wolf","Bear","Eagle"],
        ["Grape","Watermelon","Peach","Apricot","Tomato"],
        ["Shorpo","Besh-barmak","Plov","Chuchuk","Kozu-grill"]
    
    ]
    
    let urls = [
        ["oBT4FR84PSg","43YNpMh1Z9c","wbrheAWv19c","oVjTVX9TZKE","-Pq7KsjRDLk"],
        ["569xrh8ZzaQ","qgEzmAMjmQU","C31xEGb4L1I","vuWz_CRSY90","50y5jLAPooI"],
        ["8zIEP01PuDw","B_hjkaBk7_k","fs8qo9FHQSY","pqz4tU6b64Y","H82aBfvLHOY"],
        ["9Bux0_U9pcM","6M7YbNJ87gQ","Sa7KAbfXFpw","nhrIVPklpNA","g6eB2DyGKzY"],
        ["Gv_krHrXvEs","4qzW7Uf2a4w","wbsXYxghPQI","jX-GOLboSXI","3pExfTPaNS8"]
    ]
    
    let desc = [
        ["is situated at an altitude of about 800 meters (2,600 ft), just off the northern fringe of the Kyrgyz Ala-Too range, an extension of the Tian Shan mountain range. These mountains rise to a height of 4,855 meters (15,928 ft). North of the city, a fertile and gently undulating steppe extends far north into neighboring Kazakhstan. The Chui River drains most of the area. Bishkek is connected to the Turkestan-Siberia Railway by a spur line.",
         "is the second largest city in Kyrgyzstan, located in the Fergana Valley in the south of the country and often referred to as the 'capital of the south'. It is the oldest city in the country (estimated to be more than 3000 years old), and has served as the administrative center of Osh Region since 1939. The city has an ethnically mixed population of about 281,900 in 2017, comprising Uzbeks, Kyrgyz, Russians, Tajiks, and other smaller ethnic groups. It is about 5 km from the Uzbekistan border.",
         "is a town in northwestern Kyrgyzstan, located in the Talas River valley between two mountain ranges. Its area is 13 square kilometres (5.0 sq mi), and its resident population was 32,886 in 2009. It is the administrative headquarters of Talas Region. The town was founded by East Slavic settlers in 1877. To the south is the Besh-Tash (‘five rocks’) valley with the Besh-Tash National Park.",
         "(also spelled Dzhalal-Abad, Djalal-Abat, Jalalabat; Kyrgyz: Жалал-Aбат, Calal-Abat/Jalal-Abat, جالال-ابات, [dʒɑlɑlɑbɑt]) is the administrative and economic centre of Jalal-Abad Region in southwestern Kyrgyzstan. Its area is 88 square kilometres (34 sq mi), and its resident population was 97,172 in 2009 and is officially estimated at 109,200 in January 2019. It is situated at the north-eastern end of the Fergana valley along the Kögart River valley, in the foothills of the Babash Ata mountains, very close to Uzbekistan border.",
         "(Kyrgyz: Нарын, Narın, نارىن) is the regional administrative center of Naryn Region in central Kyrgyzstan. Its area is 84 square kilometres (32 sq mi), and its estimated population was 40,000 as of January 2019. The town was established as a fortress on the caravan route in 1868. It is situated on both banks of the Naryn River (one of the main head waters of the Syr Darya), which cuts a picturesque gorge through the town. The city has two regional museums and some hotels, but is otherwise residential."
        ],
        ["(also Sarychelek, Kyrgyz: Сарычелек) is a mountain lake located in Sary-Chelek Nature Reserve in Jalal-Abad Province in Western Kyrgyzstan. It is north of Arkit (the park headquarters) at the eastern end of the Chatkal Range. There are a number of smaller lakes in the area.",
         "(Kyrgyz: Жети-өгүз [dʒeti œɣýz], seven bulls) is a raion (district) of Issyk-Kul Region in north-eastern Kyrgyzstan. The capital lies at Kyzyl-Suu, Its area is 14,499 square kilometres (5,598 sq mi), and its resident population was 82,085 in 2009. and the province comprises much of the eastern end of the Teskey Ala-Too Range.",
         "The Ala Archa National Park is an alpine national park in the Tian Shan mountains of Kyrgyzstan, established in 1976 and located approximately 40 km south of the capital city of Bishkek. The park covers about 200 square kilometers, and its altitude ranges from about 1,500 meters at the entrance to a maximum of 4,895 meters at Peak Semenova Tian-Shanski, the highest peak in the Kyrgyz Ala-tau range of the Tian Shan. There are more than 20 small and large glaciers and some 50 mountain peaks within the park.",
         "is the northwest extension of the region known as the Dzhungarian Gate (Alataw Pass), a narrow valley connects the southern uplands of Kazakhstan with arid northwest China. The Dzhungarian Gate is a fault-bounded valley (see vertical line on the image along the southwest side of the lake) where the elevation of the valley floor is between 350 and 450 m above sea level and the peaks of the Dzhungarsky Alatau range (lower left) reach 4,463 m (14,642 ft) above sea level. Two well-defined alluvial fans are visible where mountain streams cut through the faulted landscape to the southwest of the lake.",
         "lies at 2,000-2,500 meters above the sea level between Suusamyr Too and Kyrgyz Ala-Too ranges of Tian Shan mountains in Central Asia. Suusamyr River flows through it. The valley is predominantly used as alpine summer pastures full of herbs and wild flowers – carpeting the valley floor in many colours. The valley is located in Chuy Region of Kyrgyzstan. Bishkek — Osh (M41) (European route E010) road enters the valley at the tunnel under Töö Ashuu Pass and leaves it at Ala-Bel Pass."
        ],
        ["also known as the ounce, is a large cat native to the mountain ranges of Central and South Asia. It is listed as Vulnerable on the IUCN Red List because the global population is estimated to number less than 10,000 mature individuals and is expected to decline about 10% by 2040. It is threatened by poaching and habitat destruction following infrastructural developments. It inhabits alpine and subalpine zones at elevations from 3,000 to 4,500 m (9,800 to 14,800 ft), ranging from eastern Afghanistan to Mongolia and western China. In the northern range countries, it also occurs at lower elevations.",
         "The mountain goat (Oreamnos americanus), also known as the Rocky Mountain goat, is a hoofed mammal endemic to North America. A subalpine to alpine species, it is a sure-footed climber commonly seen on cliffs and ice. Despite its vernacular name, it is not a member of Capra, the genus that includes all other goats, such as the wild goat, Capra aegagrus, from which the domestic goat is derived.",
         "The wolf has a bad reputation throughout the world. Perhaps part of this in modern times is due to the prevelance of Werewolf stories and films. There are a number of species of wolves found throughout the Republic, and their reputation is no better here than elsewhere – especially as they seen as a distinct threat to livestock. In just one year, it is claimed that wolves in the Naryn province alone were responsible for killing almost 16000 animals, (4000 horses, 4000 cows and 8000 sheep and goats) with a value of 70,400.000 soms – (about 1.75 million US dollars), whereas in the same period thieves were responsible for stealing just 342 – worth 1.4 millions soms (about 33,000 US dollars). A bounty is paid to hunters for killing wolves and there is a planned program for culling the animals. Even domestic dogs have fallen prey to eager hunters.",
         "The brown bear (Ursus arctos) is a bear species that is found across much of northern Eurasia and North America. In North America, the populations of brown bears are often called 'grizzly bears'. It is one of the largest living terrestrial members of the order Carnivora, rivalled in size only by its closest relative, the polar bear (Ursus maritimus), which is much less variable in size and slightly larger on average.",
        "Central Asia is the birthplace of the ancient tradition of eagle hunting. The nomads who roamed the Central Asian steppes began to tame these birds of prey thousands of years ago and this tradition is still passed on from generation to generation. It was fundamental for the acquisition of food and furs in the harsh winter months. Nowadays, this form of hunting isn’t essential anymore in the survival of the people and the tradition of eagle hunting is now slowly disappearing. Kyrgyzstan is one of the few countries that still follow some traditions of the nomadic civilization and there are a handful of expert hunters left to this day who are determined to keep this ancient practice alive."
        ],
        ["production of different varieties from Italy, planted in the northern shore of Lake Issyk- Kul namely in Chok-Tal and Kara-Oi villages. These varieties used in the wine production in Italy and possess high reputation among the wine growers and wine producers. The climatic conditions of Italy, Florence are about the same with the Chok-Tal and Kara-Oi. Only altitude here plays a role. In both locations climate is marine. After the collapse of the Soviet Union grape production was not paid enough attention. Acidity, Alcohol and Brix were analyzed. On the altitude of 1500 meters above the sea level grape plants from Italy were planted and the results of the above mentioned grape plants showed parameters in the tables bellow compared with the Italian results. Climatic conditions of the region taken from the climate research implemented during the Soviet Time. This data information is still used for the agronomic practice management. The uniqueness of the work is that for the first time in the country foreign varieties were planted on the above mentioned altitude and it has chemical parameters necessary for the wine production.",
         "is a plant species in the family Cucurbitaceae, a vine-like (scrambler and trailer) flowering plant originating in West Africa. It is cultivated for its fruit. The subdivision of this species into two varieties, watermelons (Citrullus lanatus (Thunb.) var. lanatus) and citron melons (Citrullus lanatus var. citroides (L. H. Bailey) Mansf.), originated with the erroneous synonymization of Citrullus lanatus (Thunb.) Matsum. & Nakai and Citrullus vulgaris Schrad. by L.H. Bailey in 1930. Molecular data including sequences from the original collection of Thunberg and other relevant type material, show that the sweet watermelon (Citrullus vulgaris Schrad.) and the bitter wooly melon Citrullus lanatus (Thunb.) Matsum. & Nakai are not closely related to each other.",
         "Hundreds of peach and nectarine cultivars are known. These are classified into two categories — the freestones and the clingstones, depending on whether the flesh sticks to the stone or not. Freestones are those whose flesh separates readily from the pit. Clingstones are those whose flesh clings tightly to the pit. Some cultivars are partially freestone and clingstone, so are called semifree. Freestone types are preferred for eating fresh, while clingstone types are for canning. The fruit flesh may be creamy white to deep yellow; the hue and shade of the color depends on the cultivar.",
         "Central Asia is considered the oldest cultural center of apricot and is home to many wild varieties and varieties domesticated by local people over generations, especially in the mountain regions of Pamir and Tien Shan. From generation to generation legends, stories and associated with apricots are transmitted, and apricot wood is used to make goods used in daily village life. The Apricot in Blossom festival takes place in Bakten every spring. In the valley it is common to find trees older than 100 years.",
         "The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America and Central America. The Nahuatl (Aztec language) word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived. Its domestication and use as a cultivated food may have originated with the indigenous peoples of Mexico. The Aztecs used tomatoes in their cooking at the time of the Spanish conquest of the Aztec Empire, and after the Spanish encountered the tomato for the first time after their contact with the Aztecs, they brought the plant to Europe. From there, the tomato was introduced to other parts of the European-colonized world during the 16th century."
        
        ],
        ["Chorba is one of various kinds of soup or stew found in national cuisines across the Balkans, North Africa, Central Europe, Eastern Europe, Central Asia, Middle East and the Indian subcontinent. Chorba or shorba is variously derived from the Arabic word meaning gravy or from a Persian term شوربا from shor ('salty, brackish') and ba/ab, آب، ما ('water/stew') or from a hypothetical cognate word common to Arabic and Persian.",
         "(Kyrgyz: бешбармак, Russian: бешбармак, Bashkir: бишбармаҡ, Tatar: бишбармак — 'five finger') is the national dish among nomadic Turkic peoples in Central Asia and Russia. It is also known as naryn in Xinjiang, Uzbekistan, Kyrgyzstan and Kazakhstan, as turama or dograma in Karakalpakstan, North Caucasus and Turkmenistan, and as kullama in Bashkortostan and Tatarstan.The term beshbarmak means 'five fingers', because nomads used to eat this dish with their hands. The boiled meat is finely chopped with knives, mixed with boiled noodles, and spiced with onion sauce. It is usually served in a big round dish. Beshbarmak is usually served with shorpo – mutton broth in bowls called kese. Typically, shorpo is served as a first course that is followed by courses of beshbarmak and a drink called ak-serke (shorpo spiced with kymyz or ayran).",
         "At its most basic, plov is rice with onion and carrots, plus either mutton, lamb or beef, cooked slowly in layers. But this is no ordinary plov; this is plov with bells on, and it takes two waiters to carry the lagan (platter) to the table. Atop the lightly oiled rice and matchsticks of soft yellow carrots, are 12 roasted quail (whole), horse meat sausages (sliced), quince (quartered), a scattering of glossy white quails’ eggs and countless slivers of thinly shaved beef. As the steam lifted, filling the room with a rich, meaty aroma, the whole restaurant diverted their eyes from the Uzbek soap opera on the television to admire this elitni, or VIP, plov. That lunchtime, 12 of us feasted from the platter, and by the end there was still some going spare.",
         "Чучук можно подавать холодным, как закуску, либо в горячем виде, как добавку к основному блюду. Например, к бешбармаку. Но много его есь нельзя, так как конина — очень жирное мясо.Рецепт приготовления чучука — кыргызского национального блюда — рассказал шеф-повар этнокомплекса 'Супара' Болот Тентиев, сообщает Sputnik Кыргызстан.По словам шеф-повара, необходимы следующие продукты: кишка (длиной около 30 сантиметров) — 1 шт.; пашина (нежная часть мяса с жиром с подбрюшья лошади) — 300-400 г; лук репчатый — 1 шт.; чеснок — 2-3 зубчика; лавровый лист, соль, паприка, черный перец молотый — по вкусу.",
         "Поставщик доставляет тушу ягненка,  которая может весить  от  18 до 25 кг,  первым делом  повар делает надрезы в разных частях туши, тщательно натирает специями, машет кляром для придания золотой корочки и  заворачивает  в фольгу ножки ягненка.  Мариновать желательно 4-5 часов. Тушку насаживают на вертел и закрепляют.  Обязательно хорошо закрепляйте ягненка  на вертеле, для этого проволокой или зажимами хорошо закрепите ноги и шею. Лучше всего дополнительно зафиксировать тушу со стороны позвоночника. Маринованную тушу  ягненка  ставят  в тандыр, который  нагревается   до 350 градусов,  накрывают  тяжелой деревянной крышкой. По запаху можно определить готов  ли ягненок  к подаче. На кухне аппетитно запахло. Вилдарбек вместе с помощником осторожно вытаскивают из тандыра козу-гриль, который  покрылся   золотой корочкой. "]
    ]
    
    var firstTableRow: Int!
    var secondTableRow: Int!

    

    @IBOutlet weak var thumbnailTableView3: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var myWebVideo: WKWebView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        nameLabel?.text = data[firstTableRow][secondTableRow] + ":"
        thumbnailTableView3?.image = UIImage(named: images[firstTableRow][secondTableRow])
        descLabel?.text = desc[firstTableRow][secondTableRow]
//        print(firstTableRow)
//        print(secondTableRow)

        getVideo(videoCode: urls[firstTableRow][secondTableRow])
    }
    
    
    
    func getVideo(videoCode: String){
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        myWebVideo.load(URLRequest(url: url!))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
