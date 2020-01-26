/*
 Navicat Premium Data Transfer

 Source Server         : local_server
 Source Server Type    : MariaDB
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : student1

 Target Server Type    : MariaDB
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 26/01/2020 12:12:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`) USING BTREE,
  KEY `auth_assignment_user_id_idx` (`user_id`) USING BTREE,
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
BEGIN;
INSERT INTO `auth_assignment` VALUES ('admin', '1', 1535696400);
INSERT INTO `auth_assignment` VALUES ('admin', '4', 1567269299);
INSERT INTO `auth_assignment` VALUES ('admin', '6', 1567764815);
INSERT INTO `auth_assignment` VALUES ('edit_about', '6', 1567764801);
INSERT INTO `auth_assignment` VALUES ('edit_contact', '6', 1567764804);
INSERT INTO `auth_assignment` VALUES ('edit_home', '6', 1567764806);
INSERT INTO `auth_assignment` VALUES ('manage_information', '6', 1567764813);
INSERT INTO `auth_assignment` VALUES ('teacher', '1567823371', 1567851380);
INSERT INTO `auth_assignment` VALUES ('teacher', '1567851526', 1567851537);
INSERT INTO `auth_assignment` VALUES ('teacher', '1567852132', 1567853487);
INSERT INTO `auth_assignment` VALUES ('teacher', '1567864318', 1567864463);
INSERT INTO `auth_assignment` VALUES ('teacher', '1567952799', 1567952804);
INSERT INTO `auth_assignment` VALUES ('teacher', '1568006067', 1568006180);
INSERT INTO `auth_assignment` VALUES ('teacher', '1568109445', 1568276455);
INSERT INTO `auth_assignment` VALUES ('teacher', '1568167568', 1568337472);
INSERT INTO `auth_assignment` VALUES ('teacher', '1569165134', 1569165168);
INSERT INTO `auth_assignment` VALUES ('teacher', '1569400811', 1569400842);
INSERT INTO `auth_assignment` VALUES ('teacher', '1569426839', 1569427022);
INSERT INTO `auth_assignment` VALUES ('teacher', '1569428171', 1569428214);
INSERT INTO `auth_assignment` VALUES ('teacher', '1569432867', 1569432936);
INSERT INTO `auth_assignment` VALUES ('teacher', '1569494215', 1569494275);
INSERT INTO `auth_assignment` VALUES ('teacher', '1569498647', 1569498718);
INSERT INTO `auth_assignment` VALUES ('teacher', '1569559311', 1569559402);
INSERT INTO `auth_assignment` VALUES ('teacher', '3', 1567764393);
INSERT INTO `auth_assignment` VALUES ('teacher', '4', 1567290851);
INSERT INTO `auth_assignment` VALUES ('teacher', '6', 1567764498);
INSERT INTO `auth_assignment` VALUES ('user', '1567864042', 1567864159);
INSERT INTO `auth_assignment` VALUES ('user', '1567864318', 1567864319);
INSERT INTO `auth_assignment` VALUES ('user', '1567952799', 1567952799);
INSERT INTO `auth_assignment` VALUES ('user', '1567957110', 1567957110);
INSERT INTO `auth_assignment` VALUES ('user', '1568006067', 1568006068);
INSERT INTO `auth_assignment` VALUES ('user', '1568109445', 1568109446);
INSERT INTO `auth_assignment` VALUES ('user', '1569142882', 1569142882);
INSERT INTO `auth_assignment` VALUES ('user', '1569165134', 1569165134);
INSERT INTO `auth_assignment` VALUES ('user', '1569426839', 1569426839);
INSERT INTO `auth_assignment` VALUES ('user', '1569428171', 1569428171);
INSERT INTO `auth_assignment` VALUES ('user', '1569432867', 1569432868);
INSERT INTO `auth_assignment` VALUES ('user', '1569494215', 1569494215);
INSERT INTO `auth_assignment` VALUES ('user', '1569498647', 1569498647);
INSERT INTO `auth_assignment` VALUES ('user', '1569559311', 1569559311);
INSERT INTO `auth_assignment` VALUES ('user', '2', 1562226673);
INSERT INTO `auth_assignment` VALUES ('user', '3', 1562228852);
INSERT INTO `auth_assignment` VALUES ('user', '4', 1567269271);
INSERT INTO `auth_assignment` VALUES ('user', '5', 1567666706);
INSERT INTO `auth_assignment` VALUES ('user', '6', 1567764480);
COMMIT;

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  KEY `rule_name` (`rule_name`) USING BTREE,
  KEY `idx-auth_item-type` (`type`) USING BTREE,
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
BEGIN;
INSERT INTO `auth_item` VALUES ('/admin/*', 2, NULL, NULL, NULL, 1535696373, 1535696373);
INSERT INTO `auth_item` VALUES ('/core/*', 2, NULL, NULL, NULL, 1535699352, 1535699352);
INSERT INTO `auth_item` VALUES ('/dbupdate/*', 2, NULL, NULL, NULL, 1564586312, 1564586312);
INSERT INTO `auth_item` VALUES ('/debug/*', 2, NULL, NULL, NULL, 1562222244, 1562222244);
INSERT INTO `auth_item` VALUES ('/foods/*', 2, NULL, NULL, NULL, 1564928349, 1564928349);
INSERT INTO `auth_item` VALUES ('/gii/*', 2, NULL, NULL, NULL, 1535706951, 1535706951);
INSERT INTO `auth_item` VALUES ('/informations/*', 2, NULL, NULL, NULL, 1562299552, 1562299552);
INSERT INTO `auth_item` VALUES ('/lessons/*', 2, NULL, NULL, NULL, 1564931417, 1564931417);
INSERT INTO `auth_item` VALUES ('/options/*', 2, NULL, NULL, NULL, 1562243863, 1562243863);
INSERT INTO `auth_item` VALUES ('/site/*', 2, NULL, NULL, NULL, 1562245386, 1562245386);
INSERT INTO `auth_item` VALUES ('/skin/*', 2, NULL, NULL, NULL, 1563731318, 1563731318);
INSERT INTO `auth_item` VALUES ('/student/*', 2, NULL, NULL, NULL, 1564983769, 1564983769);
INSERT INTO `auth_item` VALUES ('/test-choice/*', 2, NULL, NULL, NULL, 1566070625, 1566070625);
INSERT INTO `auth_item` VALUES ('/test/*', 2, NULL, NULL, NULL, 1566070516, 1566070516);
INSERT INTO `auth_item` VALUES ('/text-editor/*', 2, NULL, NULL, NULL, 1563780854, 1563780854);
INSERT INTO `auth_item` VALUES ('/user/*', 2, NULL, NULL, NULL, 1535697098, 1535697098);
INSERT INTO `auth_item` VALUES ('/user/admin/index', 2, NULL, NULL, NULL, 1567269356, 1567269356);
INSERT INTO `auth_item` VALUES ('/user/registration/register', 2, NULL, NULL, NULL, 1562221007, 1562221007);
INSERT INTO `auth_item` VALUES ('/user/security/logout', 2, NULL, NULL, NULL, 1562227469, 1562227469);
INSERT INTO `auth_item` VALUES ('/user/settings/account', 2, NULL, NULL, NULL, 1562226761, 1562226761);
INSERT INTO `auth_item` VALUES ('/user/settings/profile', 2, NULL, NULL, NULL, 1562226734, 1562226734);
INSERT INTO `auth_item` VALUES ('admin', 1, 'ผู้ดูเเลระบบ', NULL, NULL, 1535696302, 1569427733);
INSERT INTO `auth_item` VALUES ('edit_about', 1, 'แก้ไขหน้าเกี่ยวกับเรา', NULL, NULL, 1563780984, 1563781037);
INSERT INTO `auth_item` VALUES ('edit_contact', 1, 'แก้ไขหน้าติดต่อเรา', NULL, NULL, 1563781003, 1563781049);
INSERT INTO `auth_item` VALUES ('edit_home', 1, 'แก้ไขหน้าหลัก', NULL, NULL, 1563780961, 1563781059);
INSERT INTO `auth_item` VALUES ('manage_information', 1, 'จัดการหน้าหลัก', NULL, NULL, 1563781024, 1569427708);
INSERT INTO `auth_item` VALUES ('teacher', 1, 'คุณครู', NULL, NULL, 1567285626, 1569427616);
INSERT INTO `auth_item` VALUES ('user', 1, 'ผู้ใช้งาน', NULL, NULL, 1535696315, 1569427685);
COMMIT;

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`) USING BTREE,
  KEY `child` (`child`) USING BTREE,
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
BEGIN;
INSERT INTO `auth_item_child` VALUES ('admin', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/core/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/dbupdate/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/foods/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/lessons/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/options/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/site/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/skin/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/student/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/test-choice/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/test/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/text-editor/*');
INSERT INTO `auth_item_child` VALUES ('admin', '/user/*');
INSERT INTO `auth_item_child` VALUES ('admin', 'edit_about');
INSERT INTO `auth_item_child` VALUES ('admin', 'edit_contact');
INSERT INTO `auth_item_child` VALUES ('admin', 'edit_home');
INSERT INTO `auth_item_child` VALUES ('admin', 'manage_information');
INSERT INTO `auth_item_child` VALUES ('admin', 'user');
INSERT INTO `auth_item_child` VALUES ('teacher', 'admin');
INSERT INTO `auth_item_child` VALUES ('teacher', 'edit_about');
INSERT INTO `auth_item_child` VALUES ('teacher', 'edit_contact');
INSERT INTO `auth_item_child` VALUES ('teacher', 'edit_home');
INSERT INTO `auth_item_child` VALUES ('teacher', 'manage_information');
INSERT INTO `auth_item_child` VALUES ('user', '/informations/*');
INSERT INTO `auth_item_child` VALUES ('user', '/site/*');
INSERT INTO `auth_item_child` VALUES ('user', '/user/security/logout');
INSERT INTO `auth_item_child` VALUES ('user', '/user/settings/account');
INSERT INTO `auth_item_child` VALUES ('user', '/user/settings/profile');
COMMIT;

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for core_options
-- ----------------------------
DROP TABLE IF EXISTS `core_options`;
CREATE TABLE `core_options` (
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`option_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of core_options
-- ----------------------------
BEGIN;
INSERT INTO `core_options` VALUES ('backend_url', 'Backend Url', 'backend.dconhub.com');
INSERT INTO `core_options` VALUES ('brand_file_type', 'File Upload Brand', '[\"jpg\",\"jpeg\",\"png\",\"gif\"]');
INSERT INTO `core_options` VALUES ('brand_types', 'DropDown Brand', '{ \"1\": \"หมวดหมู่หลัก\", \"2\": \"หมวดหมู่ย่อย\"}');
INSERT INTO `core_options` VALUES ('category_types', 'DropDown Brand', '{ \"1\": \"หมวดสินค้าหลัก\", \"2\": \"หมวดสินค้าย่อย\"}');
INSERT INTO `core_options` VALUES ('cn_brand', 'แบรนด์บริษัท', 'บจก. ดํารงค์พานิช คอนสตรัคชั่น');
INSERT INTO `core_options` VALUES ('cn_brand_address', 'ที่อยู่บริษัท', '92 หมู่ที่ 21 ต.หัวขวาง อ.โกสุมพิสัย จ.มหาสารคาม');
INSERT INTO `core_options` VALUES ('cn_brand_address2', 'เบอร์โทรศัพท์', '043761599');
INSERT INTO `core_options` VALUES ('cn_condition', 'เงื่อนไขการสั่งซื้อ', 'ราคาวัสดุ เป็นราคารับหน้าโรงงาน ยังไม่รวมค่าขนส่ง\r\nกรณีเงื่อนไขส่งฟรี เมื่อดำเนินการกรอกที่อยู่จัดส่งแล้ว ทางเจ้าหน้าที่จะติดต่อกลับไปเพื่อแก้ไขราคาค่าขนส่งให้\r\nค่าขนส่งที่ระบบคำนวณอัตโนมัติให้หลังการใส่ที่อยู่ เป็นเพียงการประมาณการเท่านั้น ทางบริษัทขอสงวนสิทธิ์เปลี่ยนแปลงโดยไม่แจ้งให้ทราบล่วงหน้า');
INSERT INTO `core_options` VALUES ('doc_logo', 'Logo ในเอกสาร', 'https://bn1305files.storage.live.com/y4mvIe7_8afjHcCPf92XY_ODuQyQIaWa7gwItZHjNssnJZmDHTZPkjOnevua_1-qNw9FscoPXhNaWZAv4_xvHmTHIIxa4WugMKDIKzbL33loI7prfRlW9lfh-snk7On8wAnprjG1DE35fZh84TrQ33FwCd4indq55Viz49R-xh5wnAQxxJ7nDcydDEPuKqJfFByJBlbtyX-6L22bnUdwcdb6A/IMG_0199.JPG?psid=1&width=2016&height=1309');
INSERT INTO `core_options` VALUES ('how_to_pay', 'วิธีการสั่งซื้อ', '<h1>ตัวอย่างวิธีการสั่งซื้อ</h1><h2><img alt=\"\" src=\"https://storage.dconhub.com/images/5c49d10bd366c.png\" class=\"fr-fic fr-dii\" data-id=\"5c49d10bd366c.png\"><img alt=\"\" src=\"https://storage.dconhub.com/images/5c49d10e0cb8e.png\" class=\"fr-fic fr-dii\" data-id=\"5c49d10e0cb8e.png\"><img alt=\"\" src=\"https://storage.dconhub.com/images/5c49d10cb7b4e.png\" class=\"fr-fic fr-dii\" data-id=\"5c49d10cb7b4e.png\"><img alt=\"\" src=\"https://storage.dconhub.com/images/5c49d10b01855.png\" class=\"fr-fic fr-dii\" data-id=\"5c49d10b01855.png\"></h2><h2>วิธีการสั่งซื้อสินค้า</h2><p>ขั้นตอนการทำรายการสั่งซื้อ<br>ติดต่อสอบถามเพิ่มเติม กรุณาติดต่อ customer service center โทร&nbsp;<strong>02-308-4666</strong> หรือ&nbsp;<a href=\"mailto:ccare@cmart.co.th\" title=\"\">ccare@cmart.co.th</a></p><h3>1. เลือกสินค้าของคุณ</h3><p>คุณสามารถเลือกสินค้าที่คุณต้องการสั่งซื้อโดยการคลิกที่ปุ่ม&nbsp;<strong>&ldquo;หยิบใส่ตะกร้า&rdquo;</strong> หรือ หากคุณต้องการเลือกสินค้าเก็บไว้และชำระเงินภายหลัง ให้คลิกที่ปุ่ม &ldquo;เพิ่มรายการที่ชอบ&rdquo; ซึ่ง ณ ที่นี้ คุณต้องทำการเข้าสู่ระบบก่อน เพื่อที่ระบบจะได้บันทึกสินค้าไว้ใน &ldquo;สินค้าที่สนใจ&rdquo;</p><h3>2. ตรวจสอบหรือแก้ไขรายการสินค้า</h3><p>คุณสามารถทำการตรวจสอบหรือแก้ไขรายการสินค้าที่คุณต้องการสั่งซื้อได้ในหน้า&nbsp;<strong>&ldquo;ตะกร้าของฉัน&quot;</strong> หลังจากนั้นคลิกที่ปุ่ม &ldquo;สั่งซื้อสินค้า&rdquo; เพื่อดำเนินการ การสั่งซื้อสินค้า</p><h3>3. เลือกทำรายการสั่งซื้อสินค้า</h3><p>คุณสามารถเลือกได้ดังนี้<br><br><strong>ทำรายการโดยไม่เป็นสมาชิก:</strong> กรอกข้อมูลการเรียกเก็บเงิน และข้อมูลการจัดส่งสินค้าของคุณ โดยไม่ได้เป็นสมาชิกของ&nbsp;<a href=\"https://www.cmart.co.th/\" title=\"\"><strong>cmart.co.th</strong></a><br><br><strong>ลูกค้าใหม่:</strong> สำหรับการสั่งซื้อครั้งแรก เพียงกรอกข้อมูลการเรียกชำระเงิน และข้อมูลการจัดส่งสินค้าของคุณ โดยเป็นสมาชิกกับ&nbsp;<a href=\"https://www.cmart.co.th/\" title=\"\"><strong>cmart.co.th</strong></a> เพื่อให้ง่ายต่อการสั่งซื้อครั้งต่อไป และสะดวกต่อการติดตามการสั่งซื้อ นอกจากนี้ คุณยังสามารถสั่งซื้อสินค้าโดยเข้าสู่ระบบผ่านทางบัญชี Facebook ของคุณได้ง่ายๆ ทั้งนี้จะได้รับจดหมายข่าวสารและโปรโมชั่นที่ดีที่สุดที่เรามอบให้<br><br><strong>ลูกค้าเก่า:</strong> สำหรับลูกค้าที่เป็นสมาชิกกับ CMART ทำรายการสั่งซื้อผ่านระบบได้ง่ายๆ เพียงแค่เข้าสู่ระบบ โดยกรอกอีเมลและรหัสผ่าน และทำรายการสั่งซื้อโดยไม่ต้องกรอกข้อมูลอื่นๆเพิ่มเติม<br><br></p><h3>4. เลือกวิธีการจัดส่งสินค้า</h3><p>CMART มีตัวเลือกในการจัดส่ง 2 แบบ คือ ส่งแบบด่วน (<strong>Express</strong>) และ ส่งแบบธรรมดา (<strong>Standard</strong>) สำหรับแต่ละวิธีการจัดส่ง จะมีการคำนวณระยะทาง และน้ำหนักของสินค้า จากการยืนยันการสั่งซื้อของคุณ (คุณสามารถอ่านรายละเอียดเพิ่มเติมได้ที่หน้า&nbsp;<a href=\"https://www.cmart.co.th/shipping-policy\">&ldquo;วิธีการจัดส่งสินค้า&rdquo;</a>)</p><h3>5. เลือกวิธีการชำระเงิน</h3><p>คุณสามารถเลือกวิธีการชำระเงินได้หลากหลายวิธี เช่น เก็บเงินปลายทาง บัตรเครดิต/บัตรเดบิต ผ่านทางเคาน์เตอร์เซอร์วิส หรือผ่านทางระบบออนไลน์ ซึ่งมีบริษัท 2C2P เป็น<br>ผู้ดูแลระบบรักษาความปลอดภัย (คุณสามารถอ่านรายละเอียดเพิ่มเติมได้ที่หน้า&nbsp;<a href=\"https://www.cmart.co.th/payment-method\">&ldquo;ช่องทางการชำระเงิน&rdquo;</a>)<br>หากคุณมีรหัสคูปองส่วนลด คุณสามารถนำรหัสส่วนลดระบุในช่อง&nbsp;<strong>&ldquo;ใส่รหัสส่วนลด ถ้ามี&rdquo;</strong> และคลิก&nbsp;<strong>&ldquo;ใช้ส่วนลด&rdquo;<br></strong>และเมื่อคุณพร้อมทำการชำระเงินและสั่งซื้อสินค้า ให้คลิกที่ปุ่ม&nbsp;<strong>&ldquo;ซื้อสินค้า&rdquo;</strong></p><p>&nbsp;</p><h3>6. ยืนยันคำสั่งซื้อสินค้าทางอีเมล</h3><p>เมื่อคุณได้ทำรายการสั่งซื้อสินค้าเรียบร้อยแล้ว<br>คุณจะได้รับอีเมลเพื่อยืนยันคำสั่งซื้อสินค้าของคุณ วิธีการชำระเงินแบบ เรียกเก็บเงินปลายทาง ชำระเงินที่จุดรับสินค้า (Cash on Pick up Point)<br>กรุณาคลิกที่ &ldquo;ลิงค์ยืนยันคำสั่งซื้อ&rdquo; ตามลิงค์ที่แนบมาในอีเมลดังกล่าว<br>ภายใน 24 ชม. หากคุณไม่ดำเนินการ ภายในเวลาที่กำหนด<br>คำสั่งซื้อของคุณ จะถูกยกเลิกโดยอัตโนมัติ&nbsp;</p>');
INSERT INTO `core_options` VALUES ('logo', 'Logo', 'https://storage.dconhub.com/images/dconhub.png');
INSERT INTO `core_options` VALUES ('logo_text', 'Logo Text', 'https://storage.dconhub.com/images/logo_bg.JPG');
INSERT INTO `core_options` VALUES ('order_text_start', ' รหัสตัวหนังสือของใบเสนอราคา', 'QT');
INSERT INTO `core_options` VALUES ('order_txt', 'Order Text', 'BS');
INSERT INTO `core_options` VALUES ('page_about', 'About', '<p>เกี่ยวกับเรา นกน้อยทำรังแต่พอตัว</p><table style=\"width: 100%;\"><tbody><tr><td style=\"width: 50.0000%;\"><div style=\"text-align: center;\"><img src=\"https://storage.dconhub.com/images/5c2f5300dfbbe.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\" data-id=\"5c2f5300dfbbe.jpg\"></div></td><td style=\"width: 50.0000%;\"><span class=\"fr-video fr-fvc fr-dvb fr-draggable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-vqdW4IMTnE\" frameborder=\"0\" allowfullscreen=\"\" class=\"fr-draggable\"></iframe></span></td></tr></tbody></table><p>เราขาย <a href=\"http://www.shera.com/\" rel=\"noopener noreferrer\" target=\"_blank\">เฌอร่า</a> และ</p><p><br></p><p><span class=\"fr-emoticon fr-deletable fr-emoticon-img\" style=\"background: url(https://cdnjs.cloudflare.com/ajax/libs/emojione/2.0.1/assets/svg/1f623.svg);\">&nbsp;</span>&nbsp;</p><p><img src=\"https://storage.dconhub.com/images/5c2f54745480c.gif\" style=\"width: 300px;\" class=\"fr-fic fr-fil fr-rounded fr-dii\" data-id=\"5c2f54745480c.gif\">refd</p><p>sdsadsadsadsadsadsadsad</p><p>sadsadsadsadsadsadsadsadsa</p><p>sadsadsadsadsasdsadsadasdasd</p><p>refd</p><p>sdsadsadsadsadsadsadsad</p><p>sadsadsadsadsadsadsadsadsa</p><p>sadsadsadsadsasdsadsadasdasd</p><p>refd</p><p>sdsadsadsadsadsadsadsad</p><p>sadsadsadsadsadsadsadsadsa</p><p>sadsadsadsadsasdsadsadasdasd</p><p>refd</p><p>sdsadsadsadsadsadsadsad</p><p>sadsadsadsadsadsadsadsadsa</p><p>sadsadsadsadsasdsadsadasdasd</p><p><span class=\"fr-video fr-fvc fr-dvb fr-draggable\" contenteditable=\"false\" draggable=\"true\"><iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/-vqdW4IMTnE?wmode=opaque\" frameborder=\"0\" allowfullscreen=\"\" class=\"fr-draggable\"></iframe></span>&nbsp;</p>');
INSERT INTO `core_options` VALUES ('page_contact', 'Contact', '<p>ติดต่อเรา เราคือใครเอ๋ย ให้ทาย</p><h3><span class=\"fr-video fr-fvc fr-dvb fr-draggable\" contenteditable=\"false\" draggable=\"true\">\r\n');
COMMIT;

-- ----------------------------
-- Table structure for dbupdate
-- ----------------------------
DROP TABLE IF EXISTS `dbupdate`;
CREATE TABLE `dbupdate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `rstat` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dbupdate
-- ----------------------------
BEGIN;
INSERT INTO `dbupdate` VALUES (1, 'CREAE TABLE systemlog', 'CREATE TABLE IF NOT EXISTS  `systemlog` (\r\n  `id` int(11) NOT NULL,\r\n  `logname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,\r\n  `logtype` int(1) DEFAULT NULL,\r\n  `logdetail` longtext COLLATE utf8_unicode_ci,\r\n  `rstat` int(1) DEFAULT NULL,\r\n  `create_by` bigint(20) DEFAULT NULL,\r\n  `create_date` datetime DEFAULT NULL,\r\n  `update_by` bigint(20) DEFAULT NULL,\r\n  `update_date` datetime DEFAULT NULL,\r\n  PRIMARY KEY (`id`)\r\n) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;', 1, '2019-07-31 22:36:55', 1, '2019-07-31 23:09:49', 1, 1);
INSERT INTO `dbupdate` VALUES (2, 'ALTER TABLE `systemlog` ', 'ALTER TABLE `systemlog` \r\nMODIFY COLUMN `id` bigint(20) NOT NULL FIRST;', 1, '2019-08-01 11:17:34', 1, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for file_storage_item
-- ----------------------------
DROP TABLE IF EXISTS `file_storage_item`;
CREATE TABLE `file_storage_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_url` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of file_storage_item
-- ----------------------------
BEGIN;
INSERT INTO `file_storage_item` VALUES (106, 'fileStorage', 'http://shop.local/source', '1/HfSgZ0jHjBR0T5af6q5XkXKWyeyEuz7O.png', 'image/png', 3556, 'HfSgZ0jHjBR0T5af6q5XkXKWyeyEuz7O', '::1', 1535699641);
INSERT INTO `file_storage_item` VALUES (107, 'fileStorage', 'http://storage.shop.local/source', '1/OuRcwvxrOLzLzvWR5QBNn6No1vd-2yf5.png', 'image/png', 4679, 'OuRcwvxrOLzLzvWR5QBNn6No1vd-2yf5', '::1', 1535700807);
INSERT INTO `file_storage_item` VALUES (110, 'fileStorage', 'http://storage.exomethai.local/source', '1/FxbtooSVWmIcxSAvrkcYtZACnNSDvlk1.jpg', 'image/jpeg', 210392, 'FxbtooSVWmIcxSAvrkcYtZACnNSDvlk1', '::1', 1562218782);
INSERT INTO `file_storage_item` VALUES (112, 'fileStorage', 'http://storage.exomethai.local/source', '1/8lHe0DJg_oKoIiMUdS06fwasOkLe2lGx.jpg', 'image/jpeg', 223823, '8lHe0DJg_oKoIiMUdS06fwasOkLe2lGx', '::1', 1562230810);
INSERT INTO `file_storage_item` VALUES (113, 'fileStorage', 'http://storage.exomethai.local/source', '1/uCfEs_a84t96Ot6OqYGKGGhHo-ZQAixe.jpg', 'image/jpeg', 176544, 'uCfEs_a84t96Ot6OqYGKGGhHo-ZQAixe', '::1', 1563730622);
INSERT INTO `file_storage_item` VALUES (116, 'fileStorage', 'http://storage.exom.local/source', '1/H3dJrb4HKUeW0QiLrQovDNVg5mRaaUxs.jpg', 'image/jpeg', 63433, 'H3dJrb4HKUeW0QiLrQovDNVg5mRaaUxs', '::1', 1563779072);
INSERT INTO `file_storage_item` VALUES (117, 'fileStorage', 'http://storage.chanpan.local/source', '1/Uc6lM4KiyieX8JGp47yVSxAfHJREKiUV.jpg', 'image/jpeg', 45379, 'Uc6lM4KiyieX8JGp47yVSxAfHJREKiUV', '::1', 1563779324);
INSERT INTO `file_storage_item` VALUES (118, 'fileStorage', 'http://storage.project2.local/source', '1/TZPy2A7kHTFjy5m8uaWC1qxt8FhGImOR.jpg', 'image/jpeg', 89061, 'TZPy2A7kHTFjy5m8uaWC1qxt8FhGImOR', '::1', 1567250831);
INSERT INTO `file_storage_item` VALUES (119, 'fileStorage', 'http://storage.project2.local/source', '1/j5QOHYN17YlcoK6KlNX0X8cAss_F5VHE.jpg', 'image/jpeg', 160176, 'j5QOHYN17YlcoK6KlNX0X8cAss_F5VHE', '::1', 1567250856);
INSERT INTO `file_storage_item` VALUES (120, 'fileStorage', 'http://storage.project2.local/source', '1/YYC3hA2LkeTqr6EwFPn3twcBd2tbqkIC.jpg', 'image/jpeg', 89061, 'YYC3hA2LkeTqr6EwFPn3twcBd2tbqkIC', '::1', 1567251019);
INSERT INTO `file_storage_item` VALUES (121, 'fileStorage', 'http://storage.project2.local/source', '1/V_97fwfswOa5d3YLVED9gUpX5FqYzPab.jpg', 'image/jpeg', 86166, 'V_97fwfswOa5d3YLVED9gUpX5FqYzPab', '::1', 1567251297);
INSERT INTO `file_storage_item` VALUES (122, 'fileStorage', 'http://storage.project2.local/source', '1/soNePn3E_0yxkq-nEL7NFHRHVidTqGaR.jpg', 'image/jpeg', 89061, 'soNePn3E_0yxkq-nEL7NFHRHVidTqGaR', '::1', 1567251504);
INSERT INTO `file_storage_item` VALUES (123, 'fileStorage', 'http://storage.project2.local/source', '1/NY2z0Yhx01M_nvELqda2ACF7ku7gVZeq.jpg', 'image/jpeg', 89061, 'NY2z0Yhx01M_nvELqda2ACF7ku7gVZeq', '::1', 1567251619);
INSERT INTO `file_storage_item` VALUES (124, 'fileStorage', 'http://storage.project2.local/source', '1/rgRQAsVbyLHZdQcnMLT87shRIXMPSnzs.jpg', 'image/jpeg', 86166, 'rgRQAsVbyLHZdQcnMLT87shRIXMPSnzs', '::1', 1567252330);
INSERT INTO `file_storage_item` VALUES (125, 'fileStorage', 'http://storage.project2.local/source', '1/2zn0kCZeIITeWoNJNQ1UFNsiHAg0HyLv.jpg', 'image/jpeg', 86166, '2zn0kCZeIITeWoNJNQ1UFNsiHAg0HyLv', '::1', 1567252390);
INSERT INTO `file_storage_item` VALUES (126, 'fileStorage', 'http://storage.project2.local/source', '1/E4-b4C-aENobO_xA7CKB1T_eu06IyLWA.jpg', 'image/jpeg', 71105, 'E4-b4C-aENobO_xA7CKB1T_eu06IyLWA', '::1', 1567254511);
INSERT INTO `file_storage_item` VALUES (127, 'fileStorage', 'http://storage.project2.local/source', '1/FsXod1_-6BH1is83E0dBkGaNXNa1NFb0.jpg', 'image/jpeg', 71105, 'FsXod1_-6BH1is83E0dBkGaNXNa1NFb0', '::1', 1567257565);
INSERT INTO `file_storage_item` VALUES (129, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg', 'image/jpeg', 33716, 'uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v', '115.87.129.13', 1567290067);
INSERT INTO `file_storage_item` VALUES (130, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/MaPFysKV0QXk3hbZmPSxfcQtFL3RYRFm.jpg', 'image/jpeg', 89061, 'MaPFysKV0QXk3hbZmPSxfcQtFL3RYRFm', '223.206.246.254', 1567311281);
INSERT INTO `file_storage_item` VALUES (131, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/zHLJUpPkf7gZiDPwHxxKNADqaL5pmH-K.jpg', 'image/jpeg', 3268322, 'zHLJUpPkf7gZiDPwHxxKNADqaL5pmH-K', '223.206.246.254', 1567312088);
INSERT INTO `file_storage_item` VALUES (132, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/GDrvrHvuyXHpJ0-I2vqxpcmT6INWhptC.jpg', 'image/jpeg', 450295, 'GDrvrHvuyXHpJ0-I2vqxpcmT6INWhptC', '223.206.246.254', 1567312554);
INSERT INTO `file_storage_item` VALUES (133, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/Csy4kXLHEpRmzQ6kZoi4KMNx0K-azPxY.jpg', 'image/jpeg', 355622, 'Csy4kXLHEpRmzQ6kZoi4KMNx0K-azPxY', '202.29.24.194', 1567668961);
INSERT INTO `file_storage_item` VALUES (134, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/ehjUdIdK1wNJd6ZuZJDWey-qOpeO8Cqg.jpg', 'image/jpeg', 2744090, 'ehjUdIdK1wNJd6ZuZJDWey-qOpeO8Cqg', '49.228.138.50', 1567759996);
INSERT INTO `file_storage_item` VALUES (135, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/JHjIrVnsEgJrhPLe4H3bBUbe93nLIUKf.jpg', 'image/jpeg', 215098, 'JHjIrVnsEgJrhPLe4H3bBUbe93nLIUKf', '182.232.195.145', 1568181095);
INSERT INTO `file_storage_item` VALUES (136, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/7aC2qz0xfa9BpG_cADxnW5an6jnIXdzj.jpg', 'image/jpeg', 41596, '7aC2qz0xfa9BpG_cADxnW5an6jnIXdzj', '182.232.4.4', 1568181103);
INSERT INTO `file_storage_item` VALUES (137, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/p9XQObW5f2PJdnE5muxJySu-m0gPPZFF.jpg', 'image/jpeg', 41596, 'p9XQObW5f2PJdnE5muxJySu-m0gPPZFF', '182.232.4.4', 1568181136);
INSERT INTO `file_storage_item` VALUES (138, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/GJkH1DOx5gVuG3l2VN__fCsnR909jCNx.jpg', 'image/jpeg', 726882, 'GJkH1DOx5gVuG3l2VN__fCsnR909jCNx', '223.24.158.220', 1568181139);
INSERT INTO `file_storage_item` VALUES (139, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/kaoT3OYSfKfdCe9eR_240wKCQkhsYG_W.jpg', 'image/jpeg', 185923, 'kaoT3OYSfKfdCe9eR_240wKCQkhsYG_W', '182.232.45.190', 1568181140);
INSERT INTO `file_storage_item` VALUES (140, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/pKvti6wNsmaMnGLR56ma2FyVGylyGdNl.jpg', 'image/jpeg', 653738, 'pKvti6wNsmaMnGLR56ma2FyVGylyGdNl', '27.55.86.250', 1568181148);
INSERT INTO `file_storage_item` VALUES (141, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/d_c_mwTAvTbtpK5qOo1toYK9KK5idHGL.jpg', 'image/jpeg', 2813073, 'd_c_mwTAvTbtpK5qOo1toYK9KK5idHGL', '49.230.84.133', 1568181151);
INSERT INTO `file_storage_item` VALUES (142, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/dUTgQjaZ8u1LkqDt-uOIMrWBzthUZljW.jpg', 'image/jpeg', 188990, 'dUTgQjaZ8u1LkqDt-uOIMrWBzthUZljW', '182.232.195.145', 1568181184);
INSERT INTO `file_storage_item` VALUES (143, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/ucrv8h99HJS4ajyo5IqZxPhOrIWiY0Ij.jpg', 'image/jpeg', 1956685, 'ucrv8h99HJS4ajyo5IqZxPhOrIWiY0Ij', '182.232.59.19', 1568181193);
INSERT INTO `file_storage_item` VALUES (144, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/DMkfgGTa0y0VwAbtonOlTTM8o1U1WD7F.jpg', 'image/jpeg', 76448, 'DMkfgGTa0y0VwAbtonOlTTM8o1U1WD7F', '182.232.140.250', 1568181251);
INSERT INTO `file_storage_item` VALUES (145, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/jHazmKX6zJ1X81Qi8QtGsYQny6msHLgp.jpg', 'image/jpeg', 155591, 'jHazmKX6zJ1X81Qi8QtGsYQny6msHLgp', '115.87.163.129', 1569311308);
INSERT INTO `file_storage_item` VALUES (146, 'fileStorage', 'http://storage2.bloodcloud.online/source', '1/kCyk98e8F8AdOoasR2Aug0uznXJ9pOGs.jpeg', 'image/jpeg', 210633, 'kCyk98e8F8AdOoasR2Aug0uznXJ9pOGs', '127.0.0.1', 1580009104);
INSERT INTO `file_storage_item` VALUES (147, 'fileStorage', 'http://student1.storage.local/source', '1/T_sPH94RWG0tjH1VT_YWCrdSjx2jtBiO.jpeg', 'image/jpeg', 210633, 'T_sPH94RWG0tjH1VT_YWCrdSjx2jtBiO', '127.0.0.1', 1580009158);
INSERT INTO `file_storage_item` VALUES (149, 'fileStorage', 'http://student1.storage.local/source', '1/FhKdD5NVnoqORIU6VOjh0jieUUuq9qt7.jpeg', 'image/jpeg', 210633, 'FhKdD5NVnoqORIU6VOjh0jieUUuq9qt7', '127.0.0.1', 1580009524);
INSERT INTO `file_storage_item` VALUES (151, 'fileStorage', 'http://student1.storage.local/source', '1/dQ3BBPgGOJ_TSHb2qqi6CDY9QYFnUojx.jpeg', 'image/jpeg', 210633, 'dQ3BBPgGOJ_TSHb2qqi6CDY9QYFnUojx', '127.0.0.1', 1580009599);
INSERT INTO `file_storage_item` VALUES (152, 'fileStorage', 'http://student1.storage.local/source', '1/lBHH74-UvleMiXdpBf3pvT2Ju-y2thRY.jpeg', 'image/jpeg', 210633, 'lBHH74-UvleMiXdpBf3pvT2Ju-y2thRY', '127.0.0.1', 1580009858);
INSERT INTO `file_storage_item` VALUES (153, 'fileStorage', 'http://storage.student1.local/source', '1/cGeR4y1X0o_ocwwN3IRkcvQ6zpYbqofa.jpeg', 'image/jpeg', 210633, 'cGeR4y1X0o_ocwwN3IRkcvQ6zpYbqofa', '127.0.0.1', 1580010125);
COMMIT;

-- ----------------------------
-- Table structure for informations
-- ----------------------------
DROP TABLE IF EXISTS `informations`;
CREATE TABLE `informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ไตเติ้ล',
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รายละเอียด',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รูปขนาดย่อย',
  `rstat` int(1) DEFAULT NULL COMMENT 'สถานะ',
  `create_by` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'สร้างเมื่อ',
  `update_by` bigint(20) DEFAULT NULL COMMENT 'แก้ไขโดย',
  `update_date` datetime DEFAULT NULL COMMENT 'แก้ไขเมื่อ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for lessons
-- ----------------------------
DROP TABLE IF EXISTS `lessons`;
CREATE TABLE `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'บทที่',
  `detail` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เนื้อหา',
  `section` int(1) DEFAULT NULL COMMENT 'ชั้น',
  `create_by` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'สร้างเมื่อ',
  `update_by` bigint(20) DEFAULT NULL COMMENT 'แก้ไขโดย',
  `update_date` datetime DEFAULT NULL COMMENT 'แก้ไขเมื่อ',
  `rstat` int(1) DEFAULT NULL COMMENT 'สถานะ',
  `forder` int(11) DEFAULT NULL COMMENT 'เรียงลำดับ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lessons
-- ----------------------------
BEGIN;
INSERT INTO `lessons` VALUES (17, '1', '<p>211</p>', 2, 1, '2020-01-26 11:05:38', 1, '2020-01-26 11:13:18', 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent` (`parent`) USING BTREE,
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of migration
-- ----------------------------
BEGIN;
INSERT INTO `migration` VALUES ('m000000_000000_base', 1535696053);
INSERT INTO `migration` VALUES ('m140209_132017_init', 1535696058);
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', 1535696059);
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', 1535696063);
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', 1535696064);
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', 1535696065);
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', 1535696065);
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', 1535696065);
INSERT INTO `migration` VALUES ('m141222_135246_alter_username_length', 1535696066);
INSERT INTO `migration` VALUES ('m150614_103145_update_social_account_table', 1535696068);
INSERT INTO `migration` VALUES ('m150623_212711_fix_username_notnull', 1535696068);
INSERT INTO `migration` VALUES ('m151218_234654_add_timezone_to_profile', 1535696069);
INSERT INTO `migration` VALUES ('m160929_103127_add_last_login_at_to_user_table', 1535696069);
INSERT INTO `migration` VALUES ('m140602_111327_create_menu_table', 1535696117);
INSERT INTO `migration` VALUES ('m160312_050000_create_user', 1535696117);
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', 1535696133);
INSERT INTO `migration` VALUES ('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1535696133);
COMMIT;

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Label',
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of options
-- ----------------------------
BEGIN;
INSERT INTO `options` VALUES (1, 'about', '');
INSERT INTO `options` VALUES (2, 'contact', '');
INSERT INTO `options` VALUES (3, 'initial_name_app', 'Application');
INSERT INTO `options` VALUES (4, 'name_app', 'ระบบจัดการแอปพลิเคชันสื่อการเรียนการสอน เรื่อง เทคโนโลยีการสื่อสาร\r\n ระดัยมัธยมศึกษาปีที่ 2 ');
INSERT INTO `options` VALUES (5, 'storageUrl', 'http://storage.student1.local/');
INSERT INTO `options` VALUES (6, 'home', '<p><br></p><p><br></p>');
INSERT INTO `options` VALUES (7, 'footer', '');
INSERT INTO `options` VALUES (9, 'skin', 'skin-blue');
INSERT INTO `options` VALUES (10, 'commandUpdate', '1');
COMMIT;

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_base_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitecode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of profile
-- ----------------------------
BEGIN;
INSERT INTO `profile` VALUES (1, 'nuttaphon chanpan', 'adminservice@gmail.com', 'chanpan.nuttaphon1993@gmail.com', 'd70f6226ff8caba303baede9f0892c0e', 'ผู้ดูเเลระบบ', '', '07/08/1993', NULL, 'Admin', 'Service', '0650859480', '1/cGeR4y1X0o_ocwwN3IRkcvQ6zpYbqofa.jpeg', 'http://storage.student1.local/source', NULL);
INSERT INTO `profile` VALUES (1569494215, 'ไก้ ไข่', '12asd3@1ss3.com', NULL, NULL, NULL, NULL, NULL, NULL, 'ไก้', 'ไข่', '1234567890', NULL, NULL, NULL);
INSERT INTO `profile` VALUES (1569498647, 'asd sdklfj', '12s3@1ss3.com', NULL, NULL, NULL, NULL, NULL, NULL, 'asd', 'sdklfj', '1234567890', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for skin
-- ----------------------------
DROP TABLE IF EXISTS `skin`;
CREATE TABLE `skin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of skin
-- ----------------------------
BEGIN;
INSERT INTO `skin` VALUES (1, 'Blue', 'skin-blue', 1);
INSERT INTO `skin` VALUES (2, 'Black', 'skin-black', NULL);
INSERT INTO `skin` VALUES (3, 'Purple', 'skin-purple', NULL);
INSERT INTO `skin` VALUES (4, 'Green', 'skin-green', NULL);
INSERT INTO `skin` VALUES (5, 'Red', 'skin-red', NULL);
INSERT INTO `skin` VALUES (6, 'Yellow', 'skin-yellow', NULL);
INSERT INTO `skin` VALUES (7, 'Blue Light', 'skin-blue-light', NULL);
INSERT INTO `skin` VALUES (8, 'Black Light', 'skin-black-light', NULL);
INSERT INTO `skin` VALUES (9, 'Purple Light', 'skin-purple-light', NULL);
INSERT INTO `skin` VALUES (10, 'Green Light', 'skin-green-light', NULL);
INSERT INTO `skin` VALUES (11, 'Red Light', 'skin-red-light', NULL);
INSERT INTO `skin` VALUES (12, 'Yellow Light', 'skin-yellow-light', NULL);
COMMIT;

-- ----------------------------
-- Table structure for social_account
-- ----------------------------
DROP TABLE IF EXISTS `social_account`;
CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `account_unique` (`provider`,`client_id`) USING BTREE,
  UNIQUE KEY `account_unique_code` (`code`) USING BTREE,
  KEY `fk_user_account` (`user_id`) USING BTREE,
  CONSTRAINT `social_account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสประจำตัวนักเรียน',
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสผ่าน',
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อนักเรียน',
  `number` int(10) DEFAULT NULL COMMENT 'เลขที่',
  `room` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ห้อง',
  `sex` int(2) DEFAULT NULL COMMENT 'เพศ',
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่',
  `tel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เบอร์โทร',
  `create_by` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'สร้างเมื่อ',
  `update_by` bigint(20) DEFAULT NULL COMMENT 'แก้ไขโดย',
  `update_date` datetime DEFAULT NULL COMMENT 'แก้ไขเมื่อ',
  `rstat` int(1) DEFAULT NULL COMMENT 'สถานะ',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_score` int(10) DEFAULT NULL COMMENT 'คะแนนก่อนเรียน',
  `end_score` int(10) DEFAULT NULL COMMENT 'คะแนนหลังเรียน',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รูปภาพ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('0001000000', '123456', 'test', 1, '2/1', 1, NULL, '1234567890', 1, '2019-10-04 13:02:55', NULL, NULL, 1, 'Dm3P1M_vKMs46yBFFYZo', NULL, NULL, '');
INSERT INTO `student` VALUES ('123789', '000000', 'tom', 100, '987', 2, NULL, '1234567890', 1569559311, '2019-10-02 23:29:14', NULL, '2019-10-02 23:29:43', 1, 'CNpjuYCxFROcJOsApSw5', NULL, NULL, '');
INSERT INTO `student` VALUES ('18201', '123456', '231', 11, '22', 1, NULL, '0613544584', 1, '2019-11-22 00:58:58', NULL, NULL, 4, 'vvr5gbjLfw6HodmuIhXG', 2, 2, '');
INSERT INTO `student` VALUES ('18202', '123456', 'ทดสอบ2', 41, '2/7', 1, NULL, '1234567890', 1, '2019-09-27 11:35:49', NULL, NULL, 4, 'Rlfj-364-DVP4YCZjd43', 2, 2, '');
INSERT INTO `student` VALUES ('18204', '123456', 'ทดสอบ', 60, '2/7', 1, NULL, '1234567890', 1, '2019-10-01 13:09:52', NULL, NULL, 4, 'zRAmPZJTYO7WMqKK5gBD', 5, NULL, '');
INSERT INTO `student` VALUES ('18320', '1234', 'เพชร รักยม', 39, '2/7', 1, NULL, '1234567890', 1, '2019-09-12 15:53:32', 1, '2019-09-12 16:36:21', 1, 'Z2gHtzoa4c1y2zlBmuip', 3, 8, '');
INSERT INTO `student` VALUES ('23253', '123456', 'เวฟ', 40, '2/7', 2, NULL, '1234567890', 1, '2019-09-11 12:42:44', 1, '2019-09-28 22:25:39', 1, 'Sv1972oT-mllUuHYAszl', 4, 4, '');
INSERT INTO `student` VALUES ('23689', '123456', 'ชาญณรงค์ กวนสีลัด', 1, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:27:14', 1, '2019-09-12 11:29:34', 4, 'u_pnVGExWgUdKrr0dWO0', 5, 8, '');
INSERT INTO `student` VALUES ('23692', '123456', 'วัฒนชัย ศิริสวัสดิ์', 2, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:27:49', 1, '2019-09-12 11:29:38', 4, 'MHKFP5yQIAkoa1tJeJJL', 6, 8, '');
INSERT INTO `student` VALUES ('23703', '123456', 'จุฑารัตน์ สว่าง', 19, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:37:03', 1, '2019-09-12 11:29:41', 4, 'EaDQkOWAEGIMMaD9CUmY', 6, 9, '');
INSERT INTO `student` VALUES ('23706', '123456', 'จันทร์ธิดา. ขันวัง', 20, '2/7', 2, NULL, '0800518512', 1, '2019-09-10 16:37:31', NULL, '2019-09-11 12:53:06', 4, 'mdPfjYezAjf51glD5muA', 2, 6, '{\"path\":\"1/dUTgQjaZ8u1LkqDt-uOIMrWBzthUZljW.jpg\",\"name\":\"1566787842197.jpg\",\"size\":\"188990\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}');
INSERT INTO `student` VALUES ('23714', '123456', 'ปิยะดา ไชยสงคราม', 21, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:38:42', 1, '2019-09-12 11:29:46', 1, 'hc-1AQ9zm0EuRlreCZly', 5, 5, '');
INSERT INTO `student` VALUES ('23723', '123456', 'สุกฤตา เอ็ฟวา', 22, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:39:07', 1, '2019-09-12 11:29:49', 4, 'bftd3kCXdls8YZ0MAGlD', 3, 7, '');
INSERT INTO `student` VALUES ('23805', '123456', 'กษิดิส จันทระ', 3, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:28:28', 1, '2019-09-12 11:29:52', 4, 'dKhCB2vz23lyuhWEqBWm', 2, 6, '');
INSERT INTO `student` VALUES ('23807', '123456', 'ณัฐภูมิ  ปัดนา', 4, '2/7', 1, NULL, '0931923463', 1, '2019-09-10 16:29:08', NULL, '2019-09-11 12:52:29', 4, 'HNTu2pjdprRgLHL-ZSpl', 5, 9, '');
INSERT INTO `student` VALUES ('23808', '123456', 'ชิตพล พรมภา', 5, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:29:34', 1, '2019-09-12 11:29:55', 4, 'th4Ux8QT9bK_3I0LoEFe', 3, 9, '');
INSERT INTO `student` VALUES ('23809', '123456', 'ชินวัตร ปัดนา', 6, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:30:04', 1, '2019-09-12 11:29:57', 4, '6UTKQrRwt-xamqPOq8BL', 2, 7, '');
INSERT INTO `student` VALUES ('23810', '123456', 'นนท์ปวิช สุขศิริ', 7, '2/7', 1, NULL, '0801270685', 1, '2019-09-10 16:30:34', NULL, '2019-09-11 13:00:33', 4, 'URoClJzFzbwR3gyVIMkv', 7, 0, '');
INSERT INTO `student` VALUES ('23812', '123456', 'ภควัต  ไชยเพชร', 9, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:31:38', NULL, '2019-09-11 12:52:12', 4, 'ulwsDEBU-RUu_LorcQqp', 3, 1, '');
INSERT INTO `student` VALUES ('23813', '123456', 'รชานนท์ สำรองพันธ์', 10, '2/7', 1, NULL, '0651233788', 1, '2019-09-10 16:32:15', NULL, '2019-09-11 12:51:52', 4, 'RW01fyEF6mjxI8KwoX-3', 3, 4, '');
INSERT INTO `student` VALUES ('23814', '123456', 'วรภัทร มะสุใส', 11, '2/7', 1, NULL, '0955247269', 1, '2019-09-10 16:32:37', NULL, '2019-09-11 12:52:38', 4, 'dMgOX9RxIcQyoHxaj9Lt', 5, 5, '{\"path\":\"1/pKvti6wNsmaMnGLR56ma2FyVGylyGdNl.jpg\",\"name\":\"Screenshot_25620909_110309.jpg\",\"size\":\"653738\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}');
INSERT INTO `student` VALUES ('23815', '123456', 'มงคล โพธิ์วัด', 12, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:33:03', 1, '2019-09-12 11:30:00', 4, 'xjl3x5k2lz4eYi_eeHnN', 4, 8, '');
INSERT INTO `student` VALUES ('23816', '123456', 'รัฐพลี ลดาดก', 13, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:33:39', 1, '2019-09-12 11:30:04', 4, 'DGuEWbMF0RRhFq62sZbb', 7, 8, '');
INSERT INTO `student` VALUES ('23817', '123456', 'กรเพชร มุงชุม', 14, '2/7', 1, NULL, '0653214552', 1, '2019-09-10 16:34:07', 1, '2019-09-12 11:28:46', 1, '69HK4Y6uc2HQ2jRsoC3O', 1, 1, '');
INSERT INTO `student` VALUES ('23818', '123456', 'อนุชา พั้วพา', 15, '2/7', 1, NULL, '0933630967', 1, '2019-09-10 16:34:40', NULL, '2019-09-11 12:54:21', 4, 'XGhJHscNwFGMfP6HtIv7', 4, 3, '');
INSERT INTO `student` VALUES ('23819', '123456', 'ศุภณัฐ พรหมลัง', 16, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:35:04', 1, '2019-09-12 11:30:07', 4, '0DbHJ6CFNgXexOTwtGnx', 4, 7, '');
INSERT INTO `student` VALUES ('23820', '123456', 'สุริยะชัย ไชยทองศรี', 17, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:35:38', 1, '2019-09-12 11:30:09', 4, 'Gi3pvyq7JhhjCUUlM8lS', 5, 9, '');
INSERT INTO `student` VALUES ('23821', '123456', 'จีรานัน เกดา', 23, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:40:30', 1, '2019-09-12 11:30:11', 4, 'lpqI91X633KkPbnRsNPh', 3, 5, '');
INSERT INTO `student` VALUES ('23822', '123456', 'จุฬาลักษณ์ วะลัยสุข', 24, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:40:58', 1, '2019-09-12 11:30:14', 4, 'ZtccBAPFv3rUCBWrfcjs', 2, 7, '');
INSERT INTO `student` VALUES ('23823', '123456', 'ชุติกาญจน์ ดีล้น', 25, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:41:25', 1, '2019-09-12 11:30:17', 4, 'X72bV5L-z64LS7lxNZwP', 2, 8, '');
INSERT INTO `student` VALUES ('23824', '123456', 'ธันยพร กองวงค์', 26, '2/7', 2, NULL, '0925044118', 1, '2019-09-10 16:41:57', NULL, '2019-09-11 12:51:48', 4, 'FK3gEk9EPopnDoPnJhKg', 5, 5, '{\"path\":\"1/7aC2qz0xfa9BpG_cADxnW5an6jnIXdzj.jpg\",\"name\":\"FB_IMG_1567465372139.jpg\",\"size\":\"41596\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}');
INSERT INTO `student` VALUES ('23825', '123456', 'ธูปทอง ราชเมือง', 27, '2/7', 2, NULL, '0801672417', 1, '2019-09-10 16:43:00', NULL, '2019-09-11 12:54:19', 4, 'v9e_UocdwktiVGLjF2Hq', 3, 9, '{\"path\":\"1/DMkfgGTa0y0VwAbtonOlTTM8o1U1WD7F.jpg\",\"name\":\"IMG_20190909_205245_237.jpg\",\"size\":\"76448\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}');
INSERT INTO `student` VALUES ('23826', '123456', 'ณัฐกฤตา สุทธสิงห์', 28, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:43:22', 1, '2019-09-12 11:30:20', 4, 'Yef_6V29khT-WZ4VvkVt', 4, 8, '');
INSERT INTO `student` VALUES ('23828', '123456', 'นภารัตน์ พรหมบน', 29, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:44:27', 1, '2019-09-12 11:30:23', 4, '8aUU6u77XYskzF2SvjH2', 5, 8, '');
INSERT INTO `student` VALUES ('23829', '123456', 'นันท์ชนก กาญจนบำรุงสกุล', 30, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:45:08', 1, '2019-09-12 11:30:27', 4, 'vkb_uJoSyzQQlhpVJHKU', 3, 6, '');
INSERT INTO `student` VALUES ('23830', '123456', 'ภัทรธิดา ลุนลาน', 31, '2/7', 2, NULL, '0930807925', 1, '2019-09-10 16:45:35', NULL, '2019-09-11 12:53:20', 4, 'sjZV4IaV0jAncJCEio6_', 4, 4, '{\"path\":\"1/kaoT3OYSfKfdCe9eR_240wKCQkhsYG_W.jpg\",\"name\":\"IMG_25620829_090025.JPG\",\"size\":\"185923\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}');
INSERT INTO `student` VALUES ('23831', '123456', 'ภนิดา ขุนวงษา', 32, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:48:09', 1, '2019-09-12 11:30:30', 4, 'DjFocTsVUzs86VTH3J9m', 2, 7, '');
INSERT INTO `student` VALUES ('23833', '123456', 'สิฐิตา บุญโยประการ', 34, '2/7', 2, NULL, '0842131790', 1, '2019-09-10 16:48:48', NULL, '2019-09-11 12:52:30', 4, 'scDIrxiCRQDvDYJJVHnd', 4, 5, '{\"path\":\"1/GJkH1DOx5gVuG3l2VN__fCsnR909jCNx.jpg\",\"name\":\"PicsArt_09-06-06.18.50.jpg\",\"size\":\"726882\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}');
INSERT INTO `student` VALUES ('23836', '123456', 'ศิริลักษณ์ กองเกิด', 36, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:49:55', 1, '2019-09-12 11:30:33', 4, 'xQUan9bRg_a9DDa_iuRq', 0, 8, '');
INSERT INTO `student` VALUES ('23838', '123456', 'สุดารัตน์ ถิตประเดิม', 37, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:51:06', 1, '2019-09-12 11:29:08', 4, '5bBncM-7_9E3SvMWjW34', 2, 7, '');
INSERT INTO `student` VALUES ('23849', '123456', 'พีรพัฒน์ บุตรวงค์', 8, '2/7', 1, NULL, '0000000000', 1, '2019-09-10 16:31:09', 1, '2019-09-12 11:29:16', 4, 'elLovBnZWor9wwWE3HIV', 3, 9, '');
INSERT INTO `student` VALUES ('23876', '123456', 'ขิม', 33, '2/7', 2, NULL, '0614474120', 1, '2019-09-10 16:48:30', NULL, '2019-09-11 12:57:35', 4, 'VCMkbvKZf2avpjqRtiu9', 4, 9, '');
INSERT INTO `student` VALUES ('23879', '123456', 'อรัญญา แก่นนาดี', 35, '2/7', 2, NULL, '0000000000', 1, '2019-09-10 16:49:10', NULL, '2019-09-11 12:51:19', 4, 'q_olcV9EGQFMi11dw6k5', 4, 6, '');
INSERT INTO `student` VALUES ('24198', '123456', 'พีช', 18, '1', 1, NULL, '1234567890', 1, '2019-09-11 12:56:42', NULL, NULL, 4, 'qGG5XOqTkA0WAC-9ZvfA', 7, 8, '');
INSERT INTO `student` VALUES ('chanpan', '123456', 'จรินพร แสงจำปี', 51, '2/7', 1, NULL, '0953046095', 1, '2019-09-28 22:40:07', NULL, NULL, 1, 'DwSdfRh1d2pdfq2YuMDO', NULL, NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for systemlog
-- ----------------------------
DROP TABLE IF EXISTS `systemlog`;
CREATE TABLE `systemlog` (
  `id` bigint(20) NOT NULL,
  `logname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logtype` int(1) DEFAULT NULL,
  `logdetail` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `rstat` int(1) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of systemlog
-- ----------------------------
BEGIN;
INSERT INTO `systemlog` VALUES (1564719033000895400, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัวของ คุณ: 1:nuttaphon chanpan', 1, 1, '2019-08-02 11:10:33', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564719034071703300, 'Logout', 1, 'Logout โดย 1:nuttaphon chanpan', 1, 1, '2019-08-02 11:10:34', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564719036011944900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login', 1, NULL, '2019-08-02 11:10:36', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564719038018547600, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan', 1, 1, '2019-08-02 11:10:38', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564719040075916800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัวของ คุณ: 1:nuttaphon chanpan', 1, 1, '2019-08-02 11:10:40', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564719167015849000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัวของ คุณ: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 11:12:47', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564719352076675800, 'Account', 1, 'ดูหน้า Account 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 11:15:52', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564719353067676000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัวของ คุณ: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 11:15:53', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729048047155900, 'User', 1, 'ดูหน้า User 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 13:57:28', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729105036396800, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 13:58:25', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729267086991400, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:01:07', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729271035706800, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:01:11', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729271071765200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:01:11', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729280033230700, 'Account', 1, 'ดูหน้า Account โดย:1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:01:20', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729305071158000, 'Edit Account', 1, 'แก้ไข Account โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:01:45', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729305095707900, 'Account', 1, 'ดูหน้า Account โดย:1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:01:45', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729323090061700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:02:03', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729331093579000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:02:11', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729337093546700, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:02:17', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729520043868500, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"image\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:05:20', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729562046758200, 'User', 1, 'เปิดฟอร์มแก้ไข User  โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:06:02', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729573011112600, 'User', 1, 'เปิดฟอร์มแก้ไข User  โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:06:13', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729582052873200, 'User', 1, 'เปิดฟอร์มแก้ไข User  โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:06:22', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564729716051496100, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"id\":3,\"username\":\"user2\",\"email\":\"user2@gmail.com\",\"password_hash\":\"$2y$12$DTf.7SbmW8wmbdDBfB70deB6jIFRZrdU094K/VDUOF0d8Td2C0lRe\",\"auth_key\":\"_-aO2DARP_wh1gyK_XsE-DASfU5KkWDn\",\"confirmed_at\":1562228852,\"unconfirmed_email\":null,\"blocked_at\":null,\"registration_ip\":\"::1\",\"created_at\":1562228852,\"updated_at\":1562228852,\"flags\":0,\"last_login_at\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:08:36', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564730030030316700, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:13:50', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564730215021973600, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:16:55', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564730220098354100, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:17:00', NULL, NULL, NULL);
INSERT INTO `systemlog` VALUES (1564730321022949500, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:18:41', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564730334082916100, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:18:54', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564730438074188000, 'User', 1, 'แก้ไข User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:20:38', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564730439002877500, 'User', 1, 'แก้ไข User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:20:39', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564730439034033300, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:20:39', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564730480094064600, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:21:20', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564730483017673000, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"-jpKWKxr6C4OUdCJYfA1Qz35YH7VQeoivMxomvNkPQDLbDsi4wSxeD80hPskk1gzVKwrJJEQ3k3XhCDRoztqNQ==\",\"Profile\":{\"firstname\":\"user2\",\"lastname\":\"user2\",\"public_email\":\"user2@gmail.com\",\"tel\":\" \",\"bio\":\"\",\"image\":\"\"},\"ajax\":\"Profile\"} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:21:23', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564730483046994300, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"-jpKWKxr6C4OUdCJYfA1Qz35YH7VQeoivMxomvNkPQDLbDsi4wSxeD80hPskk1gzVKwrJJEQ3k3XhCDRoztqNQ==\",\"Profile\":{\"firstname\":\"user2\",\"lastname\":\"user2\",\"public_email\":\"user2@gmail.com\",\"tel\":\" \",\"bio\":\"\",\"image\":\"\"}} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:21:23', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564730483079516400, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:21:23', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564731286087225800, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:34:46', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564731347033909000, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:35:47', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564731453038777600, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:37:33', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564731456013666500, 'User', 1, 'ลบ User {\"user_id\":2,\"name\":null,\"public_email\":\"user@gmail.com\",\"gravatar_email\":\"user@gmail.com\",\"gravatar_id\":\"cba1f2d695a5ca39ee6f343297a761a4\",\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":null,\"lastname\":null,\"tel\":null,\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:37:36', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564731456044630500, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-02 14:37:36', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564844653059948800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-03 22:04:13', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564845260038033200, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan IP: ::1', 1, 1, '2019-08-03 22:14:20', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564845401091463800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-03 22:16:41', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564927769086978300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-04 21:09:29', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564927784089714900, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan IP: ::1', 1, 1, '2019-08-04 21:09:44', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564933129044579600, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-04 22:38:49', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564983095062354600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-05 12:31:35', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564983105062252900, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan IP: ::1', 1, 1, '2019-08-05 12:31:45', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1564983974053745900, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-05 12:46:14', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1566071010032819700, 'Logout', 1, 'Logout โดย 1:nuttaphon chanpan IP: ::1', 1, 1, '2019-08-18 02:43:30', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1566071019057760500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-18 02:43:39', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1566071024018653300, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan IP: ::1', 1, 1, '2019-08-18 02:43:44', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1566704968030379900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-25 10:49:28', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1566704972078872700, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan IP: ::1', 1, 1, '2019-08-25 10:49:32', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567195099057370600, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 02:58:19', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567246785083170300, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 17:19:45', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567246791076663400, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 17:19:51', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567246825001512200, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 17:20:25', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567246828024818300, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 17:20:28', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567246853069766900, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 17:20:53', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567247492081363800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 17:31:32', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567248961098200300, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 17:56:01', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567250264077531300, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:17:44', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567250328039473300, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:18:48', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567250354061713200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:19:14', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567250826031796200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:27:06', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567250849044827800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:27:29', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251293016495000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:34:53', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251299069956200, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:34:59', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251299095056900, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:34:59', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251316097723500, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:35:16', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251319003604200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:35:19', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251356064586800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:35:56', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251607021270800, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:40:07', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251607041196700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:40:07', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567251645073452600, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:::1', 1, 1, '2019-08-31 18:40:45', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567256947063039400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-31 20:09:07', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567257084085641100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-31 20:11:24', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567257090040945700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-31 20:11:30', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567257100042712200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: ::1', 1, NULL, '2019-08-31 20:11:40', NULL, NULL, '::1');
INSERT INTO `systemlog` VALUES (1567263118016447000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.246.254', 1, NULL, '2019-08-31 21:51:58', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567263122084680400, 'Login', 1, 'Login โดย: 1:  IP: 223.206.246.254', 1, 1, '2019-08-31 21:52:02', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567263981008125700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:223.206.246.254', 1, 1, '2019-08-31 22:06:21', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567263987095367200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:223.206.246.254', 1, 1, '2019-08-31 22:06:27', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567264449007449000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:223.206.246.254', 1, 1, '2019-08-31 22:14:09', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567264677088374900, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:223.206.246.254', 1, 1, '2019-08-31 22:17:57', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567264678015141000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:223.206.246.254', 1, 1, '2019-08-31 22:17:58', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567264700057605700, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:223.206.246.254', 1, 1, '2019-08-31 22:18:20', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567265075038176200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-08-31 22:24:35', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567265076017323900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 173.252.83.10', 1, NULL, '2019-08-31 22:24:36', NULL, NULL, '173.252.83.10');
INSERT INTO `systemlog` VALUES (1567265077014342700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 173.252.83.1', 1, NULL, '2019-08-31 22:24:37', NULL, NULL, '173.252.83.1');
INSERT INTO `systemlog` VALUES (1567265078052813000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 69.171.251.11', 1, NULL, '2019-08-31 22:24:38', NULL, NULL, '69.171.251.11');
INSERT INTO `systemlog` VALUES (1567265226071438200, 'Logout', 1, 'Logout โดย 1:nuttaphon chanpan IP: 223.206.246.254', 1, 1, '2019-08-31 22:27:06', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567265228081654400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.246.254', 1, NULL, '2019-08-31 22:27:08', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567265233043779000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-08-31 22:27:13', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567265257020382900, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan IP: 115.87.129.13', 1, 1, '2019-08-31 22:27:37', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567265264083260000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.246.254', 1, NULL, '2019-08-31 22:27:44', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567265286062135500, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 22:28:06', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567265325058582200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 22:28:45', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567265347038654200, 'Account', 1, 'ดูหน้า Account โดย:1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 22:29:07', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567265381040817900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 69.171.251.37', 1, NULL, '2019-08-31 22:29:41', NULL, NULL, '69.171.251.37');
INSERT INTO `systemlog` VALUES (1567265404099146100, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 22:30:04', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567265440094940200, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 22:30:40', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567266017042411800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.246.254', 1, NULL, '2019-08-31 22:40:17', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567266020007550200, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan IP: 223.206.246.254', 1, 1, '2019-08-31 22:40:20', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567266155037079300, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:223.206.246.254', 1, 1, '2019-08-31 22:42:35', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567268240064983700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-08-31 23:17:20', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268249021952100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 173.252.83.15', 1, NULL, '2019-08-31 23:17:29', NULL, NULL, '173.252.83.15');
INSERT INTO `systemlog` VALUES (1567268251085269300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 69.171.251.9', 1, NULL, '2019-08-31 23:17:31', NULL, NULL, '69.171.251.9');
INSERT INTO `systemlog` VALUES (1567268251099208700, 'Login', 1, 'Login โดย: 1:nuttaphon chanpan IP: 115.87.129.13', 1, 1, '2019-08-31 23:17:31', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268254081397300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 69.171.251.43', 1, NULL, '2019-08-31 23:17:34', NULL, NULL, '69.171.251.43');
INSERT INTO `systemlog` VALUES (1567268317064075500, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 23:18:37', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268319062246000, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 23:18:39', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268577085286900, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 23:22:57', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268584081631100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 69.171.251.3', 1, NULL, '2019-08-31 23:23:04', NULL, NULL, '69.171.251.3');
INSERT INTO `systemlog` VALUES (1567268696083583800, 'User', 1, 'ดูหน้า User โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 23:24:56', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268703049540300, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"\",\"website\":\"\",\"bio\":\"07/08/1993\",\"timezone\":null,\"firstname\":\"nuttaphon\",\"lastname\":\"chanpan\",\"tel\":\"0650859480\",\"avatar_path\":\"1/r4Mh0fGwPwbo0yio0cGchLvvw4z39czQ.png\",\"avatar_base_url\":\"http://storage2.bloodcloud.online/source\",\"sitecode\":null} โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:03', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268720099275700, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"3BLSZNY4JZWvSvlSOqHqOsz-MxFSiYJEpmb12sZRDJbkU4MVtEFzo594sjdK8a58vKFpYw3CtXfJF5SZvAdW3Q==\",\"Profile\":{\"firstname\":\"nuttaphon\",\"lastname\":\"chanpan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"0650859480\",\"bio\":\"07/08/1993\",\"image\":{\"path\":\"1/r4Mh0fGwPwbo0yio0cGchLvvw4z39czQ.png\",\"name\":\"\",\"size\":\"39728\",\"type\":\"image/png\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:20', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268723032487300, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"3BLSZNY4JZWvSvlSOqHqOsz-MxFSiYJEpmb12sZRDJbkU4MVtEFzo594sjdK8a58vKFpYw3CtXfJF5SZvAdW3Q==\",\"Profile\":{\"firstname\":\"theerayut\",\"lastname\":\"chanpan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"0650859480\",\"bio\":\"07/08/1993\",\"image\":{\"path\":\"1/r4Mh0fGwPwbo0yio0cGchLvvw4z39czQ.png\",\"name\":\"\",\"size\":\"39728\",\"type\":\"image/png\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1:nuttaphon chanpan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:23', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268725026913300, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"3BLSZNY4JZWvSvlSOqHqOsz-MxFSiYJEpmb12sZRDJbkU4MVtEFzo594sjdK8a58vKFpYw3CtXfJF5SZvAdW3Q==\",\"Profile\":{\"firstname\":\"theerayut\",\"lastname\":\"kampan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"0650859480\",\"bio\":\"07/08/1993\",\"image\":{\"path\":\"1/r4Mh0fGwPwbo0yio0cGchLvvw4z39czQ.png\",\"name\":\"\",\"size\":\"39728\",\"type\":\"image/png\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1:theerayut chanpan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:25', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268726098456800, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"3BLSZNY4JZWvSvlSOqHqOsz-MxFSiYJEpmb12sZRDJbkU4MVtEFzo594sjdK8a58vKFpYw3CtXfJF5SZvAdW3Q==\",\"Profile\":{\"firstname\":\"theerayut\",\"lastname\":\"kampan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"061354584_\",\"bio\":\"07/08/1993\",\"image\":{\"path\":\"1/r4Mh0fGwPwbo0yio0cGchLvvw4z39czQ.png\",\"name\":\"\",\"size\":\"39728\",\"type\":\"image/png\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:26', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268729096340300, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"3BLSZNY4JZWvSvlSOqHqOsz-MxFSiYJEpmb12sZRDJbkU4MVtEFzo594sjdK8a58vKFpYw3CtXfJF5SZvAdW3Q==\",\"Profile\":{\"firstname\":\"theerayut\",\"lastname\":\"kampan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"061354584_\",\"bio\":\"07/08/1996\",\"image\":{\"path\":\"1/r4Mh0fGwPwbo0yio0cGchLvvw4z39czQ.png\",\"name\":\"\",\"size\":\"39728\",\"type\":\"image/png\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:29', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268730008116400, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"3BLSZNY4JZWvSvlSOqHqOsz-MxFSiYJEpmb12sZRDJbkU4MVtEFzo594sjdK8a58vKFpYw3CtXfJF5SZvAdW3Q==\",\"Profile\":{\"firstname\":\"theerayut\",\"lastname\":\"kampan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"061354584_\",\"bio\":\"07/08/1996\",\"image\":{\"path\":\"1/r4Mh0fGwPwbo0yio0cGchLvvw4z39czQ.png\",\"name\":\"\",\"size\":\"39728\",\"type\":\"image/png\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}}} โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:30', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268730018273400, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:30', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268732030390200, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"\",\"website\":\"\",\"bio\":\"07/08/1996\",\"timezone\":null,\"firstname\":\"theerayut\",\"lastname\":\"kampan\",\"tel\":\"061354584_\",\"avatar_path\":\"1/r4Mh0fGwPwbo0yio0cGchLvvw4z39czQ.png\",\"avatar_base_url\":\"http://storage2.bloodcloud.online/source\",\"sitecode\":null} โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:32', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268736053873300, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:36', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268738015753400, 'Account', 1, 'ดูหน้า Account โดย:1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:25:38', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268797095056100, 'Edit Account', 1, 'แก้ไข Account โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:26:37', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268798003242100, 'Account', 1, 'ดูหน้า Account โดย:1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:26:38', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268800076303600, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-08-31 23:26:40', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268802052100000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-08-31 23:26:42', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567268806058978400, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-08-31 23:26:46', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269248064944000, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-08-31 23:34:08', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269286042503400, 'Logout', 1, 'Logout โดย 4:วิท วิท IP: 115.87.129.13', 1, 4, '2019-08-31 23:34:46', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269288018964300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-08-31 23:34:48', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269291098533900, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-08-31 23:34:51', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269293096921900, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:34:53', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269317072238300, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-08-31 23:35:17', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269319019641400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-08-31 23:35:19', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269323063972900, 'Login', 1, 'Login โดย: 4:วิท วิท IP: 115.87.129.13', 1, 4, '2019-08-31 23:35:23', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269723037138100, 'Logout', 1, 'Logout โดย 4:วิท วิท IP: 115.87.129.13', 1, 4, '2019-08-31 23:42:03', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269808079955900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-08-31 23:43:28', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269818057230700, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-08-31 23:43:38', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269877063191500, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:44:37', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567269881049018300, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":4,\"name\":\"วิท วิท\",\"public_email\":\"theerayut@gmail.com\",\"gravatar_email\":\"theerayut@gmail.com\",\"gravatar_id\":\"2826fb5a73bb9f129c078c9a8d5b5973\",\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"วิท\",\"lastname\":\"วิท\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-08-31 23:44:41', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567270650074955000, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-08-31 23:57:30', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567270658042914700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-08-31 23:57:38', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567270663067691900, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-08-31 23:57:43', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567285352035904800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-09-01 04:02:32', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567285370080479000, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-09-01 04:02:50', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567285578052754400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.246.254', 1, NULL, '2019-09-01 04:06:18', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567285596057639800, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 223.206.246.254', 1, 1, '2019-09-01 04:06:36', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567285763028017800, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 04:09:23', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567287454049163000, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-09-01 04:37:34', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567287689098305500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-09-01 04:41:29', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567287710012844800, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-09-01 04:41:50', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567288073066494900, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 04:47:53', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567288075077615200, 'Account', 1, 'ดูหน้า Account โดย:1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 04:47:55', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567288765005485400, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 04:59:25', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567288771096732600, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 04:59:31', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567288776034823500, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 04:59:36', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290056078125100, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:20:56', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290069074427400, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:21:09', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290069082476700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:21:09', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290079081986500, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:21:19', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290079090822700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:21:19', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290082091804900, 'Account', 1, 'ดูหน้า Account โดย:1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:21:22', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290086098298800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:21:26', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290088096198000, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:21:28', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290251048480100, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-09-01 05:24:11', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290253063283700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-09-01 05:24:13', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290260026549600, 'Login', 1, 'Login โดย: 4:วิท วิท IP: 115.87.129.13', 1, 4, '2019-09-01 05:24:20', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290789037452200, 'Logout', 1, 'Logout โดย 4:วิท วิท IP: 115.87.129.13', 1, 4, '2019-09-01 05:33:09', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290792029870200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-09-01 05:33:12', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290796039900000, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-09-01 05:33:16', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290831054553800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:33:51', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290837090286500, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:33:57', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290847067363700, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 05:34:07', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290853078230900, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-09-01 05:34:13', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290855031483200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-09-01 05:34:15', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290858081684800, 'Login', 1, 'Login โดย: 4:วิท วิท IP: 115.87.129.13', 1, 4, '2019-09-01 05:34:18', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290923043230000, 'Logout', 1, 'Logout โดย 4:วิท วิท IP: 115.87.129.13', 1, 4, '2019-09-01 05:35:23', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290924082479700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-09-01 05:35:24', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567290933020467400, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-09-01 05:35:33', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567291714060197600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, 1, '2019-09-01 05:48:34', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567307694051654600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.246.254', 1, NULL, '2019-09-01 10:14:54', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567307710028921300, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 223.206.246.254', 1, 1, '2019-09-01 10:15:10', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567309177030169500, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:223.206.246.254', 1, 1, '2019-09-01 10:39:37', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567311261007281100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.246.254', 1, NULL, '2019-09-01 11:14:21', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567311264029241700, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 223.206.246.254', 1, 1, '2019-09-01 11:14:24', NULL, NULL, '223.206.246.254');
INSERT INTO `systemlog` VALUES (1567321681094973400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.13', 1, NULL, '2019-09-01 14:08:01', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567321695058924800, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.13', 1, 1, '2019-09-01 14:08:15', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567322039094157600, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 14:13:59', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567322758060845900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 118.175.45.6', 1, NULL, '2019-09-01 14:25:58', NULL, NULL, '118.175.45.6');
INSERT INTO `systemlog` VALUES (1567322782048490200, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 14:26:22', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567322785068122000, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":4,\"name\":\"วิท วิท\",\"public_email\":\"theerayut@gmail.com\",\"gravatar_email\":\"theerayut@gmail.com\",\"gravatar_id\":\"2826fb5a73bb9f129c078c9a8d5b5973\",\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"วิท\",\"lastname\":\"วิท\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 14:26:25', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567322791091208600, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"mHyzFGymoFOHVgEh6B24uegltnaSeJGQHP0-C8mRmYHBFdtCGM7qNeMcNG-tSfCUq02POeQU1Psrk18-sdfD8g==\",\"Profile\":{\"firstname\":\"วิท\",\"lastname\":\"วิท00\",\"public_email\":\"theerayut@gmail.com\",\"tel\":\"\",\"bio\":\"\",\"image\":\"\"},\"ajax\":\"Profile\"} โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 14:26:31', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567322792006902300, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"mHyzFGymoFOHVgEh6B24uegltnaSeJGQHP0-C8mRmYHBFdtCGM7qNeMcNG-tSfCUq02POeQU1Psrk18-sdfD8g==\",\"Profile\":{\"firstname\":\"วิท\",\"lastname\":\"วิท00\",\"public_email\":\"theerayut@gmail.com\",\"tel\":\"\",\"bio\":\"\",\"image\":\"\"}} โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 14:26:32', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567322792025638500, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.13', 1, 1, '2019-09-01 14:26:32', NULL, NULL, '115.87.129.13');
INSERT INTO `systemlog` VALUES (1567341132060322200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.175', 1, NULL, '2019-09-01 19:32:12', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567341138017843100, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.162.175', 1, 1, '2019-09-01 19:32:18', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567344956038266800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.175', 1, NULL, '2019-09-01 20:35:56', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567345012063674300, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.162.175', 1, 1, '2019-09-01 20:36:52', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567345012077973100, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.162.175', 1, 1, '2019-09-01 20:36:52', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567347352069799200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.175', 1, NULL, '2019-09-01 21:15:52', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567347358050808700, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.162.175', 1, 1, '2019-09-01 21:15:58', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567348111068870700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.175', 1, 1, '2019-09-01 21:28:31', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567351164097659900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.175', 1, NULL, '2019-09-01 22:19:24', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567351170083219100, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.162.175', 1, 1, '2019-09-01 22:19:30', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567351269094683000, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.162.175', 1, 1, '2019-09-01 22:21:09', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567389946092266600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-02 09:05:46', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567389959042048900, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 202.29.24.195', 1, 1, '2019-09-02 09:05:59', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567389969029978500, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:202.29.24.195', 1, 1, '2019-09-02 09:06:09', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567389988055138000, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 202.29.24.195', 1, 1, '2019-09-02 09:06:28', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567431875098521700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.175', 1, NULL, '2019-09-02 20:44:35', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567431882033869700, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.162.175', 1, 1, '2019-09-02 20:44:42', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567433699036761600, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.162.175', 1, 1, '2019-09-02 21:14:59', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567491224051754500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-03 13:13:44', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567491234021785200, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 202.29.24.195', 1, 1, '2019-09-03 13:13:54', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567521302080399800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.175', 1, NULL, '2019-09-03 21:35:02', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567521307034292200, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.162.175', 1, 1, '2019-09-03 21:35:07', NULL, NULL, '115.87.162.175');
INSERT INTO `systemlog` VALUES (1567579131091978100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-09-04 13:38:51', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1567579149032280800, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 202.29.24.198', 1, 1, '2019-09-04 13:39:09', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1567590043029378100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-04 16:40:43', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567590044087316300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-04 16:40:44', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567590048085621900, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.86', 1, 1, '2019-09-04 16:40:48', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567593464064902400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-04 17:37:44', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567593469020024200, 'Login', 1, 'Login โดย: 4:วิท วิท00 IP: 115.87.129.86', 1, 4, '2019-09-04 17:37:49', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567593475048116600, 'Logout', 1, 'Logout โดย 4:วิท วิท00 IP: 115.87.129.86', 1, 4, '2019-09-04 17:37:55', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567596086067030200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-04 18:21:26', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567596093078925500, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.86', 1, 1, '2019-09-04 18:21:33', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567607527033735600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-04 21:32:07', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567607534047295000, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.86', 1, 1, '2019-09-04 21:32:14', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567666480036611700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.194', 1, NULL, '2019-09-05 13:54:40', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567666492006530200, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 202.29.24.194', 1, 1, '2019-09-05 13:54:52', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567666576034257200, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 202.29.24.194', 1, 1, '2019-09-05 13:56:16', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567666721037623400, 'Logout', 1, 'Logout โดย 5:Ooo Ooo IP: 202.29.24.194', 1, 5, '2019-09-05 13:58:41', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567666726083004300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.194', 1, NULL, '2019-09-05 13:58:46', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567666736075598900, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 202.29.24.194', 1, 1, '2019-09-05 13:58:56', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567666928047350400, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:202.29.24.194', 1, 1, '2019-09-05 14:02:08', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567666935073618800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.194', 1, 1, '2019-09-05 14:02:15', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567667032005243400, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:202.29.24.194', 1, 1, '2019-09-05 14:03:52', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567667118039538300, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:202.29.24.194', 1, 1, '2019-09-05 14:05:18', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567667137074662000, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:202.29.24.194', 1, 1, '2019-09-05 14:05:37', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567667231026471900, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:202.29.24.194', 1, 1, '2019-09-05 14:07:11', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567669264088472300, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:202.29.24.194', 1, 1, '2019-09-05 14:41:04', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1567670257031096100, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 202.29.24.195', 1, 1, '2019-09-05 14:57:37', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567670319093327000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-05 14:58:39', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567670338070491900, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 202.29.24.195', 1, 1, '2019-09-05 14:58:58', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567670342094058200, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:202.29.24.195', 1, 1, '2019-09-05 14:59:02', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567675974085884200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-05 16:32:54', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567675980045712700, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.86', 1, 1, '2019-09-05 16:33:00', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567676197001817600, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:36:37', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567676533096436300, 'User', 1, 'ลบ User {\"user_id\":4,\"name\":\"วิท วิท\",\"public_email\":\"theerayut@gmail.com\",\"gravatar_email\":\"theerayut@gmail.com\",\"gravatar_id\":\"2826fb5a73bb9f129c078c9a8d5b5973\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"วิท\",\"lastname\":\"วิท00\",\"tel\":\"\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:42:13', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567676534016093300, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:42:14', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567676536044845300, 'User', 1, 'ลบ User {\"user_id\":5,\"name\":\"Ooo Ooo\",\"public_email\":\"Hdjdu@hxjd.com\",\"gravatar_email\":\"Hdjdu@hxjd.com\",\"gravatar_id\":\"f09ef7943f101a83d00301937cf2e627\",\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"Ooo\",\"lastname\":\"Ooo\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:42:16', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567676536054763200, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:42:16', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567676555021968700, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"\",\"website\":\"\",\"bio\":\"07/08/1996\",\"timezone\":null,\"firstname\":\"theerayut\",\"lastname\":\"kampan\",\"tel\":\"0613545845\",\"avatar_path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"avatar_base_url\":\"http://storage2.bloodcloud.online/source\",\"sitecode\":null} โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:42:35', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567676563065594700, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"zhXMGCLZpjUj_hKfp-B2RO1-LG3NjEewVWi2RAR7Aru2YI5BGqzBRxfNRazgrRkIpgxACp3dP8YwW_QqYiNmyA==\",\"Profile\":{\"firstname\":\"\",\"lastname\":\"kampan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"0613545845\",\"bio\":\"07/08/1996\",\"image\":{\"path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"name\":\"\",\"size\":\"9744\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:42:43', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567676614000599300, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"zhXMGCLZpjUj_hKfp-B2RO1-LG3NjEewVWi2RAR7Aru2YI5BGqzBRxfNRazgrRkIpgxACp3dP8YwW_QqYiNmyA==\",\"Profile\":{\"firstname\":\"\",\"lastname\":\"kampan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"0613545845\",\"bio\":\"07/08/1996\",\"image\":{\"path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"name\":\"\",\"size\":\"9744\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1: kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:43:34', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567677256085725400, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1: kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:54:16', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567677261005116000, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"1qFh3j7R4dJc0iwgJrvR3s1Tpl7A5Hvr81v98pY6tkOu1COHBqSGoGjhexNh9r6ShiHKOZC1A52WaL-c8GLSMA==\",\"Profile\":{\"firstname\":\"user2\",\"lastname\":\"user2\",\"public_email\":\"user2@gmail.com\",\"tel\":\"\",\"bio\":\"\",\"image\":\"\"},\"ajax\":\"Profile\"} โดย: 1: kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:54:21', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567677272011483200, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"\",\"website\":\"\",\"bio\":\"07/08/1996\",\"timezone\":null,\"firstname\":\"\",\"lastname\":\"kampan\",\"tel\":\"0613545845\",\"avatar_path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"avatar_base_url\":\"http://storage2.bloodcloud.online/source\",\"sitecode\":null} โดย: 1: kampan IP:115.87.129.86', 1, 1, '2019-09-05 16:54:32', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567678481033795300, 'User', 1, 'ดูหน้า User โดย: 1: kampan IP:115.87.129.86', 1, 1, '2019-09-05 17:14:41', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567678491093495200, 'User', 1, 'ดูหน้า User โดย: 1: kampan IP:115.87.129.86', 1, 1, '2019-09-05 17:14:51', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567696693020846500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-05 22:18:13', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567696698088174800, 'Login', 1, 'Login โดย: 1: kampan IP: 115.87.129.86', 1, 1, '2019-09-05 22:18:18', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567699355055889500, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1: kampan IP:115.87.129.86', 1, 1, '2019-09-05 23:02:35', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567699365078082200, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1: kampan IP:115.87.129.86', 1, 1, '2019-09-05 23:02:45', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567699365090431200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 23:02:45', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567699926014347500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, 1, '2019-09-05 23:12:06', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567700157038089900, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-05 23:15:57', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567706538067900100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-06 01:02:18', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567706543031917400, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.86', 1, 1, '2019-09-06 01:02:23', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567707697022900200, 'Logout', 1, 'Logout โดย 1:theerayut kampan IP: 115.87.129.86', 1, 1, '2019-09-06 01:21:37', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567707832063085100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.86', 1, NULL, '2019-09-06 01:23:52', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567707837017436100, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 115.87.129.86', 1, 1, '2019-09-06 01:23:57', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567707839082694500, 'User', 1, 'ดูหน้า User โดย: 1:theerayut kampan IP:115.87.129.86', 1, 1, '2019-09-06 01:23:59', NULL, NULL, '115.87.129.86');
INSERT INTO `systemlog` VALUES (1567759882085568100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 15:51:22', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567759891020480900, 'Login', 1, 'Login โดย: 1:theerayut kampan IP: 49.228.138.50', 1, 1, '2019-09-06 15:51:31', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567759894048944900, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:49.228.138.50', 1, 1, '2019-09-06 15:51:34', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567759905003787200, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:theerayut kampan IP:49.228.138.50', 1, 1, '2019-09-06 15:51:45', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567759905012481200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.138.50', 1, 1, '2019-09-06 15:51:45', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567759908018349900, 'Account', 1, 'ดูหน้า Account โดย:1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.138.50', 1, 1, '2019-09-06 15:51:48', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567760653088400200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, 1, '2019-09-06 16:04:13', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567763960032977600, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.138.50', 1, 1, '2019-09-06 16:59:20', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567763968039830300, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.138.50', 1, 1, '2019-09-06 16:59:28', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567763968053236400, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 16:59:28', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764348073214800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:05:48', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764351048803600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:05:51', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764366005983400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:06:06', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764374034499800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:06:14', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764377042708900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:06:17', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764455033890400, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:07:35', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764456073280000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:07:36', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764488009340500, 'Logout', 1, 'Logout โดย 6:wit wit IP: 49.228.138.50', 1, 6, '2019-09-06 17:08:08', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764489060341300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:08:09', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764493042817600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:08:13', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764494063066400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:08:14', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764501047540500, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:08:21', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764503011589100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:08:23', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764511058710700, 'Login', 1, 'Login โดย: 6:wit wit IP: 49.228.138.50', 1, 6, '2019-09-06 17:08:31', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764559016347000, 'Logout', 1, 'Logout โดย 6:wit wit IP: 49.228.138.50', 1, 6, '2019-09-06 17:09:19', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764560065403300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:09:20', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764569038886400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:09:29', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764788086166400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:13:08', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764817078657800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:13:37', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764819012884400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:13:39', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764824048737200, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:13:44', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764826053892200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:13:46', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764828042620800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:13:48', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764830004077100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:13:50', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764837067607800, 'Login', 1, 'Login โดย: 6:wit wit IP: 49.228.138.50', 1, 6, '2019-09-06 17:13:57', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764854079851200, 'Logout', 1, 'Logout โดย 6:wit wit IP: 49.228.138.50', 1, 6, '2019-09-06 17:14:14', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764856031520600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:14:16', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764861051357300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:14:21', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764863053428000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:14:23', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567764877065088900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:14:37', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765081002774800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:18:01', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765083067509400, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":6,\"name\":\"wit wit\",\"public_email\":\"theerayut@gmasil.com\",\"gravatar_email\":\"theerayut@gmasil.com\",\"gravatar_id\":\"9333cc4f04ac54da6547a6c2686dfbfc\",\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"wit\",\"lastname\":\"wit\",\"tel\":\" \",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:18:03', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765091061023700, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"IMnqYUBx4JtpGKPHHy_sIetJHThfKlPVOt6VIYP7M0dmi4ZTbQG11iZ68Yhoa4FM2HheDjxPIblTqedI051FIA==\",\"Profile\":{\"firstname\":\"ครู\",\"lastname\":\"wit\",\"public_email\":\"theerayut@gmasil.com\",\"tel\":\"\",\"bio\":\"\",\"image\":\"\"},\"ajax\":\"Profile\"} โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:18:11', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765093061682600, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"IMnqYUBx4JtpGKPHHy_sIetJHThfKlPVOt6VIYP7M0dmi4ZTbQG11iZ68Yhoa4FM2HheDjxPIblTqedI051FIA==\",\"Profile\":{\"firstname\":\"ครู\",\"lastname\":\"วิทย์\",\"public_email\":\"theerayut@gmasil.com\",\"tel\":\"\",\"bio\":\"\",\"image\":\"\"},\"ajax\":\"Profile\"} โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:18:13', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765094011567600, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"IMnqYUBx4JtpGKPHHy_sIetJHThfKlPVOt6VIYP7M0dmi4ZTbQG11iZ68Yhoa4FM2HheDjxPIblTqedI051FIA==\",\"Profile\":{\"firstname\":\"ครู\",\"lastname\":\"วิทย์\",\"public_email\":\"theerayut@gmasil.com\",\"tel\":\"\",\"bio\":\"\",\"image\":\"\"},\"ajax\":\"Profile\"} โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:18:14', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765095031359200, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"IMnqYUBx4JtpGKPHHy_sIetJHThfKlPVOt6VIYP7M0dmi4ZTbQG11iZ68Yhoa4FM2HheDjxPIblTqedI051FIA==\",\"Profile\":{\"firstname\":\"ครู\",\"lastname\":\"วิทย์\",\"public_email\":\"theerayut@gmasil.com\",\"tel\":\"\",\"bio\":\"\",\"image\":\"\"},\"ajax\":\"Profile\"} โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:18:15', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765095041000800, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"IMnqYUBx4JtpGKPHHy_sIetJHThfKlPVOt6VIYP7M0dmi4ZTbQG11iZ68Yhoa4FM2HheDjxPIblTqedI051FIA==\",\"Profile\":{\"firstname\":\"ครู\",\"lastname\":\"วิทย์\",\"public_email\":\"theerayut@gmasil.com\",\"tel\":\"\",\"bio\":\"\",\"image\":\"\"}} โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:18:15', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765095051555500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.138.50', 1, 1, '2019-09-06 17:18:15', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765098042631100, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:18:18', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765099077091800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:18:19', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765105029247700, 'Login', 1, 'Login โดย: 6:ครู วิทย์ IP: 49.228.138.50', 1, 6, '2019-09-06 17:18:25', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765182037089400, 'Logout', 1, 'Logout โดย 6:ครู วิทย์ IP: 49.228.138.50', 1, 6, '2019-09-06 17:19:42', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765185029926300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.50', 1, NULL, '2019-09-06 17:19:45', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567765189092502300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.138.50', 1, 1, '2019-09-06 17:19:49', NULL, NULL, '49.228.138.50');
INSERT INTO `systemlog` VALUES (1567771615049625100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-06 19:06:55', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567774217007090100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.177.212', 1, NULL, '2019-09-06 19:50:17', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567774222071677600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.177.212', 1, 1, '2019-09-06 19:50:22', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567774234071306500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 19:50:34', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567774240016410500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 19:50:40', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567774290078907800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 19:51:30', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567774641038909400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.177.212', 1, NULL, '2019-09-06 19:57:21', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567774713055325000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-06 19:58:33', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567774881098857000, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.177.212', 1, 1, '2019-09-06 20:01:21', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567774931098340400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:02:11', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567775069012768800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:04:29', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567775077049601800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:04:37', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567776020027086800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:20:20', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567776218082819400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:23:38', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567776481029917600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:28:01', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567776647095090900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:30:47', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567776728034537800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.177.212', 1, 1, '2019-09-06 20:32:08', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567776730028825200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.177.212', 1, NULL, '2019-09-06 20:32:10', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567776758013147800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.177.212', 1, 1, '2019-09-06 20:32:38', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567778129001138600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.177.212', 1, NULL, '2019-09-06 20:55:29', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567778131064536200, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.177.212', 1, 1, '2019-09-06 20:55:31', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567778146014682100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:55:46', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567778307097342800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:58:27', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567778339020419900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 20:58:59', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567778839076697000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:07:19', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567778862027876400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:07:42', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567779402099489300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-06 21:16:42', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567779442078636400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:17:22', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567779446054912100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:17:26', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567779616093477100, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:20:16', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567779631097938500, 'Account', 1, 'ดูหน้า Account โดย:1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:20:31', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567779635086882600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:20:35', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567779643059741400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:20:43', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567779645026360700, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":6,\"name\":\"wit wit\",\"public_email\":\"theerayut@gmasil.com\",\"gravatar_email\":\"theerayut@gmasil.com\",\"gravatar_id\":\"9333cc4f04ac54da6547a6c2686dfbfc\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"ครู\",\"lastname\":\"วิทย์\",\"tel\":\"\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:20:45', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567779647062610600, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":6,\"name\":\"wit wit\",\"public_email\":\"theerayut@gmasil.com\",\"gravatar_email\":\"theerayut@gmasil.com\",\"gravatar_id\":\"9333cc4f04ac54da6547a6c2686dfbfc\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"ครู\",\"lastname\":\"วิทย์\",\"tel\":\"\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 21:20:47', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567782419080264400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.177.212', 1, NULL, '2019-09-06 22:06:59', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567782467016364800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.177.212', 1, 1, '2019-09-06 22:07:47', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567782636008726300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 22:10:36', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567782665046746400, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 22:11:05', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567782677099886200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-06 22:11:17', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567809502089829100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.177.212', 1, NULL, '2019-09-07 05:38:22', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567809521089655900, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.177.212', 1, 1, '2019-09-07 05:38:41', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567809529033750000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.177.212', 1, 1, '2019-09-07 05:38:49', NULL, NULL, '49.228.177.212');
INSERT INTO `systemlog` VALUES (1567820346046679800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 08:39:06', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567820402089780100, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 08:40:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567820404081719000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 08:40:04', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567820429002456800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 08:40:29', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567820429063597300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 08:40:29', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567820702007525800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, 1, '2019-09-07 08:45:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567821895037326500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, 1, '2019-09-07 09:04:55', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567821947042606500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 09:05:47', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567821970033903400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 09:06:10', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567821977007198800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 66.220.149.44', 1, NULL, '2019-09-07 09:06:17', NULL, NULL, '66.220.149.44');
INSERT INTO `systemlog` VALUES (1567821978037009600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 69.171.251.4', 1, NULL, '2019-09-07 09:06:18', NULL, NULL, '69.171.251.4');
INSERT INTO `systemlog` VALUES (1567821980018891400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:06:20', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567821981008059000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 69.171.251.23', 1, NULL, '2019-09-07 09:06:21', NULL, NULL, '69.171.251.23');
INSERT INTO `systemlog` VALUES (1567822126090288400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 09:08:46', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822165060715500, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 09:09:25', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822165070349600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:09:25', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822167013054700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:09:27', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822170023803500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:09:30', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822229042701200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 09:10:29', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567822230095369800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 223.206.243.76', 1, 1, '2019-09-07 09:10:30', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567822232088073400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.243.76', 1, NULL, '2019-09-07 09:10:32', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567822244029036500, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 223.206.243.76', 1, 1, '2019-09-07 09:10:44', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567822246002677200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:10:46', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822424011485400, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 09:13:44', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822527020210700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:15:27', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822538049628200, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 09:15:38', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822540063574500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 09:15:40', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822545028360300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 09:15:45', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822699084626300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 09:18:19', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822702011231700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 09:18:22', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567822934006322900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:22:14', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567823022076233400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:23:42', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567823141058831900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:25:41', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567823284085167500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:28:04', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567823331063900700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 61.19.1.199', 1, NULL, '2019-09-07 09:28:51', NULL, NULL, '61.19.1.199');
INSERT INTO `systemlog` VALUES (1567823343064948000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:29:03', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567823373005292500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 09:29:33', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567826513021170500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 10:21:53', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567826521035819700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 10:22:01', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567826521053475200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:22:01', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567826526042969300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:22:06', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827042024103400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:30:42', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827064028638000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:31:04', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827093033285600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:31:33', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827103057913400, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1567823371,\"name\":\"123456 123456\",\"public_email\":\"wwww@wwww.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"123456\",\"lastname\":\"123456\",\"tel\":\"0613544584\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:31:43', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827180025569700, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 10:33:00', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827419001682200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 10:36:59', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827422000616400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 10:37:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827647009857900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:40:47', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567827684090647000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:41:24', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567828451027804400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 10:54:11', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567829921023539700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, 1, '2019-09-07 11:18:41', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567829934088837900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 11:18:54', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567829940072611100, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 11:19:00', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567829945040405500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 11:19:05', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567829947033872500, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 11:19:07', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567832582038566900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 12:03:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567834524032532000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, 1, '2019-09-07 12:35:24', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567838929005087500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 13:48:49', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567838931091691700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 13:48:51', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567848429091292800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 16:27:09', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567848464093003500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 16:27:44', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567848477075567200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 16:27:57', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851170003747000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 17:12:50', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851372080865400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 17:16:12', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851421009306300, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 17:17:01', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851422056821400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 17:17:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851439037926800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 17:17:19', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851441048494800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 17:17:21', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851444021201000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 17:17:24', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851527071335100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 17:18:47', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851542099075000, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 17:19:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851544026401700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 17:19:04', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851593076053700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 17:19:53', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567851750092092300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 17:22:30', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567852133045171600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 17:28:53', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567852139017710100, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 17:28:59', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567852142059986600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 17:29:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567852292025274400, 'Login', 1, 'Login โดย: 1567852132:xxxxxx xxxx IP: 49.228.178.178', 1, 1567852132, '2019-09-07 17:31:32', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567852565081445800, 'Logout', 1, 'Logout โดย 1567852132:xxxxxx xxxx IP: 49.228.178.178', 1, 1567852132, '2019-09-07 17:36:05', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567852567067612400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 17:36:07', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567852569071072100, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 17:36:09', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567852573074205400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 17:36:13', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567853365024150800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 17:49:25', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567853489062885500, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 17:51:29', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567853491047265500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 17:51:31', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567853496097535200, 'Login', 1, 'Login โดย: 1567852132:xxxxxx xxxx IP: 49.228.178.178', 1, 1567852132, '2019-09-07 17:51:36', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567855113098397500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, 1567852132, '2019-09-07 18:18:33', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567855117072898700, 'Logout', 1, 'Logout โดย 1567852132:xxxxxx xxxx IP: 49.228.178.178', 1, 1567852132, '2019-09-07 18:18:37', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567855119016026300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 18:18:39', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567855121027659100, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 18:18:41', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567855169042624400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 18:19:29', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567856683057932700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 18:44:43', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567856688021947700, 'Login', 1, 'Login โดย: 1567852132:xxxxxx xxxx IP: 49.228.178.178', 1, 1567852132, '2019-09-07 18:44:48', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567858068020398200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 19:07:48', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567858081029668400, 'Login', 1, 'Login โดย: 1567852132:xxxxxx xxxx IP: 49.228.178.178', 1, 1567852132, '2019-09-07 19:08:01', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567859195096751500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.243.76', 1, NULL, '2019-09-07 19:26:35', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859198016065800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 223.206.243.76', 1, 1, '2019-09-07 19:26:38', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859201012360800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:41', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859207089015400, 'User', 1, 'ลบ User {\"user_id\":1567852132,\"name\":\"xxxxxx xxxx\",\"public_email\":\"xxx@gmail.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"xxxxxx\",\"lastname\":\"xxxx\",\"tel\":\"xxxxx\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:47', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859208075888200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:48', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859211064692400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:51', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859212031360600, 'User', 1, 'ลบ User {\"user_id\":1567823371,\"name\":\"123456 123456\",\"public_email\":\"wwww@wwww.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"123456\",\"lastname\":\"123456\",\"tel\":\"0613544584\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:52', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859212044782800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:52', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859215058956700, 'User', 1, 'ลบ User {\"user_id\":3,\"name\":\"user2 user2\",\"public_email\":\"user2@gmail.com\",\"gravatar_email\":\"user2@gmail.com\",\"gravatar_id\":\"fa7c3fcb670a58aa3e90a391ea533c99\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"user2\",\"lastname\":\"user2\",\"tel\":\"\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:55', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859215067954600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:55', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859217084457800, 'User', 1, 'ลบ User {\"user_id\":6,\"name\":\"wit wit\",\"public_email\":\"theerayut@gmasil.com\",\"gravatar_email\":\"theerayut@gmasil.com\",\"gravatar_id\":\"9333cc4f04ac54da6547a6c2686dfbfc\",\"location\":null,\"website\":null,\"bio\":\"\",\"timezone\":null,\"firstname\":\"ครู\",\"lastname\":\"วิทย์\",\"tel\":\"\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:57', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859217095163400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:26:57', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859220085885800, 'User', 1, 'ลบ User {\"user_id\":2,\"name\":null,\"public_email\":\"user@gmail.com\",\"gravatar_email\":\"user@gmail.com\",\"gravatar_id\":\"cba1f2d695a5ca39ee6f343297a761a4\",\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":null,\"lastname\":null,\"tel\":null,\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:27:00', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859220097484700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:27:00', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859263066699600, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"\",\"website\":\"\",\"bio\":\"07/08/1996\",\"timezone\":null,\"firstname\":\"เจ้าหน้าที่\",\"lastname\":\"\",\"tel\":\"0613545845\",\"avatar_path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"avatar_base_url\":\"http://storage2.bloodcloud.online/source\",\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:27:43', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859268091447500, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1567851526,\"name\":\"theerayut theerayut\",\"public_email\":\"wwwwwwsdcw@wwww.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"theerayut\",\"lastname\":\"theerayut\",\"tel\":\"0613544580\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:27:48', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567859921012243200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:38:41', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567860564025950100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:223.206.243.76', 1, 1, '2019-09-07 19:49:24', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567863933044722300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:45:33', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567863943071392800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:45:43', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567863945030596900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:45:45', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567863957067762500, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:45:57', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567863959006307800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:45:59', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567863966062545900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:46:06', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567863971015196800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:46:11', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567863973024604700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:46:13', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864043035884100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:47:23', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864046063258200, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:47:26', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864047087825200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:47:27', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864055003600200, 'Login', 1, 'Login โดย: 1567864042:หกกห หกด IP: 49.228.178.178', 1, 1567864042, '2019-09-07 20:47:35', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864061068204300, 'Logout', 1, 'Logout โดย 1567864042:หกกห หกด IP: 49.228.178.178', 1, 1567864042, '2019-09-07 20:47:41', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864063008231500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:47:43', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864065018430800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:47:45', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864068062414300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:47:48', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864077024801800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:47:57', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864078047573200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:47:58', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864083002564300, 'Login', 1, 'Login โดย: 1567864042:หกกห หกด IP: 49.228.178.178', 1, 1567864042, '2019-09-07 20:48:03', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864085074541200, 'User', 1, 'ดูหน้า User โดย: 1567864042:หกกห หกด IP:49.228.178.178', 1, 1567864042, '2019-09-07 20:48:05', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864169072495200, 'User', 1, 'ดูหน้า User โดย: 1567864042:หกกห หกด IP:49.228.178.178', 1, 1567864042, '2019-09-07 20:49:29', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864199082540500, 'Logout', 1, 'Logout โดย 1567864042:หกกห หกด IP: 49.228.178.178', 1, 1567864042, '2019-09-07 20:49:59', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864201036696900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:50:01', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864203016515400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:50:03', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864205090936600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:50:05', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864235032935000, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:50:35', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864236064858800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:50:36', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864260060007400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:51:00', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864262003939300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:51:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864266036111100, 'User', 1, 'ลบ User {\"user_id\":1567851526,\"name\":\"theerayut theerayut\",\"public_email\":\"wwwwwwsdcw@wwww.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"theerayut\",\"lastname\":\"theerayut\",\"tel\":\"0613544580\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:51:06', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864266048873300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:51:06', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864269098696200, 'User', 1, 'ลบ User {\"user_id\":1567864042,\"name\":\"หกกห หกด\",\"public_email\":\"sadsasadsa@sadsacc.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"หกกห\",\"lastname\":\"หกด\",\"tel\":\"0000000000\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:51:09', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864270009037500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:51:10', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864319048773900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:51:59', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864332084834400, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:52:12', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864334006059200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:52:14', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864340026160800, 'Login', 1, 'Login โดย: 1567864318:ครู ไก้ IP: 49.228.178.178', 1, 1567864318, '2019-09-07 20:52:20', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864342034133600, 'User', 1, 'ดูหน้า User โดย: 1567864318:ครู ไก้ IP:49.228.178.178', 1, 1567864318, '2019-09-07 20:52:22', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864362060434000, 'Logout', 1, 'Logout โดย 1567864318:ครู ไก้ IP: 49.228.178.178', 1, 1567864318, '2019-09-07 20:52:42', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864363078544500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:52:43', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864365072188900, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:52:45', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864446004170900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:54:06', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864452085625500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:54:12', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864465051392000, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:54:25', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864466097619000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:54:26', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864472049899900, 'Login', 1, 'Login โดย: 1567864318:ครู ไก้ IP: 49.228.178.178', 1, 1567864318, '2019-09-07 20:54:32', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864475016869700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1567864318:ครู ไก้ IP:49.228.178.178', 1, 1567864318, '2019-09-07 20:54:35', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864480046139200, 'User', 1, 'ดูหน้า User โดย: 1567864318:ครู ไก้ IP:49.228.178.178', 1, 1567864318, '2019-09-07 20:54:40', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864482013308000, 'User', 1, 'ดูหน้า User โดย: 1567864318:ครู ไก้ IP:49.228.178.178', 1, 1567864318, '2019-09-07 20:54:42', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864690052704500, 'User', 1, 'ดูหน้า User โดย: 1567864318:ครู ไก้ IP:49.228.178.178', 1, 1567864318, '2019-09-07 20:58:10', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864788074282500, 'Logout', 1, 'Logout โดย 1567864318:ครู ไก้ IP: 49.228.178.178', 1, 1567864318, '2019-09-07 20:59:48', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864790012002900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, NULL, '2019-09-07 20:59:50', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864792056031300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.178.178', 1, 1, '2019-09-07 20:59:52', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567864793098769500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 20:59:53', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567865057051392200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 21:04:17', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567865180075594400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 21:06:20', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567865306050005100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.243.76', 1, NULL, '2019-09-07 21:08:26', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567865309043646800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 223.206.243.76', 1, 1, '2019-09-07 21:08:29', NULL, NULL, '223.206.243.76');
INSERT INTO `systemlog` VALUES (1567865428036042200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 21:10:28', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567865762048592000, 'User', 1, 'ลบ User {\"user_id\":1567864318,\"name\":\"ครู ไก้\",\"public_email\":\"theerayut1996@gmail.con\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"ครู\",\"lastname\":\"ไก้\",\"tel\":\"0613544584\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 21:16:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567865762061470700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:49.228.178.178', 1, 1, '2019-09-07 21:16:02', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567868899053583100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, 1, '2019-09-07 22:08:19', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567869393009102600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.178.178', 1, 1, '2019-09-07 22:16:33', NULL, NULL, '49.228.178.178');
INSERT INTO `systemlog` VALUES (1567923278064346600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.177.30', 1, NULL, '2019-09-08 13:14:38', NULL, NULL, '49.228.177.30');
INSERT INTO `systemlog` VALUES (1567923282028266300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 49.228.177.30', 1, 1, '2019-09-08 13:14:42', NULL, NULL, '49.228.177.30');
INSERT INTO `systemlog` VALUES (1567952411071126800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-08 21:20:11', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952414067514700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่  IP: 115.87.163.129', 1, 1, '2019-09-08 21:20:14', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952466044508200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่  IP:115.87.163.129', 1, 1, '2019-09-08 21:21:06', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952755065334100, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"\",\"website\":\"\",\"bio\":\"07/08/1996\",\"timezone\":null,\"firstname\":\"เจ้าหน้าที่\",\"lastname\":\"\",\"tel\":\"0613545845\",\"avatar_path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"avatar_base_url\":\"http://storage2.bloodcloud.online/source\",\"sitecode\":null} โดย: 1:เจ้าหน้าที่  IP:115.87.163.129', 1, 1, '2019-09-08 21:25:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952764004446300, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"TuilhsqnSGsIDULZuxZ6GaOHr-mcLiBiioC-CYDZpvZ42_Xiid8eG0ZoKa_JTE5O07Ttk8McdgHBre57uOrEhQ==\",\"Profile\":{\"firstname\":\"เจ้าหน้าที่\",\"lastname\":\"ดูเเลระบบ\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"0613545845\",\"bio\":\"07/08/1996\",\"image\":{\"path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"name\":\"\",\"size\":\"9744\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1:เจ้าหน้าที่  IP:115.87.163.129', 1, 1, '2019-09-08 21:26:04', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952764015774500, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"TuilhsqnSGsIDULZuxZ6GaOHr-mcLiBiioC-CYDZpvZ42_Xiid8eG0ZoKa_JTE5O07Ttk8McdgHBre57uOrEhQ==\",\"Profile\":{\"firstname\":\"เจ้าหน้าที่\",\"lastname\":\"ดูเเลระบบ\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"0613545845\",\"bio\":\"07/08/1996\",\"image\":{\"path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"name\":\"\",\"size\":\"9744\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}},\"ajax\":\"Profile\"} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 21:26:04', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952764025725600, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"TuilhsqnSGsIDULZuxZ6GaOHr-mcLiBiioC-CYDZpvZ42_Xiid8eG0ZoKa_JTE5O07Ttk8McdgHBre57uOrEhQ==\",\"Profile\":{\"firstname\":\"เจ้าหน้าที่\",\"lastname\":\"ดูเเลระบบ\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"tel\":\"0613545845\",\"bio\":\"07/08/1996\",\"image\":{\"path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"name\":\"\",\"size\":\"9744\",\"type\":\"image/jpeg\",\"order\":\"\",\"base_url\":\"http://storage2.bloodcloud.online/source\"}}} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 21:26:04', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952764040363600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 21:26:04', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952800013533100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 21:26:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952806047380400, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-08 21:26:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952807081508300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-08 21:26:47', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952815050033100, 'Login', 1, 'Login โดย: 1567952799:ครู ใหม่ IP: 115.87.163.129', 1, 1567952799, '2019-09-08 21:26:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952817059389300, 'User', 1, 'ดูหน้า User โดย: 1567952799:ครู ใหม่ IP:115.87.163.129', 1, 1567952799, '2019-09-08 21:26:57', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952819038413500, 'User', 1, 'ดูหน้า User โดย: 1567952799:ครู ใหม่ IP:115.87.163.129', 1, 1567952799, '2019-09-08 21:26:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952851020926300, 'User', 1, 'ดูหน้า User โดย: 1567952799:ครู ใหม่ IP:115.87.163.129', 1, 1567952799, '2019-09-08 21:27:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952939092413600, 'Logout', 1, 'Logout โดย 1567952799:ครู ใหม่ IP: 115.87.163.129', 1, 1567952799, '2019-09-08 21:28:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952943034450500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-08 21:29:03', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952945007197400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-08 21:29:05', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952946033201400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 21:29:06', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952971003458800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-08 21:29:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952987014421800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-08 21:29:47', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567952988090503600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-08 21:29:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567957067058786200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.248.82', 1, NULL, '2019-09-08 22:37:47', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957070052837300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 223.206.248.82', 1, 1, '2019-09-08 22:37:50', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957074012693900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:37:54', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957111077201200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:38:31', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957112002681500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:38:32', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957115024088700, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1567957110,\"name\":\"sdf sf\",\"public_email\":\"13456@gmail.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"sdf\",\"lastname\":\"sf\",\"tel\":\"1111111111\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:38:35', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957285076188100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:41:25', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957307035586000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:41:47', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957365028562700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:42:45', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957435064871800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:43:55', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957523081820600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-08 22:45:23', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567957525088035700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-08 22:45:25', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567957525097422400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 22:45:25', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567957613023726900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:46:53', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567957632007452000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.248.82', 1, 1, '2019-09-08 22:47:12', NULL, NULL, '223.206.248.82');
INSERT INTO `systemlog` VALUES (1567960186031749300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-08 23:29:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567960543028118800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-08 23:35:43', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567960545076632700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 23:35:45', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567960555095061500, 'User', 1, 'ลบ User {\"user_id\":1567957110,\"name\":\"sdf sf\",\"public_email\":\"13456@gmail.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"sdf\",\"lastname\":\"sf\",\"tel\":\"1111111111\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 23:35:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567960556008104300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-08 23:35:56', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567963334054912000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-09 00:22:14', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567963337002348300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-09 00:22:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567964924038453800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-09 00:48:44', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567965423041695300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-09 00:57:03', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1567994243043221700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-09 08:57:23', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567994259018959900, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.195', 1, 1, '2019-09-09 08:57:39', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1567994263046022600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.195', 1, 1, '2019-09-09 08:57:43', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568005134064903100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-09 11:58:54', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568005292090654600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-09 12:01:32', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568005320019825500, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.195', 1, 1, '2019-09-09 12:02:00', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568005934053866500, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.195', 1, 1, '2019-09-09 12:12:14', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568005945064203400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-09 12:12:25', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568005949081358600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.195', 1, 1, '2019-09-09 12:12:29', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568005959081414700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.195', 1, 1, '2019-09-09 12:12:39', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006068075360600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.195', 1, 1, '2019-09-09 12:14:28', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006132044526000, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.195', 1, 1, '2019-09-09 12:15:32', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006134009604700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-09 12:15:34', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006138019895700, 'Login', 1, 'Login โดย: 1568006067:ครู ครู IP: 202.29.24.195', 1, 1568006067, '2019-09-09 12:15:38', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006148016696200, 'Logout', 1, 'Logout โดย 1568006067:ครู ครู IP: 202.29.24.195', 1, 1568006067, '2019-09-09 12:15:48', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006150031112200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-09 12:15:50', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006152078950000, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.195', 1, 1, '2019-09-09 12:15:52', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006154080713600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.195', 1, 1, '2019-09-09 12:15:54', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006183086108100, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.195', 1, 1, '2019-09-09 12:16:23', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006185054833100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-09 12:16:25', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006193087381200, 'Login', 1, 'Login โดย: 1568006067:ครู ครู IP: 202.29.24.195', 1, 1568006067, '2019-09-09 12:16:33', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006199092193300, 'User', 1, 'ดูหน้า User โดย: 1568006067:ครู ครู IP:202.29.24.195', 1, 1568006067, '2019-09-09 12:16:39', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568006203023226200, 'User', 1, 'ดูหน้า User โดย: 1568006067:ครู ครู IP:202.29.24.195', 1, 1568006067, '2019-09-09 12:16:43', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568011173021503100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-09 13:39:33', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568011207055084300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-09 13:40:07', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568031284023090300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, NULL, '2019-09-09 19:14:44', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568031286095316200, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.138.236', 1, 1, '2019-09-09 19:14:46', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568031590006085500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, 1, '2019-09-09 19:19:50', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568032190037432400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.138.236', 1, 1, '2019-09-09 19:29:50', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568033349068438200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, NULL, '2019-09-09 19:49:09', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568033357075345000, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.138.236', 1, 1, '2019-09-09 19:49:17', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568038430021138500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, NULL, '2019-09-09 21:13:50', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568038651019444400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.138.236', 1, 1, '2019-09-09 21:17:31', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568038999064753700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, 1, '2019-09-09 21:23:19', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568039081089494000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, 1, '2019-09-09 21:24:41', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568040905092167600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, 1, '2019-09-09 21:55:05', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568042538038165900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, 1, '2019-09-09 22:22:18', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568042550080005700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, 1, '2019-09-09 22:22:30', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568042874089084000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.138.236', 1, 1, '2019-09-09 22:27:54', NULL, NULL, '49.228.138.236');
INSERT INTO `systemlog` VALUES (1568075745079087000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.191', 1, NULL, '2019-09-10 07:35:45', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568075765036463800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.186.191', 1, 1, '2019-09-10 07:36:05', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568081730020557000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.191', 1, NULL, '2019-09-10 09:15:30', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568081854004182600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.186.191', 1, 1, '2019-09-10 09:17:34', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568082009097441900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.191', 1, 1, '2019-09-10 09:20:09', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568090602018778300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.191', 1, NULL, '2019-09-10 11:43:22', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568090605077106700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.186.191', 1, 1, '2019-09-10 11:43:25', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568095045004003300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.191', 1, NULL, '2019-09-10 12:57:25', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568095089008572700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.191', 1, NULL, '2019-09-10 12:58:09', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568095503040834200, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.186.191', 1, 1, '2019-09-10 13:05:03', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568095509006864800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.186.191', 1, 1, '2019-09-10 13:05:09', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568107296096490400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.191', 1, NULL, '2019-09-10 16:21:36', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568107305039745900, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.186.191', 1, 1, '2019-09-10 16:21:45', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568109362085345800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.186.191', 1, 1, '2019-09-10 16:56:02', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568109412024030300, 'User', 1, 'ลบ User {\"user_id\":1568006067,\"name\":\"ครู ครู\",\"public_email\":\"4545642@4fgdf.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"ครู\",\"lastname\":\"ครู\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.186.191', 1, 1, '2019-09-10 16:56:52', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568109412034297400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.186.191', 1, 1, '2019-09-10 16:56:52', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568109414049921600, 'User', 1, 'ลบ User {\"user_id\":1567952799,\"name\":\"ครู ใหม่\",\"public_email\":\"sadsa1@gmail.cpm\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"ครู\",\"lastname\":\"ใหม่\",\"tel\":\"0613544584\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.186.191', 1, 1, '2019-09-10 16:56:54', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568109414060412500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.186.191', 1, 1, '2019-09-10 16:56:54', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568109446068315100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.186.191', 1, 1, '2019-09-10 16:57:26', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568109585049315200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.186.191', 1, 1, '2019-09-10 16:59:45', NULL, NULL, '49.228.186.191');
INSERT INTO `systemlog` VALUES (1568147332058956600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.235.68', 1, 1, '2019-09-11 03:28:52', NULL, NULL, '223.206.235.68');
INSERT INTO `systemlog` VALUES (1568147335022072600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.235.68', 1, 1, '2019-09-11 03:28:55', NULL, NULL, '223.206.235.68');
INSERT INTO `systemlog` VALUES (1568147395044116600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.235.68', 1, 1, '2019-09-11 03:29:55', NULL, NULL, '223.206.235.68');
INSERT INTO `systemlog` VALUES (1568167431030697300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.139.155', 1, NULL, '2019-09-11 09:03:51', NULL, NULL, '49.228.139.155');
INSERT INTO `systemlog` VALUES (1568167436096884800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.139.155', 1, 1, '2019-09-11 09:03:56', NULL, NULL, '49.228.139.155');
INSERT INTO `systemlog` VALUES (1568167506081587500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.139.155', 1, 1, '2019-09-11 09:05:06', NULL, NULL, '49.228.139.155');
INSERT INTO `systemlog` VALUES (1568167540023995000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 61.19.2.203', 1, NULL, '2019-09-11 09:05:40', NULL, NULL, '61.19.2.203');
INSERT INTO `systemlog` VALUES (1568167569029254700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:49.228.139.155', 1, 1, '2019-09-11 09:06:09', NULL, NULL, '49.228.139.155');
INSERT INTO `systemlog` VALUES (1568167571097680200, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 49.228.139.155', 1, 1, '2019-09-11 09:06:11', NULL, NULL, '49.228.139.155');
INSERT INTO `systemlog` VALUES (1568167573049029600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.139.155', 1, NULL, '2019-09-11 09:06:13', NULL, NULL, '49.228.139.155');
INSERT INTO `systemlog` VALUES (1568167639026518400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.139.155', 1, NULL, '2019-09-11 09:07:19', NULL, NULL, '49.228.139.155');
INSERT INTO `systemlog` VALUES (1568177876030782400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 180.183.237.229', 1, NULL, '2019-09-11 11:57:56', NULL, NULL, '180.183.237.229');
INSERT INTO `systemlog` VALUES (1568177886001985900, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 180.183.237.229', 1, 1, '2019-09-11 11:58:06', NULL, NULL, '180.183.237.229');
INSERT INTO `systemlog` VALUES (1568178093065423200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 180.183.237.229', 1, NULL, '2019-09-11 12:01:33', NULL, NULL, '180.183.237.229');
INSERT INTO `systemlog` VALUES (1568178170039400300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 180.183.237.229', 1, 1, '2019-09-11 12:02:50', NULL, NULL, '180.183.237.229');
INSERT INTO `systemlog` VALUES (1568180400088773400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 180.183.237.229', 1, NULL, '2019-09-11 12:40:00', NULL, NULL, '180.183.237.229');
INSERT INTO `systemlog` VALUES (1568180408049097400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 180.183.237.229', 1, 1, '2019-09-11 12:40:08', NULL, NULL, '180.183.237.229');
INSERT INTO `systemlog` VALUES (1568181099011493200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 182.232.195.145', 1, NULL, '2019-09-11 12:51:39', NULL, NULL, '182.232.195.145');
INSERT INTO `systemlog` VALUES (1568181195027156200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 182.232.59.19', 1, NULL, '2019-09-11 12:53:15', NULL, NULL, '182.232.59.19');
INSERT INTO `systemlog` VALUES (1568194911072334300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-11 16:41:51', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568194916082016300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-11 16:41:56', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568196571054082200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-11 17:09:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568208891075631700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-11 20:34:51', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568209127030488800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-11 20:38:47', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568209145026521200, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-11 20:39:05', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210134046166200, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-11 20:55:34', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210136004743000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-11 20:55:36', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210155025716900, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-11 20:55:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210158068786200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-11 20:55:58', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210175043175200, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-11 20:56:15', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210177060136200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-11 20:56:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210200007830100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-11 20:56:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210232091156100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-11 20:57:12', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210237073259500, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-11 20:57:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210339001288300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-11 20:58:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210339020067700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-11 20:58:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210339035252700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-11 20:58:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210339052513700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-11 20:58:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210339068175400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-11 20:58:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568210341055272000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-11 20:59:01', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568255048024633500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-12 09:24:08', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568262482030607900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-09-12 11:28:02', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1568262489007219400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.198', 1, 1, '2019-09-12 11:28:09', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1568262655028439000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.198', 1, 1, '2019-09-12 11:30:55', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1568264530028925400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.198', 1, 1, '2019-09-12 12:02:10', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1568270215076005000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-09-12 13:36:55', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1568276150051758500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-12 15:15:50', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568276158049115100, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-12 15:15:58', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568276177090316000, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-12 15:16:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568276209065636700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-12 15:16:49', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568276263070820200, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-12 15:17:43', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568276443033214700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-12 15:20:43', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568277086044061600, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-12 15:31:26', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568277088006081900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-12 15:31:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568277091077238400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-12 15:31:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568277096014352300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-12 15:31:36', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568277434055495700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-12 15:37:14', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568277438053196600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-12 15:37:18', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568289166023611700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-12 18:52:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568303683082037400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-12 22:54:43', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568303688055275400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-12 22:54:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568307294007254100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-12 23:54:54', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568307309064787400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-12 23:55:09', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568308947064272500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-13 00:22:27', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568308950036126900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-13 00:22:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568336733010050500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-13 08:05:33', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568336745071611700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-13 08:05:45', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568336749009547500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-13 08:05:49', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337429091295400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-13 08:17:09', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337438099111000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-13 08:17:18', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337442049270700, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-13 08:17:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337444018966700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-13 08:17:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337450007559900, 'Login', 1, 'Login โดย: 1568167568:วิืท11 วิท11 IP: 115.87.163.129', 1, 1568167568, '2019-09-13 08:17:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337459018606900, 'Logout', 1, 'Logout โดย 1568167568:วิืท11 วิท11 IP: 115.87.163.129', 1, 1568167568, '2019-09-13 08:17:39', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337460050066500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-13 08:17:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337465009318600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-13 08:17:45', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337467005880300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-13 08:17:47', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568337474004781300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-13 08:17:54', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568342611084381500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-13 09:43:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568342618011162500, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-13 09:43:38', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568346022051036000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.196', 1, NULL, '2019-09-13 10:40:22', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568346026067855900, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.196', 1, 1, '2019-09-13 10:40:26', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568350190006429700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.196', 1, NULL, '2019-09-13 11:49:50', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568351136057602400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.196', 1, NULL, '2019-09-13 12:05:36', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568351143073824700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.196', 1, 1, '2019-09-13 12:05:43', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568351149086358400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.196', 1, 1, '2019-09-13 12:05:49', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568351334030807800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.196', 1, 1, '2019-09-13 12:08:54', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568351351078016800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.196', 1, 1, '2019-09-13 12:09:11', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568351353079759200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.196', 1, 1, '2019-09-13 12:09:13', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568353025021687900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.196', 1, 1, '2019-09-13 12:37:05', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568353028084514600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.196', 1, 1, '2019-09-13 12:37:08', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568437841024871000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-14 12:10:41', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568437846038125100, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-14 12:10:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568437848032664300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-14 12:10:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568439800046420500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-14 12:43:20', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568439808063084300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-14 12:43:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568442815005440300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-14 13:33:35', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568446931008639200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.196', 1, NULL, '2019-09-14 14:42:11', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568446951094534800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.196', 1, 1, '2019-09-14 14:42:31', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568447580059395200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.196', 1, 1, '2019-09-14 14:53:00', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568478640018356100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-14 23:30:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568478646025763800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-14 23:30:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568485652081605500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-15 01:27:32', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568486773052489800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-15 01:46:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568486938011155900, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-15 01:48:58', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568487246029493700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-15 01:54:06', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568487690049147400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-15 02:01:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568490835052159700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-15 02:53:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568493241042641300, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-15 03:34:01', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568493595089611700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-15 03:39:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568493924090277600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-15 03:45:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568524093069818900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-15 12:08:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568524101075706700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-15 12:08:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568524881091948800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-15 12:21:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568525778095748900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-15 12:36:18', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568536212025304000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-15 15:30:12', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568599882051073500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.195', 1, NULL, '2019-09-16 09:11:22', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568599889000716900, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.195', 1, 1, '2019-09-16 09:11:29', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568599893004538300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.195', 1, 1, '2019-09-16 09:11:33', NULL, NULL, '202.29.24.195');
INSERT INTO `systemlog` VALUES (1568645992050638600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-16 21:59:52', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568645997054218400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-16 21:59:57', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568646792067987300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-16 22:13:12', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568646797007676300, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-16 22:13:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568646800033004500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-16 22:13:20', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568646843047002000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-16 22:14:03', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568647988070002400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-16 22:33:08', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568647997061541700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-16 22:33:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568648262013303500, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-16 22:37:42', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568648263086188100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-16 22:37:43', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568648308026428300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-16 22:38:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568648309093162400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-16 22:38:29', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568655188017561700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-17 00:33:08', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568655196025905800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-17 00:33:16', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568655204091995000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-17 00:33:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568659446072338100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-17 01:44:06', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568792338083152700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.196', 1, NULL, '2019-09-18 14:38:58', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568792343043985500, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.196', 1, 1, '2019-09-18 14:39:03', NULL, NULL, '202.29.24.196');
INSERT INTO `systemlog` VALUES (1568797601003461100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-18 16:06:41', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568797612033805600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-18 16:06:52', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568799069022732200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-18 16:31:09', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568799187059880900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-18 16:33:07', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568806011001887300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-18 18:26:51', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568806016035829800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-18 18:26:56', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568822993051951100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-18 23:09:53', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568823001053786500, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-18 23:10:01', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568860114096504800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-09-19 09:28:34', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1568860123081014800, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.198', 1, 1, '2019-09-19 09:28:43', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1568860137051132600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.198', 1, 1, '2019-09-19 09:28:57', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1568905514051139700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-19 22:05:14', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568905580091709300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-19 22:06:20', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568905594083892800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-19 22:06:34', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568971477032645900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-20 16:24:37', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568974886024891400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-20 17:21:26', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568974902009263600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-20 17:21:42', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568974912060735000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-20 17:21:52', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568974915037104400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-20 17:21:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568974991084868400, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-20 17:23:11', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568979332012336500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-20 18:35:32', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1568979343011137100, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-20 18:35:43', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569063872094676500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-21 18:04:32', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569063888034886300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-21 18:04:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064083091786700, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-21 18:08:03', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064084083693500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-21 18:08:04', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064088050621300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-21 18:08:08', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064090016541800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-21 18:08:10', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064097024362300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-21 18:08:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064102051246700, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-21 18:08:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064103065488000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-21 18:08:23', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064106091735000, 'Login', 1, 'Login โดย: 1568167568:วิืท11 วิท11 IP: 115.87.163.129', 1, 1568167568, '2019-09-21 18:08:26', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064111028085500, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1568167568:วิืท11 วิท11 IP:115.87.163.129', 1, 1568167568, '2019-09-21 18:08:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064120008136000, 'Logout', 1, 'Logout โดย 1568167568:วิืท11 วิท11 IP: 115.87.163.129', 1, 1568167568, '2019-09-21 18:08:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064488040434600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-21 18:14:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064493004131600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-21 18:14:53', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064508009450100, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-21 18:15:08', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064513083073200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-21 18:15:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569064516057105300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-21 18:15:16', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569076966060415300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-21 21:42:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569135006041604300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-22 13:50:06', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569135528004757600, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-22 13:58:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142511074809900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-22 15:55:11', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142577091386400, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.129', 1, 1, '2019-09-22 15:56:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142579084761600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 15:56:19', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142883038535700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:01:23', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142895087271000, 'User', 1, 'ลบ User {\"user_id\":1569142882,\"name\":\"123456 123456\",\"public_email\":\"theerayutkampan14092539@gmail.comddfds\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"123456\",\"lastname\":\"123456\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:01:35', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142895099518500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:01:35', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142941001020800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:02:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142945088019600, 'User', 1, 'ลบ User {\"user_id\":1568109445,\"name\":\"ครู นิก\",\"public_email\":\"magg@hds.con\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"ครู\",\"lastname\":\"นิก\",\"tel\":\"0878674893\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:02:25', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142945098553800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:02:25', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142948013448100, 'User', 1, 'ลบ User {\"user_id\":1568167568,\"name\":\"วิืท11 วิท11\",\"public_email\":\"maggyopan07@gmail.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"วิืท11\",\"lastname\":\"วิท11\",\"tel\":\"0613544584\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:02:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569142948024202000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:02:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569143044003562700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-22 16:04:04', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569159701055059700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 20:41:41', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569160061085227200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 20:47:41', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569160970009295300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 21:02:50', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569164227068732900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 21:57:07', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569164912033800700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.133', 1, 1, '2019-09-22 22:08:32', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569164969015617200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 22:09:29', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569164979093526700, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.133', 1, 1, '2019-09-22 22:09:39', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165079038241000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 22:11:19', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165135036797900, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 22:12:15', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165140008786700, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.133', 1, 1, '2019-09-22 22:12:20', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165141060848100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 22:12:21', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165146077513300, 'Login', 1, 'Login โดย: 1569165134:teacher teacher IP: 115.87.163.133', 1, 1569165134, '2019-09-22 22:12:26', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165155044088400, 'Logout', 1, 'Logout โดย 1569165134:teacher teacher IP: 115.87.163.133', 1, 1569165134, '2019-09-22 22:12:35', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165156072464300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 22:12:36', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165160098768300, 'Login', 1, 'Login โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.133', 1, 1, '2019-09-22 22:12:40', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165162086926600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 22:12:42', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165169090589800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.133', 1, 1, '2019-09-22 22:12:49', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165171028156700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 22:12:51', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165176052440900, 'Login', 1, 'Login โดย: 1569165134:teacher teacher IP: 115.87.163.133', 1, 1569165134, '2019-09-22 22:12:56', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165177079798300, 'Login', 1, 'Login โดย: 1569165134:teacher teacher IP: 115.87.163.133', 1, 1569165134, '2019-09-22 22:12:57', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165179073933900, 'User', 1, 'ดูหน้า User โดย: 1569165134:teacher teacher IP:115.87.163.133', 1, 1569165134, '2019-09-22 22:12:59', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569165875007781000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.242.14', 1, 1, '2019-09-22 22:24:35', NULL, NULL, '223.206.242.14');
INSERT INTO `systemlog` VALUES (1569166021081409200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.242.14', 1, 1, '2019-09-22 22:27:01', NULL, NULL, '223.206.242.14');
INSERT INTO `systemlog` VALUES (1569166146003427000, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:223.206.242.14', 1, 1, '2019-09-22 22:29:06', NULL, NULL, '223.206.242.14');
INSERT INTO `systemlog` VALUES (1569168320070512800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 23:05:20', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168331047808700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 23:05:31', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168343035462200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 23:05:43', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168349049758700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 23:05:49', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168359042273100, 'Account', 1, 'ดูหน้า Account โดย:1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 23:05:59', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168369032822400, 'Edit Account', 1, 'แก้ไข Account โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 23:06:09', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168369059291600, 'Account', 1, 'ดูหน้า Account โดย:1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 23:06:09', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168374002174600, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.133', 1, 1, '2019-09-22 23:06:14', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168375062549900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 23:06:15', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168393057330700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 23:06:33', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168395063436700, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.133', 1, 1, '2019-09-22 23:06:35', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168437003746700, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.133', 1, 1, '2019-09-22 23:07:17', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168439030170700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 23:07:19', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168473082163700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 23:07:53', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168708018246400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 23:11:48', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168787091563000, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 115.87.163.133', 1, 1, '2019-09-22 23:13:07', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569168789056271500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 23:13:09', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569170629098868100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.133', 1, NULL, '2019-09-22 23:43:49', NULL, NULL, '115.87.163.133');
INSERT INTO `systemlog` VALUES (1569239265072469000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 159.192.223.201', 1, NULL, '2019-09-23 18:47:45', NULL, NULL, '159.192.223.201');
INSERT INTO `systemlog` VALUES (1569239276087870500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:159.192.223.201', 1, 1, '2019-09-23 18:47:56', NULL, NULL, '159.192.223.201');
INSERT INTO `systemlog` VALUES (1569311105096154200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-24 14:45:05', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569311233082712300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-24 14:47:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569311379013272800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-24 14:49:39', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569312226086223000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-24 15:03:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569325853066935400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-24 18:50:53', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569329200080475500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-24 19:46:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569330511061896700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-24 20:08:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569337128012883300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-24 21:58:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569399118031902400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-09-25 15:11:58', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569399154025586300, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.197', 1, 1, '2019-09-25 15:12:34', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569399809012912700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-09-25 15:23:29', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569399822088950600, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:23:42', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569399960017715800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:26:00', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569399965048909700, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.197', 1, 1, '2019-09-25 15:26:05', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400125055015300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-09-25 15:28:45', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400794054117200, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:39:54', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400802022586500, 'User', 1, 'ลบ User {\"user_id\":1569165134,\"name\":\"teacher teacher\",\"public_email\":\"teacher@gmail.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"teacher\",\"lastname\":\"teacher\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:40:02', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400802034825300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:40:02', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400812029542100, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:40:12', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400821067132800, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.197', 1, 1, '2019-09-25 15:40:21', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400822093438600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-09-25 15:40:22', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400832031764900, 'Logout', 1, 'Logout โดย 1569400811:123456 123456 IP: 202.29.24.197', 1, 1569400811, '2019-09-25 15:40:32', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400833049445300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-09-25 15:40:33', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400838073540300, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:40:38', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400857095306500, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:40:57', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400863024508100, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.197', 1, 1, '2019-09-25 15:41:03', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400864072710200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-09-25 15:41:04', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400870066801500, 'User', 1, 'ดูหน้า User โดย: 1569400811:123456 123456 IP:202.29.24.197', 1, 1569400811, '2019-09-25 15:41:10', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400871094988000, 'User', 1, 'ดูหน้า User โดย: 1569400811:123456 123456 IP:202.29.24.197', 1, 1569400811, '2019-09-25 15:41:11', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400899001203700, 'User', 1, 'ดูหน้า User โดย: 1569400811:123456 123456 IP:202.29.24.197', 1, 1569400811, '2019-09-25 15:41:39', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400901041106400, 'User', 1, 'ดูหน้า User โดย: 1569400811:123456 123456 IP:202.29.24.197', 1, 1569400811, '2019-09-25 15:41:41', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400908091693900, 'User', 1, 'ดูหน้า User โดย: 1569400811:123456 123456 IP:202.29.24.197', 1, 1569400811, '2019-09-25 15:41:48', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400911021311900, 'User', 1, 'ดูหน้า User โดย: 1569400811:123456 123456 IP:202.29.24.197', 1, 1569400811, '2019-09-25 15:41:51', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400956083620200, 'Logout', 1, 'Logout โดย 1569400811:123456 123456 IP: 202.29.24.197', 1, 1569400811, '2019-09-25 15:42:36', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569400978084973100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-09-25 15:42:58', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569401136090111900, 'Logout', 1, 'Logout โดย 1:เจ้าหน้าที่ ดูเเลระบบ IP: 202.29.24.197', 1, 1, '2019-09-25 15:45:36', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569401730007102900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-09-25 15:55:30', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569401735058173800, 'User', 1, 'ดูหน้า User โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:202.29.24.197', 1, 1, '2019-09-25 15:55:35', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1569423963080534500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 22:06:03', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569423992024135900, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-25 22:06:32', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569424050097708400, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:เจ้าหน้าที่ ดูเเลระบบ IP:115.87.163.129', 1, 1, '2019-09-25 22:07:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569424051024240200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:07:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569424093002320000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:08:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569425928052305500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-25 22:38:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426352055576500, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 22:45:52', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426390027643700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 22:46:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426433005356700, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:47:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426467014486800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:47:47', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426496019866100, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:48:16', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426496050803000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:48:16', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426503015484400, 'Account', 1, 'ดูหน้า Account โดย:1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:48:23', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426771079797600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:52:51', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426799042224000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:53:19', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426801091803500, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:53:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426804053105600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:53:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426808045430700, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:53:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426813061563000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:53:33', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426821036683200, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:53:41', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426839097461300, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:53:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426871032403400, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569400811,\"name\":\"123456 123456\",\"public_email\":\"hdjk@dsjkhf.cp\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"123456\",\"lastname\":\"123456\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:54:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426884056479900, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 22:54:44', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426886048737300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 22:54:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426929050662100, 'Logout', 1, 'Logout โดย 1569426839:123456789 123456789 IP: 115.87.163.129', 1, 1569426839, '2019-09-25 22:55:29', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426930053463200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 22:55:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426953074252400, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:55:53', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569426983037154500, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:56:23', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427027027350200, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 22:57:07', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427028067371100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 22:57:08', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427068026584200, 'Logout', 1, 'Logout โดย 1569426839:123456789 123456789 IP: 115.87.163.129', 1, 1569426839, '2019-09-25 22:57:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427069077922100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 22:57:49', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427075046020000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:57:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427128025143600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 22:58:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427141068425600, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 22:59:01', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427143009027300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 22:59:03', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427307074558500, 'Logout', 1, 'Logout โดย 1569426839:123456789 123456789 IP: 115.87.163.129', 1, 1569426839, '2019-09-25 23:01:47', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427420083493600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:03:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427429040679200, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:03:49', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427438018196000, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 23:03:58', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427439060120700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:03:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427537007482000, 'Logout', 1, 'Logout โดย 1569400811:123456 123456 IP: 115.87.163.129', 1, 1569400811, '2019-09-25 23:05:37', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427538084505100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:05:38', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427619052268900, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 23:06:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427620072742500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:07:00', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427637047307200, 'User', 1, 'ดูหน้า User โดย: 1569400811:123456 123456 IP:115.87.163.129', 1, 1569400811, '2019-09-25 23:07:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427809032603500, 'Logout', 1, 'Logout โดย 1569400811:123456 123456 IP: 115.87.163.129', 1, 1569400811, '2019-09-25 23:10:09', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427810067317800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:10:10', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427815045172900, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:10:15', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427819046998800, 'User', 1, 'ลบ User {\"user_id\":1569400811,\"name\":\"123456 123456\",\"public_email\":\"hdjk@dsjkhf.cp\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"123456\",\"lastname\":\"123456\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:10:19', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427819058411200, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:10:19', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427820074478200, 'User', 1, 'ลบ User {\"user_id\":1569426839,\"name\":\"123456789 123456789\",\"public_email\":\"teachesdf@gmail.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"123456789\",\"lastname\":\"123456789\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:10:20', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427820083477300, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:10:20', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427824008998000, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 23:10:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427846081475400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:10:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427890004936800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:11:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427932075219600, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:12:12', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427932083938700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:12:12', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427977040637400, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:12:57', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569427977048424700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:12:57', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428146067356000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:15:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428172011813900, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:16:12', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428181053953000, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 23:16:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428182072960200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:16:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428193020220500, 'Logout', 1, 'Logout โดย 1569428171:หมู ตอน IP: 115.87.163.129', 1, 1569428171, '2019-09-25 23:16:33', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428194042519300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:16:34', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428208010364900, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-25 23:16:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428217025167200, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-25 23:16:57', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428218046417200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:16:58', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428226004560200, 'User', 1, 'ดูหน้า User โดย: 1569428171:หมู ตอน IP:115.87.163.129', 1, 1569428171, '2019-09-25 23:17:06', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428227095042000, 'User', 1, 'ดูหน้า User โดย: 1569428171:หมู ตอน IP:115.87.163.129', 1, 1569428171, '2019-09-25 23:17:07', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428294099388200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1569428171, '2019-09-25 23:18:14', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428297097389100, 'Logout', 1, 'Logout โดย 1569428171:หมู ตอน IP: 115.87.163.129', 1, 1569428171, '2019-09-25 23:18:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428302009056700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:18:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428657029039200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-25 23:24:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428666010722000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-25 23:24:26', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569428751095412400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-25 23:25:51', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432534071400700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 00:28:54', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432561082785900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 00:29:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432833043659600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 00:33:53', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432868063957100, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 00:34:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432879064960400, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-26 00:34:39', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432880063554900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 00:34:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432887097471800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 00:34:47', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432903023998400, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 00:35:03', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432906046714500, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-26 00:35:06', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432907056751300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 00:35:07', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432921075643000, 'Logout', 1, 'Logout โดย 1569432867:sdf sdfd IP: 115.87.163.129', 1, 1569432867, '2019-09-26 00:35:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432922097372800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 00:35:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432929008179200, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 00:35:29', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432939024537000, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-26 00:35:39', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432940068199800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 00:35:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432946004213400, 'User', 1, 'ดูหน้า User โดย: 1569432867:sdf sdfd IP:115.87.163.129', 1, 1569432867, '2019-09-26 00:35:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432949040781900, 'User', 1, 'ดูหน้า User โดย: 1569432867:sdf sdfd IP:115.87.163.129', 1, 1569432867, '2019-09-26 00:35:49', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432950055005200, 'User', 1, 'ดูหน้า User โดย: 1569432867:sdf sdfd IP:115.87.163.129', 1, 1569432867, '2019-09-26 00:35:50', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432955018037500, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569428171,\"name\":\"หมู ตอน\",\"public_email\":\"teachesdf@gmail.com11\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"หมู\",\"lastname\":\"ตอน\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1569432867:sdf sdfd IP:115.87.163.129', 1, 1569432867, '2019-09-26 00:35:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569432978013316200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1569432867, '2019-09-26 00:36:18', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569434337031282500, 'User', 1, 'ดูหน้า User โดย: 1569432867:sdf sdfd IP:115.87.163.129', 1, 1569432867, '2019-09-26 00:58:57', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569435709017055200, 'Logout', 1, 'Logout โดย 1569432867:sdf sdfd IP: 115.87.163.129', 1, 1569432867, '2019-09-26 01:21:49', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569435729033833600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 01:22:09', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569436002079707600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 01:26:42', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569471959033825100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 11:25:59', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569472097010249000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 11:28:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569472230044238100, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 11:30:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569486801063629800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 15:33:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569486858061360700, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 15:34:18', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569487125030864400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-26 15:38:45', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569491435011763300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 16:50:35', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569491440013083600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 16:50:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493391027085900, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:23:11', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493451058080100, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:11', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493455015755000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:15', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493458018561700, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569432867,\"name\":\"sdf sdfd\",\"public_email\":\"123@123.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"sdf\",\"lastname\":\"sdfd\",\"tel\":\"0878674893\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:18', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493462093813100, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"theerayutkampan14092539@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"ผู้ดูเเลระบบ\",\"website\":\"\",\"bio\":\"07/08/1996\",\"timezone\":null,\"firstname\":\"ธีระยุทธ \",\"lastname\":\"คำพันธ์\",\"tel\":\"0613545845\",\"avatar_path\":\"1/uq4ASsMnbJpChGWZSZiUOGgqqAgAfp1v.jpg\",\"avatar_base_url\":\"http://storage2.bloodcloud.online/source\",\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493464091094100, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569428171,\"name\":\"หมู ตอน\",\"public_email\":\"teachesdf@gmail.com11\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"หมู\",\"lastname\":\"ตอน\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493471015840000, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"u4HDVof7R9XdILu4NcnPYwvcgJdTiEA-bBtwIFP9qsPcuapuv443vr5NjfIYn4sIZqjMoCXdJxM7byR0MIT-qg==\",\"Profile\":{\"firstname\":\"หมู\",\"lastname\":\"ตอน\",\"public_email\":\"teachesdf@gmail.com11\",\"tel\":\"1234567890\",\"bio\":\"13/02/2511\",\"image\":\"\"},\"ajax\":\"Profile\"} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493471028725500, 'User', 1, 'แก้ไข User {\"_csrf-backend\":\"u4HDVof7R9XdILu4NcnPYwvcgJdTiEA-bBtwIFP9qsPcuapuv443vr5NjfIYn4sIZqjMoCXdJxM7byR0MIT-qg==\",\"Profile\":{\"firstname\":\"หมู\",\"lastname\":\"ตอน\",\"public_email\":\"teachesdf@gmail.com11\",\"tel\":\"1234567890\",\"bio\":\"13/02/2511\",\"image\":\"\"}} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493471040227300, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493472043211400, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569428171,\"name\":\"หมู ตอน\",\"public_email\":\"teachesdf@gmail.com11\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":\"13/02/2511\",\"timezone\":null,\"firstname\":\"หมู\",\"lastname\":\"ตอน\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:24:32', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493636056879300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-26 17:27:16', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493641071414100, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-26 17:27:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493671010152700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 17:27:51', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493701062220400, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:28:21', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493718001255700, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:28:38', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569493718008869100, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:28:38', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494124066026800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:35:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494191009822500, 'User', 1, 'ลบ User {\"user_id\":1569432867,\"name\":\"sdf sdfd\",\"public_email\":\"123@123.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"sdf\",\"lastname\":\"sdfd\",\"tel\":\"0878674893\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:36:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494191020759400, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:36:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494193080258700, 'User', 1, 'ลบ User {\"user_id\":1569428171,\"name\":\"หมู ตอน\",\"public_email\":\"teachesdf@gmail.com11\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":\"13/02/2511\",\"timezone\":null,\"firstname\":\"หมู\",\"lastname\":\"ตอน\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:36:33', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494193089727900, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:36:33', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494216028176800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:36:56', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494227098521900, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-26 17:37:07', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494229025679200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 17:37:09', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494242063681200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1569494215:ไก้ ไข่ IP:115.87.163.129', 1, 1569494215, '2019-09-26 17:37:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494248003034300, 'Logout', 1, 'Logout โดย 1569494215:ไก้ ไข่ IP: 115.87.163.129', 1, 1569494215, '2019-09-26 17:37:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494249029694900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 17:37:29', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494255082349700, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 17:37:35', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494278039184600, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-26 17:37:58', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494280058368000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 17:38:00', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494293004455000, 'User', 1, 'ดูหน้า User โดย: 1569494215:ไก้ ไข่ IP:115.87.163.129', 1, 1569494215, '2019-09-26 17:38:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494295081801700, 'User', 1, 'ดูหน้า User โดย: 1569494215:ไก้ ไข่ IP:115.87.163.129', 1, 1569494215, '2019-09-26 17:38:15', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494297027870800, 'User', 1, 'ดูหน้า User โดย: 1569494215:ไก้ ไข่ IP:115.87.163.129', 1, 1569494215, '2019-09-26 17:38:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494300059765700, 'User', 1, 'ดูหน้า User โดย: 1569494215:ไก้ ไข่ IP:115.87.163.129', 1, 1569494215, '2019-09-26 17:38:20', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494321044114100, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569494215,\"name\":\"ไก้ ไข่\",\"public_email\":\"12asd3@1ss3.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"ไก้\",\"lastname\":\"ไข่\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1569494215:ไก้ ไข่ IP:115.87.163.129', 1, 1569494215, '2019-09-26 17:38:41', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569494513034769000, 'User', 1, 'ดูหน้า User โดย: 1569494215:ไก้ ไข่ IP:115.87.163.129', 1, 1569494215, '2019-09-26 17:41:53', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498191097663700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 18:43:11', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498220043515500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 18:43:40', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498254066316400, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 18:44:14', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498265099735400, 'Account', 1, 'ดูหน้า Account โดย:1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 18:44:25', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498578004302800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 18:49:38', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498648015680800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 18:50:48', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498682088083300, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-26 18:51:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498684008855700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 18:51:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498691058380700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1569498647:asd sdklfj IP:115.87.163.129', 1, 1569498647, '2019-09-26 18:51:31', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498705010859900, 'Logout', 1, 'Logout โดย 1569498647:asd sdklfj IP: 115.87.163.129', 1, 1569498647, '2019-09-26 18:51:45', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498706058665100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 18:51:46', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498711098984200, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 18:51:51', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498721045497700, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.163.129', 1, 1, '2019-09-26 18:52:01', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498722054506100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 18:52:02', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498732037860900, 'User', 1, 'ดูหน้า User โดย: 1569498647:asd sdklfj IP:115.87.163.129', 1, 1569498647, '2019-09-26 18:52:12', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569498739023414600, 'User', 1, 'ดูหน้า User โดย: 1569498647:asd sdklfj IP:115.87.163.129', 1, 1569498647, '2019-09-26 18:52:19', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569499092095562700, 'User', 1, 'ดูหน้า User โดย: 1569498647:asd sdklfj IP:115.87.163.129', 1, 1569498647, '2019-09-26 18:58:12', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569511228050142200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 22:20:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569512111071651800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 180.180.36.180', 1, NULL, '2019-09-26 22:35:11', NULL, NULL, '180.180.36.180');
INSERT INTO `systemlog` VALUES (1569512327069523700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 180.180.36.180', 1, NULL, '2019-09-26 22:38:47', NULL, NULL, '180.180.36.180');
INSERT INTO `systemlog` VALUES (1569513774050396700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 23:02:54', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569513780032891700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-26 23:03:00', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569515408049255200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-26 23:30:08', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569515428005326100, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 23:30:28', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569515430018603400, 'Account', 1, 'ดูหน้า Account โดย:1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 23:30:30', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569515437068678600, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-26 23:30:37', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569550169071446700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 09:09:29', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569551108030652700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 09:25:08', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569553359087372400, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 202.29.24.199', 1, 1, '2019-09-27 10:02:39', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569553974031914300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 10:12:54', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569556266094638100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 10:51:06', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569556296023020200, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 202.29.24.199', 1, 1, '2019-09-27 10:51:36', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569557896008552100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 11:18:16', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569557933050962600, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 202.29.24.199', 1, 1, '2019-09-27 11:18:53', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569557939000505400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 11:18:59', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569558002092038400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 11:20:02', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569558080028793100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 11:21:20', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569558593012362800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.199', 1, 1, '2019-09-27 11:29:53', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559182093904000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.199', 1, 1, '2019-09-27 11:39:42', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559311084368800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.199', 1, 1, '2019-09-27 11:41:51', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559324028409200, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 202.29.24.199', 1, 1, '2019-09-27 11:42:04', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559325066110100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 11:42:05', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559350044504200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1569559311:xxx xxx IP:202.29.24.199', 1, 1569559311, '2019-09-27 11:42:30', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559367090570900, 'Logout', 1, 'Logout โดย 1569559311:xxx xxx IP: 202.29.24.199', 1, 1569559311, '2019-09-27 11:42:47', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559370074526600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 11:42:50', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559376099225600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.199', 1, 1, '2019-09-27 11:42:56', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559407073769100, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 202.29.24.199', 1, 1, '2019-09-27 11:43:27', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559408090289200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.199', 1, NULL, '2019-09-27 11:43:28', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559417043830000, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:202.29.24.199', 1, 1569559311, '2019-09-27 11:43:37', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559418019686900, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:202.29.24.199', 1, 1569559311, '2019-09-27 11:43:38', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569559420040196100, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:202.29.24.199', 1, 1569559311, '2019-09-27 11:43:40', NULL, NULL, '202.29.24.199');
INSERT INTO `systemlog` VALUES (1569565926070570100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-09-27 13:32:06', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1569566124024105000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-09-27 13:35:24', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1569566265052751000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, 1, '2019-09-27 13:37:45', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1569566334086456100, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.198', 1, 1, '2019-09-27 13:38:54', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1569571680062325900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-27 15:08:00', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569595393070725900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-27 21:43:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569641151061949300, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:223.206.246.174', 1, 1, '2019-09-28 10:25:51', NULL, NULL, '223.206.246.174');
INSERT INTO `systemlog` VALUES (1569643344072913700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-28 11:02:24', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569643354032471400, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-28 11:02:34', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569643364042656700, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-28 11:02:44', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569671570085131200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-28 18:52:50', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569683313024861000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:49.49.40.2', 1, 1, '2019-09-28 22:08:33', NULL, NULL, '49.49.40.2');
INSERT INTO `systemlog` VALUES (1569683375033835600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:49.49.40.2', 1, 1, '2019-09-28 22:09:35', NULL, NULL, '49.49.40.2');
INSERT INTO `systemlog` VALUES (1569683437046619000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-28 22:10:37', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569683453069299600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-28 22:10:53', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569683461099073500, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-28 22:11:01', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569683886073472700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-28 22:18:06', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569684507056730800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-28 22:28:27', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569734455039624200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-29 12:20:55', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569734461090011600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-29 12:21:01', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569825841099560200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-09-30 13:44:01', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569826693065160800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-30 13:58:13', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569827122031202800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-30 14:05:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569828632004266600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-09-30 14:30:32', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569828714004812600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-09-30 14:31:54', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569904233026780300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-10-01 11:30:33', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569908177048094600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-10-01 12:36:17', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569908874054983800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-10-01 12:47:54', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569909327042404600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-10-01 12:55:27', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569909462080589400, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.163.129', 1, 1, '2019-10-01 12:57:42', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569909908075271500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, 1, '2019-10-01 13:05:08', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569913064029119800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-10-01 13:57:44', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569921922064653800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-10-01 16:25:22', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1569987387081236900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.163.129', 1, NULL, '2019-10-02 10:36:27', NULL, NULL, '115.87.163.129');
INSERT INTO `systemlog` VALUES (1570033125071807700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 182.232.46.253', 1, NULL, '2019-10-02 23:18:45', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570033179004104200, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:182.232.46.253', 1, 1, '2019-10-02 23:19:39', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570033206091965200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:182.232.46.253', 1, 1, '2019-10-02 23:20:06', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570033276044476000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:182.232.46.253', 1, 1, '2019-10-02 23:21:16', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570033279010491000, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 182.232.46.253', 1, 1, '2019-10-02 23:21:19', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570033281035582500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 182.232.46.253', 1, NULL, '2019-10-02 23:21:21', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570033300082381700, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1569559311:xxx xxx IP:182.232.46.253', 1, 1569559311, '2019-10-02 23:21:40', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570034368039476900, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:182.232.46.253', 1, 1569559311, '2019-10-02 23:39:28', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570034375047067100, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:182.232.46.253', 1, 1569559311, '2019-10-02 23:39:35', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570034381021795800, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:182.232.46.253', 1, 1569559311, '2019-10-02 23:39:41', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570034381025804500, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:182.232.46.253', 1, 1569559311, '2019-10-02 23:39:41', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570034387061999500, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:182.232.46.253', 1, 1569559311, '2019-10-02 23:39:47', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570034393029200500, 'User', 1, 'ดูหน้า User โดย: 1569559311:xxx xxx IP:182.232.46.253', 1, 1569559311, '2019-10-02 23:39:53', NULL, NULL, '182.232.46.253');
INSERT INTO `systemlog` VALUES (1570168798005260000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-10-04 12:59:58', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1570173121079726300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-10-04 14:12:01', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1570289275077672600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.140', 1, NULL, '2019-10-05 22:27:55', NULL, NULL, '115.87.162.140');
INSERT INTO `systemlog` VALUES (1570609263033204300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.140', 1, NULL, '2019-10-09 15:21:03', NULL, NULL, '115.87.162.140');
INSERT INTO `systemlog` VALUES (1571054405076925000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 110.78.181.107', 1, NULL, '2019-10-14 19:00:05', NULL, NULL, '110.78.181.107');
INSERT INTO `systemlog` VALUES (1571054453043308000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:110.78.181.107', 1, 1, '2019-10-14 19:00:53', NULL, NULL, '110.78.181.107');
INSERT INTO `systemlog` VALUES (1571061064052179900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-14 20:51:04', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571061089037642200, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.162.156', 1, 1, '2019-10-14 20:51:29', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571074434093541000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-15 00:33:54', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571136192093439300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-15 17:43:12', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571295354053172800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-17 13:55:54', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571368203022580200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.197', 1, NULL, '2019-10-18 10:10:03', NULL, NULL, '202.29.24.197');
INSERT INTO `systemlog` VALUES (1571379833076686600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-18 13:23:53', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571404665014179500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-18 20:17:45', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571404728058045000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, 1, '2019-10-18 20:18:48', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571494622037098100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-19 21:17:02', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1571804823060214700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-23 11:27:03', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572074915080390500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-26 14:28:35', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572342845002107600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-29 16:54:05', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572378644035065700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 110.78.183.246', 1, NULL, '2019-10-30 02:50:44', NULL, NULL, '110.78.183.246');
INSERT INTO `systemlog` VALUES (1572379115053899200, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:110.78.183.246', 1, 1, '2019-10-30 02:58:35', NULL, NULL, '110.78.183.246');
INSERT INTO `systemlog` VALUES (1572415549001056000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-30 13:05:49', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572415560046862800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, 1, '2019-10-30 13:06:00', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572415569049072700, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.162.156', 1, 1, '2019-10-30 13:06:09', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572415609089145600, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.162.156', 1, 1, '2019-10-30 13:06:49', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572415755046447600, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 115.87.162.156', 1, 1, '2019-10-30 13:09:15', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572415756094668200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-10-30 13:09:16', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1572881593014458700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.162.156', 1, NULL, '2019-11-04 22:33:13', NULL, NULL, '115.87.162.156');
INSERT INTO `systemlog` VALUES (1573150435095950500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-08 01:13:55', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1573150699087064300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, 1, '2019-11-08 01:18:19', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1573150702014957500, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.129.185', 1, 1, '2019-11-08 01:18:22', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1573383708042648300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-10 18:01:48', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1573628858096552200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-13 14:07:38', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1573628859000933500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-13 14:07:39', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1573898491098152900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-16 17:01:31', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1573966036060929100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-17 11:47:16', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1573990959083609400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.250.140', 1, NULL, '2019-11-17 18:42:39', NULL, NULL, '223.206.250.140');
INSERT INTO `systemlog` VALUES (1573997468060546100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-17 20:31:08', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574086998035380900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-18 21:23:18', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574343448037316100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-21 20:37:28', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574343753000291100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 61.19.2.139', 1, NULL, '2019-11-21 20:42:32', NULL, NULL, '61.19.2.139');
INSERT INTO `systemlog` VALUES (1574344093097829300, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.129.185', 1, 1, '2019-11-21 20:48:13', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574344468006657000, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569559311,\"name\":\"xxx xxx\",\"public_email\":\"dsfdsf@dsfsd.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"xxx\",\"lastname\":\"xxx\",\"tel\":\"0425143570\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.129.185', 1, 1, '2019-11-21 20:54:28', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574344477075214000, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569559311,\"name\":\"xxx xxx\",\"public_email\":\"dsfdsf@dsfsd.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"xxx\",\"lastname\":\"xxx\",\"tel\":\"0425143570\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.129.185', 1, 1, '2019-11-21 20:54:37', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574346323030199400, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.129.185', 1, 1, '2019-11-21 21:25:23', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574346328081962100, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:115.87.129.185', 1, 1, '2019-11-21 21:25:28', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574357464079932100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-22 00:31:04', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574359110078958700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, NULL, '2019-11-22 00:58:30', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574361177068228600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 115.87.129.185', 1, 1, '2019-11-22 01:32:57', NULL, NULL, '115.87.129.185');
INSERT INTO `systemlog` VALUES (1574408250066579400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-11-22 14:37:30', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574408257033534600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-11-22 14:37:37', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574408277069590700, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 202.29.24.198', 1, 1, '2019-11-22 14:37:57', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574408619027817600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-11-22 14:43:39', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574409291081755400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-11-22 14:54:51', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574411123019982100, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.198', 1, 1, '2019-11-22 15:25:23', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574411382012033900, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569559311,\"name\":\"xxx xxx\",\"public_email\":\"dsfdsf@dsfsd.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"xxx\",\"lastname\":\"xxx\",\"tel\":\"0425143570\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.198', 1, 1, '2019-11-22 15:29:42', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574414842011980400, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.198', 1, 1, '2019-11-22 16:27:22', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574414843095476900, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569559311,\"name\":\"xxx xxx\",\"public_email\":\"dsfdsf@dsfsd.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"xxx\",\"lastname\":\"xxx\",\"tel\":\"0425143570\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.198', 1, 1, '2019-11-22 16:27:23', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574415229092245800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.247.149', 1, NULL, '2019-11-22 16:33:49', NULL, NULL, '223.206.247.149');
INSERT INTO `systemlog` VALUES (1574416524067513700, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 202.29.24.198', 1, 1, '2019-11-22 16:55:24', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574416526055295600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-11-22 16:55:26', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574418739021996600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, NULL, '2019-11-22 17:32:19', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574662479033949900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.194', 1, NULL, '2019-11-25 13:14:39', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1574662487029060100, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.194', 1, 1, '2019-11-25 13:14:47', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1574670389016743900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.194', 1, NULL, '2019-11-25 15:26:29', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1574670982054733700, 'Logout', 1, 'Logout โดย 1:ธีระยุทธ  คำพันธ์ IP: 202.29.24.194', 1, 1, '2019-11-25 15:36:22', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1574670984048510000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.194', 1, NULL, '2019-11-25 15:36:24', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1574674394067843000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.198', 1, 1, '2019-11-25 16:33:14', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574674779019748000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.198', 1, 1, '2019-11-25 16:39:39', NULL, NULL, '202.29.24.198');
INSERT INTO `systemlog` VALUES (1574677900015016300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 202.29.24.194', 1, 1, '2019-11-25 17:31:40', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1574678529022056000, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:202.29.24.194', 1, 1, '2019-11-25 17:42:09', NULL, NULL, '202.29.24.194');
INSERT INTO `systemlog` VALUES (1575126015049088000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.189', 1, NULL, '2019-11-30 22:00:15', NULL, NULL, '49.228.186.189');
INSERT INTO `systemlog` VALUES (1575371497008254700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 223.206.247.54', 1, NULL, '2019-12-03 18:11:37', NULL, NULL, '223.206.247.54');
INSERT INTO `systemlog` VALUES (1575543054045619400, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.186.176', 1, NULL, '2019-12-05 17:50:54', NULL, NULL, '49.228.186.176');
INSERT INTO `systemlog` VALUES (1575952619078720800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.176.188', 1, NULL, '2019-12-10 11:36:59', NULL, NULL, '49.228.176.188');
INSERT INTO `systemlog` VALUES (1576519614035767900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 184.22.242.79', 1, NULL, '2019-12-17 01:06:54', NULL, NULL, '184.22.242.79');
INSERT INTO `systemlog` VALUES (1576573259033914700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 159.192.217.86', 1, NULL, '2019-12-17 16:00:59', NULL, NULL, '159.192.217.86');
INSERT INTO `systemlog` VALUES (1577013669047474300, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.187.219', 1, NULL, '2019-12-22 18:21:09', NULL, NULL, '49.228.187.219');
INSERT INTO `systemlog` VALUES (1577439283081281600, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.139.9', 1, NULL, '2019-12-27 16:34:43', NULL, NULL, '49.228.139.9');
INSERT INTO `systemlog` VALUES (1578166295082479900, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 89.238.154.166', 1, NULL, '2020-01-05 02:31:35', NULL, NULL, '89.238.154.166');
INSERT INTO `systemlog` VALUES (1578201348070620100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.177.255', 1, NULL, '2020-01-05 12:15:48', NULL, NULL, '49.228.177.255');
INSERT INTO `systemlog` VALUES (1578398944021636100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 82.102.27.53', 1, NULL, '2020-01-07 19:09:04', NULL, NULL, '82.102.27.53');
INSERT INTO `systemlog` VALUES (1578831235004505200, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.139.59', 1, NULL, '2020-01-12 19:13:55', NULL, NULL, '49.228.139.59');
INSERT INTO `systemlog` VALUES (1579944731082214000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 49.228.139.177', 1, NULL, '2020-01-25 16:32:11', NULL, NULL, '49.228.139.177');
INSERT INTO `systemlog` VALUES (1580006318061814100, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 182.232.159.107', 1, NULL, '2020-01-26 09:38:38', NULL, NULL, '182.232.159.107');
INSERT INTO `systemlog` VALUES (1580007673080932800, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 127.0.0.1', 1, NULL, '2020-01-26 10:01:13', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580007761032109700, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 127.0.0.1', 1, NULL, '2020-01-26 10:02:41', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580007807038521000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 127.0.0.1', 1, NULL, '2020-01-26 10:03:27', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580007854023122000, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 127.0.0.1', 1, NULL, '2020-01-26 10:04:14', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580007898003654500, 'Login form', 1, 'ผู้ใช้ทั่วไปเข้าหน้า Login IP: 127.0.0.1', 1, NULL, '2020-01-26 10:04:58', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580008368003104800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:12:48', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580008670068719100, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:17:50', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580008682049222700, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:18:02', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580008697082012500, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:18:17', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580008796087364900, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:19:56', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580008800025168900, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:20:00', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009096096752100, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:24:56', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009151049204200, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:25:51', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009171095055800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:26:11', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009180058991500, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:26:20', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009203038391300, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:26:43', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009530032889600, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:32:10', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009577069621000, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:32:57', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009577080367800, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:32:57', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580009632008368400, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:33:52', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580010040008018500, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:40:40', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580010134080882500, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:42:14', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580010134097456000, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:42:14', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580010140090975500, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:42:20', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580010143000683800, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:42:23', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580010196067851300, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:43:16', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580010213087690100, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:43:33', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580010226018172700, 'User', 1, 'ดูหน้า User โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:43:46', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580011050097135900, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:57:30', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580011086026781200, 'Update Profile', 1, 'แก้ไขข้อมูลส่วนตัว โดย: 1:ธีระยุทธ  คำพันธ์ IP:127.0.0.1', 1, 1, '2020-01-26 10:58:06', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580011086046172500, 'Preview Profile', 1, 'ดูข้อมูลส่วนตัว โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 10:58:06', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580011093062143200, 'Account', 1, 'ดูหน้า Account โดย:1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 10:58:13', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580011111045698200, 'Account', 1, 'ดูหน้า Account โดย:1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 10:58:31', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013336076862000, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:35:36', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013344045850600, 'User', 1, 'ลบ User {\"user_id\":1569559311,\"name\":\"xxx xxx\",\"public_email\":\"dsfdsf@dsfsd.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"xxx\",\"lastname\":\"xxx\",\"tel\":\"0425143570\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:35:44', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013344085490700, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:35:44', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013394077419300, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:36:34', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013398006303700, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:36:38', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013439071641400, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:37:19', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013444016924400, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569498647,\"name\":\"asd sdklfj\",\"public_email\":\"12s3@1ss3.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"asd\",\"lastname\":\"sdklfj\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:37:24', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013447027488800, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1569494215,\"name\":\"ไก้ ไข่\",\"public_email\":\"12asd3@1ss3.com\",\"gravatar_email\":null,\"gravatar_id\":null,\"location\":null,\"website\":null,\"bio\":null,\"timezone\":null,\"firstname\":\"ไก้\",\"lastname\":\"ไข่\",\"tel\":\"1234567890\",\"avatar_path\":null,\"avatar_base_url\":null,\"sitecode\":null} โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:37:27', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013450065968600, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"adminservice@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"ผู้ดูเเลระบบ\",\"website\":\"\",\"bio\":\"07/08/1993\",\"timezone\":null,\"firstname\":\"Admin\",\"lastname\":\"Service\",\"tel\":\"0650859480\",\"avatar_path\":\"1/cGeR4y1X0o_ocwwN3IRkcvQ6zpYbqofa.jpeg\",\"avatar_base_url\":\"http://storage.student1.local/source\",\"sitecode\":null} โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:37:30', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013453046427500, 'User', 1, 'เปิดฟอร์มแก้ไข User {\"user_id\":1,\"name\":\"nuttaphon chanpan\",\"public_email\":\"adminservice@gmail.com\",\"gravatar_email\":\"chanpan.nuttaphon1993@gmail.com\",\"gravatar_id\":\"d70f6226ff8caba303baede9f0892c0e\",\"location\":\"ผู้ดูเเลระบบ\",\"website\":\"\",\"bio\":\"07/08/1993\",\"timezone\":null,\"firstname\":\"Admin\",\"lastname\":\"Service\",\"tel\":\"0650859480\",\"avatar_path\":\"1/cGeR4y1X0o_ocwwN3IRkcvQ6zpYbqofa.jpeg\",\"avatar_base_url\":\"http://storage.student1.local/source\",\"sitecode\":null} โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:37:33', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013519001376000, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:38:39', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013529057206100, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:38:49', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013567087127800, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:39:27', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013581036235100, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:39:41', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013620092997800, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:40:20', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013679087160600, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:41:19', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013689045816800, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:41:29', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580013955034595700, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:45:55', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580014143048423400, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:49:03', NULL, NULL, '127.0.0.1');
INSERT INTO `systemlog` VALUES (1580014148072141300, 'User', 1, 'ดูหน้า User โดย: 1:Admin Service IP:127.0.0.1', 1, 1, '2020-01-26 11:49:08', NULL, NULL, '127.0.0.1');
COMMIT;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL COMMENT 'ลำดับ',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คำถาม',
  `answer` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คำตอบที่ถูกต้อง',
  `create_by` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'สร้างเมื่อ',
  `update_by` bigint(20) DEFAULT NULL COMMENT 'แก้ไขโดย',
  `update_date` datetime DEFAULT NULL COMMENT 'แก้ไขเมื่อ',
  `type` int(1) DEFAULT NULL COMMENT 'ประเภทก่อนหรือหลังเรียน',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of test
-- ----------------------------
BEGIN;
INSERT INTO `test` VALUES (12, 1, 'ข้อใดคือคำที่ประกอบกันแล้วมีความหมายเหมือนกับคำว่า” ไอที “ ', 'ข', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (13, 2, 'เทคโนโลยีสารสนเทศช่วยเพิ่มประสิทธิภาพในการทำงานอย่างไร ', 'ค', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (14, 3, 'การศึกษาทางไกลผ่านดาวเทียมใช้ประโยชน์จากเทคโนโลยีสารสนเทศใดมากที่สุด ', 'ค', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (15, 4, 'ข้อใดกล่าวถึงผลกระทบจากการใช้เทคโนโลยีสารสนเทศได้ถูกต้อง ', 'ก', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (16, 5, 'ข้อใดไม่ใช่ผลกระทบทางด้านบวกของเทคโนโลยีสารสนเทศที่ส่งผล ต่อคุณภาพชีวิต ', 'ข', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (17, 6, '<p>ข้อใดคือผลกระทบทางด้านบวกจากการใช้เทคโนโลยีสารสนเทศที่มีต่อสังคม</p>', 'ง', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (18, 7, '<p>ผลกระทบทางด้านลบจากการใช้เทคโนโลยีสารสนเทศที่มีต่อสังคมส่งผลเสีย อย่างมากในด้านใด</p>', 'ก', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (19, 8, '<p>ข้อใดไม่ใช้ผลกระทบทางด้านบวกที่เกิดจากการใช้เทคโนโลยีสารสนเทศ ด้านการเรียนการสอน</p>', 'ง', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (20, 9, '<p>ข้อใดคือผลกระทบทางด้านลบที่เกิดจากการใช้เทคโนโลยีสารสนเทศด้านการเรียน การสอน</p>', 'ก', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (21, 10, 'ข้อใดหมายถึงเทคโนโลยีสื่อประสม ', 'ข', NULL, NULL, NULL, NULL, 1);
INSERT INTO `test` VALUES (23, 1, '<p>ข้อใดคือผลกระทบทางด้านลบที่เกิดจากการใช้เทคโนโลยีสารสนเทศด้านการเรียนการสอน</p>', 'ก', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (24, 2, '<p>ข้อใดหมายถึงเทคโนโลยีสื่อประสม</p>', 'ข', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (25, 3, 'ข้อใดคือค่าทีประกอบกันแล้วมความหมายเหมือนกับคำว่า” ไอที “ ', 'ข', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (26, 4, 'เทคโนโลยีสารสนเทศช่วยเพิ่มประสิทธิภาพในการทำงานอย่างไร ', 'ค', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (27, 5, 'การศึกษาทางไกลผ่านดาวเทียมใช้ประโยชน์จากเทคโนโลยีสารสนเทศใดมากที่สุด ', 'ค', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (28, 6, 'ข้อใดกล่าวถึงผลกระทบจากการใช้เทคโนโลยีสารสนเทศได้ถูกต้อง ', 'ก', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (29, 7, 'ข้อใดไมใช้ผลกระทบทางด้านบวกที่เกิดจากการใช้เทคโนโลยีสารสนเทศด้าน การเรียนการสอน ', 'ง', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (30, 8, 'ข้อใดไมใช้ผลกระทบทางด้านบวกของเทคโนโลยีสารสนเทศที่ส่งผล ต่อคุณภาพชีวิต ', 'ข', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (31, 9, 'ข้อใดคือผลกระทบทางด้านบวกจากการใช้เทคโนโลยีสารสนเทศที่มีต่อสังคม ', 'ง', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (32, 10, '<p>ผลกระทบทางด้านลบจากการใช้เทคโนโลยีสารสนเทศที่มีต่อสังคมส่งผลเสีย มีอย่างมากในด้านใด</p>', 'ก', NULL, NULL, NULL, NULL, 2);
INSERT INTO `test` VALUES (52, 11, '<p>5+5</p>', 'ข', NULL, NULL, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for test_choice
-- ----------------------------
DROP TABLE IF EXISTS `test_choice`;
CREATE TABLE `test_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'หัวข้อคำตอบ',
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'คำตอบ',
  `create_at` bigint(20) DEFAULT NULL COMMENT 'สร้างโดย',
  `create_date` datetime DEFAULT NULL COMMENT 'สร้างเมื่อ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of test_choice
-- ----------------------------
BEGIN;
INSERT INTO `test_choice` VALUES (13, 5, 'ก', '<p>ทดสอบ ก</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (14, 5, 'ข', '<p>ทดสอบ ข</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (15, 5, 'ค', '<p>ทดสอบ ค</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (16, 5, 'ง', '<p>ทดสอบ ง</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (17, 6, 'ก', '<p>1111</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (18, 6, 'ข', '<p>22222</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (19, 6, 'ค', '<p>33333</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (20, 6, 'ง', '<p>44444</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (25, 8, 'ก', '<p>ข้อมูล สารสนเทศ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (26, 8, 'ข', '<p>เทคโนโลยี สารสนเทศ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (27, 8, 'ค', '<p>การูประมวลผล เทคโนโลยี</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (28, 8, 'ง', '<p>ข้อมูล การูประมวลผล สารสนเทศ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (29, 9, 'ก', '<p>ช่วยลดจำนวนพนักงานลง </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (30, 9, 'ข', '<p>ช่วยเพิ่มเวลาในการทำงานใหม่มากขึ้น </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (31, 9, 'ค', '<p>ช่วยให้ทำงานได้เร็วและถูกต้องมากขึ้น</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (32, 9, 'ง', '<p>ช่วยให้ประหยัดทรัพยากรและรักษาสิ่งแวดล้อม </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (33, 10, 'ก', '<p>การแสดงผล </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (34, 10, 'ข', '<p>การูประมวลผล </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (35, 10, 'ค', '<p>การสื่อสารและเครือข่าย</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (36, 10, 'ง', '<p>การบันทึกและจัดเก็บข้อมูล </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (37, 11, 'ก', '<p>1</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (38, 11, 'ข', '<p>2</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (39, 11, 'ค', '<p>3</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (40, 11, 'ง', '<p>4</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (41, 12, 'ก', '<p>ข้อมูล สารสนเทศ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (42, 12, 'ข', '<p>เทคโนโลยี สารสนเทศ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (43, 12, 'ค', '<p>&nbsp;การประมวลผล เทคโนโลยี</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (44, 12, 'ง', '<p>ข้อมูล การประมวลผล สารสนเทศ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (45, 13, 'ก', '<p>ช่วยลดจำนวนพนักงานลง </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (46, 13, 'ข', '<p>ช่วยเพิ่มเวลาในการทำงานใหม่มากขึ้น </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (47, 13, 'ค', '<p>ช่วยให้ทำงานได้เร็วและถูกต้องมากขึ้น</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (48, 13, 'ง', '<p>ช่วยให้ประหยัดทรัพยากรและรักษาสิ่งแวดล้อม </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (49, 14, 'ก', '<p>การแสดงผล </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (50, 14, 'ข', '<p>การประมวลผล</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (51, 14, 'ค', '<p>การสื่อสารและเครือข่าย</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (52, 14, 'ง', '<p>การบันทึกและจัดเก็บข้อมูล </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (53, 15, 'ก', '<p>การใช้เทคโนโลยีสารสนเทศจะส่งผลกระทบทางด้านบวกเท่านัน </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (54, 15, 'ข', '<p>การใช้เทคโนโลยีสารสนเทศจะส่งผลกระทบทางด้านลบเท่านัน </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (55, 15, 'ค', '<p>การใช้เทคโนโลยีสารสนเทศจะไม่เกิดผลกระทบใดๆ ทั้งสิ้น</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (56, 15, 'ง', '<p>การใช้เทคโนโลยีสารสนเทศจะส่งผลกระทบทั้งทางด้านบวกและด้านลบ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (57, 16, 'ก', '<p>ส่งเสริมีการเรียนรู้ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (58, 16, 'ข', '<p>ช่วยรักษาวัฒนธรรม </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (59, 16, 'ค', '<p>เพิ่มรายได้ให้แก้ประชาชน</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (60, 16, 'ง', '<p>สร้างความเสมอภาคในสังคม </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (61, 17, 'ก', '<p>ลดปัญหาการละเมิดลิขสิทธิ์ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (62, 17, 'ข', '<p>ลดปัญหาอาชญากรรมทางคอมพิวเตอร์ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (63, 17, 'ค', '<p>ทำให้เข้าถึงข้อมูลของผู้อื่นได้โดยไมต่องข้ออนุญาต</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (64, 17, 'ง', '<p>ทำให้รับรข่าวสารและติดต่อสื่อสารกันได้สะดวกยิ่งขึ้น </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (65, 18, 'ก', '<p>ค่านิยมและวัฒนธรรม </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (66, 18, 'ข', '<p>สุขภาพร่างกาย </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (67, 18, 'ค', '<p>ความปลอดภัย</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (68, 18, 'ง', '<p>ระบบเศรษฐกิจ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (69, 19, 'ก', '<p>การเรียนการสอนผ่านเว็บเพจ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (70, 19, 'ข', '<p>คอมพิวเตอร์เพื่อการเรียนการสอน</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (71, 19, 'ค', '<p>สอนการเรียนการสอนอิเล็กทรอนิกส์</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (72, 19, 'ง', '<p>การเรียนการสอนแบบมีปฏิสัมพันธ์กับผู้สอนโดยตรง </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (73, 20, 'ก', '<p>ผู้เรียนไมสามารถสอบถามผู้สอนได้ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (74, 20, 'ข', '<p>ผู้เรียนไม่มีสถานที่เรียนหนังสื่อ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (75, 20, 'ค', '<p>เครื่องมือที่ใช้ต้องมีความทันสมัย</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (76, 20, 'ง', '<p>&nbsp;สื่อที่ใช้ขาดความน่าสนใจ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (77, 21, 'ก', '<p>การใช้เทคโนโลยีพร้อมกันหลายค้นหา</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (78, 21, 'ข', '<p>การนำเสนอข้อมูลหลายรูปแบบพร้อมกัน </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (79, 21, 'ค', '<p>การนำเสนอข้อมูลด้วยเครื่องคอมพิวเตอร์</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (80, 21, 'ง', '<p>การใช้เครื่องคอมพิวเตอร์รวมกับเครื่องใช้ไฟฟ้าอื่น </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (82, 23, 'ก', '<p>ผู้เรียนไมสามารถสอบถามผู้สอื่นได้ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (83, 23, 'ข', '<p>ผู้เรียนไม่มีสถานทีที่เรียนหนังสื่อ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (84, 23, 'ค', '<p>เครื่องมือที่ใช้ต้องมีความทันสมัย</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (85, 23, 'ง', '<p>สื่อขาดความน่าสนใจ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (86, 24, 'ก', '<p>การใช้เทคโนโลยีพร้อมกันหลายอย่าง </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (87, 24, 'ข', '<p>การนำเสนอข้อมูลหลายรูปแบบพร้อมกัน</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (88, 24, 'ค', '<p>การนำเสนอข้อมูลด้วยเครื่องคอมพิวเตอร์</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (89, 24, 'ง', '<p>การใช้เครื่องคอมพิวเตอร์รวมกับเครื่องใช้ไฟฟ้าอื่น </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (90, 25, 'ก', '<p>ข้อมูล สารสนเทศ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (91, 25, 'ข', '<p>เทคโนโลยี สารสนเทศ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (92, 25, 'ค', '<p>การประมวลผล เทคโนโลยี</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (93, 25, 'ง', '<p>การประมวลผล เทคโนโลยี</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (94, 26, 'ก', '<p>ช่วยลดจำนวนพนักงานลง</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (95, 26, 'ข', '<p>ช่วยเพิ่มเวลาในการทำงานใหม่ากขึ้น </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (96, 26, 'ค', '<p>ช่วยให้ทำงานได้เร็วและถูกต้องมากขึ้น</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (97, 26, 'ง', '<p>ช่วยให้ประหยัดทรัพยากรและรักษาสิ่งแวดล้อม</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (98, 27, 'ก', '<p>การแสดงผล </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (99, 27, 'ข', '<p>การประมวลผล </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (100, 27, 'ค', '<p>การสื่อสารและเครือข่าย</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (101, 27, 'ง', '<p>การบันทึกและจัดเก็บข้อมูล </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (102, 28, 'ก', '<p>การใช้เทคโนโลยีสารสนเทศจะส่งผลกระทบทั้งทางด้านบวกและด้านลบ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (103, 28, 'ข', '<p>การใช้เทคโนโลยีสารสนเทศจะส่งผลกระทบทางด้านลบเท่านั้น</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (104, 28, 'ค', '<p>การใช้เทคโนโลยีสารสนเทศจะส่งผลกระทบทางด้านบวกเท่านั้น</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (105, 28, 'ง', '<p>การใช้เทคโนโลยีสารสนเทศจะไม่เกิดผละกระทบใดๆทั้งสิ้น </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (106, 29, 'ก', '<p>การเรียนการสอนผ่านเว็บเพจ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (107, 29, 'ข', '<p>คอมพิวเตอร์เพื่อการเรียนการสอน</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (108, 29, 'ค', '<p>สอการเรียนการสอนอิเล็กทรอนิกส์</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (109, 29, 'ง', '<p>การเรียนการสอนแบบมีปฏิสัมพันธ์กับผู้สอนโดยตรง</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (110, 30, 'ก', '<p>ส่งเสริมีการเรียนรู้ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (111, 30, 'ข', '<p>ช่วยรักษาวัฒนธรรม </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (112, 30, 'ค', '<p>เพิ่มรายได้ให้แก้ประชาชน</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (113, 30, 'ง', '<p>สร้างความเสมอภาคในสังคม </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (114, 31, 'ก', '<p>ลดปัญหาการละเมิดลิขสิทธิ์ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (116, 31, 'ข', '<p>ลดปัญหาอาชญากรรมทางคอมพิวเตอร์ </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (117, 31, 'ค', '<p>ทำให้เข้าถึงข้อมูลของผู้อื่นได้โดยไม่ต้องขออนุญาต</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (118, 31, 'ง', '<p>ทำให้รับรข่าวสารและติดต่อสื่อสารกันได้สะดวกยิ่งขึ้น </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (119, 32, 'ก', '<p>ค่านิยมและวัฒนธรรม </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (120, 32, 'ข', '<p>ความปลอดภัย </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (121, 32, 'ค', '<p>ระบบเศรษฐกิจ<br>&nbsp;<br>&nbsp;</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (122, 32, 'ง', '<p>สุขภาพร่างกาย </p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (123, 33, 'ก', '<p>1</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (124, 33, 'ข', '<p>2</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (125, 33, 'ค', '<p>3</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (127, 33, 'ง', '<p>4</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (128, 35, 'ก', '<p>นัน</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (129, 35, 'ข', '<p>ออเดอร์</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (130, 35, 'ค', '<p>นก</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (131, 35, 'ง', '<p>ลิง</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (132, 36, 'ก', '<p>1</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (133, 36, 'ข', '<p>2</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (134, 36, 'ค', '<p>3</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (135, 36, 'ง', '<p>4</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (136, 40, 'ก', '<p>ฟ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (137, 40, 'ข', '<p>ห</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (138, 40, 'ค', '<p>ดฟ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (139, 40, 'ง', '<p>แห</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (140, 41, 'ก', '<p>2</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (141, 41, 'ข', '<p>3</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (142, 42, 'ก', '<p>ฟ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (143, 42, 'ข', '<p>ห</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (144, 42, 'ค', '<p>ฟหก</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (145, 42, 'ง', '<p>กหฟก</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (146, 43, 'ก', '<p>หฟกฟก</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (147, 43, 'ข', '<p>หฟกหฟ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (148, 43, 'ค', '<p>หฟกหฟก</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (149, 43, 'ง', '<p>ปผแ</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (150, 44, 'ก', '<p>w</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (151, 44, 'ข', '<p>2</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (152, 44, 'ค', '<p>e</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (153, 44, 'ง', '<p>z</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (154, 45, 'ก', '<p>10</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (155, 45, 'ข', '<p>15</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (156, 45, 'ค', '<p>20</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (157, 45, 'ง', '<p>25</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (158, 46, 'ก', '<p>0</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (159, 46, 'ข', '<p>1</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (160, 46, 'ค', '<p>2</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (161, 46, 'ง', '<p>3</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (162, 47, 'ก', '<p>18</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (163, 47, 'ข', '<p>19</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (164, 47, 'ค', '<p>20</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (165, 47, 'ง', '<p>21</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (166, 49, 'ก', '<p>10</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (167, 49, 'ข', '<p>15</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (168, 49, 'ค', '<p>20</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (169, 49, 'ง', '<p>25</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (170, 51, 'ก', '<p>5</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (171, 51, 'ข', '<p>10</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (172, 51, 'ค', '<p>55</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (173, 51, 'ง', '<p>10</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (174, 52, 'ก', '<p>5</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (175, 52, 'ข', '<p>10</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (176, 52, 'ค', '<p>20</p>', NULL, NULL);
INSERT INTO `test_choice` VALUES (177, 52, 'ง', '<p>1</p>', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`) USING BTREE,
  CONSTRAINT `token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of token
-- ----------------------------
BEGIN;
INSERT INTO `token` VALUES (1, '9qS4TCucC3Z_YGrQox-qLrf1uUYKpA3U', 1568350221, 1);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `last_login_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_unique_username` (`username`) USING BTREE,
  UNIQUE KEY `user_unique_email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1569559312 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', 'admin@gmail.com', '$2y$12$U/Z3wI1Z278SvCn1HOQOM.e6GN/Jocu8hGrPwUFhh0Bu1BmJB5ACC', 'KSwmb0yFT6Jf14f82pSAnAedCN44uzAQ', 1535696234, NULL, NULL, '::1', 1535696234, 1569168369, 0, 1580007937);
INSERT INTO `user` VALUES (1569494215, '123456', '12asd3@1ss3.com', '$2y$12$FNneLTGyhYxD7jTM9i6NZu4fBPfPNELTdwbwKDjdvdgwd1WT7VaOO', 'TjnPwSBtfqLEyvFrMh-c1OW1YSMduz5J', 1569494215, NULL, NULL, '115.87.163.129', 1569494215, 1569494216, 0, 1569494283);
INSERT INTO `user` VALUES (1569498647, '002', '12s3@1ss3.com', '$2y$12$SsGvJBcKUXgEACZFPXM3Ye9WGM71YGaKpFJtGd1plX94M5WKEviRW', 'xY1UzC0n8Wb7PIl3v5HYkiR609lWSt8F', 1569498647, NULL, NULL, '115.87.163.129', 1569498647, 1569498648, 0, 1569498726);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
