//
//  WKCRubbisherFiler.m
//  WKCRubbisher
//
//  Created by WeiKunChao on 2019/4/4.
//  Copyright © 2019 SecretLisa. All rights reserved.
//

#import "WKCRubbisherFiler.h"

/** 内容*/
NSArray <NSString *> * WKCRubbisherBodyArray()
{
    return @[@"history", @"way", @"art", @"world", @"information", @"map", @"two", @"family", @"government", @"health", @"system", @"computer", @"meat", @"year", @"thanks", @"music", @"person", @"reading", @"method", @"data", @"food", @"understanding", @"theory", @"law", @"bird", @"problem", @"software", @"control", @"knowledge", @"power", @"ability", @"economics", @"love", @"internet", @"television", @"science", @"library", @"nature", @"fact", @"product", @"idea", @"temperature", @"investment", @"area", @"society", @"activity", @"story", @"industry", @"media", @"thing", @"oven", @"community", @"definition", @"safety", @"quality", @"development", @"language", @"player", @"variety", @"video", @"week", @"security", @"country", @"exam", @"movie", @"organization", @"equipment", @"physics", @"analysis", @"policy", @"series", @"thought", @"basis", @"boyfriend", @"direction", @"strategy", @"technology", @"army", @"camera", @"freedom", @"paper", @"environment", @"child", @"month", @"truth", @"marketing", @"university", @"article", @"department", @"difference", @"goal", @"audience", @"fishing", @"growth", @"marriage", @"user", @"combination", @"failure", @"meaning", @"medicine", @"philosophy" ,@"teacher", @"communication", @"night", @"chemistry", @"disease", @"disk", @"energy", @"nation", @"road", @"role", @"soup", @"advertising", @"location", @"success", @"addition", @"apartment", @"education", @"math", @"moment", @"painting", @"politics", @"attention", @"decision", @"event", @"shopping", @"student", @"wood", @"competition", @"distribution", @"entertainment", @"population", @"president", @"unit", @"cigarette", @"introduction", @"performance", @"driver", @"flight", @"length", @"magazine", @"newspaper", @"relationship", @"teaching", @"dealer", @"finding", @"lake", @"member", @"message", @"phone", @"scene", @"appearance", @"association", @"concept", @"customer", @"death", @"discussion", @"housing", @"inflation", @"insurance", @"mood", @"woman", @"advice", @"blood", @"effort", @"expression", @"importance", @"opinion", @"payment", @"reality", @"responsibility", @"situation", @"skill", @"statement", @"wealth", @"application", @"city", @"county", @"depth", @"estate", @"grandmother", @"heart", @"perspective", @"photo", @"recipe", @"topic", @"collection", @"depression", @"imagination", @"passion", @"percentage", @"resource", @"setting", @"agency", @"college", @"connection", @"criticism", @"debt", @"memory", @"patience", @"secretary", @"solution", @"administration", @"aspect", @"attitude", @"director", @"personality", @"psychology", @"recommendation", @"response", @"selection", @"storage", @"version", @"alcohol", @"argument", @"complaint", @"contract", @"emphasis", @"highway", @"loss", @"membership", @"possession", @"preparation", @"steak", @"agreement", @"cancer", @"currency", @"employment", @"engineering", @"interaction", @"mixture", @"preference", @"region", @"republic", @"tradition", @"virus", @"actor", @"classroom", @"delivery", @"difficulty", @"drama", @"election", @"engine", @"football", @"guidance", @"hotel", @"owner", @"priority", @"protection", @"suggestion", @"tension", @"variation", @"anxiety", @"atmosphere", @"awareness", @"bath", @"bread", @"candidate", @"climate", @"comparison", @"confusion", @"construction", @"elevator", @"emotion", @"employee", @"employer", @"guest", @"height", @"leadership", @"mall", @"manager", @"operation", @"recording", @"sample", @"transportation", @"charity", @"cousin", @"disaster", @"editor", @"efficiency", @"excitement", @"extent", @"feedback", @"guitar", @"gomework", @"leader", @"mom", @"outcome", @"permission", @"presentation", @"promotion", @"reflection", @"refrigerator", @"resolution", @"revenue", @"session", @"singer", @"tennis", @"basket", @"bonus", @"cabinet", @"childhood", @"church", @"clothes", @"coffee", @"dinner", @"drawing", @"hair", @"hearing", @"initiative", @"judgment", @"lab", @"measurement", @"mode", @"mud", @"orange", @"poetry", @"police", @"possibility", @"procedure", @"queen", @"ratio", @"relation", @"restaurant", @"satisfaction", @"sector", @"signature", @"significance", @"song", @"tooth", @"town", @"vehicle", @"volume", @"wife", @"accident", @"airport", @"appointment", @"arrival", @"assumption", @"baseball", @"chapter", @"committee", @"conversation", @"database", @"enthusiasm", @"xplanation", @"farmer", @"gate", @"girl", @"hall", @"historian", @"hospital", @"injury", @"instruction", @"maintenance", @"manufacturer", @"meal", @"perception", @"pie", @"poem", @"presence", @"proposal", @"reception", @"replacement", @"revolution", @"river", @"son", @"speech", @"tea", @"village", @"warning", @"winner", @"worker", @"writer", @"breath", @"buyer", @"chest", @"chocolate", @"conclusion", @"contribution", @"cookie", @"courage", @"dad", @"desk", @"drawer", @"establishment", @"examination", @"garbage", @"grocery", @"honey", @"impression", @"improvement", @"independence", @"insect", @"inspection", @"inspector", @"king", @"ladder", @"menu", @"penalty", @"piano", @"potato", @"profession", @"professor", @"quantity", @"reaction", @"requirement", @"salad", @"sister", @"supermarket", @"tongue", @"weakness", @"wedding", @"affair", @"ambition", @"analyst", @"assignment", @"assistant", @"bathroom", @"bedroom", @"beer", @"birthday", @"celebration", @"championship", @"cheek", @"client", @"consequence", @"departure", @"diamond", @"dirt", @"ear", @"fortune", @"friendship" ,@"funeral", @"gene", @"girlfriend", @"hat", @"indication", @"intention", @"lady", @"midnight", @"negotiation", @"obligation", @"passenger", @"pizza", @"platform", @"poet", @"pollution", @"recognition", @"reputation", @"sir", @"speaker", @"stranger", @"surgery", @"sympathy", @"tale", @"throat", @"trainer", @"uncle", @"youth", @"time", @"work", @"film", @"water", @"money", @"example", @"business", @"study", @"game", @"life", @"form", @"air", @"day", @"place", @"number", @"part", @"field", @"fish", @"back", @"process", @"heat", @"hand", @"experience", @"job", @"book", @"end", @"point", @"hype", @"home", @"economy", @"value", @"body", @"market", @"guide", @"interest", @"state", @"radio", @"course", @"company", @"price", @"size", @"card", @"list", @"mind", @"trade", @"line", @"care", @"group", @"risk", @"word", @"fat", @"force", @"key", @"light", @"training", @"name", @"school", @"top", @"amount", @"level", @"order", @"practice", @"research", @"sense", @"service", @"piece", @"web", @"boss", @"sport", @"fun", @"house", @"page", @"term", @"test", @"answer", @"sound", @"focus", @"matter", @"kind", @"board", @"oil", @"picture", @"access", @"garden", @"range", @"rate", @"reason", @"future", @"site", @"demand", @"exercise", @"image", @"cause", @"coast", @"action", @"age", @"bad", @"boat", @"record", @"result", @"section", @"building", @"mouse", @"nothing", @"period", @"plan", @"tax", @"side", @"subject", @"space", @"rule", @"stock", @"weather", @"chance", @"figure", @"man", @"model", @"source", @"beginning", @"earth", @"program", @"chicken", @"design", @"feature", @"head", @"material", @"purpose", @"question", @"rock", @"salt", @"act", @"birth", @"car", @"dog", @"object", @"scale", @"sun", @"note", @"profit", @"rent", @"speed", @"style", @"war", @"bank", @"craft", @"half", @"inside", @"outside", @"standard", @"bus", @"exchange", @"eye", @"position", @"pressure", @"stress", @"advantage", @"benefit",@"box", @"issue", @"step", @"cycle", @"face", @"item", @"metal", @"paint", @"review", @"room", @"screen", @"structure", @"view", @"account", @"ball", @"discipline", @"medium", @"share", @"balance", @"bit", @"black", @"bottom", @"choice", @"gift", @"impact", @"machine", @"shape", @"tool", @"wind", @"address", @"average", @"career", @"culture", @"morning", @"pot", @"sign", @"table", @"task", @"condition", @"contact", @"credit", @"egg", @"hope", @"ice", @"network", @"north", @"square", @"attempt", @"date", @"effect", @"link", @"post", @"star", @"voice", @"capital", @"challenge", @"friend", @"shot", @"brush", @"couple", @"debate", @"exit", @"front", @"lack", @"living", @"plant", @"plastic", @"spot", @"summer", @"taste", @"theme", @"track", @"wing", @"brain", @"button", @"click", @"desire", @"foot", @"gas", @"influence", @"notice", @"rain", @"wall", @"base", @"damage", @"distance", @"feeling", @"pair", @"savings", @"staff", @"sugar", @"target", @"text", @"animal", @"author", @"budget", @"discount", @"file", @"ground", @"lesson", @"minute", @"officer", @"phase", @"reference", @"sky", @"stage", @"stick", @"title", @"trouble", @"bowl", @"bridge", @"campaign", @"character",@"club", @"edge", @"evidence", @"fan", @"letter", @"lock", @"maximum", @"novel", @"option", @"pack", @"park", @"plenty", @"quarter", @"skin", @"sort", @"weight", @"baby", @"background", @"carry", @"dish", @"factor", @"fruit", @"glass", @"joint", @"master", @"muscle", @"red", @"strength", @"traffic", @"trip", @"vegetable", @"appeal", @"chart", @"gear", @"ideal", @"kitchen", @"land", @"log", @"mother", @"net", @"party", @"principle", @"relative", @"sale", @"season", @"signal", @"spirit", @"street", @"tree", @"wave", @"belt", @"bench", @"commission", @"drop", @"minimum", @"path", @"progress", @"project", @"sea", @"south", @"status", @"stuff", @"ticket", @"tour", @"angle", @"blue", @"breakfast", @"confidence", @"daughter", @"degree", @"doctor", @"dot", @"dream", @"duty", @"essay", @"father", @"fee", @"finance", @"hour", @"juice", @"luck", @"milk", @"mouth", @"peace", @"oipe", @"seat", @"stable", @"storm", @"substance", @"team", @"trick", @"afternoon", @"bat", @"beach", @"blank", @"chain", @"consideration", @"cream", @"crew", @"detail", @"gold", @"interview", @"kid", @"mark", @"match", @"mission", @"pain", @"pleasure", @"score", @"screw", @"shop", @"shower", @"suit", @"tone", @"agent", @"band", @"bone", @"calendar", @"cap", @"coat", @"contest", @"corner", @"court", @"cup", @"door", @"east", @"finger", @"garage", @"guarantee", @"hole", @"hook", @"layer", @"lecture", @"lie", @"manner", @"meeting", @"nose", @"parking", @"partner", @"profile", @"respect", @"rice", @"routine", @"schedule", @"swimming", @"telephone", @"tip", @"winter", @"airline", @"bag", @"battle", @"bed", @"bill", @"bother", @"cake", @"code", @"curve", @"designer", @"dimension", @"dress", @"ease", @"emergency", @"evening", @"extension", @"farm", @"fight", @"gap", @"grade", @"holiday", @"horror", @"horse", @"host", @"husband", @"loan", @"mistake", @"mountain", @"nail", @"noise", @"occasion", @"package", @"patient", @"pause", @"phrase", @"proof", @"race", @"relief", @"sand", @"sentence", @"shoulder", @"smoke", @"stomach", @"tourist", @"towel", @"vacation", @"west", @"wheel", @"wine", @"arm", @"aside", @"associate", @"bet", @"blow", @"border", @"branch", @"breast", @"brother", @"buddy", @"bunch", @"chip", @"coach", @"cross", @"document", @"draft", @"dust", @"expert", @"floor", @"god", @"golf", @"habit", @"iron", @"judge", @"knife", @"landscape", @"league", @"mail", @"mess", @"opening", @"pattern", @"pin", @"pool", @"pound", @"request", @"salary", @"shame", @"shelter", @"shoe", @"silver", @"tackle", @"tank", @"trust", @"assist", @"bake", @"bar", @"bell", @"Bike", @"blame", @"boy", @"brick", @"chair", @"closet", @"clue", @"collar", @"comment", @"conference", @"devil", @"diet", @"fear", @"fuel", @"glove", @"jacket", @"lunch", @"monitor", @"mortgage", @"nurse", @"pace", @"panic", @"peak", @"plane", @"reward", @"row", @"sandwich", @"shock", @"spite", @"spray", @"surprise", @"till", @"transition", @"weekend", @"welcome", @"yard", @"alarm", @"bend", @"bicycle", @"bite", @"blind", @"bottle", @"cable", @"candle", @"clerk", @"cloud", @"concert", @"counter", @"flower", @"grandfather", @"harm", @"knee", @"lawyer", @"leather", @"mirror", @"neck", @"pension", @"plate", @"purple", @"ruin", @"ship", @"skirt", @"slice", @"snow", @"specialist", @"stroke", @"trash", @"tune", @"zone", @"anger", @"award", @"bid", @"bitter", @"boot", @"bug", @"camp", @"candy", @"carpet", @"cat", @"champion", @"channel", @"clock", @"comfort", @"cow", @"crack", @"engineer", @"entrance", @"grass", @"guy", @"hell", @"highlight", @"incident", @"island", @"joke", @"jury", @"leg", @"lip", @"mate", @"motor", @"Nerve", @"passage", @"pen", @"prize", @"promise", @"resident", @"resort", @"ring", @"roof", @"rope", @"sail", @"scheme", @"Script", @"sock", @"station", @"toe", @"tower", @"truck", @"Witness", @"you", @"can", @"will", @"one", @"many", @"most", @"Other", @"use", @"make", @"good", @"look", @"help", @"great", @"Being", @"few", @"might", @"still", @"read", @"keep", @"start", @"Give", @"human", @"local", @"general", @"she", @"specific", @"play", @"feel", @"high", @"tonight", @"put", @"common", @"set", @"change", @"simple", @"past", @"big", @"possible", @"particular", @"today", @"major", @"personal", @"current", @"national", @"cut", @"natural", @"physical", @"show", @"check", @"second", @"call", @"move", @"pay", @"increase", @"single", @"individual", @"turn", @"ask", @"buy", @"hold", @"Main", @"offer", @"potential", @"professional", @"international", @"travel", @"cook", @"alternative", @"following", @"special", @"working", @"phole", @"dance", @"excuse", @"cold", @"commercial", @"low", @"purchase", @"deal", @"primary", @"worth", @"fall", @"necessary", @"positive", @"produce", @"search", @"present", @"spend", @"talk", @"creative", @"tell", @"cost", @"drive", @"green", @"support", @"glad", @"remove", @"run", @"complex", @"due", @"effective", @"middle", @"regular", @"reserve", @"independent", @"leave", @"original", @"reach", @"rest", @"serve", @"watch", @"beautiful", @"charge", @"active", @"negative", @"safe", @"stay", @"visit", @"Visual", @"affect", @"cover", @"report", @"rise", @"walk", @"White", @"beyond", @"junior", @"pick", @"unique", @"anything", @"classic", @"final", @"Lift", @"mix", @"private", @"stop", @"teach", @"western", @"concern", @"familiar", @"fly", @"official", @"broad", @"gain", @"maybe", @"rich", @"save", @"stand", @"young", @"Fail", @"heavy", @"hello", @"lead", @"listen", @"valuable", @"worry", @"handle", @"leading", @"meet", @"sell", @"finish", @"normal", @"press", @"ride", @"secret", @"spread", @"spring", @"tough", @"wait", @"brown", @"deep", @"display", @"flow", @"hit", @"objective", @"shoot", @"touch", @"cancel", @"chemical", @"cry", @"extreme", @"push", @"eat", @"fill", @"formal", @"jump", @"kick", @"opposite", @"pass", @"pitch", @"remote", @"total", @"treat", @"vast", @"abuse", @"beat", @"burn", @"deposit", @"raise", @"sleep", @"somewhere", @"advance", @"anywhere", @"consist", @"dark", @"draw", @"equal", @"fix", @"hire", @"internal", @"join", @"kill", @"sensitive", @"tap", @"win", @"attack", @"claim", @"constant", @"drag", @"drink", @"guess", @"minor", @"pull", @"raw", @"Soft", @"solid", @"wear", @"weird", @"wonder", @"annual", @"count", @"dead", @"doubt", @"feed", @"forever", @"impress", @"nobody", @"round", @"sing", @"slide", @"strip", @"whereas", @"wish", @"combine", @"command", @"dig", @"divide", @"equivalent", @"hang", @"hunt", @"march", @"mention", @"smell", @"spiritual", @"survey", @"tie", @"adult", @"brief", @"crazy", @"escape", @"gather", @"hate", @"prior", @"repair", @"rough", @"sad", @"scratch", @"sick", @"strike", @"employ", @"external", @"hurt", @"illegal", @"laugh", @"lay", @"mobile", @"nasty", @"ordinary", @"respond", @"royal", @"senior", @"split", @"strain", @"struggle", @"swim", @"train", @"upper", @"wash", @"yellow", @"convert", @"dependent", @"fold", @"funny", @"grab", @"hide", @"miss", @"permit", @"quote", @"recover", @"resolve", @"roll", @"sink", @"slip", @"spare", @"suspect", @"sweet", @"swing", @"twist", @"upstairs", @"usual", @"abroad", @"brave", @"calm", @"concentrate", @"estimate", @"grand", @"male", @"mine", @"prompt", @"quiet", @"refuse", @"reveal", @"rush", @"shake", @"shift", @"shine", @"steal", @"suck", @"surround", @"anybody", @"bear", @"brilliant", @"fare", @"fear", @"felay", @"frunk", @"female", @"hurry", @"inevitable", @"invite", @"kiss", @"neat", @"pop", @"punch", @"quit", @"reply", @"representative", @"resist", @"rip", @"rub", @"silly", @"smile", @"spell", @"stretch", @"stupid", @"tear", @"temporary", @"tomorrow", @"wake", @"wrap", @"yesterday"
             ];
}


