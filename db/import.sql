-- Adminer 4.2.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `nabu`;

DROP TABLE IF EXISTS `fragen`;
CREATE TABLE `fragen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `intro` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `question_text` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `a1` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `a2` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `a3` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `a4` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `hint1` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `hint2` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `answer_text` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `fragen` (`id`, `question_id`, `point_id`, `difficulty`, `intro`, `question_text`, `a1`, `a2`, `a3`, `a4`, `correct_answer`, `hint1`, `hint2`, `answer_text`, `updated_at`) VALUES
(1,	1,	1,	0,	'Schau dich um und betrachte die Bäume in deiner Nähe. Ein Baum ist anders als der Rest.',	'Was ist das für ein Baum? ',	'Ahorn',	'Kiefer',	'Birne',	'Palme',	2,	'Schaut auf den Boden unter dem Baum, die Zapfen sind ein Hinweis',	'Das ist eine Kiefer',	'Die Kiefer ist ein Nadelgewächs und daher immergrün. Die Zapfen der Kiefer geben uns, genau wie die Zapfen anderer Bäume, einen Hinweis auf die aktuelle Luftfeuchtigkeit. Du kannst das ganz einfach beobachten. Hänge dir einen Zapfen von draußen vor das Fenster und du wirst sehen, wie er sich öffnet und schließt. Sind die Schuppen weit auseinander, ist das ein Zeichen für gutes Wetter, sind die geschlossen, regnet es wahrscheinlich bald. Grund dafür ist, dass die Zapfen am Baum Samen enthalten den sie möglichst weit verbreiten möchten. Dafür eignet sich am besten trockenes Wetter, also öffnen sich die Samen weit. Bei hoher Luftfeuchte würden die Samen nicht weit fliegen, der Zapfen verschließt sich also und wartet auf trockenere Zeiten.  ',	'0000-00-00 00:00:00'),
(2,	2,	1,	1,	'keine',	'Welche Pflanzengruppe ist für ihre konischen Früchte bekannt? ',	'Laubbäume',	'Immergrüne',	'Nadelbäume',	'Winterharte',	3,	'Die wissenschaftliche Bezeichnung dieser Gruppe ist ein Hinweis',	'Es sind die Nadelbäume',	'Die Bezeichnung für Nadelhölzer oder Koniferen geht auf die geometrische Form (conus= Kegel) der Zapfen zurück. Nadelhölzer sind in Deutschland weit verbreitet. Bis auf eine Ausnahme, die Lärche, werfen sie ihre Nadeln im Winter nicht ab. Denn anders als Laubbäume können sie die kalte Jahreszeit auch grün überstehen. Das liegt an besonderen Eigenschaften, die sie besitzen. Laubbäume verdunsten über die Blätter sehr viel Wasser. Im Winter bei niedrigen Temperaturen ist das jedoch nicht möglich, Nadelbäume dagegen verlieren über ihre Nadeln nur sehr wenig Wasser. Dadurch sind sie im Winter vor dem Austrocknen geschützt. ',	'0000-00-00 00:00:00'),
(3,	3,	2,	0,	'keine',	'Wie lange gibt es den äußeren Grüngürtel in Köln schon?',	'seit der Eiszeit',	'seit den Römern',	'seit dem 1. Weltkrieg',	'seit fünf Jahren',	3,	'die Eltern deiner Großeltern können die Entstehung des Grüngürtels miterlebt haben',	'den äußeren Grüngürtel gibt es seit dem 1. Weltkrieg',	'Den Grüngürtel gibt es seit über 90 Jahren. Konrad Adenauer war zu der Zeit Bürgermeister von Köln und wollte den Menschen nach dem ersten Weltkrieg Arbeit verschaffen und ihnen einen Ort der Erholung schaffen. Der Grüngürtel wurde daher komplett vom Menschen geplant und angepflanzt, ist also so etwas wie ein großer Park. Dass der Grüngürtel nicht natürlich entstanden ist, erkennst du zum Beispiel an besonders geraden Baumreihen oder rechtwinkligen Ecken an Gewässern. Denn so etwas kommt in der freien Natur nicht vor.',	'0000-00-00 00:00:00'),
(4,	4,	2,	1,	'Die Anlage des Grüngürtels war ein weitsichtiges Projekt des damaligen Oberbürgermeisters der Stadt Köln. Er schaffte damit kurzfristig Arbeitsstellen für die hungernde Bevölkerung in den Nachkriegsjahren und langfristig ein stadtnahes Erholungsgebiet als Ausgleich für die immer voller und dreckiger werdende Stadt. ',	'Wie hieß der damalige Bürgermeister, dem die Stadt ihre beiden Grüngürtel zu verdanken hat?',	'Konrad Adenauer',	'Hermann Pünder',	'Max Wallraf',	'Harry Blum',	1,	'Später wurde er deutscher Bundeskanzler',	'richtig ist: Konrad Adenauer',	'Nach dem ersten Weltkrieg sah der Versailler Vertrag die Schleifung aller Festungsbauten der Kölner Verteidigungsanlage vor. Konrad Adenauer setzte jedoch einen Kompromiss durch, der nur eine teilweise Schleifung vorsah. Das restliche Gelände wurde zu einer Grünanlage umgestaltet. Das ca. 800 Hektar umfassende Grüne Band zwischen Stadt und Umland ist zu großen Teilen bewaldet und bildet die größte städtische Grünfläche Kölns.',	'0000-00-00 00:00:00'),
(5,	5,	3,	0,	'keine',	'Welche Elemente links und rechts einer Straße charakterisieren eine Allee?',	'Bäume',	'Zäune',	' Bäche',	'Hecken',	1,	'Sieh dich um, du stehst in einer Allee',	'Die charakteristischen Elemente einer Allee sind Bäume',	'Wenn zu beiden Seiten einer Straße oder eines Weges Bäume im gleichen Abstand zueinander gepflanzt sind, wird so eine Straße \"Allee\" genannt. Die ersten Alleen gab es in französischen Schlossparks, wo sie große Flächen in kleine Bereiche unterteilen sollten. Außerdem spendeten sie den Spaziergängern an heißen Sommertagen Schatten. Auf dem flachen Land halfen Alleen den Menschen sich zu orientieren und schon aus großer Entfernung den Verlauf einer wichtigen Straße zu erkennen.',	'0000-00-00 00:00:00'),
(6,	6,	3,	1,	'keine',	'Wozu dienten Alleen zu ihrer Entstehungszeit normalerweise  nicht?',	'Schattenspenden',	'Orientierungshilfe',	'Brennholzvorrat',	'Raumgliederung',	3,	'In weitläufigen Parkanlagen dienten Alleen u.a. dazu der spazierenden High Society Schatten zu spenden',	'Alleen dienten nicht als Brennholzvorrat',	'Die ersten Alleen gab es in französischen Schlossparks, wo sie große Flächen optisch in kleine Bereiche unterteilen sollten. Außerdem spendeten sie den Spaziergängern an heißen Sommertagen Schatten. Auf dem flachen Land halfen Alleen den Menschen sich zu orientieren und schon aus großer Entfernung den Verlauf einer wichtigen Straße zu erkennen. Die Bezeichnung \"Allee\" stammt vom französischen Verb \"Aller\" was auf Deutsch \"laufen; gehen\" bedeutet.',	'0000-00-00 00:00:00'),
(7,	8,	4,	1,	'keine',	'Wie werden Arten genannt, die im Totholz leben, sich von ihm ganz oder teilweise ernähren und seine Bestandteile zum Nestbau verwenden?',	'xylophon',	'xylobiont',	'xylometer',	'xylograph',	2,	'Das griechische Wort für Leben ist ein Hinweis',	'diese Arten sind xylobiont',	'Lange Zeit haben die Menschen Totholz als Abfallprodukt betrachtet und systematisch aus den Wäldern entfernt. Doch tatsächlich ist es ein wichtiger Bestandteil gesunder Wälder, denn es trägt sehr stark zur Artenvielfalt bei, indem es unzähligen Tieren und Pflanzen einen idealen Lebensraum bietet. Es dient ihnen als Nahrungsquelle, Brutstätte, Ruheplatz oder Rückzugsort. Diese Arten, die zum Leben auf Totholz angewiesen sind, nennt man Xylobionten. „Xylo“ stammt vom griechischen „xýlon“ und bedeutet Holz, „biont“ stammt ebenfalls aus dem Griechischen, von „bióntos“ und bedeutet so viel wie „Lebewesen“. Zu Xylobionten zählen zum Beispiel Borkenkäfer, Specht und Kleiber, Fledermaus, Feuersalamander und Erdkröte.',	'0000-00-00 00:00:00'),
(8,	9,	5,	0,	'keine',	'Welches Tier kehrt sein Leben lang zum selben Teich zurück um dort seine Eier zu legen?',	'Karpfen',	'Kröte',	'Ente',	'Schnecke',	2,	'Das gesuchte Tier hat vier Beine',	'Das Tier ist eine Kröte',	'Frösche und Kröten leben nicht das ganze Jahr über in dem Teich in dem sie zur Welt gekommen sind. Nach dem sie aus ihren Eiern schlüpfen und aus den Kaulquappen ausgewachsene Tiere geworden sind, verlassen sie das Wasser. Wenn sie nach ungefähr vier Jahren selber Eier legen können, kehren sie zu ihrem Geburtsteich zurück. Sie laufen bis zu 5 Kilometer weit über Wiesen, durch Gärten und auch über Straßen. An besonders gefährlichen Stellen helfen Naturschützer den Tieren über die Straße.    ',	'0000-00-00 00:00:00'),
(9,	10,	5,	1,	'keine',	'Welches der folgenden Tiere lebt nicht auf dem Decksteiner Weiher?',	'Teichhuhn',	'Haubentaucher',	'Kanadagans',	'Goldhähnchen',	4,	'Das gesuchte Tier ist der kleinste heimische Vogel in Deutschland',	'Der kleinste heimische Vogel in Deutschland ist das Goldhähnchen',	'Der Decksteiner Weiher ist ein künstlich angelegtes Gewässer. Er stellt ein reines Gestaltungselement dar und wird gelegentlich von Rudervereinen als Übungsgewässer genutzt. Aufgrund seiner sehr naturfernen Ausgestaltung ist er für die heimische Tierwelt eher uninteressant. Zu den Wasservögeln, die sich trotzdem auf dem Gewässer beobachten lassen, gehören Grau-, Nil- und Kanadagans, Graureiher, Teichhuhn, Haubentaucher und Stockente. ',	'0000-00-00 00:00:00'),
(10,	11,	6,	0,	'Neben einer Buche befindet sich ein ca. 40 cm hoher, rechtwinkliger, hellgrauer Stein, in den Symbole und Buchstaben gemeißelt sind',	'Wozu diente dieser Stein ursprünglich?',	'als Grenzstein',	'als Versammlungspunkt',	'als Sonnenuhr',	'als Mörserstein',	1,	'das Gebiet in dem du dich gerade befindest wurde früher militärisch gentuzt',	'Der Stein ist ein ehemaliger Grenzstein',	'Um die Stadt Köln zu beschützen wurde von 1873 bis 1886 um die Stadt herum ein Ring aus Festungsbauten errichtet. Er war etwa 46 km lang, so weit wie von Köln nach Düsseldorf und diente der Sicherung und dem Schutz der Stadtbevölkerung. Das nähere Umfeld der Forts und Festungsbauten war militärisches Gelände, das die Stadtbevölkerung nicht einfach betreten durfte. Mit diesen Grenzsteinen wurden die Gebiete markiert. Auf einer der vier Seiten des Steins sind noch ganz schwach die Großbuchstaben „FG“ zu erkennen. Sie stehen für: „Festungsgelände“. ',	'0000-00-00 00:00:00'),
(11,	12,	6,	1,	'keine',	'Wieviele Kanten haben die Früchte der Rotbuche?',	'drei',	'vier',	'fünf',	'sechs',	1,	'Auf dem Boden am Fuß der Buche lassen sich mit etwas Glück das ganze Jahr über Exemplare finden',	'Bucheckern haben drei Kanten ',	'Die Früchte der Rotbuchen sind dreikantige Nüsse, Bucheckern genannt.  Sie sitzen immer zu zweit in vierlappigen, stacheligen Fruchtbechern. Buchen können bis zu 300 Jahre alt werden. Ab einem Alter von 40 bis 80 Jahren produzieren sie Bucheckern. Die Nüsschen sind roh nur bedingt für den Verzehr geeignet. Sie enthalten in rohem Zustand leicht giftige Bestandteile welche aber durch Rösten abgebaut werden. Zudem verbessert sich durch den Röstvorgang ihr Aroma. Für viele Tiere, wie beispielsweise Wildschweine, Eichhörnchen, Mäuse und Igel, stellen die Früchte einen essentiellen Bestandteil ihrer Diät dar. ',	'0000-00-00 00:00:00'),
(12,	13,	7,	0,	'Maulwürfe verbringen den Großteil ihres Lebens unter der Erde und können daher nicht sehr gut sehen.',	'Wozwischen unterscheiden Maulwürfe?',	'Rot und Grün',	'Gelb und Blau',	'Hell und Dunkel',	'Braun und Rosa',	3,	'Maulwürfe können keine Farben erkennen',	'Maulwürfe können nur zwischen hell und dunkel unterscheiden',	'Maulwürfe leben unter der Erde. Weil es dort immer dunkel ist, können Maulwürfe nur sehr schlecht sehen. Sie können nur helle von dunklen Stellen unterscheiden, aber keine Farben erkennen. Dafür helfen ihnen andere Sinne bei der Orientierung. Sie können sehr gut hören und besitzen an der Schnauze Tastsinne über die sie Bewegungen von anderen Tieren in der Erde aus großer Entfernung wahrnehmen können. Das ist sehr praktisch, denn diese Tiere dienen den Maulwürfen als Nahrung, und davon brauchen sie sehr viel. Maulwürfe fressen am Tag die Hälfte ihres Körpergewichts an Larven, Würmern und Käfern. ',	'0000-00-00 00:00:00'),
(13,	14,	7,	1,	'keine',	'Wie weit kann sich ein Maulwurf in einer Stunde durch die Erde graben?',	'sieben Meter',	'elf Meter',	'fünfzehn Meter',	'zwanzig Meter',	1,	'Maulwürfe können eine Größe von 6 bis 22 Zentimetern erreichen',	'Maulwürfe können in einer Stunde sieben Meter weit graben',	'Maulwürfe lieben lockere, feuchte Böden mit wenigen Wurzeln. Hier können sie ohne große Mühe ihre Gänge graben. Obwohl sie oft nicht viel größer sind als Mäuse, graben Maulwürfe mit hoher Geschwindigkeit. Sie können in einer Stunde bis zu sieben Meter weit buddeln. Die Erde die sie nicht mehr brauchen, schieben sie an die Oberfläche wo sie kleine Hügel bildet. Der Maulwurf selber lässt sich über der Erde nur selten Blicken. Er hat unterirdisch alles was er zum Leben braucht. Auch seine Lieblingsspeise Regenwürmer und Käferlarven findet er im feuchten Boden.',	'0000-00-00 00:00:00'),
(14,	15,	8,	0,	'keine',	'Wie heißen die Bäume dieser Allee?',	'Linde',	'Kastanie',	'Ahorn',	'Eiche',	2,	'Aus den Früchten dieser Bäume kann man im Herbst besonders gut Figuren basteln',	'Die Früchte sind Kastanien',	'Viele Kinder kennen die Rosskastanie weil man aus ihren Früchten im Herbst schöne Kastanien-Männchen und –Tiere basteln kann. Auch ihr deutscher Name hat mit Tieren zu tun. „Ross“ ist ein altes Wort für Pferd und wurde der Kastanie gegeben, weil ihre Früchte früher als Pferdemedizin verwendet wurden. Für Menschen sind die Kastanien jedoch nicht essbar. Anders ist das bei Esskastanien, auch Maronen genannt. Sie stammen von der Edelkastanie, die mit der Rosskastanie nicht verwandt ist sondern nur ähnliche Früchte hat. Die Esskastanien sind geröstet ein beliebter Snack auf Weihnachtsmärkten und in winterlichen Fußgängerzonen.',	'0000-00-00 00:00:00'),
(15,	16,	8,	1,	'keine',	'Wie heißen die Bäume dieser Allee?',	'Edelkastanie',	'Rosskastanie',	'Esskastanie',	'Amerikanische Kastanie',	2,	'Sie tragen den Namen eines Tiers',	'Es handelt sich um Rosskastanien',	'Die einzige in Europa heimische Kastanie ist die Edelkastanie, oder auch Esskastanie genannt. Ihre gerösteten Früchte, die Maronen, sind ein beliebter Snack auf Weihnachtsmärkten. Dies ist aber eine Allee aus Rosskastanien. Die beiden Arten sind nicht miteinander verwandt, haben lediglich ähnlich aussehende Früchte. Die Rosskastanie kommt ursprünglich aus dem Balkan und gelangte mit den Osmanen, die sie als Pferdefutter nutzten nach Mitteleuropa. Ihre Früchte wurden bei Pferden besonders als Medizin verwendet, woher auch ihr Name stammt.  ',	'0000-00-00 00:00:00'),
(16,	17,	9,	0,	'Abends in der Dämmerung schwirren hier viele Fledermäuse zwischen Wiese und Wasser hin und her. Neben der Bank steht ein Baum auf dem sie leben.',	'Wo genau sind sie zu Hause?',	'in einer Erdhöhle zwischen den Wurzeln',	'in der Baumkrone',	'in einer Astgabelung',	'in einer Baumhöhle',	4,	'Fledermäuse haben es tagsüber gerne dunkel',	'Sie leben in einer Höhle im Stamm',	'Fledermäuse schlafen tagsüber und sind in der Nacht aktiv. In Baumhöhlen ist es auch am Tag schön dunkel, sodass die Tiere in Ruhe schlafen können. Dazu krallen sie sich mit den Füßen an der Decke fest und lassen sich mit dem Kopf nach unten hängen. Das funktioniert, weil ihre Krallen einfach zuschnappen ohne dass die Fledermäuse ihre Muskeln anspannen müssen. Deswegen fallen sie im Schlaf nicht runter sobald sich ihre Muskeln entspannen und sogar wenn sie tot sind bleiben sie weiterhin hängen. Am Abend werden die Tiere wach und machen sich auf Nahrungssuche. Da sie in der Dunkelheit nicht viel sehen können, haben sie eine andere Art der Orientierung entwickelt: die Echoortung. Die Flugkünstler geben Schallwellen von sich die an Gegenständen oder Lebewesen in ihrer Umgebung abprallen. Die Dauer bis die Schallwelle zur Fledermaus zurückkommt, gibt Informationen über die Entfernung und Größe des Objekts.  ',	'0000-00-00 00:00:00'),
(17,	18,	9,	1,	'In der Dämmerung sind hier in den warmen Sommermonaten zahlreiche Fledermäuse aktiv. Sie fliegen blitzschnell zwischen den Bäumen der Allee, der Wiese und dem Kanal hin und her',	'Welche Tiere orientieren sich nicht in erster Linie über ein Echolotsystem?',	'Fledermäuse',	'Delfine',	'Wale',	'Flughunde',	4,	'Die gesuchten Tiere haben ausgesprochen gute Augen und einen stark ausgeprägten Geruchssinn',	'Gesucht sind: Flughunde',	'Fledermäuse schlafen tagsüber und sind in der Nacht aktiv. In Baumhöhlen ist es auch am Tag schön dunkel, sodass die Tiere in Ruhe schlafen können. Dazu krallen sie sich mit den Füßen an der Decke fest und lassen sich mit dem Kopf nach unten hängen. Das funktioniert, weil ihre Krallen einfach zuschnappen ohne dass die Fledermäuse ihre Muskeln anspannen müssen. Deswegen fallen sie im Schlaf nicht runter sobald sich ihre Muskeln entspannen und sogar wenn sie tot sind bleiben sie weiterhin hängen. Am Abend werden die Tiere wach und machen sich auf Nahrungssuche. Da sie in der Dunkelheit nicht viel sehen können, haben sie eine andere Art der Orientierung entwickelt: die Echoortung. Die Flugkünstler geben Schallwellen von sich die an Gegenständen oder Lebewesen in ihrer Umgebung abprallen. Die Dauer bis die Schallwelle zur Fledermaus zurückkommt, gibt Informationen über die Entfernung und Größe des Objekts.',	'0000-00-00 00:00:00'),
(18,	19,	10,	0,	'Stell dich mit dem Rücken an den Stamm der Linde, die in der Mitte des Baumkreises steht. Dreh dich nun einmal im Kreis und beantworte folgende Frage:',	'Wie viele Bäume bilden den Baumkreis?',	'6',	'8',	'10',	'12',	3,	'Die Lösung ist eine zweistellige Zahl',	'Es sind 10 Bäume',	'Linde und Ahorn haben beide geflügelte Früchte. Die Früchte der Linde haben ein einzelnes längliches Blatt mit dessen Hilfe sie langsam zu Boden segeln. Die des Ahorns ähneln Propellern, sie bewegen sich in großen Spiralen zu Boden und eignen sich außerdem hervorragend als Nasenkleber. Dazu werden sie am dickeren Ende geteilt und dann auf den Nasenrücken geklebt. Was sie so gut kleben lässt ist ihr Fruchtsaft.   ',	'0000-00-00 00:00:00'),
(19,	20,	10,	1,	'keine',	'Aus welchen zwei Baumarten besteht dieser Baumkreis?',	'Linde und Buche',	'Linde und Ahorn',	'Buche und Eiche',	'Eiche und Ahorn',	2,	'Die Früchte der gesuchten Bäume sind beide geflügelt',	'Der Baumkreis besteht aus Linde und Ahorn',	'Die Linde gilt aufgrund ihrer herzförmigen Blätter als Baum der Liebenden, sie diente als zentraler Baum im Dorf als Treffpunkt für Versammlungen oder als Gerichtsbaum. Doch nicht nur kulturell ist sie von Bedeutung. In Zeiten von Monokulturen, Pestiziden und flächenmäßig abnehmendem Extensivgrünland kommt den Linden eine besondere Bedeutung als Nahrungsquelle zu. Im Spätsommer sind häufig große Ansammlungen toter Hummeln unter Linden zu finden. Das kommt daher, dass zur Zeit der Lindenblüte kaum noch andere Pflanzen blühen und eine große Zahl von Insekten um die wenigen verbliebenen Lindenblüten kämpfen muss. Am Ende schaffen es nur wenige ausreichend Nektar zu sammeln, der Rest verhungert. Wichtig ist es daher in der Landschaft genauso wie im Privatgarten naturnahe Flächen mit Wildblumen und Gehölzen zu schaffen.  ',	'0000-00-00 00:00:00'),
(20,	21,	32,	0,	'',	'Schafft Ihr es zwnazig mal hochzuhüpfen',	'Klaro',	'Nein',	'Nöö',	'Weiß nicht',	1,	'Gebt Euch Mühe',	'Das schafft Ihr',	'Wenn ihr immmer schön hüpft, freuen sich die Nachbarn',	'0000-00-00 00:00:00'),
(21,	22,	33,	0,	'Denkt an Euren lieblingsspielplatz',	'In welche Richtung müssen wir gehen',	'links',	'rechts',	'geradeaus',	'zurück',	2,	'Seht Ihr den Abzweig',	'Zeigt mal in die Richtung',	'Zum Spielplatz gehen wir rechts rum',	'0000-00-00 00:00:00'),
(22,	23,	34,	0,	'Letztens wurde hier umgebaut. Errinnert Ihr Euch an früher?',	'Was gab es hier früher an der Stelle, an der jetzt das Schiff steht?',	'Ein Boot',	'Eine Garage',	'Eine Wippe',	'Ein Haus',	4,	'Man konnte rein gehen',	'Es war gemütlich. fast wie zuhause',	'Hier stand früher ein Häuschen mit zwei Bänken und einem kleinen Tisch.',	'2015-11-27 00:00:00'),
(23,	24,	44,	0,	'Überall in Münster wohnen Kollegen von mama und Papa.',	'Wer wohnt gegenüber?',	'Ralf',	'Barbara',	'Annika',	'Markus',	4,	'Es ist ein Mann',	'Er fängt mit M an',	'Markus heißt der Kollege von Wolfram, der gegenüber wohnt. Er ist seit kurzem L3 :-)',	'0000-00-00 00:00:00'),
(24,	25,	46,	0,	'In Münster gibt es verschiedenen Buslinien.',	'Welcher Bus fährt an dieser Haltestelle ab?',	'Linie 15',	'Linie 16',	'Linie 3',	'Linie 4',	4,	'Hier fahren nicht die gleichen Busse wie am Nordplatz',	'Es ist nicht die Line 3. Das ist die in Gegenrichtung.',	'Die Linie 4 fährt von hier aus in Richtung Bahnhof.',	'2016-01-10 15:28:13'),
(25,	26,	47,	0,	'Mama ist Kauffrau und papa Häcker. Beide haben keinen Laden. Aber es gibt natürlich viele Läden in Münster.',	'Was ist das hier für ein Geschäft?',	'Ein Zeitschriftenladen',	'Ein Friseur',	'Ein Metzger',	'Ein Bäcker',	2,	'Zu Essen gibt es hier nichts',	'Man kann sich dort die Haare machen lassen',	'Hier ist ein Friseur. Ihr geht immer zu Püth.',	'2016-01-10 15:30:58'),
(26,	27,	45,	0,	'Erinnert Ihr Euch an die letzte Schatzsuche. Da spielte eine Hausnummer eine wichtige Rolle.',	'Könnt Ihr erkennen welche Hausnummer Markus Haus hat?',	'61',	'71',	'17',	'16',	3,	'Man spricht meistens die zweite Zahl zuerst',	'Eine sechs ist nicht enthalten',	'Es ist die Hausnummer 17',	'2016-01-10 15:33:59');

DROP TABLE IF EXISTS `preview_pictures`;
CREATE TABLE `preview_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `link` varchar(50) CHARACTER SET utf8 NOT NULL,
  `rout_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

INSERT INTO `preview_pictures` (`id`, `name`, `link`, `rout_id`, `order`) VALUES
(1,	'testbild 1',	'bild1.jpg',	1,	1);

DROP TABLE IF EXISTS `punkte`;
CREATE TABLE `punkte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `point_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `lat` decimal(10,6) NOT NULL,
  `long` decimal(10,6) NOT NULL,
  `order` int(11) NOT NULL,
  `distance_min` int(10) NOT NULL,
  `way_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `punkte` (`id`, `point_id`, `route_id`, `lat`, `long`, `order`, `distance_min`, `way_description`) VALUES
