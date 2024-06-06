CREATE TABLE `categories` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `name` varchar(75) DEFAULT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO categories (id, name) VALUES
                                      (1, 'Видеокарты'),
                                      (2, 'Процессоры'),
                                      (3, 'Твердотельные накопители'),
                                      (4, 'Оперативная память'),
                                      (5, 'Блоки питания'),
                                      (6, 'Материнские платы'),
                                      (7, 'Корпуса'),
                                      (8, 'Системы охлаждения');

CREATE TABLE `products` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `brand` varchar(100) DEFAULT NULL,
                            `model` varchar(100) DEFAULT NULL,
                            `price` decimal(10,2) DEFAULT NULL,
                            `img` varchar(255) DEFAULT NULL,
                            `category_id` int DEFAULT NULL,
                            `short_description` varchar(255) DEFAULT NULL,
                            `full_description` varchar(5000) DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            KEY `category_id` (`category_id`),
                            CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `products` (`id`, `brand`, `model`, `price`, `img`, `category_id`, `short_description`, `full_description`) VALUES
        (1, 'Gigabyte', 'RX580', 250.00, '/images/Videocards/gigabyte_rx580_8g.jpg', 1, '8GB GDDR4 2134sp', 'Видеокарта GIGABYTE RX 580 GAMING 8 GB обеспечивает надежную производительность для игр и других графически интенсивных задач. Ее прочный дизайн и функциональные возможности делают ее надежным выбором для геймеров и энтузиастов.'),
        (2, 'ASUS', 'RTX4060', 720.00, '/images/Videocards/asus_rtx4060.jpg', 1, '8GB GDDR5 2728sp', 'Видеокарта ASUS Dual GeForce RTX™ 4060 8GB GDDR6 обладает двумя мощными вентиляторами Axial-tech и дизайном с 2,5 слотами для широкой совместимости. ASUS Dual GeForce RTX™ 4060 сочетает в себе динамичную теплопроизводительность с широкой совместимостью. Эти улучшения делают ее идеальным выбором для геймеров, которые хотят мощную графику в компактном корпусе. Эта видеокарта основана на архитектуре NVIDIA Ada Lovelace и предлагает реалистичную и захватывающую графику, а также поддержку технологий DLSS 3 и NVIDIA Reflex для низкой задержки.'),
        (3, 'Palit', 'RTX4070ti', 1200.00, '/images/Videocards/palit_rtx4070ti.jpg', 1, '12GB GDDR6 3431sp', 'Видеокарта Palit GeForce RTX™ 4070 Ti GamingPro сочетает железно-черный и серебристо-серый промышленный дизайн с поддержкой ARGB (адресуемой RGB) и легко вписывается в любую систему. Видеокарта Palit GeForce RTX™ 4070 Ti GamingPro предоставляет мощность для игр и творческих задач. Если вы предпочитаете классический дизайн, эта модель из серии Palit GamingPro станет отличным выбором.'),
        (4, 'Intel', 'i3-10100f', 130.00, '/images/Processors/i3_10th_gen.jpg', 2, 'Quad-core 2.8GHz', 'Intel Core i3-10100F - это процессор для настольных компьютеров, выпущенный в середине 2020 года. Процессор Intel Core i3-10100F предоставляет надежную производительность для повседневных задач, таких как офисные приложения, просмотр мультимедийного контента и легкие игры. Он также подходит для сборки бюджетных настольных ПК.'),
        (5, 'Netac', 'NV-7000-t', 110.00, '/images/Ssds/netac_nv7000t.jpg', 3, '1000GB M.2 Interface', 'Netac NV7000-t - это PCIe Gen4x4 NVMe SSD, предназначенный для высокой производительности. Производительность, надежность и эффективность делают Netac NV7000-t отличным выбором для пользователей, которые ищут быстрый и надежный SSD для своих систем.'),
        (6, 'AMD', 'Ryzen 5 5600X', 280.00, '/images/Processors/amd_ryzen.jpg', 2, '6-core 4.3GHz', 'AMD Ryzen 5 5600X - это настольный процессор с 6 ядрами, выпущенный в ноябре 2020 года. Он входит в линейку Ryzen 5 и использует архитектуру Zen 3 (Vermeer) с сокетом AM4. Благодаря технологии AMD Simultaneous Multithreading (SMT) количество ядер эффективно удваивается, достигая 12 потоков. Процессор AMD Ryzen 5 5600X обеспечивает отличную производительность для повседневных задач, таких как офисные приложения, просмотр мультимедийного контента и легкие игры. Он также подходит для сборки бюджетных настольных ПК.'),
        (7, 'Patriot', 'Burst Elite', 40.00, '/images/Ssds/patriot_burst_elite_480.jpg', 3, '480GB SATA Interface', 'Patriot Burst Elite - это твердотельный накопитель (SSD), выпущенный компанией Patriot. Он представляет собой 2,5-дюймовый SATA SSD, который обеспечивает хорошую производительность по доступной цене. Patriot Burst Elite - это надежное решение для улучшения производительности вашего компьютера без лишних сложностей. Выбор объема зависит от ваших потребностей, а доступная цена делает его привлекательным вариантом на рынке.'),
        (8, 'Samsung', '980', 140.00, '/images/Ssds/samsung_980.jpg', 3, '1000GB M.2 Interface', 'Samsung 980 - это твердотельный накопитель (SSD), который предоставляет высокую производительность по доступной цене. Samsung 980 - это надежное решение для улучшения производительности вашего компьютера без лишних сложностей. Выбор объема зависит от ваших потребностей, а доступная цена делает его привлекательным вариантом на рынке.'),
        (9, 'Intel', 'i5-10400f', 260.00, '/images/Processors/i5_10th_gen.jpg', 2, '6-core 4.2GHz', 'Intel Core i5-10400F - это настольный процессор с 6 ядрами и 12 потоками, выпущенный в середине 2020 года. Он использует архитектуру Comet Lake и поддерживает сокет LGA 1200. Процессор Intel Core i5-10400F обеспечивает отличную производительность для повседневных задач, таких как офисные приложения, просмотр мультимедийного контента и легкие игры. Он также подходит для сборки бюджетных настольных ПК.'),
        (10, 'G.Skill', 'Aegis ', 50.00, '/images/RAMs/Gskill.jpg', 4, '2x8GB DDR4 PC4-25600 F4-3200C16D-16GIS', 'G.Skill Aegis DDR4 обладает высокой пропускной способностью и низкой латентностью, что обеспечивает быструю обработку данных и повышенную производительность системы. Он предназначен для использования в настольных компьютерах, особенно в игровых системах или системах с высокими требованиями к производительности.'),
        (11, 'Kingston ', 'FURY Beast', 70.00, '/images/RAMs/Kingston.jpg', 4, '2x16GB DDR4 PC4-25600 KF432C16BB1K2/32', 'Оперативная память Kingston FURY Beast представляет собой высококачественный модуль памяти DDR4, разработанный для повышения производительности компьютерных систем. Модули памяти Kingston FURY Beast прошли тщательное тестирование, чтобы обеспечить надежную и стабильную работу в различных условиях. Они соответствуют высоким стандартам качества и обеспечивают непревзойденную производительность, стабильность и совместимость современных систем.'),
        (12, 'ADATA', 'XPG Lancer RGB', 200.00, '/images/RAMs/XPG.jpg', 4, '2x16ГБ DDR5 6000МГц AX5U6000C3016G-DCLARBK', 'Оперативная память ADATA XPG Lancer RGB представляет собой передовой модуль памяти DDR5, разработанный для обеспечения высокой производительности и эффективности работы компьютерных систем. Модули памяти ADATA XPG Lancer RGB оснащены RGB-подсветкой, которая добавляет стиль и эстетическое впечатление к вашей системе. Вы можете настроить подсветку с помощью соответствующего программного обеспечения, чтобы создать уникальные эффекты освещения, соответствующие вашему стилю.'),
        (13, 'DeepCool ', 'PK550D', 40.00, '/images/PUs/Deepcool.jpg', 5, 'ATX 550 Вт, активная PFC, бронзовый сертификат, вентилятор 1x120 мм, 1x 12В 45.5А', 'Блоки питания DeepCool серии PK-D обеспечивают надежность питания и низкий уровень шума во в течении всего периода эксплуатации, а энергоэффективность соответствует требованиям сертификата 80 PLUS Bronze'),
        (14, 'be quiet!', 'System Power 10 750W BN329', 100.00, '/images/PUs/bequiet!.jpg', 5, 'ATX 750 Вт, активная PFC, бронзовый сертификат, вентилятор 1x120 мм, 1x 12В 62.5А', 'System Power 10 оснащен качественным 120-мм вентилятором, изменяющим скорость вращения в зависимости от температурного режима, что обеспечивает знаменитый низкий уровень шума be quiet! для систем начального уровня.'),
        (15, 'ASUS', 'ROG Thor 1600W Titanium ROG-THOR-1600T-GAMING', 700.00, '/images/PUs/ASUS.jpg', 5, 'ATX 1600 Вт, активная PFC, титановый сертификат, вентилятор 1x135 мм, модульные кабели, 1x 12В 133.3А, 1x PCIe Gen5', 'OLED-дисплей для отслеживания энергопотребления в режиме реального времени'),
        (16, 'ASRock', 'B650 LiveMixer', 300.00, '/images/Motherboards/ASRock.jpg', 6, 'ATX, сокет AMD AM5, чипсет AMD B650, память 4xDDR5 до 7200 МГц, слоты: 3xPCIe x16 4.0, 3xM.2, 14+2+1 фаз питания', 'LivwMixer создана для современных стримеров, которым нужна материнка с множеством разъёмов для внешних устройств. Стабильная производительность позволяет создавать качественный контент без потерь времени.'),
        (17, 'Gigabyte', 'B550 Gaming X V2 (rev. 1.0/1.1/1.2)', 150.00, '/images/Motherboards/Gigabyte.jpg', 6, 'ATX, сокет AMD AM4, чипсет AMD B550, память 4xDDR4 до 4733 МГц, слоты: 2xPCIe x16 4.0, 3xPCIe x1, 2xM.2, 10+3 фаз питания', '1 разъем PCI Express x16 (PCIEX16), реализован средствами PCIe-линий ЦП'),
        (18, 'MSI', 'B650 Gaming Plus WiFi', 270.00, '/images/Motherboards/MSI.jpg', 6, 'ATX, сокет AMD AM5, чипсет AMD B650, память 4xDDR5 до 7200 МГц, слоты: 2xPCIe x16 4.0, 1xPCIe x1, 2xM.2, 802.11ax (Wi-Fi 6E)+Bluetooth 5.3, 12+2+1 фаз питания', 'Модель B650 GAMING PLUS WIFI – это широкая функциональность и встроенный беспроводной модуль Wi-Fi в сочетании с поддержкой памяти DDR5 для геймеров, которым нужно все'),
        (19, 'Zalman', 'i3 Neo (черный)', 60.00, '/images/Cases/Zalman.jpeg', 7, 'Mid Tower, БП отсутствует, для плат ATX/micro-ATX/mini-ITX, в комплекте 4 вентилятора, окно: закаленное стекло, видеокарта до 355 мм, охлаждение ЦП до 160 мм, пылевые фильтры, 1xUSB 2.0, 2xUSB-A 3.2 5Гбит/с, цвет черный', 'Mid Tower, БП отсутствует, для плат ATX/micro-ATX/mini-ITX, в комплекте 4 вентилятора, окно: закаленное стекло, видеокарта до 355 мм, охлаждение ЦП до 160 мм, пылевые фильтры, 1xUSB 2.0, 2xUSB-A 3.2 5Гбит/с, цвет черный'),
        (20, 'Montech', 'AIR 1000 Lite (белый)', 90.00, '/images/Cases/Montech.jpg', 7, 'Mid Tower, БП отсутствует, для плат ATX/micro-ATX/mini-ITX, в комплекте 3 вентилятора, окно: закаленное стекло, видеокарта до 340 мм, охлаждение ЦП до 170 мм, пылевые фильтры, 1xUSB 2.0, 2xUSB-A 3.2 5Гбит/с, цвет белый', 'AIR 1000 Lite - базовый ATX корпус линейки AIR в белом цвете.'),
        (21, '1stPlayer', 'Steampunk SP9 (белый)', 110.00, '/images/Cases/1stPlayer.jpeg', 7, 'аквариум/Mid Tower, БП отсутствует, для плат ATX/micro-ATX, окно: закаленное стекло, видеокарта до 430 мм, охлаждение ЦП до 160 мм, 2xUSB 2.0, 1xUSB-A 3.2 5Гбит/с, цвет белый', 'аквариум/Mid Tower, БП отсутствует, для плат ATX/micro-ATX, окно: закаленное стекло, видеокарта до 430 мм, охлаждение ЦП до 160 мм, 2xUSB 2.0, 1xUSB-A 3.2 5Гбит/с, цвет белый'),
        (22, 'DeepCool', 'AK400 Digital R-AK400-BKADMN-G', 65.00, '/images/Cooling_systems/Deepcool.jpeg', 8, 'рассеивание до 220 Вт, высота 156 мм, макс. шум 28 дБ, вентилятор 120 мм, 1850 об/мин, PWM, подшипник гидродинамический (FDB), ARGB подсветка', 'Наступила эра цифровых кулеров и DeepCool с гордостью представляет AK400 DIGITAL. Ко всему тому, что вам нравилось в AK400 ZERO DARK, добавляется аккуратный низкопрофильный дисплей и светодиодные полоски RGB.'),
        (23, 'Zalman', 'Alpha 28 (черный)', 130.00, '/images/Cooling_systems/Zalman.jpeg', 8, 'типоразмер 280, высота 27 мм, макс. шум 34 дБ, вентилятор 140 мм, 1600 об/мин, PWM', 'типоразмер 280, высота 27 мм, макс. шум 34 дБ, вентилятор 140 мм, 1600 об/мин, PWM'),
        (24, 'Sapphire', 'Nitro+ S240-A AIO 4N005-01-20G', 210.00, '/images/Cooling_systems/Sapphire.jpeg', 8, 'типоразмер 240, высота 52.5 мм, макс. шум 36.2 дБ, вентилятор 120 мм, 2400 об/мин, PWM, ARGB подсветка', 'типоразмер 240, высота 52.5 мм, макс. шум 36.2 дБ, вентилятор 120 мм, 2400 об/мин, PWM, ARGB подсветка');

CREATE TABLE `cart` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `brand` varchar(255) NOT NULL,
                        `model` varchar(255) NOT NULL,
                        `img` varchar(100) DEFAULT NULL,
                        `price` decimal(10,2) DEFAULT NULL,
                        `product_id` int DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        KEY `product_id` (`product_id`),
                        CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