/** 后缀*/
NSArray <NSString *> * WKCRubbisherTailArray()
{
    return @[ @"Model", @"Model", @"Model", @"Model", @"Model", @"Model", @"VC", @"VC", @"VC", @"Controller", @"Controller", @"Controller", @"ViewController", @"ViewController", @"Manager", @"Manager", @"Manager", @"View", @"View", @"View", @"View", @"View", @"Cell", @"Cell", @"Cell", @"Cell", @"Cell", @"Util", @"Util", @"Util", @"Helper", @"Helper", @"Helper", @"Observer", @"Observer", @"Delegate", @"Delegate", @"Protocol", @"Protocol", @"Protocol", @"DataSource", @"DataSource", @"Serializer", @"List", @"Array", @"Factory", @"Storage", @"Protocol", @"Generator", @"Client", @"Tracker", @"Source", @"Event", @"Task", @"Wrapper", @"Tool", @"Effect", @"Configuration", @"Store", @"Cache", @"Adapter", @"Proxy", @"Batch", @"Service", @"Transformer", @"Loader", @"Logger", @"Listener", @"Dialog", @"Interpolator", @"Request", @"Session", @"Mapper", @"Control", @"Layer", @"Animator", @"Node", @"Callback", @"Handler", @"Footer", @"Header", @"Provider", @"Notification", @"Exception", @"Dispatch", @"Database", @"Operation", @"Button", @"ImageView", @"Label", @"Layout", @"TextField", @"Bar", @"TextView", @"Animation", @"Token", @"Utility", @"Processor", @"Profile", @"Settings", @"Error", @"Group", @"Render", @"Dictionary", @"Item", @"Uploader", @"Stack", @"Queue", @"Router", @"Executor", @"Collection", @"Filter", @"Context", @"Timer", @"Holder", @"Editor", @"Browser", @"Sheet"
              ];
}