(1,	0,	0,	0.000000,	0.000000,	0,	0,	''),
(2,	1,	1,	50.905413,	6.907536,	1,	0,	'Links siehst Du eine große Tanne. Gehe dorthin und folge dann dem Weg in den Wald hinein. Nach ungefähr hundert Metern erreichst Du eine Kreuzung. Gehe dort links auf den Weiher zu. An der Bank kurz vor dem Weiher kommt die erste Frage.'),
(3,	2,	1,	50.904364,	6.905734,	2,	10,	'Gehe von der Bank aus links um den Weiher herum. Am anderen Ende geht erneut ein Weg ab. Hier steht erneut eine Bank. Dort kommt Deine nächste Frage.'),
(4,	3,	1,	50.905957,	6.902963,	3,	10,	''),
(5,	4,	1,	50.908101,	6.903518,	4,	0,	''),
(6,	7,	1,	50.910147,	6.896158,	7,	10,	''),
(7,	8,	1,	50.910164,	6.894319,	8,	10,	''),
(8,	9,	1,	50.911016,	6.892563,	9,	0,	''),
(9,	10,	1,	50.912210,	6.892445,	10,	0,	''),
(10,	11,	2,	50.930677,	6.876192,	1,	10,	''),
(11,	12,	2,	50.929595,	6.876466,	2,	10,	''),
(12,	13,	2,	50.927945,	6.878007,	3,	10,	''),
(13,	14,	2,	50.926767,	6.879859,	4,	10,	''),
(14,	15,	2,	50.927279,	6.883548,	5,	0,	''),
(15,	16,	2,	50.928344,	6.885181,	6,	0,	''),
(16,	17,	2,	50.926509,	6.887871,	7,	10,	''),
(17,	18,	2,	50.924395,	6.888258,	8,	0,	''),
(18,	19,	2,	50.923778,	6.886249,	9,	0,	''),
(19,	20,	2,	50.923166,	6.883229,	10,	10,	''),
(20,	21,	2,	50.921514,	6.881976,	11,	10,	''),
(21,	22,	3,	50.892361,	6.965230,	1,	0,	''),
(22,	23,	3,	50.892218,	6.962713,	2,	0,	''),
(23,	24,	3,	50.891483,	6.959121,	3,	10,	''),
(24,	25,	3,	50.890875,	6.954988,	4,	0,	''),
(25,	26,	3,	50.892381,	6.948405,	5,	10,	''),
(26,	27,	3,	50.892888,	6.943440,	6,	0,	''),
(27,	28,	3,	50.891804,	6.940034,	7,	10,	''),
(28,	29,	3,	50.892254,	6.935885,	8,	10,	''),
(29,	30,	3,	50.892851,	6.933640,	9,	10,	''),
(30,	31,	3,	50.894199,	6.929615,	10,	10,	''),
(31,	32,	4,	51.973064,	7.626212,	1,	0,	''),
(32,	33,	4,	51.973120,	7.625386,	2,	0,	''),
(33,	34,	4,	51.973408,	7.624745,	3,	0,	''),
(34,	35,	4,	51.973320,	7.624214,	4,	0,	''),
(35,	36,	4,	51.972559,	7.623114,	5,	0,	''),
(36,	38,	0,	5.000000,	6.000000,	1,	0,	'test'),
(37,	40,	6,	2.100000,	2.000000,	2,	0,	''),
(38,	41,	6,	1.000000,	1.000000,	3,	0,	''),
(39,	42,	6,	0.000000,	0.000000,	0,	0,	''),
(40,	43,	6,	1.000000,	2.000000,	3,	0,	''),
(41,	44,	7,	51.972970,	7.627380,	1,	5,	'Wir gehen links aus dem Haus raus Richtung Kreuzung'),
(42,	45,	7,	51.972870,	7.627110,	2,	3,	'Wir gehen vorsichtig über die Straße zum Eingang von Markus haus'),
(43,	46,	7,	51.972770,	7.627510,	3,	5,	'Wir gehen auf die andere Straßenseite zur Bushaltestelle'),
(44,	47,	7,	51.972340,	7.629090,	4,	10,	'Wir gehen auf dieser Straßenseite weiter bis zur Kreuzung'),
(45,	48,	6,	0.000000,	0.000000,	0,	0,	'');

