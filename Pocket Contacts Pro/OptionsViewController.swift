import Foundation
import UIKit



class OptionsViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
        
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    
    var kite:NSString = "rhfhfyjgy"

    
      var boynames: NSArray = ["히브리어","성경에","예언되어","있고","신약에","기록","된","그리스도라고","믿습니다.","[1]","2015","년","현재","약","23","억","명의","추종자가있는","세계에서","가장","큰","종교입니다.","[2]","Interprétation","catholique","","Basilique","Saint-Pierre,","Cité","du","Vatican,","la","plus","grande","église","du","monde","et","symbole","de","l'Église","catholique","Article","principal:","théologie","catholique","de","l'Écriture","Dans","l'antiquité,","deux","écoles","d'exégèse","se","sont","développées","à","Alexandrie","et","à","Antioche.","L'interprétation","alexandrine,","illustrée","par","Origène,","avait","tendance","à","lire","les","Écritures","de","manière","allégorique,","tandis","que","l'interprétation","d'Antioche","adhérait","au","sens","littéral,","soutenant","que","d'autres","significations","(appelées","theoria)","ne","pouvaient","être","acceptées","que","si","elles","étaient","basées","sur","le","sens","littéral.","[137]","","La","théologie","catholique","distingue","deux","sens","de","l'Écriture:","le","littéral","et","le","spirituel.","[138]","","Le","sens","littéral","de","la","compréhension","des","Écritures","est","le","sens","véhiculé","par","les","paroles","des","Écritures.","Le","sens","spirituel","est","subdivisé","en:","","Le","sens","allégorique,","qui","inclut","la","typologie.","Un","exemple","serait","la","séparation","de","la","mer","Rouge","étant","comprise","comme","un","«type»","(signe)","de","baptême.","[1Cor","10:","2]","Le","sens","moral,","qui","comprend","que","l'Écriture","contient","un","enseignement","éthique.","Le","sens","anagogique,","qui","s'applique","à","l'eschatologie,","à","l'éternité","et","à","la","consommation","du","monde","Concernant","l'exégèse,","suivant","les","règles","de","l'interprétation","sonore,","la","théologie","catholique","tient:","","L'injonction","selon","laquelle","tous","les","autres","sens","de","l'Écriture","sacrée","sont","basés","sur","le","littéral","[139]","[140]","Que","l'historicité","des","Évangiles","doit","être","absolument","et","constamment","soutenue","[141]","Cette","Écriture","doit","être","lue","dans","la","«Tradition","vivante","de","toute","l'Église»","[142]","et","Que","","la","tâche","d'interprétation","a","été","confiée","aux","évêques","en","communion","avec","le","successeur","de","Pierre,","évêque","de","Rome",".","[143]","Interprétation","protestante","Cinq","solae","de","la","Réforme","protestante","Sola","scriptura","Sola","fide","Sola","gratia","Solus","Christus","Soli","Deo","gloria","vte","Qualités","de","l'Écriture","Les","chrétiens","protestants","croient","que","la","Bible","est","une","révélation","autosuffisante,","l'autorité","finale","sur","toute","doctrine","chrétienne,","et","a","révélé","toute","la","vérité","nécessaire","au","salut.","Ce","concept","est","connu","sous","le","nom","de","sola","scriptura.","[144]","Les","protestants","croient","de","façon","caractéristique","que","les","croyants","ordinaires","peuvent","parvenir","à","une","compréhension","adéquate","de","l'Écriture","parce","que","l'Écriture","elle-même","est","claire","dans","sa","signification","(ou","«perspicace»).","Martin","Luther","croyait","que","sans","l'aide","de","Dieu,","l'Écriture","serait","","enveloppée","de","ténèbres",".","[145]","Il","a","plaidé","pour","«une","compréhension","simple","et","précise","des","Écritures».","[145]","Jean","Calvin","a","écrit:","«Tous","ceux","qui","refusent","de","ne","pas","suivre","le","Saint-Esprit","comme","leur","guide,","trouvent","dans","l'Écriture","une","claire","lumière».","[146]","L","'«efficacité»","est","liée","à","cela,","à","savoir","que","l'Écriture","est","capable","de","conduire","les","gens","à","la","foi","","et","«suffisance»,","que","les","Écritures","contiennent","tout","ce","qu'il","faut","savoir","pour","obtenir","le","salut","et","vivre","une","vie","chrétienne.","[147]","","Signification","originale","prévue","des","Écritures","Les","protestants","insistent","sur","le","sens","véhiculé","par","les","mots","de","l'Écriture,","la","méthode","historico-grammaticale.","[148]","La","méthode","historico-grammaticale","ou","la","méthode","grammatico-historique","est","un","effort","d'herméneutique","biblique","pour","trouver","la","signification","originale","voulue","dans","le","texte.","[149]","Cette","signification","originale","voulue","du","texte","est","tirée","par","l'examen","du","passage","à","la","lumière","des","aspects","grammaticaux","et","syntaxiques,","du","contexte","historique,","du","genre","littéraire,","ainsi","que","des","considérations","théologiques","(canoniques).","[150]","La","méthode","historico-grammaticale","fait","la","distinction","entre","la","seule","signification","originale","et","la","signification","du","texte.","La","signification","du","texte","comprend","l'utilisation","qui","en","découle","du","texte","ou","de","l'application.","Le","passage","original","est","considéré","comme","n'ayant","qu'un","seul","sens","ou","sens.","Comme","le","disait","Milton","S.","Terry:","«Un","principe","fondamental","de","l’exposition","grammatico-historique","est","que","les","mots","et","les","phrases","ne","peuvent","avoir","qu’une","seule","signification","dans","une","seule","et","même","connexion.","Au","moment","où","nous","négligeons","ce","principe,","nous","dérivons","sur","une","mer","d’incertitudes","et","de","conjectures.",".","","[151]","Techniquement","parlant,","la","méthode","d'interprétation","grammaticale","et","historique","est","distincte","de","la","détermination","de","la","signification","du","passage","à","la","lumière","de","cette","interprétation.","Pris","ensemble,","les","deux","définissent","le","terme","herméneutique","(biblique).","[149]","","Certains","interprètes","protestants","utilisent","la","typologie.","[152]","","L'histoire","Article","principal:","Histoire","du","christianisme","Christianisme","primitif","Âge","apostolique","","Chapelle","de","Saint","Ananias,","Damas,","Syrie,","un","des","premiers","exemples","d'un","lieu","de","culte","chrétien","","construit","au","1er","siècle","après","JC","","Un","premier","symbole","ichthys","circulaire,","créé","en","combinant","les","lettres","grecques","ΙΧΘΥΣ","dans","une","roue,","Ephèse,","Asie","Mineure","","Le","monastère","de","Saint-Matthieu,","situé","au","sommet","du","mont","Alfaf","dans","le","nord","de","l'Irak,","est","reconnu","comme","l'un","des","plus","anciens","monastères","chrétiens","existants","[153]","Diverses","communautés","catholiques","indépendantes","plus","petites,","telles","que","l'Église","catholique","ancienne,","incluent","le","mot","catholique","dans","leur","titre","et","ont","sans","doute","des","pratiques","plus","ou","moins","liturgiques","en","commun","avec","l'Église","catholique,","mais","ne","sont","plus","en","pleine","communion","avec","le","Saint-Siège.","","Les","chrétiens","spirituels,","tels","que","les","Doukhobor","et","les","Molokan,","ont","rompu","avec","l'Église","orthodoxe","russe","et","entretiennent","des","relations","étroites","avec","les","mennonites","et","les","quakers","en","raison","de","pratiques","religieuses","similaires","","tous","ces","groupes","sont","en","outre","collectivement","considérés","comme","des","églises","de","paix","en","raison","de","leur","croyance","au","pacifisme.","[372]","[373]","","Le","judaïsme","messianique","(ou","le","mouvement","messianique)","est","le","nom","d'un","mouvement","chrétien","comprenant","un","certain","nombre","de","courants,","dont","les","membres","peuvent","se","considérer","comme","juifs.","Le","mouvement","est","né","dans","les","années","1960","et","1970,","et","il","mélange","des","éléments","de","la","pratique","religieuse","juive","avec","le","christianisme","évangélique.","Le","judaïsme","messianique","affirme","les","croyances","chrétiennes","telles","que","la","messianité","et","la","divinité","de","«Yeshua»","(le","nom","hébreu","de","Jésus)","et","la","nature","trine","de","Dieu,","tout","en","adhérant","également","à","certaines","lois","et","coutumes","alimentaires","juives.","[374]","","Les","Chrétiens","ésotériques","considèrent","le","christianisme","comme","une","religion","mystérieuse,","[375]","[376]","et","professent","l'existence","et","la","possession","de","certaines","doctrines","ou","pratiques","ésotériques,","[377]","[378]","cachées","du","public","mais","accessibles","seulement","à","un","cercle","restreint","de","","éclairés",",","«initiés»","ou","personnes","hautement","éduquées.","[379]","[380]","Certaines","des","institutions","chrétiennes","ésotériques","comprennent","la","Rosicrucian","Fellowship,","la","Société","anthroposophique","et","le","Martinisme.","","Influence","sur","la","culture","occidentale","Articles","principaux:","culture","chrétienne","et","rôle","du","christianisme","dans","la","civilisation","Informations","complémentaires:","culture","protestante","et","influences","chrétiennes","dans","l'islam","La","culture","chrétienne","","","","","","Dans","le","sens","des","aiguilles","d'une","montre","à","partir","du","haut:","plafond","de","la","chapelle","Sixtine,","cathédrale","Notre-Dame","de","Paris,","mariage","orthodoxe","oriental,","statue","du","Christ","Rédempteur,","crèche","La","culture","occidentale,","tout","au","long","de","la","majeure","partie","de","son","histoire,","a","été","presque","équivalente","à","la","culture","chrétienne,","et","une","grande","partie","de","la","population","de","l'hémisphère","occidental","peut","être","décrite","comme","des","chrétiens","pratiquants","ou","nominaux.","La","notion","d","'","Europe","","et","de","","monde","occidental","","a","été","intimement","liée","au","concept","de","","christianisme","et","chrétienté",".","Beaucoup","attribuent","même","au","christianisme","le","lien","qui","a","créé","une","identité","européenne","unifiée","[381].","","Bien","que","la","culture","occidentale","contienne","plusieurs","religions","polythéistes","au","cours","de","ses","premières","années","sous","les","empires","grec","et","romain,","alors","que","le","pouvoir","romain","centralisé","diminuait,","la","domination","de","l'Église","catholique","était","la","seule","force","cohérente","en","Europe","occidentale.","[382]","Jusqu'au","siècle","des","Lumières","[383],","la","culture","chrétienne","a","guidé","le","cours","de","la","philosophie,","de","la","littérature,","de","l'art,","de","la","musique","et","de","la","science.","[382]","[384]","Les","disciplines","chrétiennes","des","arts","respectifs","se","sont","ensuite","développées","en","philosophie","chrétienne,","art","chrétien,","musique","chrétienne,","littérature","chrétienne,","etc.","","Le","christianisme","a","eu","un","impact","significatif","sur","l'éducation,","car","l'église","a","créé","les","bases","du","système","éducatif","occidental,","[385]","et","a","été","le","sponsor","des","universités","fondatrices","dans","le","monde","occidental,","car","l'université","est","généralement","considérée","comme","une","institution","qui","a","son","origine","dans","le","cadre","chrétien","médiéval.","[186]","Historiquement,","le","christianisme","a","souvent","été","un","patron","de","la","science","et","de","la","médecine","","de","nombreux","membres","du","clergé","catholique,","[386]","jésuites","en","particulier,","[387]","[388]","ont","été","actifs","dans","les","sciences","à","travers","l'histoire","et","ont","apporté","des","contributions","significatives","au","développement","de","la","science.","[389]","Le","protestantisme","a","également","eu","une","influence","importante","sur","la","science.","Selon","la","thèse","de","Merton,","il","y","avait","une","corrélation","positive","entre","la","montée","du","puritanisme","anglais","et","du","piétisme","allemand","d'une","part,","et","les","premières","sciences","expérimentales","d'autre","part.","[390]","L'influence","civilisatrice","du","christianisme","comprend","le","bien-être","social,","[391]","la","fondation","d'hôpitaux,","[392]","l'économie","(comme","l'éthique","de","travail","protestante),","[393]","[394]","[395]","l'architecture,","[396]","la","politique,","[397]","la","littérature,","[398]","]","hygiène","personnelle","(ablutions),","[399]","[400]","[401]","et","vie","de","famille.","[402]","[403]","","Les","chrétiens","d'Orient","(en","particulier","les","chrétiens","nestoriens)","ont","contribué","à","la","civilisation","arabe","islamique","pendant","le","règne","de","l'Oummayad","et","des","Abbassides,","en","traduisant","des","œuvres","de","philosophes","grecs","en","syriaque","puis","en","arabe.","[404]","[405]","[406]","Ils","ont","également","excellé","dans","la","philosophie,","la","science,","la","théologie","et","la","médecine.","[407]","[408]","[409]","","Les","chrétiens","ont","apporté","une","myriade","de","contributions","au","progrès","humain","dans","un","large","éventail","de","domaines,","[410]","y","compris","la","philosophie,","[411]","[412]","la","science","et","la","technologie,","[413]","[414]","[415]","[416]","[417]","[418]","beaux-arts","et","architecture,","[419]","politique,","littératures,","musique,","[420]","et","affaires.","[421]","Selon","100","ans","de","prix","Nobel,","un","examen","des","prix","Nobel","entre","1901","et","2000","révèle","que","(65,4%)","des","lauréats","des","prix","Nobel","ont","identifié","le","christianisme","sous","ses","diverses","formes","comme","leur","préférence","religieuse.","[422]","","La","postchristianité","[423]","est","le","terme","pour","désigner","le","déclin","du","christianisme,","en","particulier","en","Europe,","au","Canada,","en","Australie","et","dans","une","moindre","mesure","dans","le","cône","sud,","aux","20e","et","21e","siècles,","considéré","en","termes","Vallée","de","Kadisha,","au","Liban,","qui","abrite","certains","des","premiers","monastères","chrétiens","du","monde","Article","détaillé:","le","christianisme","au","1er","siècle","Le","christianisme","s'est","développé","pendant","le","1er","siècle","de","notre","ère","en","tant","que","secte","chrétienne","juive","du","judaïsme","du","Second","Temple.","[154]","[155]","Une","première","communauté","juive","chrétienne","a","été","fondée","à","Jérusalem","sous","la","direction","des","Piliers","de","l'Église,","à","savoir","Jacques","le","Juste,","le","frère","du","Seigneur,","Pierre","et","Jean.","[156]","","Le","christianisme","juif","a","rapidement","attiré","les","gentils","craignant","Dieu","기독교는","칭의와","구원의","본질,","교회론,","안수,","그리스도론에","관한","교리뿐만","아니라","서양과","동양의","지부에서","문화적으로","다양합니다.","그들의","신조는","일반적으로","예수를","하나님의","아들,","즉","성육신","한","로고로","공통적으로","담고","있습니다.","예수는","십자가에서","사역하고","고난을","받고","죽었지","만","인류의","구원을","위해","죽음에서","부활하셨습니다.","성경에서","","좋은","소식","을","의미하는","복음이라고합니다.","예수님의","삶과","가르침을","묘사하는","것은","복음의","존경받는","배경으로","유대인","구약","성경과","함께","마태,","마가,","누가,","요한의","네","가지","표준","복음입니다.","","기독교는","로마의","유대","지방에서","1","세기에","두","번째","성전","유태교","종파로","시작되었습니다.","예수의","사도들과","그","추종자들은","초기","박해에도","불구하고","레반트,","유럽,","아나톨리아,","메소포타미아,","트랜스","코카","시아,","이집트,","에티오피아","전역에","퍼졌습니다.","그것은","곧","이방인","신을","두려워하는","사람들을","끌어","들여","유대인의","관습에서","벗어","났고,","예루살렘이","멸망","한","AD","70","년","성전","기반","유대교를","종식시킨","후","기독교는","유대교와","서서히","분리되었습니다.","콘스탄티누스","대왕은","밀라노","칙령","(313)에","의해","로마","제국의","기독교를","비범죄화했으며,","나중에","초기","기독교가","로마","제국의","국가","교회가","될","곳으로","통합","된","니케아","공의회","(325)를","소집했습니다","(380).","주요","분열","이전의","기독교","연합","교회의","초기","역사는","때때로","","위대한","교회","라고","불립니다","(영지주의","기독교와","유대","기독교를","포함하여","이종","파가","동시에","존재했지만).","동방","교회는","에베소","공의회","(431)","이후","분열되고,","칼","세돈","공의회","(451)","이후","기독교의","차이로","분열","된","후","[3]","동서","정교회와","가톨릭","교회는","동서","분열로","분리되었습니다.","(1054),","특히","로마","주교의","권위에","대해.","개신교는","종교","개혁","시대","(16","세기)의","종교","개혁","시대","(16","세기)의","(대부분","라틴어,","동방","카톨릭","교회의","소수","민족)에서","수많은","교파로","나뉘","었으며,","대부분은","정당화와","교황의","우위","문제에","관한","것입니다.","기독교는","특히","후기","고대와","중세","유럽에서","서양","문명의","발전에","중요한","역할을했습니다.","[4]","[5]","[6]","[7]","[8]","발견의","시대","(15","~","17","세기)","이후","기독교는","선교","사업을","통해","미주,","오세아니아,","사하라","사막","이남의","아프리카","및","나머지","세계로","전파되었습니다.","[9]","[10]","[11]","","기독교의","가장","큰","4","개","분파는","가톨릭","교회","(13","억","/50.1%),","개신교","(9","억","2","천만","/36.7%),","동방","정교회","(2","억","3","천만),","동양","정교회","(6,200","만","/","정교","합쳐","11.9","%)입니다.","[","12]","[13]","단결을","향한","다양한","노력","가운데","(에큐메니즘).","[14]","서구의","순응도가","감소","했음에도","불구하고","기독교는이","지역에서","지배적","인","종교로","남아","있으며","인구의","약","70","%가","기독교인으로","식별됩니다.","[15]","기독교는","세계에서","가장","인구가","많은","대륙","인","아프리카와","아시아에서","성장하고","있습니다.","[16]","기독교인들은","세계","일부","지역,","특히","중동,","북아프리카,","동아시아","및","남아시아에서","여전히","박해를","받고","있습니다.","[17]","[18]","","","내용","1","어원","2","신념","2.1","신조","2.2","예수","2.2.1","죽음과","부활","2.3","구원","2.4","트리니티","2.4.1","삼위","일체","론자","2.4.2","비","삼위","일체주의","2.5","종말론","2.5.1","죽음과","내세","3","관행","3.1","공동","예배","3.2","성사","3.3","전례","달력","3.4","기호","3.5","세례","3.6기도","4","경전","4.1","가톨릭","해석","4.2","개신교","해석","4.2.1","성경의","특성","4.2.2","성경의","원래","의도","된","의미","5","역사","5.1","초기","기독교","5.1.1","사도","시대","5.1.2","Ante-Nicene","기간","5.1.3","로마","제국의","확산과","수용","5.2","초기","중세","5.3","고,","후기","중세","5.4","개신교","개혁과","반개혁","5.5","깨달음","이후","6","인구","통계","7","교회와","교단","7.1","가톨릭","교회","7.2","동방","정교회","7.3","동양","정통","7.4","동부","아시리아","교회","7.5","개신교","7.6","복원주의","7.7","기타","8","서양","문화에","대한","영향","9","에큐메니즘","10","비판,","박해,","변증","10.1","비판","10.2","박해","10.3","변증론","11","또한보십시오","12","노트가톨릭","해석","","세계에서","가장","큰","교회이자","가톨릭","교회의","상징","인","성","베드로","대성당,","바티칸","시국","주요","기사",":","가톨릭","성경","신학","고대에는","알렉산드리아와","안티오크에서","두","학파의","주석이","개발되었습니다.","Origen에","의해","예시","된","알렉산드리아","해석은","성경을","우화","적으로","읽는","경향이있는","반면,","안티","오케","네","해석은","문자","적","​​의미를","고수하여","다른","의미","(이론이라고","함)는","문자","적","​​의미에","기초한","경우에만","받아","들여질","수","있다고","주장했습니다.","[137]","","가톨릭","신학은","문자","적","​​감각과","영적","감각의","두","가지","감각을","구별합니다.","[138]","","성경을","이해하는","문자","적","​​의미는","성경","말씀이","전달하는","의미입니다.","영적","감각은","다음과","같이","세분화됩니다.","","유형학을","포함하는","우화","적","감각.","예를","들어","홍해의","이별이","세례의","","모형","(표지)으로","이해되는","것입니다.","[1Cor","10",":","2]","윤리적","가르침을","포함하는","경전을","이해하는","도덕적","감각.","종말론,","영원","및","세계의","완성에","적용되는","분석적","감각","해설과","관련하여","건전한","해석의","규칙에","따라","가톨릭","신학은","다음과","같이","주장합니다.","","다른","모든","성스러운","경전의","감각은","문자","그대로","[139]","[140]","복음서의","역사","성은","절대적이고","지속적으로","유지되어야한다는","것","[141]","그","성구는","","전체","교회의","살아있는","전통","[142]에서","읽어야합니다.","","통역의","임무는","로마의","주교","인","베드로의","후계자와","교통하여","주교들에게","맡겨졌다",".","[143]","개신교","해석","다섯","솔레이","개신교","개혁","솔라","스크립","투라","솔라","피데","솔라","그래","티아","Solus","Christus","솔리","데오","글로리아","vte","성경의","특성","개신교","기독교인들은","성경이","모든","기독교","교리의","최후의","권위자","인","자급","자족","계시라고","믿으며","구원에","필요한","모든","진리를","드러내고","있습니다.","이","개념은","sola","scriptura로","알려져","있습니다.","[144]","개신교","인들은","성경","자체가","그","의미가","분명하기","때문에","일반","신자들이","성경에","대한","적절한","이해에","도달","할","수","있다고","특징적으로","믿는다.","마틴","루터는","하나님의","도움","없이는","성경이","","어둠에","싸여","될","것이라고","믿었습니다.","[145]","그는","","하나의","명확하고","간단한","성경","이해","를","옹호했다.","[145]","John","Calvin은","","성령을","지침으로","따르지","않기를","거부하는","모든","사람은","성경에서","명확한","빛을","발견합니다","라고","썼습니다.","[146]","이것과","관련이있는","것은","성경이","사람들을","믿음으로","인도","할","수","있다는","","효능","입니다.","그리고","","충분","함","은","성경이","구원을","얻고","그리스도인의","삶을","살기","위해","알아야","할","모든","것을","담고","있다는","것입니다.","[147]","","성경의","원래","의도","된","의미","개신교","인들은","역사-문법적","방법","인","성경","말씀이","전달하는","의미를","강조합니다.","[148]","역사-문법적","방법","또는","문법-역사적","방법은","본문에서","의도","된","원래","의미를","찾기위한","성경","해석학의","노력이다.","[149]","이","텍스트의","원래","의도","된","의미는","문법적,","통","사적","측면,","역사적","배경,","문학","장르,","신학","적","(정규적)","고려","사항에","비추어","구절을","검토하여","도출됩니다.","[150]","역사적","문법적","방법은","하나의","원래","의미와","텍스트의","중요성을","구별합니다.","텍스트의","의미에는","텍스트","또는","응용","프로그램의","후속","사용이","포함됩니다.","원래의","구절은","하나의","의미","나","의미만을","가진","것으로","보인다.","Milton","S.","Terry가","말했듯이",":","","문법-역사적","해설의","기본","원칙은","단어와","문장이","하나의","동일한","연결에서","하나의","의미","만","가질","수","있다는","것입니다.","우리가이","원칙을","무시하는","순간","우리는","불확실성과","추측의","바다로","떠납니다.",".","","[151]","기술적으로","말하면,","문법적-역사적","해석","방법은","그","해석에","비추어","구절의","중요성을","결정하는","것과는","다릅니다.","종합하면","둘","다","(성서적)","해석학이라는","용어를","정의합니다.","[149]","","일부","개신교","통역사는","유형학을","사용합니다.","[152]","","역사","주요","기사",":","기독교의","역사","초기","기독교","사도","시대","","기독교","예배당의","초기","예인","시리아","다마스쿠스의","성","아나니아","예배당","","AD","1","세기에","지어진","","그리스","문자","ΙΧΘΥΣ를","바퀴,","Ephesus,","Asia","Minor에","결합하여","만든","초기","원형","ichthys","기호","","이라크","북부의","알파","프","산","꼭대기에","위치한","성","매튜","수도원은","현존하는","가장","오래된","기독교","수도원","중","하나로","인정","받고","있습니다.","[153]","","세계에서","가장","오래된","기독교","수도원이있는","레바논의","카디","샤","계곡","이","부분의","본문은","1","세기","기독교입니다.","기독교는","기원","1","세기에","제","2","성전","유대교의","유대인","기독교","종파로","발전했습니다.","[154]","[155]","초기","유대인","기독교","공동체는","교회","기둥,","즉","주님의","형제","인","베드로와","요한이라는","정의의","야고보의지도","아래","예루살렘에","설립되었습니다.","[156]","","유대","기독교는","곧","이방인","신을","두려워하는","사람들을","끌어","들였습니다","13","참고","문헌","13.1","참고","문헌","14","추가","읽기","15","외부","연결","어원","초기","유대","기독교인들은","자신들을","'길'(της","οδου)이라고","불렀는데,","아마도","이사야","40",":","3에서","","주의","길을","준비하라.","[19]","[주","1]","사도","행전","11:26에","따르면","","","Christian","","(그리스어",":","Χριστιανός)은","안티","오시에있는","예수의","제자들과","관련하여","처음","사용되었습니다."]
    
    
    @IBAction func NextButtonALL(_ sender: Any)
    {
        kite=boynames[13] as! NSString

        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controlVC = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        controlVC?.indexNow=1
        if let controlVC = controlVC {
            navigationController?.pushViewController(controlVC, animated: true)
        }
        
        
        //self.navigationController?.popViewController(animated: true)
    }
    @IBAction func NextButtonEmails(_ sender: Any)
    {
        kite=boynames[23] as! NSString

        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controlVC = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        controlVC?.indexNow=2

        if let controlVC = controlVC {
            navigationController?.pushViewController(controlVC, animated: true)
        }
        
        
        //self.navigationController?.popViewController(animated: true)
    }
    @IBAction func NextButtonPhoneNumbers(_ sender: Any)
    {
        
        kite=boynames[99] as! NSString

        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controlVC = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        
        controlVC?.indexNow=3

        if let controlVC = controlVC {
            navigationController?.pushViewController(controlVC, animated: true)
        }
        
        
        //self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func NextButtonMultiSelect(_ sender: Any)
    {
        
        /*
         
         let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
         
         let controlVC = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
         
         if let controlVC = controlVC {
         navigationController?.pushViewController(controlVC, animated: true)
         }
         */
        
        //self.navigationController?.popViewController(animated: true)
    }
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }
    func StartHere11()
     {
         
         
         let alert = UIAlertController(title: "Pocket Contacts Pro", message: "Now you will be able to get your all contacts from Phonebook.Now you can save or Share with your friends all contacts at a time.This app will also help you backup your all contacts and you can save in files.Also you can extract emails and phone nubers seperately to share or safe.This app is an important utility for people who wishes to organize their contacts in simplest for.\nJust click on the right option of your need.This app plays an important role for gathering all contacts and broadcasting messages or emails.", preferredStyle: UIAlertController.Style.alert)
         
         alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
         
         self.present(alert, animated: true, completion: nil)
     }
    override func viewWillAppear(_ animated: Bool)
    {
        
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden=true
        but1.layer.cornerRadius=but1.frame.size.height/2.0
        but2.layer.cornerRadius=but2.frame.size.height/2.0
        but3.layer.cornerRadius=but3.frame.size.height/2.0

        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        self.StartHere11()
        
        self.title = ""
        self.navigationController?.isNavigationBarHidden=true
        
        //     self.dataTextView.text = ""
        
        //    let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    
}