NSArray <NSString *> * wkc_propertysArray()
{
    return @[
             @"@property (nonatomic, assign) BOOL ",
             @"@property (nonatomic, assign) NSInteger ",
             @"@property (nonatomic, strong) NSArray * ",
             @"@property (nonatomic, strong) NSDictionary * ",
             @"@property (nonatomic, strong) UIView * ",
             @"@property (nonatomic, strong) UILabel * ",
             @"@property (nonatomic, strong) UIButton * ",
             @"@property (nonatomic, strong) UIViewController * ",
             @"@property (nonatomic, copy) NSString * ",
             @"@property (nonatomic, strong) UITextView * ",
             @"@property (nonatomic, strong) UIProgressView * ",
             @"@property (nonatomic, strong) UIVisualEffectView * ",
             @"@property (nonatomic, strong) UIImage * ",
             @"@property (nonatomic, strong) UIImageView * ",
             @"@property (nonatomic, strong) UIColor * ",
             @"@property (nonatomic, strong) UIPickerView * ",
             @"@property (nonatomic, strong) UICollectionView * ",
             @"@property (nonatomic, strong) UITableView * ",
             @"@property (nonatomic, strong) UIScrollView * ",
             @"@property (nonatomic, strong) UIPageControl * ",
             @"@property (nonatomic, strong) UITextField * ",
             @"@property (nonatomic, strong) UISlider * ",
             @"@property (nonatomic, strong) UISwitch * ",
             @"@property (nonatomic, strong) NSURL * "
             ];
}