DROP TABLE IF EXISTS `routen`;
CREATE TABLE `routen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `route_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `start_place_desc` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `end_place_desc` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `link_map` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `distance` float NOT NULL,
  `duration` int(10) NOT NULL,
  `topic` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pixelX_1` int(11) NOT NULL,
  `pixelY_1` int(11) NOT NULL,
  `pixelX_2` int(11) NOT NULL,
  `pixelY_2` int(11) NOT NULL,
  `lat_1` double NOT NULL,
  `long_1` double NOT NULL,
  `lat_2` double NOT NULL,
  `long_2` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `routen` (`id`, `route_id`, `route_name`, `description`, `start_place_desc`, `end_place_desc`, `updated_at`, `link_map`, `distance`, `duration`, `topic`, `pixelX_1`, `pixelY_1`, `pixelX_2`, `pixelY_2`, `lat_1`, `long_1`, `lat_2`, `long_2`) VALUES
(1,	1,	'Decksteiner Weiher',	'',	'Scherfginstraße\nBus 978',	'Deckstein\nBus 146',	'0000-00-00 00:00:00',	'http://app.nabu-station-l-k.de/maps/decksteiner-weiher.jpg',	1.3,	75,	'Thema',	259,	113,	605,	425,	50.911571,	6.890635,	50.905837,	6.900626),
(2,	2,	'Adenauer Weiher',	'',	'Rheinenergie-Stadion \nU1',	'Stüttgenhof \nU7',	'0000-00-00 00:00:00',	'Link_Karte.jpg',	1.3,	75,	'Thema',	0,	0,	0,	0,	0,	0,	0,	0),
(3,	3,	'Kalscheurer Weiher',	'',	'Arnoldshöhe\nBus 132',	'Oberer Komarweg\nBusse 131 und 138',	'0000-00-00 00:00:00',	'Link_Karte.jpg',	1.3,	75,	'Thema',	0,	0,	0,	0,	0,	0,	0,	0),
(4,	4,	'Nüssenberger Busch',	'',	'Buschweg\nBus 126',	'Am Coloneum\nBus 139',	'0000-00-00 00:00:00',	'http://countit-app.com/test_map_one_route.png',	1.3,	75,	'Thema',	626,	157,	50,	336,	51.97315,	7.62621224,	51.97255865,	7.62311429),
(5,	5,	'Belvedere',	'',	'Junkersdorf\nU1',	'Am Lindenweg\nBus144; \nBelvederestraße\nBus144',	'0000-00-00 00:00:00',	'',	3,	0,	'',	0,	0,	0,	0,	0,	0,	0,	0),
(6,	6,	'Westhovener Aue',	'',	'Kölner Straße\nU7 und U9',	'Heinrich-Lübke-Ufer\nU16, Bus 130',	'0000-00-00 00:00:00',	'http://countit-app.com/test_map_ms_route_2.png',	0,	0,	'',	483,	190,	112,	59,	51.97239,	7.62934,	51.97323,	7.62538),
(7,	7,	'Cranach Wäldchen',	'',	'Slabystraße\nU13 und U18',	'Sebastianstraße\nU16, Bus 147',	'0000-00-00 00:00:00',	'',	0,	0,	'',	0,	0,	0,	0,	0,	0,	0,	0),
(8,	8,	'Max-Planck',	'',	'Am Lindenweg\nBus 144',	'Goldammerweg\nBusse 141 und 143',	'0000-00-00 00:00:00',	'',	0,	0,	'',	0,	0,	0,	0,	0,	0,	0,	0);

DROP TABLE IF EXISTS `routen_backup`;
CREATE TABLE `routen_backup` (
  `route_id` int(11) NOT NULL,
  `route_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `start_place_desc` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `end_place_desc` varchar(1200) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `link_map` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `distance` float NOT NULL,
  `duration` int(10) NOT NULL,
  `topic` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pictures` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `routen_backup` (`route_id`, `route_name`, `description`, `start_place_desc`, `end_place_desc`, `updated_at`, `link_map`, `distance`, `duration`, `topic`, `pictures`) VALUES
(1,	'Decksteiner Weiher',	'',	'Scherfginstraße, Bus: Linie 978',	'Decktstein, Bus: Linie 146',	'0000-00-00 00:00:00',	'Link_Karte.jpg',	1.3,	75,	'Thema',	'Link'),
(2,	'Adenauer Weiher',	'',	'Müngersdorf Rheinenergie- Stadion, Straßenbahn: Linie 1',	'Marsdorf Stüttgenhof, Straßenbahn: Linie 7',	'0000-00-00 00:00:00',	'Link_Karte.jpg',	1.3,	75,	'Thema',	'Link'),
(3,	'Kalscheurer Weiher',	'',	'Marienburg Arnoldshöhe, Bus: 132',	'Oberer Komarweg, Bus: 131, 138',	'0000-00-00 00:00:00',	'Link_Karte.jpg',	1.3,	75,	'Thema',	'Link'),
(4,	'Münster Kreuzviertel',	'Münster, Spielplatzbegehung',	'Kerßenbrockstraße 30',	'Bushaltestelle Nordplatz',	'0000-00-00 00:00:00',	'Link_Karte.jpg',	1.3,	75,	'Thema',	'Link');

DROP TABLE IF EXISTS `routen_bilder`;
CREATE TABLE `routen_bilder` (
  `picture_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `link` varchar(200) COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

INSERT INTO `routen_bilder` (`picture_id`, `route_id`, `link`) VALUES
(2,	1,	'http://app.nabu-station-l-k.de/pictures/route1_pic2.jpg'),
(3,	2,	'test.jpg'),
(4,	1,	'http://app.nabu-station-l-k.de/pictures/route1_pic3.jpg'),
(5,	1,	'http://app.nabu-station-l-k.de/pictures/route1_pic4.jpg'),
(6,	2,	'placeholder_picture2.jpg'),
(7,	3,	'placeholder_picture3.jpg');

DROP TABLE IF EXISTS `update_timestamp`;
CREATE TABLE `update_timestamp` (
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

INSERT INTO `update_timestamp` (`time_stamp`, `id`) VALUES
('2016-01-13 11:12:26',	1);

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `passwort` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

INSERT INTO `user` (`name`, `passwort`) VALUES
('testnutzer',	'xy');

-- 2016-01-31 19:51:14
