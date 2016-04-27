BEGIN;
CREATE TABLE "user" (
	id serial PRIMARY KEY,
	name varchar (250) NOT NULL,
	email varchar (250) NOT NULL,
	picture varchar (250)
);
INSERT INTO "user" VALUES(1,'Joe Schmoe','joes@example.com','');
CREATE TABLE "category" (
	id serial PRIMARY KEY,
	name VARCHAR(250) NOT NULL,
	image VARCHAR(255),
	user_id INTEGER references "user" (id)
);
INSERT INTO "category" VALUES(1,'Trees','Pseudotsugamenziesii.jpg',1);
INSERT INTO "category" VALUES(2,'Shrubs','Cornussericea.jpg',1);
INSERT INTO "category" VALUES(3,'Groundcover','Iristenax.jpg',1);
INSERT INTO "category" VALUES(4,'Grass-like','Typhalatifolia.jpg',1);
INSERT INTO "category" VALUES(5,'Vines','Rubusursinus.jpg',1);
CREATE TABLE species (
	id serial PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	scientific_name VARCHAR(100),
	moisture_reqs VARCHAR(50),
	exposure_reqs VARCHAR(50),
	description VARCHAR(500),
	image VARCHAR(255),
	caption VARCHAR(30),
	category_id INTEGER REFERENCES "category" (id),
	user_id INTEGER REFERENCES "user" (id)
);
INSERT INTO "species" VALUES(1,'Douglas-fir','Pseudotsuga menziesii','dry-moist','sun - part shade','The Douglas fir is host to many native species of insect and bird.  Fast growing and predictable, it can be grown in almost any native soil but will sometimes blow down if planted in shallow soils over compacted clay or glacial till.','Pseudotsugamenziesii.jpg','(c) Greg Rabourn',1,1);
INSERT INTO "species" VALUES(2,'Western redcedar','Thuja plicata','moist - wet','part shade - shade','This is a grand and long lived tree, achieving both height and breadth through 200-300 years. Ideal for lowland and dampish areas, it does better on more level surfaces. ','Thujaplicata.jpg','(c) Greg Rabourn',1,1);
INSERT INTO "species" VALUES(3,'paper birch','Betula papyrifera','moist','sun - part shade','Paper birch is known for its white, peeling, paper-like bark that is found in mature specimens. The bark is dark in young trees. It has a smaller, more delicate appearing leaf than alder and can look nice planted in groves.','Betulapapyrifera.jpg','(c) Greg Rabourn',1,1);
INSERT INTO "species" VALUES(4,'vine maple','Acer circinatum','dry - moist','part shade - shade','One of the most desireable native plants, this small tree is famous for fall color and its ability to hold stream banks and eroding soil. Like the dogwood, it grows best in the understory at the woodland edge but will also grow more lankey in the forest interior and smaller, denser in the open--where it can burn in the afternoon sun.','Acercircinatum.jpg','(c) Greg Rabourn',1,1);
INSERT INTO "species" VALUES(5,'Pacific dogwood','Cornus nuttallii','dry - moist','part shade','Beautiful spring bloomer with white blooms. Red fruits provide lots of food for birds. Grows best along forest edges with its roots protected from late afternoon sun.','Cornusnuttallii.jpg','(c) Greg Rabourn',1,1);
INSERT INTO "species" VALUES(6,'red-osier dogwood','Cornus sericea','moist - wet','sun - shade','This is an attractive plant almost year round. In the winter it is known for its flaming red bark and in the spring and summer for it''s light foliage that flickers in the wind. Fall foliage is golden to reddish on red stems. The small flowers are in large clusters of frothy white. The berries are pale with a touch of blue.','Cornussericea.jpg','(c) Greg Rabourn',2,1);
INSERT INTO "species" VALUES(7,'low Oregon grape','Mahonia nervosa','dry - moist','part shade - shade','This is the short cousin to tall Oregon Grape and is better used as a ground cover (generally 2 foot in height) planted either singly or in masses. It looks great combined with native snowberry above and through the glossy green massed leaves. Tolerant of many conditions, it will do its best in some shade and can tolerate full shade. Clustered yellow flowers with purple fruits.','Mahonianervosa.jpg','(c) Greg Rabourn',2,1);
INSERT INTO "species" VALUES(8,'salal','Gaultheria shallon','dry - moist','part shade - shade','The single best ground cover for northwest gardens, salal is a do it all plant. Long recognised as one of the best foliage plants for flower arranging, it is also one of the most adaptable in the native repertoir. It can be grown short, if pruned back, hedged into wave like drifts, allowed to grow rampant and irregular to five feet or more. It will also grow where almost nothing else will, in deep understory forest groves, moist or dry soils, in full sun or deep shade.','Gaultheriashallon.jpg','(c) Greg Rabourn',2,1);
INSERT INTO "species" VALUES(9,'nootka rose','Rosa nutkana','moist - wet','sun - part shade','Attractive pink blooms, and large red fruit (hips) that persist in the winter. Covered with prickles, aggressive spreader.','Rosanutkana.jpg','(c) Greg Rabourn',2,1);
INSERT INTO "species" VALUES(10,'Pacific rhododendron','Rhododendron macrophyllum','dry - moist','part shade - shade','It grows 15-20'' on average. The leaves are 6 inches long and are rather flat, evergreen and smooth on the underside. The flowers can be rather large clusters of rosy pink and rarely white. It can be used as a thicket or wide, evergreen hedgerow. It blooms best on forest edges but is known to bloom in dark forest as well. Most garden rhododendron are species from Asia.','Rhododendronmacrophyllum.jpg','(c) Greg Rabourn',2,1);
INSERT INTO "species" VALUES(11,'spiraea','Spiraea douglasii','moist - wet','sun - part shade','Also known as ''hardhack''. Attractive, pink pyramid shaped flower clusters. Can spread aggresively in moist environments, but is better behaved in drier conditions.','Spiraeadouglasii.jpg',NULL,2,1);
INSERT INTO "species" VALUES(12,'Oregon iris','Iris tenax','moist - wet','sun - part shade','Attractive flowering blue to purple iris.','Iristenax.jpg','(c) Greg Rabourn',3,1);
INSERT INTO "species" VALUES(13,'wild strawberry','Fragaria virginiana','dry - moist','part shade - shade','Delightful woodland strawberry with white flowers and red fruits. Spreads.','Fragariavirginiana.jpg','(c) Greg Rabourn',3,1);
INSERT INTO "species" VALUES(14,'Western columbine','Aquilegia formosa','moist','sun - part shade','Liking it a bit moist, this small columbine will grow in open or shady sites and does best near the coast. It can be grown in forest glades, rocky slopes, meadows, clearings and meadows. Both butterflies and hummingbirds like this delicate dangling plant.','Aquilegiaformosa.jpg','(c) Greg Rabourn',3,1);
INSERT INTO "species" VALUES(15,'Western starflower','Trientalis latifolia','dry - moist','part shade - shade','Also known as ''Indian potato'', this small woodland wildflower is great for adding some spring blooms in shady areas. Flower is white to pink and appears to float above the whorl of leaves.','Trientalislatifolia.jpg','(c) Greg Rabourn',3,1);
INSERT INTO "species" VALUES(16,'oak fern','Gymnocarpium dryopteris','dry - moist','part shade - shade','The foliage of this delicate fern forms a delightful spreading groundcover in a woodland setting. Spreads by rhizomes, but not aggressive.','Gymnocarpiumdryopteris.jpg','(c) Greg Rabourn',3,1);
INSERT INTO "species" VALUES(17,'camas, common','Camassia quamash','dry - moist','sun - part shade','Beautiful spikes of bluish purple flower clusters. Spring blooming.','Camassiaquamash.jpg','(c) Greg Rabourn',3,1);
INSERT INTO "species" VALUES(18,'wild ginger','Asarum caudatum','moist','part shade - shade','Attractive foliage, purplish flowers are hidden beneath the foliage, but very beautiful when seen.','Asarumcaudatum.jpg','(c) Greg Rabourn',3,1);
INSERT INTO "species" VALUES(19,'cattail','Typha latifolia','wet','sun - part shade','Cattail is quite common along lake shores and wetlands and often is only limited in its spread by water depth. It can outcompete other natives so plant it where you don''t mind it spreading. The unique cigar like flowers provide interest, while the stand themselves provide nesting sites.','Typhalatifolia.jpg','(c) Greg Rabourn',4,1);
INSERT INTO "species" VALUES(20,'tufted hairgrass','Deschampsia cespitosa','dry - wet','sun - part shade','A narrow leaved bunch grass that is attractive with the wind blowing through its tall seed plumes. Plant in drifts of 5 or more for a meadow like effect. They plants ususally do a nice job of reseeding themselves. Perfect for salt water shorelines.','Deschampsiacespitosa.jpg','(c) Greg Rabourn',4,1);
INSERT INTO "species" VALUES(21,'hardstem bulrush','Scirpus acutus','wet','sun','This very tall bulrush has tough, round stems and works well along lakes and marshes. Needs saturated soil conditons and sun. Spreads by rhizomes. Seeds are important food for waterfowl.','Scirpusacutus.jpg','(c) Greg Rabourn',4,1);
INSERT INTO "species" VALUES(22,'Lyngbye''s sedge','Carex lyngbyei','wet','sun - part shade','This sedge forms widespread clumps in estuaries. Excellent spreading sedge for salt water shorelines.','Carexlyngbyei.jpg','(c) Greg Rabourn',4,1);
INSERT INTO "species" VALUES(23,'blackberry, trailing','Rubus ursinus','dry - moist','sun - shade','This is not the big brambly invasive bully lining area rivers and roadways. Although our native blackberry likes to spread, it does not form self supported brambles. Instead it rambles about the landscape as a vine-like ground cover.','Rubusursinus.jpg','(c) Greg Rabourn',5,1);
INSERT INTO "species" VALUES(24,'tufted hairgrass','Deschampsia cespitosa','dry - wet','sun - part shade','A narrow leaved bunch grass that is attractive with the wind blowing through its tall seed plumes. Plant in drifts of 5 or more for a meadow like effect. They plants ususally do a nice job of reseeding themselves. Perfect for salt water shorelines.','Deschampsiacespitosa.jpg','(c) Greg Rabourn',5,1);
INSERT INTO "species" VALUES(25,'hairy honeysuckle','Lonicera hispidula','dry - moist','sun - part shade','This native vine rambles along the ground rather than climbing. Has very attractive pink flowers, but can be a rather sparse bloomer. The leaves and stems are fuzzy.','Lonicerahispidula.jpg','(c) Greg Rabourn',5,1);
END;