NSArray <NSString *>* wkc_swiftPropertyArray()
{
    return @[
             @"Bool",
             @"Int",
             @"Array<String>",
             @"Dictionary<String,Int>",
             @"UIView",
             @"UILabel",
             @"UIButton" ,
             @"UIViewController",
             @"UITextView",
             @"NSString",
             @"UIProgressView",
             @"UIVisualEffectView",
             @"UIImage",
             @"UIImageView",
             @"UIColor",
             @"UIPickerView",
             @"UICollectionView",
             @"UITableView",
             @"UIScrollView",
             @"UIPageControl",
             @"UITextField",
             @"UISlider",
             @"UISwitch",
             @"NSURL"
             ];
}

@interface WKCRubbisherFiler()

@property (nonatomic, strong) NSMutableArray <WKCRubbisherFileItem *> * methodNamesArray;

@property (nonatomic, copy) NSString * fileContent; //文件名中间内容部分
@property (nonatomic, copy) NSString * fileSubfix; //文件名后缀

@end

@implementation WKCRubbisherFiler

- (instancetype)init
{
    if (self = [super init])
    {
        _methodNamesArray = [NSMutableArray array];
        _fileContent = [[WKCRubbisherFiler randomContent] stringByAppendingString:[WKCRubbisherFiler wkc_chartsArray][arc4random() % [WKCRubbisherFiler wkc_chartsArray].count]];
        _fileSubfix = [[WKCRubbisherFiler randomSubfix] stringByAppendingString:[WKCRubbisherFiler wkc_chartsArray][arc4random() % [WKCRubbisherFiler wkc_chartsArray].count]];
    }
    return self;
}

