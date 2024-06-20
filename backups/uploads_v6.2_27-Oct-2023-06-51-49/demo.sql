DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `applications`;
CREATE TABLE `applications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `added_date` varchar(100) NOT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL,
  PRIMARY KEY (`blog_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext NOT NULL,
  `added_date` varchar(100) NOT NULL,
  `updated_date` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3lmirpdqienn3ndiapru8rk5ptq4qqkt', '103.151.234.80', '1698403647', '__ci_last_regenerate|i:1698403645;countCall|i:1;__ci_vars|a:1:{s:9:\"countCall\";s:3:\"new\";}cart_items|a:0:{}language|s:7:\"english\";'), ('5vkfl241b5m5uu53rc1aluc7k61g5qoj', '103.151.234.80', '1698403647', '__ci_last_regenerate|i:1698403645;countCall|i:1;__ci_vars|a:1:{s:9:\"countCall\";s:3:\"new\";}cart_items|a:0:{}language|s:7:\"english\";'), ('7n5che81ri54hsc8fbmm95gp1a60u130', '103.151.234.80', '1698403647', '__ci_last_regenerate|i:1698403645;countCall|i:1;__ci_vars|a:1:{s:9:\"countCall\";s:3:\"new\";}cart_items|a:0:{}language|s:7:\"english\";'), ('k62ckftdoo3ha0df3h4gs7964onccat4', '103.151.234.80', '1698403647', '__ci_last_regenerate|i:1698403645;countCall|i:1;__ci_vars|a:1:{s:9:\"countCall\";s:3:\"new\";}cart_items|a:0:{}language|s:7:\"english\";'), ('22igrgn2ql6l40sauqf9b91c1e9q05b0', '103.151.234.80', '1698403647', '__ci_last_regenerate|i:1698403645;countCall|i:1;__ci_vars|a:1:{s:9:\"countCall\";s:3:\"new\";}cart_items|a:0:{}language|s:7:\"english\";'), ('0e7utq05ak2ec41jm87bqdn4b8j0ndv7', '103.151.234.80', '1698403647', '__ci_last_regenerate|i:1698403645;countCall|i:1;__ci_vars|a:1:{s:9:\"countCall\";s:3:\"new\";}cart_items|a:0:{}language|s:7:\"english\";'), ('h4gn26nnlric65pqgjvdo5v8tomsnhfb', '103.151.234.80', '1698403647', '__ci_last_regenerate|i:1698403645;countCall|i:1;__ci_vars|a:1:{s:9:\"countCall\";s:3:\"new\";}cart_items|a:0:{}language|s:7:\"english\";'), ('v5q23jjjv0p2tb0sg74dtmp9shbpsgbh', '103.151.234.80', '1698403901', '__ci_last_regenerate|i:1698403645;cart_items|a:0:{}language|s:7:\"english\";custom_session_limit|i:1699267901;user_id|s:1:\"1\";role_id|s:1:\"1\";role|s:5:\"Admin\";name|s:11:\"ramdeo angh\";is_instructor|s:1:\"1\";admin_login|s:1:\"1\";countCall|i:1;__ci_vars|a:1:{s:9:\"countCall\";s:3:\"new\";}');
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `has_read` int(11) DEFAULT NULL,
  `replied` int(11) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `faqs` text NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `course_overview_provider` varchar(255) DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT 0,
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  `expiry_period` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT 0,
  `iyzico_supported` int(11) DEFAULT 0,
  `paystack_supported` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES ('1', 'US Dollar', 'USD', '$', '1', '1', '0', '0', '0'), ('2', 'Albanian Lek', 'ALL', 'Lek', '0', '1', '0', '0', '0'), ('3', 'Algerian Dinar', 'DZD', 'دج', '1', '1', '0', '0', '0'), ('4', 'Angolan Kwanza', 'AOA', 'Kz', '1', '1', '0', '0', '0'), ('5', 'Argentine Peso', 'ARS', '$', '1', '1', '0', '0', '0'), ('6', 'Armenian Dram', 'AMD', '֏', '1', '1', '0', '0', '0'), ('7', 'Aruban Florin', 'AWG', 'ƒ', '1', '1', '0', '0', '0'), ('8', 'Australian Dollar', 'AUD', '$', '1', '1', '0', '0', '0'), ('9', 'Azerbaijani Manat', 'AZN', 'm', '1', '1', '0', '0', '0'), ('10', 'Bahamian Dollar', 'BSD', 'B$', '1', '1', '0', '0', '0'), ('11', 'Bahraini Dinar', 'BHD', '.د.ب', '1', '1', '0', '0', '0'), ('12', 'Bangladeshi Taka', 'BDT', '৳', '1', '1', '0', '0', '0'), ('13', 'Barbadian Dollar', 'BBD', 'Bds$', '1', '1', '0', '0', '0'), ('14', 'Belarusian Ruble', 'BYR', 'Br', '0', '0', '0', '0', '0'), ('15', 'Belgian Franc', 'BEF', 'fr', '1', '1', '0', '0', '0'), ('16', 'Belize Dollar', 'BZD', '$', '1', '1', '0', '0', '0'), ('17', 'Bermudan Dollar', 'BMD', '$', '1', '1', '0', '0', '0'), ('18', 'Bhutanese Ngultrum', 'BTN', 'Nu.', '1', '1', '0', '0', '0'), ('19', 'Bitcoin', 'BTC', '฿', '1', '1', '0', '0', '0'), ('20', 'Bolivian Boliviano', 'BOB', 'Bs.', '1', '1', '0', '0', '0'), ('21', 'Bosnia', 'BAM', 'KM', '1', '1', '0', '0', '0'), ('22', 'Botswanan Pula', 'BWP', 'P', '1', '1', '0', '0', '0'), ('23', 'Brazilian Real', 'BRL', 'R$', '1', '1', '0', '0', '0'), ('24', 'British Pound Sterling', 'GBP', '£', '1', '1', '0', '0', '0'), ('25', 'Brunei Dollar', 'BND', 'B$', '1', '1', '0', '0', '0'), ('26', 'Bulgarian Lev', 'BGN', 'Лв.', '1', '1', '0', '0', '0'), ('27', 'Burundian Franc', 'BIF', 'FBu', '1', '1', '0', '0', '0'), ('28', 'Cambodian Riel', 'KHR', 'KHR', '1', '1', '0', '0', '0'), ('29', 'Canadian Dollar', 'CAD', '$', '1', '1', '0', '0', '0'), ('30', 'Cape Verdean Escudo', 'CVE', '$', '1', '1', '0', '0', '0'), ('31', 'Cayman Islands Dollar', 'KYD', '$', '1', '1', '0', '0', '0'), ('32', 'CFA Franc BCEAO', 'XOF', 'CFA', '1', '1', '0', '0', '0'), ('33', 'CFA Franc BEAC', 'XAF', 'FCFA', '1', '1', '0', '0', '0'), ('34', 'CFP Franc', 'XPF', '₣', '1', '1', '0', '0', '0'), ('35', 'Chilean Peso', 'CLP', '$', '1', '1', '0', '0', '0'), ('36', 'Chinese Yuan', 'CNY', '¥', '1', '1', '0', '0', '0'), ('37', 'Colombian Peso', 'COP', '$', '1', '1', '0', '0', '0'), ('38', 'Comorian Franc', 'KMF', 'CF', '1', '1', '0', '0', '0'), ('39', 'Congolese Franc', 'CDF', 'FC', '1', '1', '0', '0', '0'), ('40', 'Costa Rican ColÃ³n', 'CRC', '₡', '1', '1', '0', '0', '0'), ('41', 'Croatian Kuna', 'HRK', 'kn', '1', '1', '0', '0', '0'), ('42', 'Cuban Convertible Peso', 'CUC', '$, CUC', '1', '1', '0', '0', '0'), ('43', 'Czech Republic Koruna', 'CZK', 'Kč', '1', '1', '0', '0', '0'), ('44', 'Danish Krone', 'DKK', 'Kr.', '1', '1', '0', '0', '0'), ('45', 'Djiboutian Franc', 'DJF', 'Fdj', '1', '1', '0', '0', '0'), ('46', 'Dominican Peso', 'DOP', '$', '1', '1', '0', '0', '0'), ('47', 'East Caribbean Dollar', 'XCD', '$', '1', '1', '0', '0', '0'), ('48', 'Egyptian Pound', 'EGP', 'ج.م', '1', '1', '0', '0', '0'), ('49', 'Eritrean Nakfa', 'ERN', 'Nfk', '1', '1', '0', '0', '0'), ('50', 'Estonian Kroon', 'EEK', 'kr', '1', '1', '0', '0', '0'), ('51', 'Ethiopian Birr', 'ETB', 'Nkf', '1', '1', '0', '0', '0'), ('52', 'Euro', 'EUR', '€', '1', '1', '0', '0', '0'), ('53', 'Falkland Islands Pound', 'FKP', '£', '1', '1', '0', '0', '0'), ('54', 'Fijian Dollar', 'FJD', 'FJ$', '1', '1', '0', '0', '0'), ('55', 'Gambian Dalasi', 'GMD', 'D', '1', '1', '0', '0', '0'), ('56', 'Georgian Lari', 'GEL', 'ლ', '1', '1', '0', '0', '0'), ('57', 'German Mark', 'DEM', 'DM', '1', '1', '0', '0', '0'), ('58', 'Ghanaian Cedi', 'GHS', 'GH₵', '1', '1', '0', '0', '0'), ('59', 'Gibraltar Pound', 'GIP', '£', '1', '1', '0', '0', '0'), ('60', 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', '1', '1', '0', '0', '0'), ('61', 'Guatemalan Quetzal', 'GTQ', 'Q', '1', '1', '0', '0', '0'), ('62', 'Guinean Franc', 'GNF', 'FG', '1', '1', '0', '0', '0'), ('63', 'Guyanaese Dollar', 'GYD', '$', '1', '1', '0', '0', '0'), ('64', 'Haitian Gourde', 'HTG', 'G', '1', '1', '0', '0', '0'), ('65', 'Honduran Lempira', 'HNL', 'L', '1', '1', '0', '0', '0'), ('66', 'Hong Kong Dollar', 'HKD', '$', '1', '1', '0', '0', '0'), ('67', 'Hungarian Forint', 'HUF', 'Ft', '1', '1', '0', '0', '0'), ('68', 'Icelandic KrÃ³na', 'ISK', 'kr', '1', '1', '0', '0', '0'), ('69', 'Indian Rupee', 'INR', '₹', '1', '1', '1', '0', '0'), ('70', 'Indonesian Rupiah', 'IDR', 'Rp', '1', '1', '0', '0', '0'), ('71', 'Iranian Rial', 'IRR', '﷼', '1', '1', '0', '0', '0'), ('72', 'Iraqi Dinar', 'IQD', 'د.ع', '1', '1', '0', '0', '0'), ('73', 'Israeli New Sheqel', 'ILS', '₪', '1', '1', '0', '0', '0'), ('74', 'Italian Lira', 'ITL', 'L,£', '1', '1', '0', '0', '0'), ('75', 'Jamaican Dollar', 'JMD', 'J$', '1', '1', '0', '0', '0'), ('76', 'Japanese Yen', 'JPY', '¥', '1', '1', '0', '0', '0'), ('77', 'Jordanian Dinar', 'JOD', 'ا.د', '1', '1', '0', '0', '0'), ('78', 'Kazakhstani Tenge', 'KZT', 'лв', '1', '1', '0', '0', '0'), ('79', 'Kenyan Shilling', 'KES', 'KSh', '1', '1', '0', '0', '0'), ('80', 'Kuwaiti Dinar', 'KWD', 'ك.د', '1', '1', '0', '0', '0'), ('81', 'Kyrgystani Som', 'KGS', 'лв', '1', '1', '0', '0', '0'), ('82', 'Laotian Kip', 'LAK', '₭', '1', '1', '0', '0', '0'), ('83', 'Latvian Lats', 'LVL', 'Ls', '0', '0', '0', '0', '0'), ('84', 'Lebanese Pound', 'LBP', '£', '1', '1', '0', '0', '0'), ('85', 'Lesotho Loti', 'LSL', 'L', '1', '1', '0', '0', '0'), ('86', 'Liberian Dollar', 'LRD', '$', '1', '1', '0', '0', '0'), ('87', 'Libyan Dinar', 'LYD', 'د.ل', '1', '1', '0', '0', '0'), ('88', 'Lithuanian Litas', 'LTL', 'Lt', '0', '0', '0', '0', '0'), ('89', 'Macanese Pataca', 'MOP', '$', '1', '1', '0', '0', '0'), ('90', 'Macedonian Denar', 'MKD', 'ден', '1', '1', '0', '0', '0'), ('91', 'Malagasy Ariary', 'MGA', 'Ar', '1', '1', '0', '0', '0'), ('92', 'Malawian Kwacha', 'MWK', 'MK', '1', '1', '0', '0', '0'), ('93', 'Malaysian Ringgit', 'MYR', 'RM', '1', '1', '0', '0', '0'), ('94', 'Maldivian Rufiyaa', 'MVR', 'Rf', '1', '1', '0', '0', '0'), ('95', 'Mauritanian Ouguiya', 'MRO', 'MRU', '1', '1', '0', '0', '0'), ('96', 'Mauritian Rupee', 'MUR', '₨', '1', '1', '0', '0', '0'), ('97', 'Mexican Peso', 'MXN', '$', '1', '1', '0', '0', '0'), ('98', 'Moldovan Leu', 'MDL', 'L', '1', '1', '0', '0', '0'), ('99', 'Mongolian Tugrik', 'MNT', '₮', '1', '1', '0', '0', '0'), ('100', 'Moroccan Dirham', 'MAD', 'MAD', '1', '1', '0', '0', '0'), ('101', 'Mozambican Metical', 'MZM', 'MT', '1', '1', '0', '0', '0'), ('102', 'Myanmar Kyat', 'MMK', 'K', '1', '1', '0', '0', '0'), ('103', 'Namibian Dollar', 'NAD', '$', '1', '1', '0', '0', '0'), ('104', 'Nepalese Rupee', 'NPR', '₨', '1', '1', '0', '0', '0'), ('105', 'Netherlands Antillean Guilder', 'ANG', 'ƒ', '1', '1', '0', '0', '0'), ('106', 'New Taiwan Dollar', 'TWD', '$', '1', '1', '0', '0', '0'), ('107', 'New Zealand Dollar', 'NZD', '$', '1', '1', '0', '0', '0'), ('108', 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', '1', '1', '0', '0', '0'), ('109', 'Nigerian Naira', 'NGN', '₦', '1', '1', '0', '0', '1'), ('110', 'North Korean Won', 'KPW', '₩', '0', '0', '0', '0', '0'), ('111', 'Norwegian Krone', 'NOK', 'kr', '1', '1', '0', '0', '0'), ('112', 'Omani Rial', 'OMR', '.ع.ر', '0', '0', '0', '0', '0'), ('113', 'Pakistani Rupee', 'PKR', '₨', '1', '1', '0', '0', '0'), ('114', 'Panamanian Balboa', 'PAB', 'B/.', '1', '1', '0', '0', '0'), ('115', 'Papua New Guinean Kina', 'PGK', 'K', '1', '1', '0', '0', '0'), ('116', 'Paraguayan Guarani', 'PYG', '₲', '1', '1', '0', '0', '0'), ('117', 'Peruvian Nuevo Sol', 'PEN', 'S/.', '1', '1', '0', '0', '0'), ('118', 'Philippine Peso', 'PHP', '₱', '1', '1', '0', '0', '0'), ('119', 'Polish Zloty', 'PLN', 'zł', '1', '1', '0', '0', '0'), ('120', 'Qatari Rial', 'QAR', 'ق.ر', '1', '1', '0', '0', '0'), ('121', 'Romanian Leu', 'RON', 'lei', '1', '1', '0', '0', '0'), ('122', 'Russian Ruble', 'RUB', '₽', '1', '1', '0', '0', '0'), ('123', 'Rwandan Franc', 'RWF', 'FRw', '1', '1', '0', '0', '0'), ('124', 'Salvadoran ColÃ³n', 'SVC', '₡', '0', '0', '0', '0', '0'), ('125', 'Samoan Tala', 'WST', 'SAT', '1', '1', '0', '0', '0'), ('126', 'Saudi Riyal', 'SAR', '﷼', '1', '1', '0', '0', '0'), ('127', 'Serbian Dinar', 'RSD', 'din', '1', '1', '0', '0', '0'), ('128', 'Seychellois Rupee', 'SCR', 'SRe', '1', '1', '0', '0', '0'), ('129', 'Sierra Leonean Leone', 'SLL', 'Le', '1', '1', '0', '0', '0'), ('130', 'Singapore Dollar', 'SGD', '$', '1', '1', '0', '0', '0'), ('131', 'Slovak Koruna', 'SKK', 'Sk', '1', '1', '0', '0', '0'), ('132', 'Solomon Islands Dollar', 'SBD', 'Si$', '1', '1', '0', '0', '0'), ('133', 'Somali Shilling', 'SOS', 'Sh.so.', '1', '1', '0', '0', '0'), ('134', 'South African Rand', 'ZAR', 'R', '1', '1', '0', '0', '0'), ('135', 'South Korean Won', 'KRW', '₩', '1', '1', '0', '0', '0'), ('136', 'Special Drawing Rights', 'XDR', 'SDR', '1', '1', '0', '0', '0'), ('137', 'Sri Lankan Rupee', 'LKR', 'Rs', '1', '1', '0', '0', '0'), ('138', 'St. Helena Pound', 'SHP', '£', '1', '1', '0', '0', '0'), ('139', 'Sudanese Pound', 'SDG', '.س.ج', '1', '1', '0', '0', '0'), ('140', 'Surinamese Dollar', 'SRD', '$', '1', '1', '0', '0', '0'), ('141', 'Swazi Lilangeni', 'SZL', 'E', '1', '1', '0', '0', '0'), ('142', 'Swedish Krona', 'SEK', 'kr', '1', '1', '0', '0', '0'), ('143', 'Swiss Franc', 'CHF', 'CHf', '1', '1', '0', '0', '0'), ('144', 'Syrian Pound', 'SYP', 'LS', '0', '0', '0', '0', '0'), ('145', 'São Tomé and Príncipe Dobra', 'STD', 'Db', '1', '1', '0', '0', '0'), ('146', 'Tajikistani Somoni', 'TJS', 'SM', '1', '1', '0', '0', '0'), ('147', 'Tanzanian Shilling', 'TZS', 'TSh', '1', '1', '0', '0', '0'), ('148', 'Thai Baht', 'THB', '฿', '1', '1', '0', '0', '0'), ('149', 'Tongan pa\'anga', 'TOP', '$', '1', '1', '0', '0', '0'), ('150', 'Trinidad & Tobago Dollar', 'TTD', '$', '1', '1', '0', '0', '0'), ('151', 'Tunisian Dinar', 'TND', 'ت.د', '1', '1', '0', '0', '0'), ('152', 'Turkish Lira', 'TRY', '₺', '1', '1', '0', '1', '0'), ('153', 'Turkmenistani Manat', 'TMT', 'T', '1', '1', '0', '0', '0'), ('154', 'Ugandan Shilling', 'UGX', 'USh', '1', '1', '0', '0', '0'), ('155', 'Ukrainian Hryvnia', 'UAH', '₴', '1', '1', '0', '0', '0'), ('156', 'United Arab Emirates Dirham', 'AED', 'إ.د', '1', '1', '0', '0', '0'), ('157', 'Uruguayan Peso', 'UYU', '$', '1', '1', '0', '0', '0'), ('158', 'Afghan Afghani', 'AFA', '؋', '1', '1', '0', '0', '0'), ('159', 'Uzbekistan Som', 'UZS', 'лв', '1', '1', '0', '0', '0'), ('160', 'Vanuatu Vatu', 'VUV', 'VT', '1', '1', '0', '0', '0'), ('161', 'Venezuelan BolÃvar', 'VEF', 'Bs', '0', '0', '0', '0', '0'), ('162', 'Vietnamese Dong', 'VND', '₫', '1', '1', '0', '0', '0'), ('163', 'Yemeni Rial', 'YER', '﷼', '1', '1', '0', '0', '0'), ('164', 'Zambian Kwacha', 'ZMK', 'ZK', '1', '1', '0', '0', '0');
DROP TABLE IF EXISTS `custom_page`;
CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_content` longtext NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `button_title` varchar(255) NOT NULL,
  `button_position` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`custom_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `enrol`;
CREATE TABLE `enrol` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `gifted_by` int(11) NOT NULL DEFAULT 0,
  `expiry_date` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `frontend_settings`;
CREATE TABLE `frontend_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES ('1', 'banner_title', 'Start learning from best Platform'), ('2', 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'), ('4', 'about_us', '<p></p><h2><span xss=\"removed\">About us</span></h2>'), ('10', 'terms_and_condition', '<h2>Terms and Condition</h2>'), ('11', 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span></h2>'), ('13', 'theme', 'default-new'), ('14', 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'), ('15', 'cookie_status', 'active'), ('16', 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'), ('17', 'banner_image', '{\"home_1\":\"home-1.png\"}'), ('18', 'light_logo', 'logo-light.png'), ('19', 'dark_logo', 'logo-dark.png'), ('20', 'small_logo', 'logo-light-sm.png'), ('21', 'favicon', 'favicon.png'), ('22', 'recaptcha_status', '0'), ('23', 'recaptcha_secretkey', 'Valid-secret-key'), ('24', 'recaptcha_sitekey', 'Valid-site-key'), ('25', 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'), ('26', 'facebook', 'https://facebook.com'), ('27', 'twitter', 'https://twitter.com'), ('28', 'linkedin', ''), ('31', 'blog_page_title', 'Where possibilities begin'), ('32', 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'), ('33', 'blog_page_banner', 'blog-page.png'), ('34', 'instructors_blog_permission', '0'), ('35', 'blog_visibility_on_the_home_page', '1'), ('37', 'website_faqs', '[]'), ('38', 'motivational_speech', '[]'), ('39', 'home_page', 'home_1'), ('40', 'contact_info', '{\"email\":\"\",\"phone\":\"\",\"address\":\"\",\"office_hours\":\"\"}');
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext DEFAULT NULL,
  `english` longtext DEFAULT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES ('1', '404_not_found', '404 not found'), ('2', '404_not_found', '404 not found'), ('3', 'courses', 'Courses'), ('4', 'courses', 'Courses'), ('5', 'all_courses', 'All courses'), ('6', 'all_courses', 'All courses'), ('7', 'search', 'Search'), ('8', 'search', 'Search'), ('9', 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'), ('10', 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'), ('11', 'checkout', 'Checkout'), ('12', 'checkout', 'Checkout'), ('13', 'login', 'Login'), ('14', 'login', 'Login'), ('15', 'join_now', 'Join now'), ('16', 'sign_up', 'Sign up'), ('17', 'sign_up', 'Sign up'), ('18', 'cart', 'Cart'), ('19', 'cart', 'Cart'), ('20', 'categories', 'Categories'), ('21', 'cookie_policy', 'Cookie policy'), ('22', 'accept', 'Accept'), ('23', 'home', 'Home'), ('24', 'home', 'Home'), ('25', 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'), ('26', 'check_the_spelling_of_the_url', 'Check the spelling of the url'), ('27', 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below'), ('28', 'check_the_spelling_of_the_url', 'Check the spelling of the url'), ('29', 'back_to_home', 'Back to home'), ('30', 'top_categories', 'Top categories'), ('31', 'top_categories', 'Top categories'), ('32', 'useful_links', 'Useful links'), ('33', 'useful_links', 'Useful links'), ('34', 'useful_links', 'Useful links'), ('35', 'useful_links', 'Useful links'), ('36', 'become_an_instructor', 'Become an instructor'), ('37', 'become_an_instructor', 'Become an instructor'), ('38', 'blog', 'Blog'), ('39', 'blog', 'Blog'), ('40', 'blog', 'Blog'), ('41', 'blog', 'Blog'), ('42', 'help', 'Help'), ('43', 'help', 'Help'), ('44', 'contact_us', 'Contact us'), ('45', 'contact_us', 'Contact us'), ('46', 'contact_us', 'Contact us'), ('47', 'about_us', 'About us'), ('48', 'about_us', 'About us'), ('49', 'about_us', 'About us'), ('50', 'privacy_policy', 'Privacy policy'), ('51', 'terms_and_condition', 'Terms and condition'), ('52', 'terms_and_condition', 'Terms and condition'), ('53', 'terms_and_condition', 'Terms and condition'), ('54', 'faq', 'Faq'), ('55', 'faq', 'Faq'), ('56', 'faq', 'Faq'), ('57', 'refund_policy', 'Refund policy'), ('58', 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'), ('59', 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'), ('60', 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'), ('61', 'enter_your_email_address', 'Enter your email address'), ('62', 'enter_your_email_address', 'Enter your email address'), ('63', 'creativeitem', 'Creativeitem'), ('64', 'are_you_sure', 'Are you sure'), ('65', 'are_you_sure', 'Are you sure'), ('66', 'are_you_sure', 'Are you sure'), ('67', 'yes', 'Yes'), ('68', 'yes', 'Yes'), ('69', 'yes', 'Yes'), ('70', 'no', 'No'), ('71', 'no', 'No'), ('72', 'log_in', 'Log in'), ('73', 'explore,_learn,_and_grow_with_us._enjoy_a_seamless_and_enriching_educational_journey._lets_begin!', 'Explore, learn, and grow with us. enjoy a seamless and enriching educational journey. lets begin!'), ('74', 'your_email', 'Your email'), ('75', 'enter_your_email', 'Enter your email'), ('76', 'password', 'Password'), ('77', 'enter_your_valid_password', 'Enter your valid password'), ('78', 'forgot_password?', 'Forgot password?'), ('79', 'don`t_have_an_account?', 'Don`t have an account?'), ('80', 'or', 'Or'), ('81', 'welcome', 'Welcome'), ('82', 'dashboard', 'Dashboard'), ('83', 'quick_actions', 'Quick actions'), ('84', 'create_course', 'Create course'), ('85', 'add_course', 'Add course'), ('86', 'add_new_lesson', 'Add new lesson'), ('87', 'add_lesson', 'Add lesson'), ('88', 'add_student', 'Add student'), ('89', 'enrol_a_student', 'Enrol a student'), ('90', 'enrol_student', 'Enrol student'), ('91', 'help_center', 'Help center'), ('92', 'read_documentation', 'Read documentation'), ('93', 'watch_video_tutorial', 'Watch video tutorial'), ('94', 'get_customer_support', 'Get customer support'), ('95', 'order_customization', 'Order customization'), ('96', 'request_a_new_feature', 'Request a new feature'), ('97', 'browse_addons', 'Browse addons'), ('98', 'remove_all', 'Remove all'), ('99', 'notification', 'Notification'), ('100', 'no_notification', 'No notification'), ('101', 'stay_tuned!', 'Stay tuned!'), ('102', 'notifications_about_your_activity_will_show_up_here.', 'Notifications about your activity will show up here.'), ('103', 'notification_settings', 'Notification settings'), ('104', 'mark_all_as_read', 'Mark all as read'), ('105', 'admin', 'Admin'), ('106', 'my_account', 'My account'), ('107', 'settings', 'Settings'), ('108', 'logout', 'Logout'), ('109', 'visit_website', 'Visit website'), ('110', 'navigation', 'Navigation'), ('111', 'manage_courses', 'Manage courses'), ('112', 'add_new_course', 'Add new course'), ('113', 'course_category', 'Course category'), ('114', 'coupons', 'Coupons'), ('115', 'enrollments', 'Enrollments'), ('116', 'course_enrollment', 'Course enrollment'), ('117', 'enrol_history', 'Enrol history'), ('118', 'report', 'Report'), ('119', 'admin_revenue', 'Admin revenue'), ('120', 'instructor_revenue', 'Instructor revenue'), ('121', 'purchase_history', 'Purchase history'), ('122', 'users', 'Users'), ('123', 'admins', 'Admins'), ('124', 'manage_admins', 'Manage admins'), ('125', 'add_new_admin', 'Add new admin'), ('126', 'instructors', 'Instructors'), ('127', 'manage_instructors', 'Manage instructors'), ('128', 'add_new_instructor', 'Add new instructor'), ('129', 'instructor_payout', 'Instructor payout'), ('130', 'instructor_settings', 'Instructor settings'), ('131', 'applications', 'Applications'), ('132', 'students', 'Students'), ('133', 'manage_students', 'Manage students'), ('134', 'add_new_student', 'Add new student'), ('135', 'message', 'Message'), ('136', 'newsletter', 'Newsletter'), ('137', 'all_newsletter', 'All newsletter'), ('138', 'subscribed_user', 'Subscribed user'), ('139', 'contact', 'Contact'), ('140', 'all_blogs', 'All blogs'), ('141', 'pending_blog', 'Pending blog'), ('142', 'blog_category', 'Blog category'), ('143', 'blog_settings', 'Blog settings'), ('144', 'addons', 'Addons'), ('145', 'themes', 'Themes'), ('146', 'system_settings', 'System settings'), ('147', 'website_settings', 'Website settings'), ('148', 'academy_cloud', 'Academy cloud'), ('149', 'drip_content_settings', 'Drip content settings'), ('150', 'payment_settings', 'Payment settings'), ('151', 'language_settings', 'Language settings'), ('152', 'social_login', 'Social login'), ('153', 'custom_page_builder', 'Custom page builder'), ('154', 'data_center', 'Data center'), ('155', 'about', 'About'), ('156', 'manage_profile', 'Manage profile'), ('157', 'admin_revenue_this_year', 'Admin revenue this year'), ('158', 'number_courses', 'Number courses'), ('159', 'number_of_lessons', 'Number of lessons'), ('160', 'number_of_enrolment', 'Number of enrolment'), ('161', 'number_of_student', 'Number of student'), ('162', 'course_overview', 'Course overview'), ('163', 'active_courses', 'Active courses'), ('164', 'pending_courses', 'Pending courses'), ('165', 'requested_withdrawal', 'Requested withdrawal'), ('166', 'january', 'January'), ('167', 'february', 'February'), ('168', 'march', 'March'), ('169', 'april', 'April'), ('170', 'may', 'May'), ('171', 'june', 'June'), ('172', 'july', 'July'), ('173', 'august', 'August'), ('174', 'september', 'September'), ('175', 'october', 'October'), ('176', 'november', 'November'), ('177', 'december', 'December'), ('178', 'this_year', 'This year'), ('179', 'active_course', 'Active course'), ('180', 'pending_course', 'Pending course'), ('181', 'heads_up', 'Heads up'), ('182', 'congratulations', 'Congratulations'), ('183', 'oh_snap', 'Oh snap'), ('184', 'please_fill_all_the_required_fields', 'Please fill all the required fields'), ('185', 'close', 'Close'), ('186', 'cancel', 'Cancel'), ('187', 'continue', 'Continue'), ('188', 'ok', 'Ok'), ('189', 'success', 'Success'), ('190', 'your_server_does_not_allow_uploading_files_that_large.', 'Your server does not allow uploading files that large.'), ('191', 'your_servers_file_upload_limit_is_12288mb', 'Your servers file upload limit is 12288mb'), ('192', 'successfully', 'Successfully'), ('193', 'div_added_to_bottom_', 'Div added to bottom '), ('194', 'div_has_been_deleted_', 'Div has been deleted '), ('195', 'basic_info', 'Basic info'), ('196', 'first_name', 'First name'), ('197', 'last_name', 'Last name'), ('198', 'email', 'Email'), ('199', 'facebook_link', 'Facebook link'), ('200', 'twitter_link', 'Twitter link'), ('201', 'linkedin_link', 'Linkedin link'), ('202', 'a_short_title_about_yourself', 'A short title about yourself'), ('203', 'skills', 'Skills'), ('204', 'write_your_skill_and_click_the_enter_button', 'Write your skill and click the enter button'), ('205', 'biography', 'Biography'), ('206', 'photo', 'Photo'), ('207', 'the_image_size_should_be_any_square_image', 'The image size should be any square image'), ('208', 'choose_file', 'Choose file'), ('209', 'update_profile', 'Update profile'), ('210', 'current_password', 'Current password'), ('211', 'new_password', 'New password'), ('212', 'confirm_new_password', 'Confirm new password'), ('213', 'update_password', 'Update password'), ('214', 'administration', 'Administration'), ('215', 'log_out', 'Log out'), ('216', 'start_learning_from_best_platform', 'Start learning from best platform'), ('217', 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'), ('218', 'what_do_you_want_to_learn', 'What do you want to learn'), ('219', 'happy', 'Happy'), ('220', 'experienced', 'Experienced'), ('221', 'online_courses', 'Online courses'), ('222', 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics'), ('223', 'expert_instruction', 'Expert instruction'), ('224', 'find_the_right_course_for_you', 'Find the right course for you'), ('225', 'smart_solution', 'Smart solution'), ('226', 'learn_on_your_schedule', 'Learn on your schedule'), ('227', 'top_courses', 'Top courses'), ('228', 'these_are_the_most_popular_courses_among_listen_courses_learners_worldwide', 'These are the most popular courses among listen courses learners worldwide'), ('229', 'top', 'Top'), ('230', 'latest_courses', 'Latest courses'), ('231', 'these_are_the_most_latest_courses_among_listen_courses_learners_worldwide', 'These are the most latest courses among listen courses learners worldwide'), ('232', 'join_now_to_start_learning', 'Join now to start learning'), ('233', 'learn_from_our_quality_instructors!', 'Learn from our quality instructors!'), ('234', 'get_started', 'Get started'), ('235', 'become_a_new_instructor', 'Become a new instructor'), ('236', 'teach_thousands_of_students_and_earn_money!', 'Teach thousands of students and earn money!'), ('237', 'import_your_data', 'Import your data'), ('238', 'choose_your_demo_file', 'Choose your demo file'), ('239', 'import', 'Import'), ('240', 'backup_your_website', 'Backup your website'), ('241', 'backup_your_current_data', 'Backup your current data'), ('242', 'keep_a_backup', 'Keep a backup'), ('243', 'no_backup', 'No backup');
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `quiz_attempt` int(11) NOT NULL DEFAULT 0,
  `video_type_for_mobile_application` varchar(255) DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` longtext DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `message_thread`;
CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_thread_code` longtext DEFAULT NULL,
  `sender` varchar(255) DEFAULT '',
  `receiver` varchar(255) DEFAULT '',
  `last_message_timestamp` longtext DEFAULT NULL,
  PRIMARY KEY (`message_thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `newsletter_subscriber`;
CREATE TABLE `newsletter_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `notification_settings`;
CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `is_editable` int(11) DEFAULT NULL,
  `addon_identifier` varchar(255) DEFAULT NULL,
  `user_types` varchar(400) DEFAULT NULL,
  `system_notification` varchar(400) DEFAULT NULL,
  `email_notification` varchar(400) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `template` longtext DEFAULT NULL,
  `setting_title` varchar(255) DEFAULT NULL,
  `setting_sub_title` varchar(255) DEFAULT NULL,
  `date_updated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
INSERT INTO `notification_settings` (`id`, `type`, `is_editable`, `addon_identifier`, `user_types`, `system_notification`, `email_notification`, `subject`, `template`, `setting_title`, `setting_sub_title`, `date_updated`) VALUES ('1', 'signup', '1', NULL, '[\"admin\",\"user\"]', '{\"admin\":\"1\",\"user\":\"1\"}', '{\"admin\":\"0\",\"user\":\"0\"}', '{\"admin\":\"New user registered\",\"user\":\"Registered successfully\"}', '{\"admin\":\"New user registered [user_name] \\r\\n<br>User email: <b>[user_email]<\\/b>\",\"user\":\"You have successfully registered with us at [system_name].\"}', 'New user registration', 'Get notified when a new user signs up', '1693215071'), ('2', 'email_verification', '0', NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Email verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [email_verification_code]\"}', 'Email verification', 'It is permanently enabled for student email verification.', '1684135777'), ('3', 'forget_password_mail', '0', NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Forgot password verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [system_name][verification_link][minutes]\"}', 'Forgot password mail', 'It is permanently enabled for student email verification.', '1684145383'), ('4', 'new_device_login_confirmation', '0', NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Please confirm your login\"}', '{\"user\":\"Have you tried logging in with a different device? Confirm using the verification code. Your verification code is [verification_code]. Remember that you will lose access to your previous device after logging in to the new device <b>[user_agent]<\\/b>.<br> Use the verification code within [minutes] minutes\"}', 'Account security alert', 'Send verification code for login from a new device', '1684145383'), ('6', 'course_purchase', '1', NULL, '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course has been sold\",\"instructor\":\"A new course has been sold\",\"student\":\"You have purchased a new course\"}', '{\"admin\":\"<p>Course title: [course_title]<\\/p><p>Student: [student_name]\\r\\n<\\/p><p>Paid amount: [paid_amount]<\\/p><p>Instructor: [instructor_name]<\\/p>\",\"instructor\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\",\"student\":\"Course title: [course_title]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\"}', 'Course purchase notification', 'Stay up-to-date on student course purchases.', '1684303456'), ('7', 'course_completion_mail', '1', NULL, '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Course completion\",\"student\":\"You have completed a new course\"}', '{\"instructor\":\"Course completed [course_title]\\r\\nStudent: [student_name]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\"}', 'Course completion mail', 'Stay up to date on student course completion.', '1684303457'), ('8', 'certificate_eligibility', '1', 'certificate', '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Certificate eligibility\",\"student\":\"certificate eligibility\"}', '{\"instructor\":\"Course: [course_title]\\r\\nStudent: [student_name]\\r\\nCertificate link: [certificate_link]\",\"student\":\"Course: [course_title]\\r\\nInstructor: [instructor_name]\\r\\nCertificate link: [certificate_link]\"}', 'Course eligibility notification', 'Stay up to date on course certificate eligibility.', '1684303460'), ('9', 'offline_payment_suspended_mail', '1', 'offline_payment', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"0\"}', '{\"student\":\"Your payment has been suspended\"}', '{\"student\":\"<p>Your offline payment has been <b style=\'color: red;\'>suspended</b> !</p><p>Please provide a valid document of your payment.</p>\"}', 'Offline payment suspended mail', 'If students provides fake information, notify them of the suspension', '1684303463'), ('10', 'bundle_purchase', '1', 'course_bundle', '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course bundle has been sold \",\"instructor\":\"A new course bundle has been sold \",\"student\":\"You have purchased a new course bundle test\"}', '{\"admin\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name]\\r\\nInstructor: [instructor_name] \",\"instructor\":\"Course bundle: [bundle_title]\\r\\nStudent: [student_name] \",\"student\":\"Course bundle: [bundle_title]\\r\\nInstructor: [instructor_name] \"}', 'Course bundle purchase notification', 'Stay up-to-date on student course bundle purchases.', '1684303467'), ('13', 'add_new_user_as_affiliator', '0', 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"Congratulation ! You are assigned as an affiliator\"}', '{\"affiliator\":\"You are assigned as a website Affiliator.\\r\\nWebsite: [website_link]\\r\\n<br>\\r\\nPassword: [password]\"}', 'New user added as affiliator', 'Send account information to the new user', '1684135777'), ('14', 'affiliator_approval_notification', '1', 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', 'Affiliate approval notification', 'Send affiliate approval mail to the user account', '1684303472'), ('15', 'affiliator_request_cancellation', '1', 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused.\"}', 'Affiliator request cancellation', 'Send mail, when you cancel the affiliation request', '1684303473'), ('16', 'affiliation_amount_withdrawal_request', '1', 'affiliate_course', '[\"admin\",\"affiliator\"]', '{\"admin\":\"1\",\"affiliator\":\"1\"}', '{\"admin\":\"0\",\"affiliator\":\"0\"}', '{\"admin\":\"New money withdrawal request\",\"affiliator\":\"New money withdrawal request\"}', '{\"admin\":\"New money withdrawal request by [\'user_name] [amount]\",\"affiliator\":\"Your Withdrawal request of [amount] has been sent to authority\"}', 'Affiliation money withdrawal request', 'Send mail, when the users request the withdrawal of money', '1684303476'), ('17', 'approval_affiliation_amount_withdrawal_request', '1', 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congartulation ! Your withdrawal request has been approved\"}', '{\"affiliator\":\"Congartulation ! Your payment request has been approved.\"}', 'Approval of withdrawal request of affiliation', 'Send mail, when you approved the affiliation withdrawal request', '1684303480'), ('18', 'course_gift', '1', NULL, '[\"payer\",\"receiver\"]', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"You have gift a course\",\"receiver\":\"You have received a course gift\"}', '{\"payer\":\"You have gift a course to [user_name] [course_title][instructor]\",\"receiver\":\"You have received a course gift by [payer][course_title][instructor]\"}', 'Course gift notification', 'Notify users after course gift', '1691818623');
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) DEFAULT NULL,
  `instructor_revenue` varchar(255) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0,
  `transaction_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `payment_gateways`;
CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `currency` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keys` text NOT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES ('1', 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', '1', '1', '0', '', '1673263724'), ('2', 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', '1', '1', '0', '', '1673263724'), ('3', 'razorpay', 'USD', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}', 'Payment_model', '1', '1', '0', '', '1673264610');
DROP TABLE IF EXISTS `payout`;
CREATE TABLE `payout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `correct_answers` longtext DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `quiz_results`;
CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext NOT NULL,
  `correct_answers` longtext NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `date_updated` varchar(100) NOT NULL,
  `is_submitted` int(11) NOT NULL,
  PRIMARY KEY (`quiz_result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES ('1', 'Admin', '1234567890', '1234567890'), ('2', 'User', '1234567890', '1234567890');
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `restricted_by` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
INSERT INTO `settings` (`id`, `key`, `value`) VALUES ('1', 'language', 'english'), ('2', 'system_name', 'Y4DLearning'), ('3', 'system_title', 'Academy Learning Club'), ('4', 'system_email', 'academy@example.com'), ('5', 'address', 'Sydney, Australia'), ('6', 'phone', '+143-52-9933631'), ('7', 'purchase_code', '0f0434b1-cb2c-4e78-ad40-986e0c531273'), ('8', 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'), ('9', 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'), ('10', 'youtube_api_key', 'api-key-for-youtube-and-google-drive'), ('11', 'vimeo_api_key', 'vimeo-api-key'), ('12', 'slogan', 'A course based video CMS'), ('13', 'text_align', NULL), ('14', 'allow_instructor', '1'), ('15', 'instructor_revenue', '70'), ('16', 'system_currency', 'USD'), ('17', 'paypal_currency', 'USD'), ('18', 'stripe_currency', 'USD'), ('19', 'author', 'Creativeitem'), ('20', 'currency_position', 'left'), ('21', 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'), ('22', 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS'), ('23', 'footer_text', 'Creativeitem'), ('24', 'footer_link', 'https://creativeitem.com/'), ('25', 'protocol', 'smtp'), ('26', 'smtp_host', 'smtp.gmail.com'), ('27', 'smtp_port', '587'), ('28', 'smtp_user', 'your-email-address'), ('29', 'smtp_pass', 'SMTP-password'), ('30', 'version', '6.2'), ('31', 'student_email_verification', 'disable'), ('32', 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'), ('33', 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'), ('34', 'razorpay_currency', 'USD'), ('35', 'fb_app_id', 'fb-app-id'), ('36', 'fb_app_secret', 'fb-app-secret'), ('37', 'fb_social_login', '0'), ('38', 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":15,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'), ('41', 'course_accessibility', 'publicly'), ('42', 'smtp_crypto', 'tls'), ('43', 'allowed_device_number_of_loging', '5'), ('47', 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'), ('48', 'course_selling_tax', '0'), ('49', 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]'), ('50', 'ccavenue_currency', 'INR'), ('51', 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]'), ('52', 'iyzico_currency', 'TRY'), ('53', 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]'), ('54', 'paystack_currency', 'NGN'), ('55', 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]'), ('57', 'google_analytics_id', ''), ('58', 'meta_pixel_id', ''), ('59', 'smtp_from_email', 'your-email-address'), ('61', 'language_dirs', '{\"english\":\"ltr\",\"hindi\":\"rtl\",\"arabic\":\"rtl\"}'), ('62', 'timezone', 'America/New_York'), ('63', 'account_disable', '0'), ('64', 'randCallRange', '20');
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `skills` longtext NOT NULL,
  `social_links` longtext DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `payment_keys` longtext NOT NULL,
  `verification_code` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `sessions` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `password`, `skills`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `wishlist`, `title`, `payment_keys`, `verification_code`, `status`, `is_instructor`, `image`, `sessions`) VALUES ('1', 'ramdeo', 'angh', 'lmslearning@y4d.ngo', NULL, NULL, '8cb2237d0679ca88db6464eac60da96345513964', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, '1', NULL, NULL, NULL, NULL, '', NULL, '1', '1', NULL, '');
DROP TABLE IF EXISTS `watch_histories`;
CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext NOT NULL,
  `completed_date` varchar(255) DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `date_updated` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`watch_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
DROP TABLE IF EXISTS `watched_duration`;
CREATE TABLE `watched_duration` (
  `watched_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext DEFAULT NULL,
  PRIMARY KEY (`watched_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