+ (NSString *)randomContent
{
    NSUInteger randomNumber = arc4random() % WKCRubbisherBodyArray().count;
    return WKCRubbisherBodyArray()[randomNumber];
}

+ (NSString *)randomSubfix
{
    NSUInteger randomNumber = arc4random() % WKCRubbisherTailArray().count;
    return WKCRubbisherTailArray()[randomNumber];
}

+ (NSArray <NSString *>*)wkc_chartsArray
{
    return @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
}

- (WKCRubbisherFileItem *)wkc_createProperty
{
    NSString * name = [NSString stringWithFormat:@"%@%@",[WKCRubbisherFiler randomContent], [WKCRubbisherFiler wkc_chartsArray][arc4random() % [WKCRubbisherFiler wkc_chartsArray].count]];
    NSString * content = [NSString string];
    
    if (_projectType == WKCProjectTypeObjectC)
    {
        content = wkc_propertysArray()[arc4random() % wkc_propertysArray().count];
        content = [content stringByAppendingFormat:@"%@;", name];
    }
    else
    {
        content = [NSString stringWithFormat:@"\n\tprivate var %@: %@?", name, wkc_swiftPropertyArray()[arc4random() % wkc_swiftPropertyArray().count]];
    }
    
    return [self wkc_createItemWith:name
                            content:content
                        fullContent:nil];
}

- (WKCRubbisherFileItem *)wkc_createMethod
{
    NSString * name = [WKCRubbisherFiler randomContent];
    NSString * content = [NSString string];
    NSString * fullContent = [NSString string];
    
    if (_projectType == WKCProjectTypeObjectC)
    {
        content = [NSString stringWithFormat:@"- (void)%@;", name];
        fullContent = [NSString stringWithFormat:@"\n- (void)%@\n{\n\tfor (NSInteger i = 0; i < 3; i++) {\n\t\tNSString *str = @\"func name = %@\";\n\t\t[str stringByAppendingString:@\"time is 3\"];\n\t}\n\tNSLog(@\"Method = %@\\n\");\n}\n", name, name, name];
    }
    else
    {
        content = [NSString stringWithFormat:@"public func %@()", name];
        fullContent = [NSString stringWithFormat:@"\n\tpublic func %@()\n\t{\n\t\tfor item in 0..<4\n\t\t{\n\t\t\tprint(\"运行,run,go,\\(item)\")\n\t\t}\n\t}\n", name];
    }
    
    return [self wkc_createItemWith:name
                            content:content
                        fullContent:fullContent];
}

- (WKCRubbisherFileItem *)wkc_createItemWith:(NSString *)name
                                     content:(NSString *)content
                                 fullContent:(NSString *)full
{
    WKCRubbisherFileItem * item = [[WKCRubbisherFileItem alloc] init];
    item.content = content;
    item.name = name;
    item.fullContent = full;
    return item;
}

- (NSString *)wkc_createProperties
{
    NSUInteger randomPropertyNumber = 1 + arc4random() % 5; // 属性 1 - 6个
    NSString * propertys = @"";
    
    for (NSInteger index = 0; index < randomPropertyNumber; index ++)
    {
        WKCRubbisherFileItem * property = [self wkc_createProperty];
        // 如果已包含这个属性,跳过
        if ([propertys containsString:property.content]) continue;
        propertys = [propertys stringByAppendingFormat:@"\n%@", property.content];
    }
    
    return propertys;
}

- (NSString *)wkc_createMethodsWithFileType:(WKCRubbisherFilerType)type
{
    if (type == WKCRubbisherFilerTypeM)
    {
        NSString * methods = @"";
        for (WKCRubbisherFileItem * item in _methodNamesArray)
        {
            NSString * method = item.fullContent; //得到方法
            if ([methods containsString:method]) continue; //去掉包含的项
            methods = [methods stringByAppendingFormat:@"%@", method];
        }
        return methods;
    }
    else
    {
        NSUInteger randomMethodNumber = 1 + arc4random() % 5; //方法 1 - 6个
        NSString * methods = @"\n";
        for (NSInteger index = 0;
             index < randomMethodNumber; index ++)
        {
            WKCRubbisherFileItem * methodModel = [self wkc_createMethod];
            // 如果已包含这个方法,跳过
            NSString * method = (type == WKCRubbisherFilerTypeH ? methodModel.content : methodModel.fullContent);
            if ([methods containsString:method]) continue;
            methods = [methods stringByAppendingFormat:@"\n%@", method];
            [_methodNamesArray addObject:methodModel];
        }
        return methods;
    }
}


#pragma mark -CreateFile
- (BOOL)wkc_createFileWithPrefixContent:(NSString *)prefix
                          subfixContent:(NSString *)subfix
                             properties:(NSString *)properties
                                methods:(NSString *)methods
                               filePath:(NSString *)path
{
    NSString * content = [NSString stringWithFormat:@"%@%@%@%@", prefix, properties, methods, subfix];
    BOOL isCreateSuccess = [WKCRubbisherFiler wkc_createFileWithPath:path
                                                              content:content];
    return isCreateSuccess;
}

- (void)wkc_createHWithFilePath:(NSString *)path
                       fileName:(NSString *)name
{
    NSString * fileContent = [NSString stringWithFormat:@"\n\n\n\n\n#import <Foundation/Foundation.h>\n#import <UIKit/UIKit.h>\n\n@interface %@ : NSObject\n",name];
    // 创建属性们
    NSString * propertys = [self wkc_createProperties];
    // 创建方法们
    NSString * methods = [self wkc_createMethodsWithFileType:WKCRubbisherFilerTypeH];
    NSString * subfix = @"\n\n\n@end";
    
    BOOL isHCreateSuccess = [self wkc_createFileWithPrefixContent:fileContent subfixContent:subfix properties:propertys methods:methods filePath:path];
    
    NSLog(@">>>>>>>>%@.h file create %@!",name, isHCreateSuccess ? @"success" : @"failure");
}

- (void)wkc_createMWithFilePath:(NSString *)path
                       fileName:(NSString *)name
{
    NSString * fileContent = [NSString stringWithFormat:@"\n\n\n\n\n#import \"%@.h\"\n\n@implementation %@\n\n", name, name];
    NSString * methods = [self wkc_createMethodsWithFileType:WKCRubbisherFilerTypeM];
    NSString * subfix = @"\n\n\n@end";
    
    BOOL isMCreateSuccess = [self wkc_createFileWithPrefixContent:fileContent subfixContent:subfix properties:@"//下边是创建的方法们" methods:methods filePath:path];
    
    NSLog(@">>>>>>>>%@.m file create %@!",name, isMCreateSuccess ? @"success" : @"failure");
}

- (void)wkc_createSwiftWithFilePath:(NSString *)path
                           fileName:(NSString *)name
{
    NSString * fileContent = [NSString stringWithFormat:@"\n\n\nimport Foundation\nimport UIKit\n\nclass %@ : NSObject\n{\n", name];
    NSString * propertys = [self wkc_createProperties];
    NSString * methods = [self wkc_createMethodsWithFileType:WKCRubbisherFilerTypeSwift];
    NSString * subfix = @"\n\n}";
    
    BOOL isSwiftFileCreateSuccess = [self wkc_createFileWithPrefixContent:fileContent subfixContent:subfix properties:propertys methods:methods filePath:path];
    
    NSLog(@">>>>>>>>%@.swift file create %@!", name, isSwiftFileCreateSuccess ? @"success" : @"failure");
}

#pragma mark -OutSideMethod

- (NSString *)wkc_createFile
{
    NSFileManager * fileManager = NSFileManager.defaultManager;
    
    NSString * fileName = [NSString stringWithFormat:@"%@%@%@",_filePrefix, _fileContent.capitalizedString, _fileSubfix];
    
    if (self.projectType == WKCProjectTypeObjectC)
    {
        NSString * hFileFullPath = [_directoryFullPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.h",fileName]];
        
        NSString * mFileFullPath = [_directoryFullPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.m",fileName]];
        
        // 文件不存在,再创建
        if (![fileManager fileExistsAtPath:hFileFullPath])
        {
            [self wkc_createHWithFilePath:hFileFullPath
                                 fileName:fileName];
        }
        
        if (![fileManager fileExistsAtPath:mFileFullPath])
        {
            [self wkc_createMWithFilePath:mFileFullPath
                                 fileName:fileName];
        }
    }
    else
    {
        NSString * swiftFileFullPath = [_directoryFullPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.swift", fileName]];
        
        // 文件不存在,再创建
        if (![fileManager fileExistsAtPath:swiftFileFullPath])
        {
            [self wkc_createSwiftWithFilePath:swiftFileFullPath
                                     fileName:fileName];
        }
    }
    return fileName;
}


+ (BOOL)wkc_createFileWithPath:(NSString *)path
                       content:(NSString *)content
{
    NSFileManager * fileManager = NSFileManager.defaultManager;
    BOOL isCreateSuccess = [fileManager createFileAtPath:path
                                                contents:[content dataUsingEncoding:NSUTF8StringEncoding]
                                              attributes:nil];
    
    return isCreateSuccess;
}

@end
