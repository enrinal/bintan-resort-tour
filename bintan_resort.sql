-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 03:40 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bintan_resort`
--

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attractions`
--

CREATE TABLE `bravo_attractions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attractions`
--

INSERT INTO `bravo_attractions` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `tc`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2000.00', '678.00', 6, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:34', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]'),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '900.00', '357.00', 9, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:34', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1500.00', '442.00', 6, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '850.00', '720.00', 6, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1900.00', '1054.00', 5, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(6, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 26, 49, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '983.00', 6, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 27, 50, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '457.00', 6, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(8, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 28, 51, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '787.00', 6, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(9, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 29, 52, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 4, 'United States', '37.040023', '-95.643144', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '722.00', 8, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(10, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 30, 53, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1684.00', 8, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(11, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 31, 54, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 6, 'New Jersey', '40.035329', '-74.417227', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1305.00', 6, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(12, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 32, 55, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '374.00', 6, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL);
INSERT INTO `bravo_attractions` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `tc`) VALUES
(13, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 33, 56, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 8, 'Virginia', '37.445688', '-78.673668', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1181.00', 4, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(14, 'San Francisco Express Never Ceases', 'san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 34, 57, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '844.00', 8, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(15, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 35, 58, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1383.00', 5, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(16, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, NULL, '37,38,39,40,41,42,43', NULL, '2100.00', '726.00', 8, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2019-12-02 22:31:36', '2019-12-05 09:24:27', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(17, 'Helo', 'helo', NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-04 20:31:50', '2019-12-13 05:01:31', 1, NULL, NULL, NULL, '[{\"title\":\"g\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attraction_category`
--

CREATE TABLE `bravo_attraction_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attraction_category`
--

INSERT INTO `bravo_attraction_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'City trips', '', 'city-trips', 'publish', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', '2019-12-02 22:31:33'),
(2, 'Ecotourism', '', 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', '2019-12-02 22:31:33'),
(3, 'Escorted tour', '', 'escorted-tour', 'publish', 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', '2019-12-02 22:31:33'),
(4, 'Ligula', '', 'ligula', 'publish', 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:34', '2019-12-02 22:31:34'),
(5, 'Heelo', NULL, 'heelo', 'publish', 9, 10, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-05 09:03:27', '2019-12-05 09:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attraction_category_translations`
--

CREATE TABLE `bravo_attraction_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attraction_dates`
--

CREATE TABLE `bravo_attraction_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attraction_meta`
--

CREATE TABLE `bravo_attraction_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attraction_id` int(11) DEFAULT NULL,
  `enable_person_types` tinyint(4) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_people` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_open_hours` tinyint(4) DEFAULT NULL,
  `open_hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attraction_meta`
--

INSERT INTO `bravo_attraction_meta` (`id`, `attraction_id`, `enable_person_types`, `person_types`, `enable_extra_price`, `extra_price`, `discount_by_people`, `enable_open_hours`, `open_hours`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', NULL, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, 1, 1, NULL, '2019-12-13 00:25:28'),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-12-04 20:31:50', '2019-12-04 20:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attraction_term`
--

CREATE TABLE `bravo_attraction_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `attraction_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attraction_term`
--

INSERT INTO `bravo_attraction_term` (`id`, `term_id`, `attraction_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(2, 2, 1, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(3, 3, 1, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(4, 4, 1, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(5, 1, 2, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(6, 5, 2, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(7, 7, 2, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(8, 2, 3, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(9, 4, 3, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(10, 5, 3, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(11, 6, 3, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(12, 7, 3, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(13, 1, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(14, 2, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(15, 3, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(16, 4, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(17, 5, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(18, 6, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(19, 7, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(20, 1, 5, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(21, 2, 5, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(22, 3, 5, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(23, 4, 5, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(24, 5, 5, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(25, 6, 5, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(26, 2, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(27, 3, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(28, 4, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(29, 5, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(30, 6, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(31, 1, 7, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(32, 2, 7, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(33, 3, 7, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(34, 4, 7, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(35, 6, 7, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(36, 7, 7, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(37, 1, 8, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(38, 3, 8, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(39, 4, 8, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(40, 5, 8, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(41, 7, 8, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(42, 1, 9, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(43, 2, 9, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(44, 4, 9, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(45, 6, 9, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(46, 2, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(47, 3, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(48, 4, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(49, 5, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(50, 7, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(51, 2, 11, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(52, 3, 11, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(53, 2, 12, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(54, 3, 12, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(55, 4, 12, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(56, 5, 12, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(57, 6, 12, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(58, 1, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(59, 2, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(60, 3, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(61, 4, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(62, 5, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(63, 7, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(64, 1, 14, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(65, 3, 14, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(66, 4, 14, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(67, 5, 14, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(68, 7, 14, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(69, 1, 15, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(70, 2, 15, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(71, 3, 15, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(72, 4, 15, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(73, 6, 15, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(74, 7, 15, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(81, 8, 1, NULL, NULL, '2019-12-02 22:32:25', '2019-12-02 22:32:25'),
(82, 11, 1, NULL, NULL, '2019-12-02 22:32:25', '2019-12-02 22:32:25'),
(83, 13, 1, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(84, 8, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(85, 9, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(86, 10, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(87, 11, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(88, 12, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(89, 13, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(90, 14, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(91, 8, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(92, 9, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(93, 10, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(94, 11, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(95, 12, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(96, 13, 3, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(97, 14, 3, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(98, 8, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(99, 9, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(100, 11, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(101, 12, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(102, 13, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(103, 14, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(104, 8, 5, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(105, 9, 5, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(106, 11, 5, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(107, 13, 5, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(108, 14, 5, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(109, 8, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(110, 9, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(111, 10, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(112, 11, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(113, 14, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(114, 8, 7, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(115, 12, 7, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(116, 13, 7, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(117, 14, 7, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(118, 10, 8, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(119, 11, 8, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(120, 13, 8, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(121, 8, 9, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(122, 9, 9, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(123, 10, 9, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(124, 11, 9, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(125, 12, 9, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(126, 14, 9, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(127, 9, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(128, 10, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(129, 11, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(130, 12, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(131, 13, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(132, 14, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(133, 9, 11, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(134, 10, 11, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(135, 12, 11, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(136, 13, 11, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(137, 8, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(138, 9, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(139, 10, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(140, 11, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(141, 12, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(142, 14, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(143, 8, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(144, 10, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(145, 11, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(146, 12, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(147, 13, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(148, 14, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(149, 8, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(150, 9, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(151, 10, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(152, 11, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(153, 12, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(154, 8, 15, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(155, 10, 15, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(156, 11, 15, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(157, 12, 15, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(158, 13, 15, NULL, NULL, '2019-12-02 22:32:34', '2019-12-02 22:32:34'),
(159, 14, 15, NULL, NULL, '2019-12-02 22:32:34', '2019-12-02 22:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attraction_translations`
--

CREATE TABLE `bravo_attraction_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs`
--

CREATE TABLE `bravo_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `display_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_in_single` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attrs`
--

INSERT INTO `bravo_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `display_type`, `hide_in_single`) VALUES
(1, 'Travel Styles', 'travel-styles', 'tour', NULL, NULL, '2019-12-02 22:32:13', '2019-12-02 22:32:13', NULL, NULL, NULL),
(2, 'Facilities', 'facilities', 'tour', NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23', NULL, NULL, NULL),
(3, 'Space Type', 'space-type', 'space', NULL, NULL, '2019-12-02 22:33:07', '2019-12-02 22:33:07', NULL, NULL, NULL),
(4, 'Amenities', 'amenities', 'space', NULL, NULL, '2019-12-02 22:33:10', '2019-12-02 22:33:10', NULL, NULL, NULL),
(5, 'Property type', 'property-type', 'hotel', NULL, NULL, '2019-12-02 22:33:37', '2019-12-02 22:33:37', NULL, NULL, NULL),
(6, 'Facilities', 'facilities-1', 'hotel', NULL, NULL, '2019-12-02 22:33:39', '2019-12-02 22:33:39', NULL, NULL, NULL),
(7, 'Hotel Service', 'hotel-service', 'hotel', NULL, NULL, '2019-12-02 22:33:50', '2019-12-02 22:33:50', NULL, NULL, NULL),
(8, 'Room Amenities', 'room-amenities', 'hotel_room', NULL, NULL, '2019-12-02 22:34:00', '2019-12-02 22:34:00', NULL, NULL, NULL),
(9, 'Car Type', 'car-type', 'car', NULL, NULL, '2019-12-02 22:35:01', '2019-12-12 08:54:27', '2019-12-12 08:54:27', NULL, 1),
(10, 'Car Features', 'car-features', 'car', NULL, NULL, '2019-12-02 22:35:16', '2019-12-12 08:54:27', '2019-12-12 08:54:27', NULL, NULL),
(11, 'Hello', 'hello', 'tour', 1, NULL, '2019-12-04 07:51:21', '2019-12-04 07:52:10', '2019-12-04 07:52:10', NULL, NULL),
(12, 'k', 'k', 'attraction', 1, NULL, '2019-12-05 09:25:07', '2019-12-05 09:25:07', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs_translations`
--

CREATE TABLE `bravo_attrs_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_bookings`
--

CREATE TABLE `bravo_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `paid_vendor` tinyint(4) DEFAULT NULL,
  `object_child_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_bookings`
--

INSERT INTO `bravo_bookings` (`id`, `code`, `vendor_id`, `customer_id`, `payment_id`, `gateway`, `object_id`, `object_model`, `start_date`, `end_date`, `total`, `total_guests`, `currency`, `status`, `deposit`, `deposit_type`, `commission`, `commission_type`, `email`, `first_name`, `last_name`, `phone`, `address`, `address2`, `city`, `state`, `zip_code`, `country`, `customer_notes`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `buyer_fees`, `total_before_fees`, `paid_vendor`, `object_child_id`, `number`) VALUES
(2, '03381902971481e956cf76abba303980', 1, 1, NULL, NULL, 1, 'space', '2019-12-13 00:00:00', '2019-12-14 00:00:00', '600.00', 1, NULL, 'draft', NULL, NULL, '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2019-12-12 11:06:30', '2019-12-12 11:06:30', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', '300.00', NULL, NULL, NULL),
(3, '1f60c9b9d8b31a7e26075847a5c608f9', 1, 1, NULL, 'offline_payment', 1, 'space', '2019-12-13 00:00:00', '2019-12-15 00:00:00', '900.00', 1, NULL, 'completed', NULL, NULL, '0.00', '', 'admin@dev.com', 'System', 'Admin', '112 666 888', NULL, NULL, NULL, NULL, NULL, 'ID', NULL, 1, 1, NULL, '2019-12-12 11:31:21', '2019-12-13 03:08:52', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', '600.00', NULL, NULL, NULL),
(4, 'a1d4e5e405acbce51c26036941238e6f', 1, 1, NULL, 'offline_payment', 16, 'tour', '2019-12-15 00:00:00', '2019-12-15 08:00:00', '1000.00', 1, NULL, 'completed', NULL, NULL, '0.00', '', 'admin@dev.com', 'System', 'Admin', '112 666 888', NULL, NULL, NULL, NULL, NULL, 'ID', NULL, 1, 1, NULL, '2019-12-12 23:52:21', '2019-12-13 03:08:52', '', '1000.00', NULL, NULL, NULL),
(5, 'e1fa375e7c193942432dc5c498c24d79', 5, 3, NULL, NULL, 15, 'tour', '2019-12-13 00:00:00', '2019-12-13 05:00:00', '1000.00', 1, NULL, 'draft', NULL, NULL, '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2019-12-13 00:22:06', '2019-12-13 00:22:06', '', '1000.00', NULL, NULL, NULL),
(6, 'b89f0173e4d30f1677b13993d2c3d075', 1, 3, NULL, 'offline_payment', 16, 'tour', '2019-12-13 00:00:00', '2019-12-13 08:00:00', '1000.00', 1, NULL, 'completed', NULL, NULL, '0.00', '', 'customer1@dev.com', 'Customer', '01', '112 666 888', NULL, NULL, NULL, NULL, NULL, 'BY', NULL, 3, 1, NULL, '2019-12-13 00:25:57', '2019-12-13 03:08:52', '', '1000.00', NULL, NULL, NULL),
(7, '17d0dd55ecd57177d1641ac1070650f5', 5, 3, NULL, 'offline_payment', 15, 'tour', '2019-12-13 00:00:00', '2019-12-13 05:00:00', '1000.00', 1, NULL, 'cancelled', NULL, NULL, '0.00', '', 'customer1@dev.com', 'Customer', '01', '112 666 888', NULL, NULL, NULL, NULL, NULL, 'BY', NULL, 3, 1, NULL, '2019-12-13 00:28:44', '2019-12-13 03:09:23', '', '1000.00', NULL, NULL, NULL),
(8, '7c391553bb840ffe0c2b5d1b376fe2cf', 1, 1, NULL, NULL, 16, 'tour', '2019-12-13 00:00:00', '2019-12-13 08:00:00', '1000.00', 1, NULL, 'draft', NULL, NULL, '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2019-12-13 00:50:16', '2019-12-13 00:50:16', '', '1000.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_meta`
--

CREATE TABLE `bravo_booking_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_booking_meta`
--

INSERT INTO `bravo_booking_meta` (`id`, `booking_id`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'duration', '8', NULL, NULL, NULL, NULL),
(2, 1, 'base_price', '726.00', NULL, NULL, NULL, NULL),
(3, 1, 'guests', '1', NULL, NULL, NULL, NULL),
(4, 1, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(5, 1, 'person_types', '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\",\"number\":\"1\"}]', NULL, NULL, NULL, NULL),
(6, 1, 'discount_by_people', '[]', NULL, NULL, NULL, NULL),
(7, 2, 'duration', NULL, NULL, NULL, NULL, NULL),
(8, 2, 'base_price', '300.00', NULL, NULL, NULL, NULL),
(9, 2, 'sale_price', '712.00', NULL, NULL, NULL, NULL),
(10, 2, 'guests', '1', NULL, NULL, NULL, NULL),
(11, 2, 'adults', '1', NULL, NULL, NULL, NULL),
(12, 2, 'children', '0', NULL, NULL, NULL, NULL),
(13, 2, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(14, 3, 'duration', NULL, NULL, NULL, NULL, NULL),
(15, 3, 'base_price', '300.00', NULL, NULL, NULL, NULL),
(16, 3, 'sale_price', '712.00', NULL, NULL, NULL, NULL),
(17, 3, 'guests', '1', NULL, NULL, NULL, NULL),
(18, 3, 'adults', '1', NULL, NULL, NULL, NULL),
(19, 3, 'children', '0', NULL, NULL, NULL, NULL),
(20, 3, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(21, 3, 'locale', '', NULL, NULL, NULL, NULL),
(22, 4, 'duration', '8', NULL, NULL, NULL, NULL),
(23, 4, 'base_price', '726.00', NULL, NULL, NULL, NULL),
(24, 4, 'guests', '1', NULL, NULL, NULL, NULL),
(25, 4, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(26, 4, 'person_types', '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\",\"number\":\"1\"}]', NULL, NULL, NULL, NULL),
(27, 4, 'discount_by_people', '[]', NULL, NULL, NULL, NULL),
(28, 4, 'locale', '', NULL, NULL, NULL, NULL),
(29, 5, 'duration', '5', NULL, NULL, NULL, NULL),
(30, 5, 'base_price', '1383.00', NULL, NULL, NULL, NULL),
(31, 5, 'guests', '1', NULL, NULL, NULL, NULL),
(32, 5, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(33, 5, 'person_types', '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\",\"number\":\"1\"}]', NULL, NULL, NULL, NULL),
(34, 5, 'discount_by_people', '[]', NULL, NULL, NULL, NULL),
(35, 6, 'duration', '8', NULL, NULL, NULL, NULL),
(36, 6, 'base_price', '726.00', NULL, NULL, NULL, NULL),
(37, 6, 'guests', '1', NULL, NULL, NULL, NULL),
(38, 6, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(39, 6, 'person_types', '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\",\"number\":\"1\"}]', NULL, NULL, NULL, NULL),
(40, 6, 'discount_by_people', '[]', NULL, NULL, NULL, NULL),
(41, 6, 'locale', '', NULL, NULL, NULL, NULL),
(42, 7, 'duration', '5', NULL, NULL, NULL, NULL),
(43, 7, 'base_price', '1383.00', NULL, NULL, NULL, NULL),
(44, 7, 'guests', '1', NULL, NULL, NULL, NULL),
(45, 7, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(46, 7, 'person_types', '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\",\"number\":\"1\"}]', NULL, NULL, NULL, NULL),
(47, 7, 'discount_by_people', '[]', NULL, NULL, NULL, NULL),
(48, 7, 'locale', '', NULL, NULL, NULL, NULL),
(49, 8, 'duration', '8', NULL, NULL, NULL, NULL),
(50, 8, 'base_price', '1.00', NULL, NULL, NULL, NULL),
(51, 8, 'guests', '1', NULL, NULL, NULL, NULL),
(52, 8, 'extra_price', '[]', NULL, NULL, NULL, NULL),
(53, 8, 'person_types', '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\",\"number\":\"1\"}]', NULL, NULL, NULL, NULL),
(54, 8, 'discount_by_people', '[]', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_payments`
--

CREATE TABLE `bravo_booking_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_cars`
--

CREATE TABLE `bravo_cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passenger` tinyint(4) DEFAULT 0,
  `gear` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `baggage` tinyint(4) DEFAULT 0,
  `door` tinyint(4) DEFAULT 0,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_cars`
--

INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BMW-X6-facelift', 'bmw-x6-facelift', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 142, 135, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '500.00', '271.00', 0, NULL, NULL, NULL, 6, 'Auto', 3, 4, 'publish', 1, 1, NULL, '2019-12-12 09:32:57', '2019-12-02 22:34:22', '2019-12-12 09:32:57'),
(2, '2019 Honda Clarity', '2019-honda-clarityt', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '300.00', '0.00', 1, NULL, NULL, NULL, 9, 'Auto', 8, 4, 'publish', 1, 1, NULL, '2019-12-12 09:32:57', '2019-12-02 22:34:22', '2019-12-12 09:32:57'),
(3, '2019 Honda Clarity', '2019-honda-clarityt', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '300.00', '0.00', 1, NULL, NULL, NULL, 6, 'Auto', 9, 4, 'publish', 1, 1, NULL, '2019-12-12 09:32:57', '2019-12-02 22:34:22', '2019-12-12 09:32:57'),
(4, '2019 BMW M6 Gran Coupe', '2019-bmw-m6-gran-coupe', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 144, 135, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '300.00', '0.00', 0, NULL, NULL, NULL, 4, 'Auto', 3, 4, 'publish', 1, 1, NULL, '2019-12-12 09:32:57', '2019-12-02 22:34:22', '2019-12-12 09:32:57'),
(5, '2019 Audi S3', '2019-audi-s3', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 145, 135, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '300.00', '0.00', 0, NULL, NULL, NULL, 5, 'Auto', 10, 4, 'publish', 1, 1, NULL, '2019-12-12 09:32:57', '2019-12-02 22:34:22', '2019-12-12 09:32:57'),
(6, 'Vinfast Fadil Plus', 'vinfast-fadil-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 146, 135, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '400.00', '0.00', 1, NULL, NULL, NULL, 4, 'Auto', 9, 4, 'publish', 1, 5, NULL, '2019-12-12 09:32:57', '2019-12-02 22:34:23', '2019-12-12 09:32:57'),
(7, 'Mercedes Benz', 'mercedes-benz', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 147, 135, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '200.00', '0.00', 1, NULL, NULL, NULL, 5, 'Auto', 5, 4, 'publish', 1, 4, NULL, '2019-12-12 09:32:57', '2019-12-02 22:34:23', '2019-12-12 09:32:57'),
(8, 'Vinfast Lux SA2.0 Plus', 'vinfast-lux-sa20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 148, 135, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '600.00', '0.00', 0, NULL, NULL, NULL, 4, 'Auto', 8, 4, 'publish', 1, 5, NULL, '2019-12-12 09:32:57', '2019-12-02 22:34:23', '2019-12-12 09:32:57'),
(9, 'Honda Civic', 'honda-civic', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 149, 135, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '450.00', '0.00', 0, NULL, NULL, NULL, 6, 'Auto', 4, 4, 'publish', 1, 5, NULL, '2019-12-12 09:32:56', '2019-12-02 22:34:23', '2019-12-12 09:32:56'),
(10, 'Toyota Prius Plus', 'toyota-prius-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 150, 135, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '199.00', '0.00', 1, NULL, NULL, NULL, 5, 'Auto', 7, 4, 'publish', 1, 6, NULL, '2019-12-12 09:32:56', '2019-12-02 22:34:23', '2019-12-12 09:32:56'),
(11, 'Vinfast Lux V8 (SUV)', 'vinfast-lux-v8-suv', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 151, 135, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '250.00', '0.00', 0, NULL, NULL, NULL, 9, 'Auto', 10, 4, 'publish', 1, 4, NULL, '2019-12-12 09:32:56', '2019-12-02 22:34:23', '2019-12-12 09:32:56');
INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12, 'Vinfast Lux A2.0 Plus', 'vinfast-lux-a20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 152, 135, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '350.00', '0.00', 0, NULL, NULL, NULL, 7, 'Auto', 4, 4, 'publish', 1, 5, NULL, '2019-12-12 09:32:56', '2019-12-02 22:34:23', '2019-12-12 09:32:56'),
(13, 'Vinfast Fadil Standard', 'vinfast-fadil-standard', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p>\r\n<p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 153, 135, NULL, NULL, NULL, NULL, NULL, 1, '154,155,156,157,158,159,160', NULL, '[{\"title\":\"Material\",\"content\":\"Vinyl\"},{\"title\":\"Avaliable Color\",\"content\":\"Red. Blue, Green\"},{\"title\":\"Avaliable Size\",\"content\":\"Small, Medium, Large\"},{\"title\":\"Where To Get\",\"content\":\"Fery Terminal, Plaza Lagoi\"}]', NULL, '400.00', '0.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', 1, 6, 1, NULL, '2019-12-02 22:34:23', '2019-12-12 09:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_dates`
--

CREATE TABLE `bravo_car_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_term`
--

CREATE TABLE `bravo_car_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_car_term`
--

INSERT INTO `bravo_car_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 61, 1, NULL, NULL, '2019-12-02 22:35:03', '2019-12-02 22:35:03'),
(2, 63, 1, NULL, NULL, '2019-12-02 22:35:03', '2019-12-02 22:35:03'),
(3, 65, 1, NULL, NULL, '2019-12-02 22:35:04', '2019-12-02 22:35:04'),
(4, 66, 1, NULL, NULL, '2019-12-02 22:35:04', '2019-12-02 22:35:04'),
(5, 67, 1, NULL, NULL, '2019-12-02 22:35:04', '2019-12-02 22:35:04'),
(6, 68, 1, NULL, NULL, '2019-12-02 22:35:04', '2019-12-02 22:35:04'),
(7, 62, 2, NULL, NULL, '2019-12-02 22:35:05', '2019-12-02 22:35:05'),
(8, 63, 2, NULL, NULL, '2019-12-02 22:35:05', '2019-12-02 22:35:05'),
(9, 64, 2, NULL, NULL, '2019-12-02 22:35:05', '2019-12-02 22:35:05'),
(10, 65, 2, NULL, NULL, '2019-12-02 22:35:05', '2019-12-02 22:35:05'),
(11, 68, 2, NULL, NULL, '2019-12-02 22:35:05', '2019-12-02 22:35:05'),
(12, 61, 3, NULL, NULL, '2019-12-02 22:35:06', '2019-12-02 22:35:06'),
(13, 62, 3, NULL, NULL, '2019-12-02 22:35:06', '2019-12-02 22:35:06'),
(14, 66, 3, NULL, NULL, '2019-12-02 22:35:06', '2019-12-02 22:35:06'),
(15, 67, 3, NULL, NULL, '2019-12-02 22:35:06', '2019-12-02 22:35:06'),
(16, 68, 3, NULL, NULL, '2019-12-02 22:35:07', '2019-12-02 22:35:07'),
(17, 61, 4, NULL, NULL, '2019-12-02 22:35:07', '2019-12-02 22:35:07'),
(18, 62, 4, NULL, NULL, '2019-12-02 22:35:07', '2019-12-02 22:35:07'),
(19, 63, 4, NULL, NULL, '2019-12-02 22:35:07', '2019-12-02 22:35:07'),
(20, 64, 4, NULL, NULL, '2019-12-02 22:35:08', '2019-12-02 22:35:08'),
(21, 65, 4, NULL, NULL, '2019-12-02 22:35:08', '2019-12-02 22:35:08'),
(22, 62, 5, NULL, NULL, '2019-12-02 22:35:08', '2019-12-02 22:35:08'),
(23, 64, 5, NULL, NULL, '2019-12-02 22:35:08', '2019-12-02 22:35:08'),
(24, 65, 5, NULL, NULL, '2019-12-02 22:35:08', '2019-12-02 22:35:08'),
(25, 67, 5, NULL, NULL, '2019-12-02 22:35:08', '2019-12-02 22:35:08'),
(26, 64, 6, NULL, NULL, '2019-12-02 22:35:09', '2019-12-02 22:35:09'),
(27, 65, 6, NULL, NULL, '2019-12-02 22:35:09', '2019-12-02 22:35:09'),
(28, 66, 6, NULL, NULL, '2019-12-02 22:35:09', '2019-12-02 22:35:09'),
(29, 67, 6, NULL, NULL, '2019-12-02 22:35:09', '2019-12-02 22:35:09'),
(30, 68, 6, NULL, NULL, '2019-12-02 22:35:09', '2019-12-02 22:35:09'),
(31, 61, 7, NULL, NULL, '2019-12-02 22:35:10', '2019-12-02 22:35:10'),
(32, 62, 7, NULL, NULL, '2019-12-02 22:35:10', '2019-12-02 22:35:10'),
(33, 63, 7, NULL, NULL, '2019-12-02 22:35:10', '2019-12-02 22:35:10'),
(34, 66, 7, NULL, NULL, '2019-12-02 22:35:10', '2019-12-02 22:35:10'),
(35, 67, 7, NULL, NULL, '2019-12-02 22:35:10', '2019-12-02 22:35:10'),
(36, 62, 8, NULL, NULL, '2019-12-02 22:35:11', '2019-12-02 22:35:11'),
(37, 63, 8, NULL, NULL, '2019-12-02 22:35:11', '2019-12-02 22:35:11'),
(38, 64, 8, NULL, NULL, '2019-12-02 22:35:11', '2019-12-02 22:35:11'),
(39, 65, 8, NULL, NULL, '2019-12-02 22:35:12', '2019-12-02 22:35:12'),
(40, 66, 8, NULL, NULL, '2019-12-02 22:35:12', '2019-12-02 22:35:12'),
(41, 67, 8, NULL, NULL, '2019-12-02 22:35:12', '2019-12-02 22:35:12'),
(42, 68, 8, NULL, NULL, '2019-12-02 22:35:13', '2019-12-02 22:35:13'),
(43, 62, 9, NULL, NULL, '2019-12-02 22:35:13', '2019-12-02 22:35:13'),
(44, 63, 9, NULL, NULL, '2019-12-02 22:35:13', '2019-12-02 22:35:13'),
(45, 64, 9, NULL, NULL, '2019-12-02 22:35:13', '2019-12-02 22:35:13'),
(46, 65, 9, NULL, NULL, '2019-12-02 22:35:14', '2019-12-02 22:35:14'),
(47, 67, 9, NULL, NULL, '2019-12-02 22:35:14', '2019-12-02 22:35:14'),
(48, 68, 9, NULL, NULL, '2019-12-02 22:35:14', '2019-12-02 22:35:14'),
(49, 63, 10, NULL, NULL, '2019-12-02 22:35:14', '2019-12-02 22:35:14'),
(50, 65, 10, NULL, NULL, '2019-12-02 22:35:14', '2019-12-02 22:35:14'),
(51, 66, 10, NULL, NULL, '2019-12-02 22:35:14', '2019-12-02 22:35:14'),
(52, 67, 10, NULL, NULL, '2019-12-02 22:35:15', '2019-12-02 22:35:15'),
(53, 61, 11, NULL, NULL, '2019-12-02 22:35:15', '2019-12-02 22:35:15'),
(54, 64, 11, NULL, NULL, '2019-12-02 22:35:15', '2019-12-02 22:35:15'),
(55, 67, 11, NULL, NULL, '2019-12-02 22:35:15', '2019-12-02 22:35:15'),
(56, 61, 12, NULL, NULL, '2019-12-02 22:35:15', '2019-12-02 22:35:15'),
(57, 62, 12, NULL, NULL, '2019-12-02 22:35:15', '2019-12-02 22:35:15'),
(58, 64, 12, NULL, NULL, '2019-12-02 22:35:15', '2019-12-02 22:35:15'),
(59, 67, 12, NULL, NULL, '2019-12-02 22:35:16', '2019-12-02 22:35:16'),
(60, 68, 12, NULL, NULL, '2019-12-02 22:35:16', '2019-12-02 22:35:16'),
(68, 69, 1, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(69, 70, 1, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(70, 71, 1, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(71, 72, 1, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(72, 73, 1, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(73, 74, 1, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(74, 69, 2, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(75, 70, 2, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(76, 71, 2, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(77, 72, 2, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17'),
(78, 73, 2, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(79, 74, 2, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(80, 69, 3, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(81, 70, 3, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(82, 71, 3, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(83, 72, 3, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(84, 73, 3, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(85, 74, 3, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(86, 69, 4, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(87, 70, 4, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(88, 71, 4, NULL, NULL, '2019-12-02 22:35:18', '2019-12-02 22:35:18'),
(89, 72, 4, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(90, 73, 4, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(91, 74, 4, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(92, 69, 5, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(93, 70, 5, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(94, 71, 5, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(95, 72, 5, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(96, 73, 5, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(97, 74, 5, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(98, 69, 6, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(99, 70, 6, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(100, 71, 6, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(101, 72, 6, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(102, 73, 6, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(103, 74, 6, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(104, 69, 7, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(105, 70, 7, NULL, NULL, '2019-12-02 22:35:19', '2019-12-02 22:35:19'),
(106, 71, 7, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(107, 72, 7, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(108, 73, 7, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(109, 74, 7, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(110, 69, 8, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(111, 70, 8, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(112, 71, 8, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(113, 72, 8, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(114, 73, 8, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(115, 74, 8, NULL, NULL, '2019-12-02 22:35:20', '2019-12-02 22:35:20'),
(116, 69, 9, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(117, 70, 9, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(118, 71, 9, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(119, 72, 9, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(120, 73, 9, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(121, 74, 9, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(122, 69, 10, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(123, 70, 10, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(124, 71, 10, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(125, 72, 10, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(126, 73, 10, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(127, 74, 10, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(128, 69, 11, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(129, 70, 11, NULL, NULL, '2019-12-02 22:35:21', '2019-12-02 22:35:21'),
(130, 71, 11, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(131, 72, 11, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(132, 73, 11, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(133, 74, 11, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(134, 69, 12, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(135, 70, 12, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(136, 71, 12, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(137, 72, 12, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(138, 73, 12, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22'),
(139, 74, 12, NULL, NULL, '2019-12-02 22:35:22', '2019-12-02 22:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_translations`
--

CREATE TABLE `bravo_car_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_contact`
--

CREATE TABLE `bravo_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotels`
--

CREATE TABLE `bravo_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_rate` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `check_in_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_full_day` smallint(6) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotels`
--

INSERT INTO `bravo_hotels` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `policy`, `star_rate`, `price`, `check_in_time`, `check_out_time`, `allow_full_day`, `sale_price`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hotel Stanford', 'hotel-stanford', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 93, 1, 'Arrondissement de Paris', '19.148665', '72.839670', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '300.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-12-02 22:33:15', NULL),
(2, 'Hotel WBF Hommachi', 'hotel-wbf-homachi', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 95, 1, 'Porte de Vanves', '19.110390', '72.832764', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-12-02 22:33:16', NULL),
(3, 'Castello Casole Hotel', 'castello-casole-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 96, 1, 'Petit-Montrouge', '19.077946', '72.838255', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-12-02 22:33:16', NULL),
(4, 'Redac Gateway Hotel', 'redac-gateway-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 93, 1, 'Petit-Montrouge', '19.031217', '72.851982', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-12-02 22:33:16', NULL),
(5, 'Studio Allston Hotel', 'studio-allston-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 96, 5, 'New York', '18.972786', '72.819724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2019-12-02 22:33:16', NULL),
(6, 'EnVision Hotel Boston', 'envision-hotel-biston', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 96, 3, 'New York', '18.873011', '72.975724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '700.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2019-12-02 22:33:16', NULL),
(7, 'Crowne Plaza Hotel', 'crowne-plaza-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 94, 2, 'New York', '19.001355', '73.111444', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2019-12-02 22:33:16', NULL),
(8, 'Stewart Hotel', 'stewart-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 74, 94, 5, 'New York', '19.080542', '73.010551', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2019-12-02 22:33:16', NULL),
(9, 'Parian Holiday Villas', 'parian-holiday-villas', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 75, 94, 1, 'Regal Cinemas Battery Park', '19.161637', '72.997510', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2019-12-02 22:33:16', NULL),
(10, 'Dylan Hotel', 'dylan-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 96, 2, 'Regal Cinemas Battery', '19.229727', '72.984470', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2019-12-02 22:33:16', NULL),
(11, 'The May Fair Hotel', 'the-may-fair-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 96, 1, 'Paris Cinemas Battery', '19.277696', '72.887009', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 4, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, NULL, NULL, '2019-12-02 22:33:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_rooms`
--

CREATE TABLE `bravo_hotel_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `size` tinyint(4) DEFAULT NULL,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_rooms`
--

INSERT INTO `bravo_hotel_rooms` (`id`, `title`, `content`, `image_id`, `gallery`, `video`, `price`, `parent_id`, `number`, `beds`, `size`, `adults`, `children`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 9, 3, 127, 7, 4, 'publish', 1, NULL, NULL, '2019-12-02 22:33:57', NULL),
(2, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 9, 4, 127, 6, 4, 'publish', 1, NULL, NULL, '2019-12-02 22:33:57', NULL),
(3, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 10, 5, 127, 5, 2, 'publish', 1, NULL, NULL, '2019-12-02 22:33:57', NULL),
(4, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 7, 2, 127, 9, 1, 'publish', 1, NULL, NULL, '2019-12-02 22:33:57', NULL),
(5, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 6, 3, 127, 8, 5, 'publish', 1, NULL, NULL, '2019-12-02 22:33:57', NULL),
(6, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 5, 3, 127, 6, 5, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(7, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 7, 2, 127, 7, 1, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(8, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 8, 3, 127, 8, 1, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(9, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 7, 4, 127, 5, 3, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(10, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 5, 3, 127, 6, 2, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(11, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 8, 5, 127, 5, 5, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(12, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 10, 2, 127, 7, 5, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(13, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 10, 3, 127, 7, 5, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(14, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 9, 5, 127, 6, 2, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(15, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 9, 2, 127, 10, 1, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(16, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 6, 3, 127, 8, 4, 'publish', 1, NULL, NULL, '2019-12-02 22:33:58', NULL),
(17, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 7, 3, 127, 9, 3, 'publish', 4, NULL, NULL, '2019-12-02 22:33:58', NULL),
(18, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 7, 2, 127, 8, 3, 'publish', 4, NULL, NULL, '2019-12-02 22:33:58', NULL),
(19, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 10, 2, 127, 7, 1, 'publish', 4, NULL, NULL, '2019-12-02 22:33:58', NULL),
(20, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 6, 4, 127, 9, 1, 'publish', 4, NULL, NULL, '2019-12-02 22:33:58', NULL),
(21, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 5, 5, 127, 9, 4, 'publish', 4, NULL, NULL, '2019-12-02 22:33:58', NULL),
(22, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 6, 4, 127, 5, 5, 'publish', 4, NULL, NULL, '2019-12-02 22:33:58', NULL),
(23, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 7, 2, 127, 8, 1, 'publish', 4, NULL, NULL, '2019-12-02 22:33:59', NULL),
(24, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 8, 2, 127, 5, 2, 'publish', 4, NULL, NULL, '2019-12-02 22:33:59', NULL),
(25, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 5, 2, 127, 6, 5, 'publish', 6, NULL, NULL, '2019-12-02 22:33:59', NULL),
(26, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 5, 5, 127, 10, 1, 'publish', 6, NULL, NULL, '2019-12-02 22:33:59', NULL),
(27, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 7, 5, 127, 7, 1, 'publish', 6, NULL, NULL, '2019-12-02 22:33:59', NULL),
(28, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 9, 2, 127, 10, 5, 'publish', 6, NULL, NULL, '2019-12-02 22:33:59', NULL),
(29, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 5, 2, 127, 10, 3, 'publish', 4, NULL, NULL, '2019-12-02 22:33:59', NULL),
(30, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 10, 2, 127, 7, 4, 'publish', 4, NULL, NULL, '2019-12-02 22:33:59', NULL),
(31, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 9, 2, 127, 7, 1, 'publish', 4, NULL, NULL, '2019-12-02 22:33:59', NULL),
(32, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 9, 2, 127, 8, 5, 'publish', 4, NULL, NULL, '2019-12-02 22:33:59', NULL),
(33, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 10, 4, 127, 8, 2, 'publish', 1, NULL, NULL, '2019-12-02 22:33:59', NULL),
(34, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 8, 2, 127, 5, 3, 'publish', 1, NULL, NULL, '2019-12-02 22:33:59', NULL),
(35, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 10, 2, 127, 8, 4, 'publish', 1, NULL, NULL, '2019-12-02 22:33:59', NULL),
(36, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 6, 2, 127, 5, 5, 'publish', 1, NULL, NULL, '2019-12-02 22:34:00', NULL),
(37, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 8, 5, 127, 7, 3, 'publish', 4, NULL, NULL, '2019-12-02 22:34:00', NULL),
(38, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 5, 5, 127, 5, 4, 'publish', 4, NULL, NULL, '2019-12-02 22:34:00', NULL),
(39, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 8, 5, 127, 6, 2, 'publish', 4, NULL, NULL, '2019-12-02 22:34:00', NULL),
(40, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 8, 5, 127, 9, 3, 'publish', 4, NULL, NULL, '2019-12-02 22:34:00', NULL),
(41, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 7, 3, 127, 9, 2, 'publish', 5, NULL, NULL, '2019-12-02 22:34:00', NULL),
(42, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 5, 4, 127, 8, 2, 'publish', 5, NULL, NULL, '2019-12-02 22:34:00', NULL),
(43, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 9, 3, 127, 7, 2, 'publish', 5, NULL, NULL, '2019-12-02 22:34:00', NULL),
(44, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 7, 3, 127, 9, 1, 'publish', 5, NULL, NULL, '2019-12-02 22:34:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_bookings`
--

CREATE TABLE `bravo_hotel_room_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_dates`
--

CREATE TABLE `bravo_hotel_room_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `number` smallint(6) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_term`
--

CREATE TABLE `bravo_hotel_room_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_room_term`
--

INSERT INTO `bravo_hotel_room_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 56, 1, NULL, NULL, '2019-12-02 22:34:01', '2019-12-02 22:34:01'),
(2, 57, 1, NULL, NULL, '2019-12-02 22:34:01', '2019-12-02 22:34:01'),
(3, 59, 1, NULL, NULL, '2019-12-02 22:34:01', '2019-12-02 22:34:01'),
(4, 60, 1, NULL, NULL, '2019-12-02 22:34:01', '2019-12-02 22:34:01'),
(5, 56, 2, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(6, 57, 2, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(7, 59, 2, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(8, 60, 2, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(9, 56, 3, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(10, 57, 3, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(11, 59, 3, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(12, 60, 3, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(13, 56, 4, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(14, 57, 4, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(15, 58, 4, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(16, 59, 4, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(17, 60, 4, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(18, 56, 5, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(19, 57, 5, NULL, NULL, '2019-12-02 22:34:02', '2019-12-02 22:34:02'),
(20, 59, 5, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(21, 60, 5, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(22, 56, 6, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(23, 57, 6, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(24, 58, 6, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(25, 56, 7, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(26, 57, 7, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(27, 58, 7, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(28, 59, 7, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(29, 60, 7, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(30, 56, 8, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(31, 57, 8, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(32, 58, 8, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(33, 59, 8, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(34, 60, 8, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(35, 56, 9, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(36, 57, 9, NULL, NULL, '2019-12-02 22:34:03', '2019-12-02 22:34:03'),
(37, 59, 9, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(38, 60, 9, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(39, 56, 10, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(40, 57, 10, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(41, 58, 10, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(42, 59, 10, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(43, 60, 10, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(44, 56, 11, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(45, 57, 11, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(46, 58, 11, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(47, 59, 11, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(48, 60, 11, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(49, 56, 12, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(50, 57, 12, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(51, 58, 12, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(52, 59, 12, NULL, NULL, '2019-12-02 22:34:04', '2019-12-02 22:34:04'),
(53, 60, 12, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(54, 56, 13, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(55, 58, 13, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(56, 59, 13, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(57, 60, 13, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(58, 56, 14, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(59, 57, 14, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(60, 58, 14, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(61, 59, 14, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(62, 60, 14, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(63, 56, 15, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(64, 57, 15, NULL, NULL, '2019-12-02 22:34:05', '2019-12-02 22:34:05'),
(65, 58, 15, NULL, NULL, '2019-12-02 22:34:06', '2019-12-02 22:34:06'),
(66, 59, 15, NULL, NULL, '2019-12-02 22:34:06', '2019-12-02 22:34:06'),
(67, 56, 16, NULL, NULL, '2019-12-02 22:34:06', '2019-12-02 22:34:06'),
(68, 57, 16, NULL, NULL, '2019-12-02 22:34:06', '2019-12-02 22:34:06'),
(69, 58, 16, NULL, NULL, '2019-12-02 22:34:06', '2019-12-02 22:34:06'),
(70, 60, 16, NULL, NULL, '2019-12-02 22:34:06', '2019-12-02 22:34:06'),
(71, 56, 17, NULL, NULL, '2019-12-02 22:34:06', '2019-12-02 22:34:06'),
(72, 57, 17, NULL, NULL, '2019-12-02 22:34:06', '2019-12-02 22:34:06'),
(73, 59, 17, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(74, 60, 17, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(75, 56, 18, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(76, 57, 18, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(77, 58, 18, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(78, 59, 18, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(79, 60, 18, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(80, 56, 19, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(81, 57, 19, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(82, 58, 19, NULL, NULL, '2019-12-02 22:34:07', '2019-12-02 22:34:07'),
(83, 60, 19, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(84, 56, 20, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(85, 57, 20, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(86, 58, 20, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(87, 59, 20, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(88, 56, 21, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(89, 57, 21, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(90, 58, 21, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(91, 59, 21, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(92, 60, 21, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(93, 56, 22, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(94, 57, 22, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(95, 58, 22, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(96, 59, 22, NULL, NULL, '2019-12-02 22:34:08', '2019-12-02 22:34:08'),
(97, 60, 22, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(98, 56, 23, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(99, 57, 23, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(100, 58, 23, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(101, 59, 23, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(102, 60, 23, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(103, 58, 24, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(104, 59, 24, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(105, 60, 24, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(106, 56, 25, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(107, 57, 25, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(108, 58, 25, NULL, NULL, '2019-12-02 22:34:09', '2019-12-02 22:34:09'),
(109, 59, 25, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(110, 60, 25, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(111, 56, 26, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(112, 57, 26, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(113, 58, 26, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(114, 59, 26, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(115, 60, 26, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(116, 56, 27, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(117, 57, 27, NULL, NULL, '2019-12-02 22:34:10', '2019-12-02 22:34:10'),
(118, 58, 27, NULL, NULL, '2019-12-02 22:34:11', '2019-12-02 22:34:11'),
(119, 59, 27, NULL, NULL, '2019-12-02 22:34:11', '2019-12-02 22:34:11'),
(120, 60, 27, NULL, NULL, '2019-12-02 22:34:11', '2019-12-02 22:34:11'),
(121, 56, 28, NULL, NULL, '2019-12-02 22:34:11', '2019-12-02 22:34:11'),
(122, 57, 28, NULL, NULL, '2019-12-02 22:34:11', '2019-12-02 22:34:11'),
(123, 58, 28, NULL, NULL, '2019-12-02 22:34:11', '2019-12-02 22:34:11'),
(124, 60, 28, NULL, NULL, '2019-12-02 22:34:11', '2019-12-02 22:34:11'),
(125, 56, 29, NULL, NULL, '2019-12-02 22:34:11', '2019-12-02 22:34:11'),
(126, 57, 29, NULL, NULL, '2019-12-02 22:34:12', '2019-12-02 22:34:12'),
(127, 59, 29, NULL, NULL, '2019-12-02 22:34:12', '2019-12-02 22:34:12'),
(128, 56, 30, NULL, NULL, '2019-12-02 22:34:13', '2019-12-02 22:34:13'),
(129, 57, 30, NULL, NULL, '2019-12-02 22:34:13', '2019-12-02 22:34:13'),
(130, 58, 30, NULL, NULL, '2019-12-02 22:34:13', '2019-12-02 22:34:13'),
(131, 60, 30, NULL, NULL, '2019-12-02 22:34:13', '2019-12-02 22:34:13'),
(132, 56, 31, NULL, NULL, '2019-12-02 22:34:13', '2019-12-02 22:34:13'),
(133, 57, 31, NULL, NULL, '2019-12-02 22:34:14', '2019-12-02 22:34:14'),
(134, 59, 31, NULL, NULL, '2019-12-02 22:34:14', '2019-12-02 22:34:14'),
(135, 60, 31, NULL, NULL, '2019-12-02 22:34:14', '2019-12-02 22:34:14'),
(136, 56, 32, NULL, NULL, '2019-12-02 22:34:14', '2019-12-02 22:34:14'),
(137, 57, 32, NULL, NULL, '2019-12-02 22:34:14', '2019-12-02 22:34:14'),
(138, 58, 32, NULL, NULL, '2019-12-02 22:34:15', '2019-12-02 22:34:15'),
(139, 59, 32, NULL, NULL, '2019-12-02 22:34:15', '2019-12-02 22:34:15'),
(140, 56, 33, NULL, NULL, '2019-12-02 22:34:15', '2019-12-02 22:34:15'),
(141, 57, 33, NULL, NULL, '2019-12-02 22:34:15', '2019-12-02 22:34:15'),
(142, 58, 33, NULL, NULL, '2019-12-02 22:34:15', '2019-12-02 22:34:15'),
(143, 59, 33, NULL, NULL, '2019-12-02 22:34:15', '2019-12-02 22:34:15'),
(144, 60, 33, NULL, NULL, '2019-12-02 22:34:15', '2019-12-02 22:34:15'),
(145, 56, 34, NULL, NULL, '2019-12-02 22:34:15', '2019-12-02 22:34:15'),
(146, 58, 34, NULL, NULL, '2019-12-02 22:34:16', '2019-12-02 22:34:16'),
(147, 59, 34, NULL, NULL, '2019-12-02 22:34:16', '2019-12-02 22:34:16'),
(148, 60, 34, NULL, NULL, '2019-12-02 22:34:16', '2019-12-02 22:34:16'),
(149, 56, 35, NULL, NULL, '2019-12-02 22:34:16', '2019-12-02 22:34:16'),
(150, 57, 35, NULL, NULL, '2019-12-02 22:34:16', '2019-12-02 22:34:16'),
(151, 58, 35, NULL, NULL, '2019-12-02 22:34:16', '2019-12-02 22:34:16'),
(152, 59, 35, NULL, NULL, '2019-12-02 22:34:17', '2019-12-02 22:34:17'),
(153, 60, 35, NULL, NULL, '2019-12-02 22:34:17', '2019-12-02 22:34:17'),
(154, 56, 36, NULL, NULL, '2019-12-02 22:34:17', '2019-12-02 22:34:17'),
(155, 58, 36, NULL, NULL, '2019-12-02 22:34:17', '2019-12-02 22:34:17'),
(156, 59, 36, NULL, NULL, '2019-12-02 22:34:17', '2019-12-02 22:34:17'),
(157, 56, 37, NULL, NULL, '2019-12-02 22:34:17', '2019-12-02 22:34:17'),
(158, 57, 37, NULL, NULL, '2019-12-02 22:34:18', '2019-12-02 22:34:18'),
(159, 58, 37, NULL, NULL, '2019-12-02 22:34:18', '2019-12-02 22:34:18'),
(160, 59, 37, NULL, NULL, '2019-12-02 22:34:18', '2019-12-02 22:34:18'),
(161, 60, 37, NULL, NULL, '2019-12-02 22:34:18', '2019-12-02 22:34:18'),
(162, 56, 38, NULL, NULL, '2019-12-02 22:34:18', '2019-12-02 22:34:18'),
(163, 57, 38, NULL, NULL, '2019-12-02 22:34:18', '2019-12-02 22:34:18'),
(164, 58, 38, NULL, NULL, '2019-12-02 22:34:18', '2019-12-02 22:34:18'),
(165, 59, 38, NULL, NULL, '2019-12-02 22:34:19', '2019-12-02 22:34:19'),
(166, 60, 38, NULL, NULL, '2019-12-02 22:34:19', '2019-12-02 22:34:19'),
(167, 56, 39, NULL, NULL, '2019-12-02 22:34:19', '2019-12-02 22:34:19'),
(168, 57, 39, NULL, NULL, '2019-12-02 22:34:19', '2019-12-02 22:34:19'),
(169, 58, 39, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(170, 59, 39, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(171, 60, 39, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(172, 56, 40, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(173, 57, 40, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(174, 59, 40, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(175, 60, 40, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(176, 57, 41, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(177, 58, 41, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(178, 60, 41, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(179, 56, 42, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(180, 57, 42, NULL, NULL, '2019-12-02 22:34:20', '2019-12-02 22:34:20'),
(181, 58, 42, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(182, 59, 42, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(183, 60, 42, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(184, 56, 43, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(185, 57, 43, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(186, 58, 43, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(187, 59, 43, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(188, 60, 43, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(189, 56, 44, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(190, 57, 44, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(191, 58, 44, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(192, 59, 44, NULL, NULL, '2019-12-02 22:34:21', '2019-12-02 22:34:21'),
(193, 60, 44, NULL, NULL, '2019-12-02 22:34:22', '2019-12-02 22:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_translations`
--

CREATE TABLE `bravo_hotel_room_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_term`
--

CREATE TABLE `bravo_hotel_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_term`
--

INSERT INTO `bravo_hotel_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 45, 1, NULL, NULL, '2019-12-02 22:33:40', '2019-12-02 22:33:40'),
(2, 46, 1, NULL, NULL, '2019-12-02 22:33:40', '2019-12-02 22:33:40'),
(3, 47, 1, NULL, NULL, '2019-12-02 22:33:40', '2019-12-02 22:33:40'),
(4, 42, 2, NULL, NULL, '2019-12-02 22:33:41', '2019-12-02 22:33:41'),
(5, 43, 2, NULL, NULL, '2019-12-02 22:33:41', '2019-12-02 22:33:41'),
(6, 46, 2, NULL, NULL, '2019-12-02 22:33:41', '2019-12-02 22:33:41'),
(7, 48, 2, NULL, NULL, '2019-12-02 22:33:41', '2019-12-02 22:33:41'),
(8, 42, 3, NULL, NULL, '2019-12-02 22:33:42', '2019-12-02 22:33:42'),
(9, 43, 3, NULL, NULL, '2019-12-02 22:33:42', '2019-12-02 22:33:42'),
(10, 44, 3, NULL, NULL, '2019-12-02 22:33:42', '2019-12-02 22:33:42'),
(11, 45, 3, NULL, NULL, '2019-12-02 22:33:42', '2019-12-02 22:33:42'),
(12, 46, 3, NULL, NULL, '2019-12-02 22:33:42', '2019-12-02 22:33:42'),
(13, 47, 3, NULL, NULL, '2019-12-02 22:33:42', '2019-12-02 22:33:42'),
(14, 48, 3, NULL, NULL, '2019-12-02 22:33:43', '2019-12-02 22:33:43'),
(15, 42, 4, NULL, NULL, '2019-12-02 22:33:43', '2019-12-02 22:33:43'),
(16, 43, 4, NULL, NULL, '2019-12-02 22:33:43', '2019-12-02 22:33:43'),
(17, 44, 4, NULL, NULL, '2019-12-02 22:33:43', '2019-12-02 22:33:43'),
(18, 45, 4, NULL, NULL, '2019-12-02 22:33:43', '2019-12-02 22:33:43'),
(19, 48, 4, NULL, NULL, '2019-12-02 22:33:43', '2019-12-02 22:33:43'),
(20, 42, 5, NULL, NULL, '2019-12-02 22:33:43', '2019-12-02 22:33:43'),
(21, 44, 5, NULL, NULL, '2019-12-02 22:33:44', '2019-12-02 22:33:44'),
(22, 45, 5, NULL, NULL, '2019-12-02 22:33:44', '2019-12-02 22:33:44'),
(23, 46, 5, NULL, NULL, '2019-12-02 22:33:44', '2019-12-02 22:33:44'),
(24, 47, 5, NULL, NULL, '2019-12-02 22:33:44', '2019-12-02 22:33:44'),
(25, 48, 5, NULL, NULL, '2019-12-02 22:33:45', '2019-12-02 22:33:45'),
(26, 42, 6, NULL, NULL, '2019-12-02 22:33:45', '2019-12-02 22:33:45'),
(27, 44, 6, NULL, NULL, '2019-12-02 22:33:45', '2019-12-02 22:33:45'),
(28, 45, 6, NULL, NULL, '2019-12-02 22:33:45', '2019-12-02 22:33:45'),
(29, 46, 6, NULL, NULL, '2019-12-02 22:33:45', '2019-12-02 22:33:45'),
(30, 48, 6, NULL, NULL, '2019-12-02 22:33:45', '2019-12-02 22:33:45'),
(31, 42, 7, NULL, NULL, '2019-12-02 22:33:45', '2019-12-02 22:33:45'),
(32, 43, 7, NULL, NULL, '2019-12-02 22:33:46', '2019-12-02 22:33:46'),
(33, 45, 7, NULL, NULL, '2019-12-02 22:33:46', '2019-12-02 22:33:46'),
(34, 46, 7, NULL, NULL, '2019-12-02 22:33:46', '2019-12-02 22:33:46'),
(35, 47, 7, NULL, NULL, '2019-12-02 22:33:46', '2019-12-02 22:33:46'),
(36, 48, 7, NULL, NULL, '2019-12-02 22:33:46', '2019-12-02 22:33:46'),
(37, 42, 8, NULL, NULL, '2019-12-02 22:33:46', '2019-12-02 22:33:46'),
(38, 43, 8, NULL, NULL, '2019-12-02 22:33:47', '2019-12-02 22:33:47'),
(39, 44, 8, NULL, NULL, '2019-12-02 22:33:47', '2019-12-02 22:33:47'),
(40, 45, 8, NULL, NULL, '2019-12-02 22:33:47', '2019-12-02 22:33:47'),
(41, 46, 8, NULL, NULL, '2019-12-02 22:33:47', '2019-12-02 22:33:47'),
(42, 47, 8, NULL, NULL, '2019-12-02 22:33:47', '2019-12-02 22:33:47'),
(43, 48, 8, NULL, NULL, '2019-12-02 22:33:47', '2019-12-02 22:33:47'),
(44, 42, 9, NULL, NULL, '2019-12-02 22:33:47', '2019-12-02 22:33:47'),
(45, 44, 9, NULL, NULL, '2019-12-02 22:33:47', '2019-12-02 22:33:47'),
(46, 45, 9, NULL, NULL, '2019-12-02 22:33:48', '2019-12-02 22:33:48'),
(47, 46, 9, NULL, NULL, '2019-12-02 22:33:48', '2019-12-02 22:33:48'),
(48, 47, 9, NULL, NULL, '2019-12-02 22:33:48', '2019-12-02 22:33:48'),
(49, 48, 9, NULL, NULL, '2019-12-02 22:33:48', '2019-12-02 22:33:48'),
(50, 42, 10, NULL, NULL, '2019-12-02 22:33:48', '2019-12-02 22:33:48'),
(51, 43, 10, NULL, NULL, '2019-12-02 22:33:48', '2019-12-02 22:33:48'),
(52, 44, 10, NULL, NULL, '2019-12-02 22:33:48', '2019-12-02 22:33:48'),
(53, 45, 10, NULL, NULL, '2019-12-02 22:33:49', '2019-12-02 22:33:49'),
(54, 46, 10, NULL, NULL, '2019-12-02 22:33:49', '2019-12-02 22:33:49'),
(55, 47, 10, NULL, NULL, '2019-12-02 22:33:49', '2019-12-02 22:33:49'),
(56, 48, 10, NULL, NULL, '2019-12-02 22:33:49', '2019-12-02 22:33:49'),
(57, 42, 11, NULL, NULL, '2019-12-02 22:33:50', '2019-12-02 22:33:50'),
(58, 43, 11, NULL, NULL, '2019-12-02 22:33:50', '2019-12-02 22:33:50'),
(59, 44, 11, NULL, NULL, '2019-12-02 22:33:50', '2019-12-02 22:33:50'),
(60, 45, 11, NULL, NULL, '2019-12-02 22:33:50', '2019-12-02 22:33:50'),
(61, 46, 11, NULL, NULL, '2019-12-02 22:33:50', '2019-12-02 22:33:50'),
(62, 48, 11, NULL, NULL, '2019-12-02 22:33:50', '2019-12-02 22:33:50'),
(63, 49, 1, NULL, NULL, '2019-12-02 22:33:52', '2019-12-02 22:33:52'),
(64, 50, 1, NULL, NULL, '2019-12-02 22:33:52', '2019-12-02 22:33:52'),
(65, 51, 1, NULL, NULL, '2019-12-02 22:33:52', '2019-12-02 22:33:52'),
(66, 53, 1, NULL, NULL, '2019-12-02 22:33:52', '2019-12-02 22:33:52'),
(67, 54, 1, NULL, NULL, '2019-12-02 22:33:52', '2019-12-02 22:33:52'),
(68, 50, 2, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(69, 51, 2, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(70, 53, 2, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(71, 49, 3, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(72, 50, 3, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(73, 52, 3, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(74, 49, 4, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(75, 51, 4, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(76, 52, 4, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(77, 53, 4, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(78, 54, 4, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(79, 49, 5, NULL, NULL, '2019-12-02 22:33:53', '2019-12-02 22:33:53'),
(80, 50, 5, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(81, 52, 5, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(82, 54, 5, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(83, 55, 5, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(84, 50, 6, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(85, 51, 6, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(86, 53, 6, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(87, 49, 7, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(88, 52, 7, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(89, 55, 7, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(90, 49, 8, NULL, NULL, '2019-12-02 22:33:54', '2019-12-02 22:33:54'),
(91, 50, 8, NULL, NULL, '2019-12-02 22:33:55', '2019-12-02 22:33:55'),
(92, 52, 8, NULL, NULL, '2019-12-02 22:33:55', '2019-12-02 22:33:55'),
(93, 54, 8, NULL, NULL, '2019-12-02 22:33:55', '2019-12-02 22:33:55'),
(94, 55, 8, NULL, NULL, '2019-12-02 22:33:55', '2019-12-02 22:33:55'),
(95, 49, 9, NULL, NULL, '2019-12-02 22:33:55', '2019-12-02 22:33:55'),
(96, 50, 9, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(97, 52, 9, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(98, 53, 9, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(99, 54, 9, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(100, 55, 9, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(101, 49, 10, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(102, 50, 10, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(103, 52, 10, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(104, 53, 10, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(105, 54, 10, NULL, NULL, '2019-12-02 22:33:56', '2019-12-02 22:33:56'),
(106, 49, 11, NULL, NULL, '2019-12-02 22:33:57', '2019-12-02 22:33:57'),
(107, 50, 11, NULL, NULL, '2019-12-02 22:33:57', '2019-12-02 22:33:57'),
(108, 52, 11, NULL, NULL, '2019-12-02 22:33:57', '2019-12-02 22:33:57'),
(109, 53, 11, NULL, NULL, '2019-12-02 22:33:57', '2019-12-02 22:33:57'),
(110, 54, 11, NULL, NULL, '2019-12-02 22:33:57', '2019-12-02 22:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_translations`
--

CREATE TABLE `bravo_hotel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_locations`
--

CREATE TABLE `bravo_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_locations`
--

INSERT INTO `bravo_locations` (`id`, `name`, `content`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `banner_image_id`, `trip_ideas`) VALUES
(1, 'Paris', 'New York, a city that doesnt sleep, as Frank Sinatra sang. The Big Apple is one of the largest cities in the United States and one of the most popular in the whole country and the world. Millions of tourists visit it every year attracted by its various iconic symbols and its wide range of leisure and cultural offer. New York is the birth place of new trends and developments in many fields such as art, gastronomy, technology,...', 'paris', 106, '48.856613', '2.352222', 12, 'publish', 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:26', '2019-12-02 22:31:27', 111, '\"[{\\\"title\\\":\\\"Experiencing the best jazz in Harlem, birthplace of bebop\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"New Orleans might be the home of jazz, but New York City is where many of the genre\\u2019s greats became stars \\u2013 and Harlem was at the heart of it.The neighborhood experienced a rebirth during the...\\\",\\\"image_id\\\":\\\"112\\\"},{\\\"title\\\":\\\"Reflections from the road: transformative \\u2018Big Trip\\u2019 experiences\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"Whether it\\u2019s a gap year after finishing school, a well-earned sabbatical from work or an overseas adventure in celebration of your retirement, a big trip is a rite of passage for every traveller, with myriad life lessons to be ...\\\",\\\"image_id\\\":\\\"113\\\"}]\"'),
(2, 'New York, United States', NULL, 'new-york-united-states', 107, '40.712776', '-74.005974', 12, 'publish', 3, 4, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:26', '2019-12-02 22:31:27', NULL, NULL),
(3, 'California', NULL, 'california', 108, '36.778259', '-119.417931', 12, 'publish', 5, 6, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:26', '2019-12-02 22:31:27', NULL, NULL),
(4, 'United States', NULL, 'united-states', 109, '37.090240', '-95.712891', 12, 'publish', 7, 8, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:26', '2019-12-02 22:31:27', NULL, NULL),
(5, 'Los Angeles', NULL, 'los-angeles', 110, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:26', '2019-12-02 22:31:27', NULL, NULL),
(6, 'New Jersey', NULL, 'new-jersey', 106, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:26', '2019-12-02 22:31:28', NULL, NULL),
(7, 'San Francisco', NULL, 'san-francisco', 107, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:26', '2019-12-02 22:31:28', NULL, NULL),
(8, 'Virginia', NULL, 'virginia', 108, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:26', '2019-12-02 22:31:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_location_translations`
--

CREATE TABLE `bravo_location_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_payouts`
--

CREATE TABLE `bravo_payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_vendor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_process_by` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review`
--

CREATE TABLE `bravo_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_number` int(11) DEFAULT NULL,
  `author_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review`
--

INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(1, 1, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:37', 16, NULL, NULL, NULL, '2019-12-02 22:31:37', '2019-12-02 22:31:37', 1),
(2, 1, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:37', 9, NULL, NULL, NULL, '2019-12-02 22:31:37', '2019-12-02 22:31:37', 1),
(3, 1, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:38', 8, NULL, NULL, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38', 1),
(4, 1, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:39', 13, NULL, NULL, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39', 1),
(5, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:39', 16, NULL, NULL, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39', 1),
(6, 2, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:40', 12, NULL, NULL, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40', 1),
(7, 2, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:40', 16, NULL, NULL, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40', 1),
(8, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:41', 11, NULL, NULL, NULL, '2019-12-02 22:31:41', '2019-12-02 22:31:41', 1),
(9, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:42', 14, NULL, NULL, NULL, '2019-12-02 22:31:42', '2019-12-02 22:31:42', 5),
(10, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:43', 13, NULL, NULL, NULL, '2019-12-02 22:31:43', '2019-12-02 22:31:43', 5),
(11, 3, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:43', 10, NULL, NULL, NULL, '2019-12-02 22:31:43', '2019-12-02 22:31:43', 5),
(12, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:44', 14, NULL, NULL, NULL, '2019-12-02 22:31:44', '2019-12-02 22:31:44', 5),
(13, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:45', 9, NULL, NULL, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45', 1),
(14, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:45', 12, NULL, NULL, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45', 1),
(15, 5, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:46', 9, NULL, NULL, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46', 4),
(16, 5, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:46', 12, NULL, NULL, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46', 4),
(17, 5, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:47', 16, NULL, NULL, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47', 4),
(18, 5, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:47', 9, NULL, NULL, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47', 4),
(19, 6, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:48', 13, NULL, NULL, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48', 4),
(20, 6, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:48', 7, NULL, NULL, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48', 4),
(21, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:49', 10, NULL, NULL, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49', 4),
(22, 6, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:49', 16, NULL, NULL, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49', 4),
(23, 6, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:50', 13, NULL, NULL, NULL, '2019-12-02 22:31:50', '2019-12-02 22:31:50', 4),
(24, 7, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:51', 15, NULL, NULL, NULL, '2019-12-02 22:31:51', '2019-12-02 22:31:51', 4),
(25, 7, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:52', 15, NULL, NULL, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52', 4),
(26, 8, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:52', 16, NULL, NULL, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52', 6),
(27, 8, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:54', 14, NULL, NULL, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54', 6),
(28, 9, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:54', 16, NULL, NULL, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54', 4),
(29, 9, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:55', 16, NULL, NULL, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55', 4),
(30, 10, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:55', 15, NULL, NULL, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55', 6),
(31, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:56', 10, NULL, NULL, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56', 6),
(32, 10, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:56', 7, NULL, NULL, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56', 6),
(33, 11, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:57', 14, NULL, NULL, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57', 6),
(34, 11, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:57', 15, NULL, NULL, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57', 6),
(35, 11, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:31:58', 14, NULL, NULL, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58', 6),
(36, 11, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:59', 15, NULL, NULL, NULL, '2019-12-02 22:31:59', '2019-12-02 22:31:59', 6),
(37, 12, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:31:59', 16, NULL, NULL, NULL, '2019-12-02 22:31:59', '2019-12-02 22:31:59', 1),
(38, 12, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:00', 14, NULL, NULL, NULL, '2019-12-02 22:32:00', '2019-12-02 22:32:00', 1),
(39, 12, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:01', 10, NULL, NULL, NULL, '2019-12-02 22:32:01', '2019-12-02 22:32:01', 1),
(40, 13, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:02', 13, NULL, NULL, NULL, '2019-12-02 22:32:02', '2019-12-02 22:32:02', 5),
(41, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:03', 11, NULL, NULL, NULL, '2019-12-02 22:32:03', '2019-12-02 22:32:03', 5),
(42, 13, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:04', 11, NULL, NULL, NULL, '2019-12-02 22:32:04', '2019-12-02 22:32:04', 5),
(43, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:04', 7, NULL, NULL, NULL, '2019-12-02 22:32:04', '2019-12-02 22:32:04', 1),
(44, 14, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:05', 13, NULL, NULL, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05', 1),
(45, 14, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:05', 15, NULL, NULL, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05', 1),
(46, 14, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:06', 9, NULL, NULL, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06', 1),
(47, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:07', 11, NULL, NULL, NULL, '2019-12-02 22:32:07', '2019-12-02 22:32:07', 5),
(48, 15, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:07', 15, NULL, NULL, NULL, '2019-12-02 22:32:07', '2019-12-02 22:32:07', 5),
(49, 15, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:08', 7, NULL, NULL, NULL, '2019-12-02 22:32:08', '2019-12-02 22:32:08', 5),
(50, 16, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:09', 10, NULL, NULL, NULL, '2019-12-02 22:32:09', '2019-12-02 22:32:09', 1),
(51, 16, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:10', 13, NULL, NULL, NULL, '2019-12-02 22:32:10', '2019-12-02 22:32:10', 1),
(52, 16, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:11', 15, NULL, NULL, NULL, '2019-12-02 22:32:11', '2019-12-02 22:32:11', 1),
(53, 16, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:12', 7, NULL, NULL, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12', 1),
(54, 1, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:37', 15, NULL, NULL, NULL, '2019-12-02 22:32:37', '2019-12-02 22:32:37', 1),
(55, 1, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:38', 15, NULL, NULL, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38', 1),
(56, 1, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:38', 10, NULL, NULL, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38', 1),
(57, 2, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:39', 16, NULL, NULL, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39', 1),
(58, 3, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:40', 15, NULL, NULL, NULL, '2019-12-02 22:32:40', '2019-12-02 22:32:40', 4),
(59, 3, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:41', 13, NULL, NULL, NULL, '2019-12-02 22:32:41', '2019-12-02 22:32:41', 4),
(60, 3, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:41', 16, NULL, NULL, NULL, '2019-12-02 22:32:41', '2019-12-02 22:32:41', 4),
(61, 3, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:42', 14, NULL, NULL, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42', 4),
(62, 4, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:43', 9, NULL, NULL, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43', 6),
(63, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:43', 12, NULL, NULL, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43', 6),
(64, 4, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:44', 11, NULL, NULL, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44', 6),
(65, 4, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:44', 7, NULL, NULL, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44', 6),
(66, 4, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:45', 11, NULL, NULL, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45', 6),
(67, 5, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:46', 8, NULL, NULL, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46', 5),
(68, 5, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:46', 11, NULL, NULL, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46', 5),
(69, 5, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:47', 16, NULL, NULL, NULL, '2019-12-02 22:32:47', '2019-12-02 22:32:47', 5),
(70, 5, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:48', 13, NULL, NULL, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48', 5),
(71, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:49', 9, NULL, NULL, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49', 6),
(72, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:49', 9, NULL, NULL, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49', 6),
(73, 6, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:50', 10, NULL, NULL, NULL, '2019-12-02 22:32:50', '2019-12-02 22:32:50', 6),
(74, 6, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:50', 9, NULL, NULL, NULL, '2019-12-02 22:32:50', '2019-12-02 22:32:50', 6),
(75, 7, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:51', 8, NULL, NULL, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51', 6),
(76, 7, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:52', 10, NULL, NULL, NULL, '2019-12-02 22:32:52', '2019-12-02 22:32:52', 6),
(77, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:53', 7, NULL, NULL, NULL, '2019-12-02 22:32:53', '2019-12-02 22:32:53', 6),
(78, 8, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:54', 11, NULL, NULL, NULL, '2019-12-02 22:32:54', '2019-12-02 22:32:54', 4),
(79, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:55', 8, NULL, NULL, NULL, '2019-12-02 22:32:55', '2019-12-02 22:32:55', 4),
(80, 8, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:56', 11, NULL, NULL, NULL, '2019-12-02 22:32:56', '2019-12-02 22:32:56', 4),
(81, 8, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:32:57', 11, NULL, NULL, NULL, '2019-12-02 22:32:57', '2019-12-02 22:32:57', 4),
(82, 9, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:58', 13, NULL, NULL, NULL, '2019-12-02 22:32:58', '2019-12-02 22:32:58', 5),
(83, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:32:59', 8, NULL, NULL, NULL, '2019-12-02 22:32:59', '2019-12-02 22:32:59', 5),
(84, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:00', 11, NULL, NULL, NULL, '2019-12-02 22:33:00', '2019-12-02 22:33:00', 1),
(85, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:01', 11, NULL, NULL, NULL, '2019-12-02 22:33:01', '2019-12-02 22:33:01', 1),
(86, 10, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:02', 7, NULL, NULL, NULL, '2019-12-02 22:33:02', '2019-12-02 22:33:02', 1),
(87, 10, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:03', 15, NULL, NULL, NULL, '2019-12-02 22:33:03', '2019-12-02 22:33:03', 1),
(88, 11, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:04', 9, NULL, NULL, NULL, '2019-12-02 22:33:04', '2019-12-02 22:33:04', 6),
(89, 11, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:05', 11, NULL, NULL, NULL, '2019-12-02 22:33:05', '2019-12-02 22:33:05', 6),
(90, 11, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:06', 7, NULL, NULL, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06', 6),
(91, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:16', 9, NULL, NULL, NULL, '2019-12-02 22:33:16', '2019-12-02 22:33:16', 1),
(92, 1, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:17', 13, NULL, NULL, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17', 1),
(93, 2, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:17', 15, NULL, NULL, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17', 1),
(94, 2, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:18', 13, NULL, NULL, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18', 1),
(95, 2, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:18', 9, NULL, NULL, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18', 1),
(96, 3, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:18', 8, NULL, NULL, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18', 1),
(97, 3, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:19', 16, NULL, NULL, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19', 1),
(98, 3, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:19', 8, NULL, NULL, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19', 1),
(99, 4, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:20', 10, NULL, NULL, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20', 1),
(100, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:20', 9, NULL, NULL, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20', 1),
(101, 4, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:21', 12, NULL, NULL, NULL, '2019-12-02 22:33:21', '2019-12-02 22:33:21', 1),
(102, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:22', 8, NULL, NULL, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22', 4),
(103, 5, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:22', 15, NULL, NULL, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22', 4),
(104, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:22', 9, NULL, NULL, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22', 4),
(105, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:23', 7, NULL, NULL, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23', 4),
(106, 5, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:23', 8, NULL, NULL, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23', 4),
(107, 6, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:24', 16, NULL, NULL, NULL, '2019-12-02 22:33:24', '2019-12-02 22:33:24', 4),
(108, 6, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:25', 9, NULL, NULL, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25', 4),
(109, 6, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:25', 11, NULL, NULL, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25', 4),
(110, 6, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:26', 16, NULL, NULL, NULL, '2019-12-02 22:33:26', '2019-12-02 22:33:26', 4),
(111, 7, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:27', 15, NULL, NULL, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27', 6),
(112, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:28', 9, NULL, NULL, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28', 6),
(113, 7, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:28', 12, NULL, NULL, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28', 6),
(114, 7, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:29', 14, NULL, NULL, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29', 6),
(115, 9, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:29', 14, NULL, NULL, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29', 1),
(116, 9, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:30', 16, NULL, NULL, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30', 1),
(117, 10, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:30', 16, NULL, NULL, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30', 4),
(118, 10, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:31', 16, NULL, NULL, NULL, '2019-12-02 22:33:31', '2019-12-02 22:33:31', 4),
(119, 10, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:31', 12, NULL, NULL, NULL, '2019-12-02 22:33:31', '2019-12-02 22:33:31', 4),
(120, 10, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:32', 10, NULL, NULL, NULL, '2019-12-02 22:33:32', '2019-12-02 22:33:32', 4),
(121, 11, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:33', 16, NULL, NULL, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33', 5),
(122, 11, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:33', 9, NULL, NULL, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33', 5);
INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(123, 11, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:34', 9, NULL, NULL, NULL, '2019-12-02 22:33:34', '2019-12-02 22:33:34', 5),
(124, 11, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:33:35', 13, NULL, NULL, NULL, '2019-12-02 22:33:35', '2019-12-02 22:33:35', 5),
(125, 11, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:33:36', 7, NULL, NULL, NULL, '2019-12-02 22:33:36', '2019-12-02 22:33:36', 5),
(126, 1, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:23', 15, NULL, NULL, NULL, '2019-12-02 22:34:23', '2019-12-02 22:34:23', 1),
(127, 2, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:24', 13, NULL, NULL, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24', 1),
(128, 2, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:24', 13, NULL, NULL, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24', 1),
(129, 2, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:25', 10, NULL, NULL, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25', 1),
(130, 2, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:25', 9, NULL, NULL, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25', 1),
(131, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:25', 7, NULL, NULL, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25', 1),
(132, 3, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:26', 11, NULL, NULL, NULL, '2019-12-02 22:34:26', '2019-12-02 22:34:26', 1),
(133, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:28', 8, NULL, NULL, NULL, '2019-12-02 22:34:28', '2019-12-02 22:34:28', 1),
(134, 4, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:29', 13, NULL, NULL, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29', 1),
(135, 4, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:29', 9, NULL, NULL, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29', 1),
(136, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:30', 11, NULL, NULL, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30', 1),
(137, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:30', 14, NULL, NULL, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30', 1),
(138, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:31', 9, NULL, NULL, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31', 1),
(139, 5, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:31', 8, NULL, NULL, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31', 1),
(140, 5, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:32', 7, NULL, NULL, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32', 1),
(141, 5, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:32', 9, NULL, NULL, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32', 1),
(142, 6, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:33', 7, NULL, NULL, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33', 5),
(143, 6, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:34', 8, NULL, NULL, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34', 5),
(144, 6, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:34', 16, NULL, NULL, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34', 5),
(145, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:35', 8, NULL, NULL, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35', 4),
(146, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:35', 8, NULL, NULL, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35', 4),
(147, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:36', 11, NULL, NULL, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36', 4),
(148, 7, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:36', 10, NULL, NULL, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36', 4),
(149, 8, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:37', 7, NULL, NULL, NULL, '2019-12-02 22:34:37', '2019-12-02 22:34:37', 5),
(150, 8, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:38', 14, NULL, NULL, NULL, '2019-12-02 22:34:38', '2019-12-02 22:34:38', 5),
(151, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:39', 14, NULL, NULL, NULL, '2019-12-02 22:34:39', '2019-12-02 22:34:39', 5),
(152, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:40', 12, NULL, NULL, NULL, '2019-12-02 22:34:40', '2019-12-02 22:34:40', 5),
(153, 8, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:41', 14, NULL, NULL, NULL, '2019-12-02 22:34:41', '2019-12-02 22:34:41', 5),
(154, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:42', 15, NULL, NULL, NULL, '2019-12-02 22:34:42', '2019-12-02 22:34:42', 5),
(155, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:44', 15, NULL, NULL, NULL, '2019-12-02 22:34:44', '2019-12-02 22:34:44', 5),
(156, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:45', 16, NULL, NULL, NULL, '2019-12-02 22:34:45', '2019-12-02 22:34:45', 5),
(157, 9, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:47', 12, NULL, NULL, NULL, '2019-12-02 22:34:47', '2019-12-02 22:34:47', 5),
(158, 10, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:49', 7, NULL, NULL, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49', 6),
(159, 10, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:49', 12, NULL, NULL, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49', 6),
(160, 10, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:50', 15, NULL, NULL, NULL, '2019-12-02 22:34:50', '2019-12-02 22:34:50', 6),
(161, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:51', 7, NULL, NULL, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51', 4),
(162, 11, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:51', 12, NULL, NULL, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51', 4),
(163, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:52', 13, NULL, NULL, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52', 4),
(164, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:53', 8, NULL, NULL, NULL, '2019-12-02 22:34:53', '2019-12-02 22:34:53', 4),
(165, 11, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:54', 7, NULL, NULL, NULL, '2019-12-02 22:34:54', '2019-12-02 22:34:54', 4),
(166, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:55', 14, NULL, NULL, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55', 5),
(167, 12, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:56', 10, NULL, NULL, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56', 5),
(168, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:56', 13, NULL, NULL, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56', 5),
(169, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:57', 12, NULL, NULL, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57', 5),
(170, 13, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2019-12-03 05:34:57', 14, NULL, NULL, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57', 6),
(171, 13, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:58', 16, NULL, NULL, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58', 6),
(172, 13, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2019-12-03 05:34:59', 14, NULL, NULL, NULL, '2019-12-02 22:34:59', '2019-12-02 22:34:59', 6),
(173, 16, 'attraction', '123456Aa', '123456Aa 123456Aa 123456Aa', 4, '127.0.0.1', 'approved', NULL, 3, NULL, NULL, NULL, '2019-12-13 00:15:19', '2019-12-13 00:15:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review_meta`
--

CREATE TABLE `bravo_review_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review_meta`
--

INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:37', '2019-12-02 22:31:37'),
(2, 1, 1, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:37', '2019-12-02 22:31:37'),
(3, 1, 1, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:37', '2019-12-02 22:31:37'),
(4, 1, 1, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:37', '2019-12-02 22:31:37'),
(5, 1, 1, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:37', '2019-12-02 22:31:37'),
(6, 2, 1, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(7, 2, 1, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(8, 2, 1, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(9, 2, 1, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(10, 2, 1, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(11, 3, 1, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(12, 3, 1, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(13, 3, 1, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(14, 3, 1, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(15, 3, 1, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:38', '2019-12-02 22:31:38'),
(16, 4, 1, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39'),
(17, 4, 1, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39'),
(18, 4, 1, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39'),
(19, 4, 1, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39'),
(20, 4, 1, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39'),
(21, 5, 2, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39'),
(22, 5, 2, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39'),
(23, 5, 2, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:39', '2019-12-02 22:31:39'),
(24, 5, 2, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(25, 5, 2, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(26, 6, 2, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(27, 6, 2, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(28, 6, 2, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(29, 6, 2, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(30, 6, 2, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(31, 7, 2, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(32, 7, 2, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(33, 7, 2, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(34, 7, 2, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(35, 7, 2, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:40', '2019-12-02 22:31:40'),
(36, 8, 2, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:41', '2019-12-02 22:31:41'),
(37, 8, 2, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:41', '2019-12-02 22:31:41'),
(38, 8, 2, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:41', '2019-12-02 22:31:41'),
(39, 8, 2, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:41', '2019-12-02 22:31:41'),
(40, 8, 2, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:41', '2019-12-02 22:31:41'),
(41, 9, 3, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:42', '2019-12-02 22:31:42'),
(42, 9, 3, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:42', '2019-12-02 22:31:42'),
(43, 9, 3, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:42', '2019-12-02 22:31:42'),
(44, 9, 3, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:42', '2019-12-02 22:31:42'),
(45, 9, 3, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:42', '2019-12-02 22:31:42'),
(46, 10, 3, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:43', '2019-12-02 22:31:43'),
(47, 10, 3, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:43', '2019-12-02 22:31:43'),
(48, 10, 3, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:43', '2019-12-02 22:31:43'),
(49, 10, 3, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:43', '2019-12-02 22:31:43'),
(50, 10, 3, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:43', '2019-12-02 22:31:43'),
(51, 11, 3, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:44', '2019-12-02 22:31:44'),
(52, 11, 3, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:44', '2019-12-02 22:31:44'),
(53, 11, 3, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:44', '2019-12-02 22:31:44'),
(54, 11, 3, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:44', '2019-12-02 22:31:44'),
(55, 11, 3, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:44', '2019-12-02 22:31:44'),
(56, 12, 3, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:44', '2019-12-02 22:31:44'),
(57, 12, 3, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:44', '2019-12-02 22:31:44'),
(58, 12, 3, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(59, 12, 3, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(60, 12, 3, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(61, 13, 4, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(62, 13, 4, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(63, 13, 4, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(64, 13, 4, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(65, 13, 4, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(66, 14, 4, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(67, 14, 4, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:45', '2019-12-02 22:31:45'),
(68, 14, 4, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(69, 14, 4, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(70, 14, 4, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(71, 15, 5, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(72, 15, 5, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(73, 15, 5, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(74, 15, 5, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(75, 15, 5, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(76, 16, 5, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(77, 16, 5, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(78, 16, 5, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:46', '2019-12-02 22:31:46'),
(79, 16, 5, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47'),
(80, 16, 5, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47'),
(81, 17, 5, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47'),
(82, 17, 5, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47'),
(83, 17, 5, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47'),
(84, 17, 5, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47'),
(85, 17, 5, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47'),
(86, 18, 5, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:47', '2019-12-02 22:31:47'),
(87, 18, 5, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(88, 18, 5, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(89, 18, 5, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(90, 18, 5, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(91, 19, 6, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(92, 19, 6, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(93, 19, 6, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(94, 19, 6, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(95, 19, 6, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(96, 20, 6, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(97, 20, 6, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(98, 20, 6, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:48', '2019-12-02 22:31:48'),
(99, 20, 6, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(100, 20, 6, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(101, 21, 6, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(102, 21, 6, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(103, 21, 6, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(104, 21, 6, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(105, 21, 6, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(106, 22, 6, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(107, 22, 6, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:49', '2019-12-02 22:31:49'),
(108, 22, 6, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:50', '2019-12-02 22:31:50'),
(109, 22, 6, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:50', '2019-12-02 22:31:50'),
(110, 22, 6, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:50', '2019-12-02 22:31:50'),
(111, 23, 6, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:51', '2019-12-02 22:31:51'),
(112, 23, 6, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:51', '2019-12-02 22:31:51'),
(113, 23, 6, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:51', '2019-12-02 22:31:51'),
(114, 23, 6, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:51', '2019-12-02 22:31:51'),
(115, 23, 6, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:51', '2019-12-02 22:31:51'),
(116, 24, 7, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:51', '2019-12-02 22:31:51'),
(117, 24, 7, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:51', '2019-12-02 22:31:51'),
(118, 24, 7, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52'),
(119, 24, 7, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52'),
(120, 24, 7, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52'),
(121, 25, 7, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52'),
(122, 25, 7, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52'),
(123, 25, 7, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52'),
(124, 25, 7, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52'),
(125, 25, 7, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:52', '2019-12-02 22:31:52'),
(126, 26, 8, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:53', '2019-12-02 22:31:53'),
(127, 26, 8, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:53', '2019-12-02 22:31:53'),
(128, 26, 8, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:53', '2019-12-02 22:31:53'),
(129, 26, 8, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:53', '2019-12-02 22:31:53'),
(130, 26, 8, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:53', '2019-12-02 22:31:53'),
(131, 27, 8, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(132, 27, 8, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(133, 27, 8, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(134, 27, 8, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(135, 27, 8, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(136, 28, 9, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(137, 28, 9, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(138, 28, 9, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(139, 28, 9, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:54', '2019-12-02 22:31:54'),
(140, 28, 9, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55'),
(141, 29, 9, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55'),
(142, 29, 9, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55'),
(143, 29, 9, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55'),
(144, 29, 9, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55'),
(145, 29, 9, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55'),
(146, 30, 10, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:55', '2019-12-02 22:31:55'),
(147, 30, 10, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(148, 30, 10, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(149, 30, 10, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(150, 30, 10, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(151, 31, 10, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(152, 31, 10, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(153, 31, 10, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(154, 31, 10, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(155, 31, 10, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(156, 32, 10, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(157, 32, 10, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(158, 32, 10, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:56', '2019-12-02 22:31:56'),
(159, 32, 10, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57'),
(160, 32, 10, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57'),
(161, 33, 11, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57'),
(162, 33, 11, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57'),
(163, 33, 11, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57'),
(164, 33, 11, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57'),
(165, 33, 11, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:57', '2019-12-02 22:31:57'),
(166, 34, 11, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(167, 34, 11, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(168, 34, 11, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(169, 34, 11, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(170, 34, 11, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(171, 35, 11, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(172, 35, 11, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(173, 35, 11, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(174, 35, 11, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(175, 35, 11, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:31:58', '2019-12-02 22:31:58'),
(176, 36, 11, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:31:59', '2019-12-02 22:31:59'),
(177, 36, 11, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:31:59', '2019-12-02 22:31:59'),
(178, 36, 11, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:31:59', '2019-12-02 22:31:59'),
(179, 36, 11, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:31:59', '2019-12-02 22:31:59'),
(180, 36, 11, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:31:59', '2019-12-02 22:31:59'),
(181, 37, 12, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:00', '2019-12-02 22:32:00'),
(182, 37, 12, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:00', '2019-12-02 22:32:00'),
(183, 37, 12, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:00', '2019-12-02 22:32:00'),
(184, 37, 12, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:00', '2019-12-02 22:32:00'),
(185, 37, 12, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:32:00', '2019-12-02 22:32:00'),
(186, 38, 12, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:32:01', '2019-12-02 22:32:01'),
(187, 38, 12, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:01', '2019-12-02 22:32:01'),
(188, 38, 12, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:01', '2019-12-02 22:32:01'),
(189, 38, 12, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:01', '2019-12-02 22:32:01'),
(190, 38, 12, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:32:01', '2019-12-02 22:32:01'),
(191, 39, 12, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:02', '2019-12-02 22:32:02'),
(192, 39, 12, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:02', '2019-12-02 22:32:02'),
(193, 39, 12, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:02', '2019-12-02 22:32:02'),
(194, 39, 12, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:02', '2019-12-02 22:32:02'),
(195, 39, 12, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:02', '2019-12-02 22:32:02'),
(196, 40, 13, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:02', '2019-12-02 22:32:02'),
(197, 40, 13, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:02', '2019-12-02 22:32:02'),
(198, 40, 13, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:03', '2019-12-02 22:32:03'),
(199, 40, 13, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:03', '2019-12-02 22:32:03'),
(200, 40, 13, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:03', '2019-12-02 22:32:03'),
(201, 41, 13, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:03', '2019-12-02 22:32:03'),
(202, 41, 13, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:03', '2019-12-02 22:32:03'),
(203, 41, 13, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:03', '2019-12-02 22:32:03'),
(204, 41, 13, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:32:03', '2019-12-02 22:32:03'),
(205, 41, 13, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:04', '2019-12-02 22:32:04'),
(206, 42, 13, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:32:04', '2019-12-02 22:32:04'),
(207, 42, 13, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:04', '2019-12-02 22:32:04'),
(208, 42, 13, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:04', '2019-12-02 22:32:04'),
(209, 42, 13, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:04', '2019-12-02 22:32:04'),
(210, 42, 13, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:32:04', '2019-12-02 22:32:04'),
(211, 43, 14, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(212, 43, 14, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(213, 43, 14, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(214, 43, 14, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(215, 43, 14, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(216, 44, 14, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(217, 44, 14, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(218, 44, 14, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(219, 44, 14, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(220, 44, 14, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(221, 45, 14, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:05', '2019-12-02 22:32:05'),
(222, 45, 14, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(223, 45, 14, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(224, 45, 14, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(225, 45, 14, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(226, 46, 14, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(227, 46, 14, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(228, 46, 14, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(229, 46, 14, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(230, 46, 14, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:32:06', '2019-12-02 22:32:06'),
(231, 47, 15, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:32:07', '2019-12-02 22:32:07'),
(232, 47, 15, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:07', '2019-12-02 22:32:07'),
(233, 47, 15, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:07', '2019-12-02 22:32:07'),
(234, 47, 15, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:32:07', '2019-12-02 22:32:07'),
(235, 47, 15, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:07', '2019-12-02 22:32:07'),
(236, 48, 15, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:07', '2019-12-02 22:32:07'),
(237, 48, 15, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:08', '2019-12-02 22:32:08'),
(238, 48, 15, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:32:08', '2019-12-02 22:32:08'),
(239, 48, 15, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:32:08', '2019-12-02 22:32:08'),
(240, 48, 15, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:08', '2019-12-02 22:32:08'),
(241, 49, 15, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:08', '2019-12-02 22:32:08'),
(242, 49, 15, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:09', '2019-12-02 22:32:09'),
(243, 49, 15, 'tour', 'Friendliness', '4', 1, NULL, '2019-12-02 22:32:09', '2019-12-02 22:32:09'),
(244, 49, 15, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:32:09', '2019-12-02 22:32:09'),
(245, 49, 15, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:32:09', '2019-12-02 22:32:09'),
(246, 50, 16, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:10', '2019-12-02 22:32:10'),
(247, 50, 16, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:10', '2019-12-02 22:32:10'),
(248, 50, 16, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:10', '2019-12-02 22:32:10'),
(249, 50, 16, 'tour', 'Area Expert', '4', 1, NULL, '2019-12-02 22:32:10', '2019-12-02 22:32:10'),
(250, 50, 16, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:10', '2019-12-02 22:32:10'),
(251, 51, 16, 'tour', 'Service', '4', 1, NULL, '2019-12-02 22:32:11', '2019-12-02 22:32:11'),
(252, 51, 16, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:11', '2019-12-02 22:32:11'),
(253, 51, 16, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:11', '2019-12-02 22:32:11'),
(254, 51, 16, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:11', '2019-12-02 22:32:11'),
(255, 51, 16, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:11', '2019-12-02 22:32:11'),
(256, 52, 16, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(257, 52, 16, 'tour', 'Organization', '4', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(258, 52, 16, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(259, 52, 16, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(260, 52, 16, 'tour', 'Safety', '5', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(261, 53, 16, 'tour', 'Service', '5', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(262, 53, 16, 'tour', 'Organization', '5', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(263, 53, 16, 'tour', 'Friendliness', '5', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(264, 53, 16, 'tour', 'Area Expert', '5', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(265, 53, 16, 'tour', 'Safety', '4', 1, NULL, '2019-12-02 22:32:12', '2019-12-02 22:32:12'),
(266, 54, 1, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:37', '2019-12-02 22:32:37'),
(267, 54, 1, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(268, 54, 1, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(269, 54, 1, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(270, 54, 1, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(271, 55, 1, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(272, 55, 1, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(273, 55, 1, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(274, 55, 1, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(275, 55, 1, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(276, 56, 1, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(277, 56, 1, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:38', '2019-12-02 22:32:38'),
(278, 56, 1, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39'),
(279, 56, 1, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39'),
(280, 56, 1, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39'),
(281, 57, 2, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39'),
(282, 57, 2, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39'),
(283, 57, 2, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39'),
(284, 57, 2, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39'),
(285, 57, 2, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:39', '2019-12-02 22:32:39'),
(286, 58, 3, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:40', '2019-12-02 22:32:40'),
(287, 58, 3, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:40', '2019-12-02 22:32:40'),
(288, 58, 3, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:40', '2019-12-02 22:32:40'),
(289, 58, 3, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:40', '2019-12-02 22:32:40'),
(290, 58, 3, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:41', '2019-12-02 22:32:41'),
(291, 59, 3, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:41', '2019-12-02 22:32:41'),
(292, 59, 3, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:41', '2019-12-02 22:32:41'),
(293, 59, 3, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:41', '2019-12-02 22:32:41'),
(294, 59, 3, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:41', '2019-12-02 22:32:41'),
(295, 59, 3, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:41', '2019-12-02 22:32:41'),
(296, 60, 3, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42'),
(297, 60, 3, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42'),
(298, 60, 3, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42'),
(299, 60, 3, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42'),
(300, 60, 3, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42'),
(301, 61, 3, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42'),
(302, 61, 3, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42'),
(303, 61, 3, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:42', '2019-12-02 22:32:42'),
(304, 61, 3, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(305, 61, 3, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(306, 62, 4, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(307, 62, 4, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(308, 62, 4, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(309, 62, 4, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(310, 62, 4, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(311, 63, 4, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(312, 63, 4, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:43', '2019-12-02 22:32:43'),
(313, 63, 4, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44'),
(314, 63, 4, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44'),
(315, 63, 4, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44'),
(316, 64, 4, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44'),
(317, 64, 4, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44'),
(318, 64, 4, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44'),
(319, 64, 4, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44'),
(320, 64, 4, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:44', '2019-12-02 22:32:44'),
(321, 65, 4, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45'),
(322, 65, 4, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45'),
(323, 65, 4, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45'),
(324, 65, 4, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45'),
(325, 65, 4, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45'),
(326, 66, 4, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45'),
(327, 66, 4, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45'),
(328, 66, 4, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:45', '2019-12-02 22:32:45'),
(329, 66, 4, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(330, 66, 4, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(331, 67, 5, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(332, 67, 5, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(333, 67, 5, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(334, 67, 5, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(335, 67, 5, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(336, 68, 5, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(337, 68, 5, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(338, 68, 5, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:46', '2019-12-02 22:32:46'),
(339, 68, 5, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:47', '2019-12-02 22:32:47'),
(340, 68, 5, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:47', '2019-12-02 22:32:47'),
(341, 69, 5, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:47', '2019-12-02 22:32:47'),
(342, 69, 5, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48'),
(343, 69, 5, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48'),
(344, 69, 5, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48'),
(345, 69, 5, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48'),
(346, 70, 5, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48'),
(347, 70, 5, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48'),
(348, 70, 5, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48'),
(349, 70, 5, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:48', '2019-12-02 22:32:48'),
(350, 70, 5, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(351, 71, 6, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(352, 71, 6, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(353, 71, 6, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(354, 71, 6, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(355, 71, 6, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(356, 72, 6, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(357, 72, 6, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(358, 72, 6, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(359, 72, 6, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:49', '2019-12-02 22:32:49'),
(360, 72, 6, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:50', '2019-12-02 22:32:50'),
(361, 73, 6, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:50', '2019-12-02 22:32:50'),
(362, 73, 6, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:50', '2019-12-02 22:32:50'),
(363, 73, 6, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:50', '2019-12-02 22:32:50'),
(364, 73, 6, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:50', '2019-12-02 22:32:50'),
(365, 73, 6, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:50', '2019-12-02 22:32:50'),
(366, 74, 6, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51'),
(367, 74, 6, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51'),
(368, 74, 6, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51'),
(369, 74, 6, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51'),
(370, 74, 6, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51'),
(371, 75, 7, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51'),
(372, 75, 7, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51'),
(373, 75, 7, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:51', '2019-12-02 22:32:51'),
(374, 75, 7, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:52', '2019-12-02 22:32:52'),
(375, 75, 7, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:52', '2019-12-02 22:32:52'),
(376, 76, 7, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:52', '2019-12-02 22:32:52'),
(377, 76, 7, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:52', '2019-12-02 22:32:52'),
(378, 76, 7, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:52', '2019-12-02 22:32:52'),
(379, 76, 7, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:53', '2019-12-02 22:32:53'),
(380, 76, 7, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:53', '2019-12-02 22:32:53'),
(381, 77, 7, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:53', '2019-12-02 22:32:53'),
(382, 77, 7, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:53', '2019-12-02 22:32:53'),
(383, 77, 7, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:53', '2019-12-02 22:32:53'),
(384, 77, 7, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:54', '2019-12-02 22:32:54'),
(385, 77, 7, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:54', '2019-12-02 22:32:54'),
(386, 78, 8, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:54', '2019-12-02 22:32:54'),
(387, 78, 8, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:54', '2019-12-02 22:32:54'),
(388, 78, 8, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:32:54', '2019-12-02 22:32:54'),
(389, 78, 8, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:54', '2019-12-02 22:32:54'),
(390, 78, 8, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:54', '2019-12-02 22:32:54'),
(391, 79, 8, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:55', '2019-12-02 22:32:55'),
(392, 79, 8, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:55', '2019-12-02 22:32:55'),
(393, 79, 8, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:55', '2019-12-02 22:32:55'),
(394, 79, 8, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:56', '2019-12-02 22:32:56'),
(395, 79, 8, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:32:56', '2019-12-02 22:32:56'),
(396, 80, 8, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:56', '2019-12-02 22:32:56'),
(397, 80, 8, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:57', '2019-12-02 22:32:57'),
(398, 80, 8, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:57', '2019-12-02 22:32:57'),
(399, 80, 8, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:32:57', '2019-12-02 22:32:57'),
(400, 80, 8, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:57', '2019-12-02 22:32:57'),
(401, 81, 8, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:57', '2019-12-02 22:32:57'),
(402, 81, 8, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:32:57', '2019-12-02 22:32:57'),
(403, 81, 8, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:58', '2019-12-02 22:32:58'),
(404, 81, 8, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:58', '2019-12-02 22:32:58'),
(405, 81, 8, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:58', '2019-12-02 22:32:58'),
(406, 82, 9, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:32:59', '2019-12-02 22:32:59'),
(407, 82, 9, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:32:59', '2019-12-02 22:32:59'),
(408, 82, 9, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:32:59', '2019-12-02 22:32:59'),
(409, 82, 9, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:32:59', '2019-12-02 22:32:59'),
(410, 82, 9, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:32:59', '2019-12-02 22:32:59'),
(411, 83, 9, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:32:59', '2019-12-02 22:32:59'),
(412, 83, 9, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:33:00', '2019-12-02 22:33:00'),
(413, 83, 9, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:33:00', '2019-12-02 22:33:00'),
(414, 83, 9, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:00', '2019-12-02 22:33:00'),
(415, 83, 9, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:00', '2019-12-02 22:33:00'),
(416, 84, 10, 'space', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:00', '2019-12-02 22:33:00'),
(417, 84, 10, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:33:00', '2019-12-02 22:33:00'),
(418, 84, 10, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:33:00', '2019-12-02 22:33:00'),
(419, 84, 10, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:01', '2019-12-02 22:33:01'),
(420, 84, 10, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:01', '2019-12-02 22:33:01'),
(421, 85, 10, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:01', '2019-12-02 22:33:01'),
(422, 85, 10, 'space', 'Location', '4', 1, NULL, '2019-12-02 22:33:01', '2019-12-02 22:33:01'),
(423, 85, 10, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:33:02', '2019-12-02 22:33:02'),
(424, 85, 10, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:02', '2019-12-02 22:33:02'),
(425, 85, 10, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:02', '2019-12-02 22:33:02'),
(426, 86, 10, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:02', '2019-12-02 22:33:02'),
(427, 86, 10, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:33:02', '2019-12-02 22:33:02'),
(428, 86, 10, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:33:03', '2019-12-02 22:33:03'),
(429, 86, 10, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:03', '2019-12-02 22:33:03'),
(430, 86, 10, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:03', '2019-12-02 22:33:03'),
(431, 87, 10, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:03', '2019-12-02 22:33:03'),
(432, 87, 10, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:33:03', '2019-12-02 22:33:03'),
(433, 87, 10, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:33:03', '2019-12-02 22:33:03'),
(434, 87, 10, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:04', '2019-12-02 22:33:04'),
(435, 87, 10, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:04', '2019-12-02 22:33:04'),
(436, 88, 11, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:04', '2019-12-02 22:33:04'),
(437, 88, 11, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:33:05', '2019-12-02 22:33:05'),
(438, 88, 11, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:33:05', '2019-12-02 22:33:05'),
(439, 88, 11, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:05', '2019-12-02 22:33:05'),
(440, 88, 11, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:05', '2019-12-02 22:33:05'),
(441, 89, 11, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:05', '2019-12-02 22:33:05'),
(442, 89, 11, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:33:05', '2019-12-02 22:33:05'),
(443, 89, 11, 'space', 'Service', '4', 1, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06'),
(444, 89, 11, 'space', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06'),
(445, 89, 11, 'space', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06'),
(446, 90, 11, 'space', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06'),
(447, 90, 11, 'space', 'Location', '5', 1, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06'),
(448, 90, 11, 'space', 'Service', '5', 1, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06'),
(449, 90, 11, 'space', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06'),
(450, 90, 11, 'space', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:06', '2019-12-02 22:33:06'),
(451, 91, 1, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(452, 91, 1, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(453, 91, 1, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(454, 91, 1, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(455, 91, 1, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(456, 92, 1, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(457, 92, 1, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(458, 92, 1, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(459, 92, 1, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(460, 92, 1, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(461, 93, 2, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(462, 93, 2, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:17', '2019-12-02 22:33:17'),
(463, 93, 2, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(464, 93, 2, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(465, 93, 2, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(466, 94, 2, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(467, 94, 2, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(468, 94, 2, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(469, 94, 2, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(470, 94, 2, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(471, 95, 2, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(472, 95, 2, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(473, 95, 2, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(474, 95, 2, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(475, 95, 2, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:18', '2019-12-02 22:33:18'),
(476, 96, 3, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(477, 96, 3, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(478, 96, 3, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(479, 96, 3, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(480, 96, 3, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(481, 97, 3, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(482, 97, 3, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(483, 97, 3, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(484, 97, 3, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(485, 97, 3, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:19', '2019-12-02 22:33:19'),
(486, 98, 3, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(487, 98, 3, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(488, 98, 3, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(489, 98, 3, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(490, 98, 3, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(491, 99, 4, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(492, 99, 4, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(493, 99, 4, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(494, 99, 4, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(495, 99, 4, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(496, 100, 4, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(497, 100, 4, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:20', '2019-12-02 22:33:20'),
(498, 100, 4, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:21', '2019-12-02 22:33:21'),
(499, 100, 4, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:21', '2019-12-02 22:33:21'),
(500, 100, 4, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:21', '2019-12-02 22:33:21'),
(501, 101, 4, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:21', '2019-12-02 22:33:21'),
(502, 101, 4, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:21', '2019-12-02 22:33:21'),
(503, 101, 4, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:21', '2019-12-02 22:33:21'),
(504, 101, 4, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:21', '2019-12-02 22:33:21'),
(505, 101, 4, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(506, 102, 5, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(507, 102, 5, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(508, 102, 5, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(509, 102, 5, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(510, 102, 5, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(511, 103, 5, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(512, 103, 5, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(513, 103, 5, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(514, 103, 5, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(515, 103, 5, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(516, 104, 5, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:22', '2019-12-02 22:33:22'),
(517, 104, 5, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(518, 104, 5, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(519, 104, 5, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(520, 104, 5, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(521, 105, 5, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(522, 105, 5, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(523, 105, 5, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(524, 105, 5, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(525, 105, 5, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(526, 106, 5, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:23', '2019-12-02 22:33:23'),
(527, 106, 5, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:24', '2019-12-02 22:33:24'),
(528, 106, 5, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:24', '2019-12-02 22:33:24'),
(529, 106, 5, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:24', '2019-12-02 22:33:24'),
(530, 106, 5, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:24', '2019-12-02 22:33:24'),
(531, 107, 6, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:24', '2019-12-02 22:33:24'),
(532, 107, 6, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:24', '2019-12-02 22:33:24'),
(533, 107, 6, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:24', '2019-12-02 22:33:24'),
(534, 107, 6, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25'),
(535, 107, 6, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25'),
(536, 108, 6, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25'),
(537, 108, 6, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(538, 108, 6, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25'),
(539, 108, 6, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25'),
(540, 108, 6, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25'),
(541, 109, 6, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:25', '2019-12-02 22:33:25'),
(542, 109, 6, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:26', '2019-12-02 22:33:26'),
(543, 109, 6, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:26', '2019-12-02 22:33:26'),
(544, 109, 6, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:26', '2019-12-02 22:33:26'),
(545, 109, 6, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:26', '2019-12-02 22:33:26'),
(546, 110, 6, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:26', '2019-12-02 22:33:26'),
(547, 110, 6, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27'),
(548, 110, 6, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27'),
(549, 110, 6, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27'),
(550, 110, 6, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27'),
(551, 111, 7, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27'),
(552, 111, 7, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27'),
(553, 111, 7, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27'),
(554, 111, 7, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:27', '2019-12-02 22:33:27'),
(555, 111, 7, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(556, 112, 7, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(557, 112, 7, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(558, 112, 7, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(559, 112, 7, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(560, 112, 7, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(561, 113, 7, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(562, 113, 7, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(563, 113, 7, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:28', '2019-12-02 22:33:28'),
(564, 113, 7, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(565, 113, 7, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(566, 114, 7, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(567, 114, 7, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(568, 114, 7, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(569, 114, 7, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(570, 114, 7, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(571, 115, 9, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(572, 115, 9, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(573, 115, 9, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:29', '2019-12-02 22:33:29'),
(574, 115, 9, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(575, 115, 9, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(576, 116, 9, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(577, 116, 9, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(578, 116, 9, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(579, 116, 9, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(580, 116, 9, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(581, 117, 10, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(582, 117, 10, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(583, 117, 10, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(584, 117, 10, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:30', '2019-12-02 22:33:30'),
(585, 117, 10, 'hotel', 'Rooms', '4', 1, NULL, '2019-12-02 22:33:31', '2019-12-02 22:33:31'),
(586, 118, 10, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:31', '2019-12-02 22:33:31'),
(587, 118, 10, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:31', '2019-12-02 22:33:31'),
(588, 118, 10, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:31', '2019-12-02 22:33:31'),
(589, 118, 10, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:31', '2019-12-02 22:33:31'),
(590, 118, 10, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:31', '2019-12-02 22:33:31'),
(591, 119, 10, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:32', '2019-12-02 22:33:32'),
(592, 119, 10, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:32', '2019-12-02 22:33:32'),
(593, 119, 10, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:32', '2019-12-02 22:33:32'),
(594, 119, 10, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:32', '2019-12-02 22:33:32'),
(595, 119, 10, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:32', '2019-12-02 22:33:32'),
(596, 120, 10, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:32', '2019-12-02 22:33:32'),
(597, 120, 10, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:32', '2019-12-02 22:33:32'),
(598, 120, 10, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(599, 120, 10, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(600, 120, 10, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(601, 121, 11, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(602, 121, 11, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(603, 121, 11, 'hotel', 'Service', '5', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(604, 121, 11, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(605, 121, 11, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(606, 122, 11, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(607, 122, 11, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(608, 122, 11, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:33', '2019-12-02 22:33:33'),
(609, 122, 11, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:34', '2019-12-02 22:33:34'),
(610, 122, 11, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:34', '2019-12-02 22:33:34'),
(611, 123, 11, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:34', '2019-12-02 22:33:34'),
(612, 123, 11, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:34', '2019-12-02 22:33:34'),
(613, 123, 11, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:34', '2019-12-02 22:33:34'),
(614, 123, 11, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:34', '2019-12-02 22:33:34'),
(615, 123, 11, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:35', '2019-12-02 22:33:35'),
(616, 124, 11, 'hotel', 'Sleep', '5', 1, NULL, '2019-12-02 22:33:35', '2019-12-02 22:33:35'),
(617, 124, 11, 'hotel', 'Location', '5', 1, NULL, '2019-12-02 22:33:35', '2019-12-02 22:33:35'),
(618, 124, 11, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:35', '2019-12-02 22:33:35'),
(619, 124, 11, 'hotel', 'Clearness', '5', 1, NULL, '2019-12-02 22:33:35', '2019-12-02 22:33:35'),
(620, 124, 11, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:36', '2019-12-02 22:33:36'),
(621, 125, 11, 'hotel', 'Sleep', '4', 1, NULL, '2019-12-02 22:33:36', '2019-12-02 22:33:36'),
(622, 125, 11, 'hotel', 'Location', '4', 1, NULL, '2019-12-02 22:33:36', '2019-12-02 22:33:36'),
(623, 125, 11, 'hotel', 'Service', '4', 1, NULL, '2019-12-02 22:33:36', '2019-12-02 22:33:36'),
(624, 125, 11, 'hotel', 'Clearness', '4', 1, NULL, '2019-12-02 22:33:36', '2019-12-02 22:33:36'),
(625, 125, 11, 'hotel', 'Rooms', '5', 1, NULL, '2019-12-02 22:33:36', '2019-12-02 22:33:36'),
(626, 126, 1, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:23', '2019-12-02 22:34:23'),
(627, 126, 1, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:23', '2019-12-02 22:34:23'),
(628, 126, 1, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:23', '2019-12-02 22:34:23'),
(629, 126, 1, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(630, 126, 1, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(631, 127, 2, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(632, 127, 2, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(633, 127, 2, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(634, 127, 2, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(635, 127, 2, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(636, 128, 2, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(637, 128, 2, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(638, 128, 2, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(639, 128, 2, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(640, 128, 2, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:24', '2019-12-02 22:34:24'),
(641, 129, 2, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(642, 129, 2, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(643, 129, 2, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(644, 129, 2, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(645, 129, 2, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(646, 130, 2, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(647, 130, 2, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(648, 130, 2, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(649, 130, 2, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(650, 130, 2, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:25', '2019-12-02 22:34:25'),
(651, 131, 3, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:26', '2019-12-02 22:34:26'),
(652, 131, 3, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:26', '2019-12-02 22:34:26'),
(653, 131, 3, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:26', '2019-12-02 22:34:26'),
(654, 131, 3, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:26', '2019-12-02 22:34:26'),
(655, 131, 3, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:26', '2019-12-02 22:34:26'),
(656, 132, 3, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:26', '2019-12-02 22:34:26'),
(657, 132, 3, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:27', '2019-12-02 22:34:27'),
(658, 132, 3, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:27', '2019-12-02 22:34:27'),
(659, 132, 3, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:27', '2019-12-02 22:34:27'),
(660, 132, 3, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:28', '2019-12-02 22:34:28'),
(661, 133, 3, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:28', '2019-12-02 22:34:28'),
(662, 133, 3, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:28', '2019-12-02 22:34:28'),
(663, 133, 3, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:28', '2019-12-02 22:34:28'),
(664, 133, 3, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(665, 133, 3, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(666, 134, 4, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(667, 134, 4, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(668, 134, 4, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(669, 134, 4, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(670, 134, 4, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(671, 135, 4, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(672, 135, 4, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(673, 135, 4, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:29', '2019-12-02 22:34:29'),
(674, 135, 4, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(675, 135, 4, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(676, 136, 4, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(677, 136, 4, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(678, 136, 4, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(679, 136, 4, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(680, 136, 4, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(681, 137, 4, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(682, 137, 4, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(683, 137, 4, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(684, 137, 4, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(685, 137, 4, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:30', '2019-12-02 22:34:30'),
(686, 138, 5, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31'),
(687, 138, 5, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31'),
(688, 138, 5, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31'),
(689, 138, 5, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31'),
(690, 138, 5, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31'),
(691, 139, 5, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31'),
(692, 139, 5, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31'),
(693, 139, 5, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:31', '2019-12-02 22:34:31'),
(694, 139, 5, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32'),
(695, 139, 5, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32'),
(696, 140, 5, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32'),
(697, 140, 5, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32'),
(698, 140, 5, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32'),
(699, 140, 5, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32'),
(700, 140, 5, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:32', '2019-12-02 22:34:32'),
(701, 141, 5, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33'),
(702, 141, 5, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33'),
(703, 141, 5, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33'),
(704, 141, 5, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33'),
(705, 141, 5, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33'),
(706, 142, 6, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33'),
(707, 142, 6, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33'),
(708, 142, 6, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:33', '2019-12-02 22:34:33'),
(709, 142, 6, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34'),
(710, 142, 6, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34'),
(711, 143, 6, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34'),
(712, 143, 6, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34'),
(713, 143, 6, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34'),
(714, 143, 6, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34'),
(715, 143, 6, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34'),
(716, 144, 6, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:34', '2019-12-02 22:34:34'),
(717, 144, 6, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(718, 144, 6, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(719, 144, 6, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(720, 144, 6, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(721, 145, 7, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(722, 145, 7, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(723, 145, 7, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(724, 145, 7, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(725, 145, 7, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(726, 146, 7, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:35', '2019-12-02 22:34:35'),
(727, 146, 7, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(728, 146, 7, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(729, 146, 7, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(730, 146, 7, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(731, 147, 7, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(732, 147, 7, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(733, 147, 7, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(734, 147, 7, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(735, 147, 7, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(736, 148, 7, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:36', '2019-12-02 22:34:36'),
(737, 148, 7, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:37', '2019-12-02 22:34:37'),
(738, 148, 7, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:37', '2019-12-02 22:34:37'),
(739, 148, 7, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:37', '2019-12-02 22:34:37'),
(740, 148, 7, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:37', '2019-12-02 22:34:37'),
(741, 149, 8, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:37', '2019-12-02 22:34:37'),
(742, 149, 8, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:37', '2019-12-02 22:34:37'),
(743, 149, 8, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:38', '2019-12-02 22:34:38'),
(744, 149, 8, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:38', '2019-12-02 22:34:38'),
(745, 149, 8, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:38', '2019-12-02 22:34:38'),
(746, 150, 8, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:38', '2019-12-02 22:34:38'),
(747, 150, 8, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:38', '2019-12-02 22:34:38'),
(748, 150, 8, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:38', '2019-12-02 22:34:38'),
(749, 150, 8, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:38', '2019-12-02 22:34:38'),
(750, 150, 8, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:39', '2019-12-02 22:34:39'),
(751, 151, 8, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:39', '2019-12-02 22:34:39'),
(752, 151, 8, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:39', '2019-12-02 22:34:39'),
(753, 151, 8, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:39', '2019-12-02 22:34:39'),
(754, 151, 8, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:40', '2019-12-02 22:34:40'),
(755, 151, 8, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:40', '2019-12-02 22:34:40'),
(756, 152, 8, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:40', '2019-12-02 22:34:40'),
(757, 152, 8, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:40', '2019-12-02 22:34:40'),
(758, 152, 8, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:40', '2019-12-02 22:34:40'),
(759, 152, 8, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:41', '2019-12-02 22:34:41'),
(760, 152, 8, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:41', '2019-12-02 22:34:41'),
(761, 153, 8, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:41', '2019-12-02 22:34:41'),
(762, 153, 8, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:41', '2019-12-02 22:34:41'),
(763, 153, 8, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:42', '2019-12-02 22:34:42'),
(764, 153, 8, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:42', '2019-12-02 22:34:42'),
(765, 153, 8, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:42', '2019-12-02 22:34:42'),
(766, 154, 9, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:42', '2019-12-02 22:34:42'),
(767, 154, 9, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:43', '2019-12-02 22:34:43'),
(768, 154, 9, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:43', '2019-12-02 22:34:43'),
(769, 154, 9, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:43', '2019-12-02 22:34:43'),
(770, 154, 9, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:43', '2019-12-02 22:34:43'),
(771, 155, 9, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:44', '2019-12-02 22:34:44'),
(772, 155, 9, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:44', '2019-12-02 22:34:44'),
(773, 155, 9, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:44', '2019-12-02 22:34:44'),
(774, 155, 9, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:44', '2019-12-02 22:34:44'),
(775, 155, 9, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:45', '2019-12-02 22:34:45'),
(776, 156, 9, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:45', '2019-12-02 22:34:45'),
(777, 156, 9, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:45', '2019-12-02 22:34:45'),
(778, 156, 9, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:46', '2019-12-02 22:34:46'),
(779, 156, 9, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:46', '2019-12-02 22:34:46'),
(780, 156, 9, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:47', '2019-12-02 22:34:47'),
(781, 157, 9, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:47', '2019-12-02 22:34:47'),
(782, 157, 9, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:48', '2019-12-02 22:34:48'),
(783, 157, 9, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:48', '2019-12-02 22:34:48'),
(784, 157, 9, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:48', '2019-12-02 22:34:48'),
(785, 157, 9, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49'),
(786, 158, 10, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49'),
(787, 158, 10, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49'),
(788, 158, 10, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49'),
(789, 158, 10, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49'),
(790, 158, 10, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49'),
(791, 159, 10, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49'),
(792, 159, 10, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:49', '2019-12-02 22:34:49'),
(793, 159, 10, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:50', '2019-12-02 22:34:50'),
(794, 159, 10, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:50', '2019-12-02 22:34:50'),
(795, 159, 10, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:50', '2019-12-02 22:34:50'),
(796, 160, 10, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:50', '2019-12-02 22:34:50'),
(797, 160, 10, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:50', '2019-12-02 22:34:50'),
(798, 160, 10, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:50', '2019-12-02 22:34:50'),
(799, 160, 10, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51'),
(800, 160, 10, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51'),
(801, 161, 11, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51'),
(802, 161, 11, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51'),
(803, 161, 11, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51'),
(804, 161, 11, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51'),
(805, 161, 11, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51'),
(806, 162, 11, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:51', '2019-12-02 22:34:51'),
(807, 162, 11, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(808, 162, 11, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(809, 162, 11, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(810, 162, 11, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(811, 163, 11, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(812, 163, 11, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(813, 163, 11, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(814, 163, 11, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(815, 163, 11, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:52', '2019-12-02 22:34:52'),
(816, 164, 11, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:53', '2019-12-02 22:34:53'),
(817, 164, 11, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:53', '2019-12-02 22:34:53'),
(818, 164, 11, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:53', '2019-12-02 22:34:53'),
(819, 164, 11, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:53', '2019-12-02 22:34:53'),
(820, 164, 11, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:53', '2019-12-02 22:34:53'),
(821, 165, 11, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:54', '2019-12-02 22:34:54'),
(822, 165, 11, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55'),
(823, 165, 11, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55'),
(824, 165, 11, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55'),
(825, 165, 11, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55'),
(826, 166, 12, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55'),
(827, 166, 12, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55'),
(828, 166, 12, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55'),
(829, 166, 12, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:55', '2019-12-02 22:34:55'),
(830, 166, 12, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(831, 167, 12, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(832, 167, 12, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(833, 167, 12, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(834, 167, 12, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(835, 167, 12, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(836, 168, 12, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(837, 168, 12, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(838, 168, 12, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:56', '2019-12-02 22:34:56'),
(839, 168, 12, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57'),
(840, 168, 12, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57'),
(841, 169, 12, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57'),
(842, 169, 12, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57'),
(843, 169, 12, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57'),
(844, 169, 12, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57'),
(845, 169, 12, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57'),
(846, 170, 13, 'car', 'Equipment', '4', 1, NULL, '2019-12-02 22:34:57', '2019-12-02 22:34:57'),
(847, 170, 13, 'car', 'Comfortable', '4', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(848, 170, 13, 'car', 'Climate Control', '4', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(849, 170, 13, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(850, 170, 13, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(851, 171, 13, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(852, 171, 13, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(853, 171, 13, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(854, 171, 13, 'car', 'Facility', '5', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(855, 171, 13, 'car', 'Aftercare', '4', 1, NULL, '2019-12-02 22:34:58', '2019-12-02 22:34:58'),
(856, 172, 13, 'car', 'Equipment', '5', 1, NULL, '2019-12-02 22:34:59', '2019-12-02 22:34:59'),
(857, 172, 13, 'car', 'Comfortable', '5', 1, NULL, '2019-12-02 22:34:59', '2019-12-02 22:34:59'),
(858, 172, 13, 'car', 'Climate Control', '5', 1, NULL, '2019-12-02 22:34:59', '2019-12-02 22:34:59'),
(859, 172, 13, 'car', 'Facility', '4', 1, NULL, '2019-12-02 22:34:59', '2019-12-02 22:34:59'),
(860, 172, 13, 'car', 'Aftercare', '5', 1, NULL, '2019-12-02 22:35:00', '2019-12-02 22:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_seo`
--

CREATE TABLE `bravo_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_index` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` int(11) DEFAULT NULL,
  `seo_share` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_seo`
--

INSERT INTO `bravo_seo` (`id`, `object_id`, `object_model`, `seo_index`, `seo_title`, `seo_desc`, `seo_image`, `seo_share`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 16, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2019-12-03 00:30:14', '2019-12-13 00:49:27'),
(2, 17, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2019-12-04 20:31:50', '2019-12-04 20:47:53'),
(3, 16, 'attraction', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2019-12-05 09:24:27', '2019-12-13 00:24:21'),
(4, 13, 'car', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-12-12 09:15:03', '2019-12-12 09:15:03'),
(5, 1, 'space', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2019-12-12 10:51:53', '2019-12-12 10:51:53'),
(6, 8, 'news', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2019-12-13 04:28:26', '2019-12-13 04:28:26'),
(7, 9, 'events', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2019-12-13 04:56:58', '2019-12-13 05:04:29'),
(8, 17, 'attraction', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2019-12-13 05:01:31', '2019-12-13 05:01:31'),
(9, 10, 'events', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2019-12-13 05:27:11', '2019-12-13 05:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_spaces`
--

CREATE TABLE `bravo_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `allow_children` tinyint(4) DEFAULT 0,
  `allow_infant` tinyint(4) DEFAULT 0,
  `max_guests` tinyint(4) DEFAULT 0,
  `bed` tinyint(4) DEFAULT 0,
  `bathroom` tinyint(4) DEFAULT 0,
  `square` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_spaces`
--

INSERT INTO `bravo_spaces` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `price`, `sale_price`, `is_instant`, `allow_children`, `allow_infant`, `max_guests`, `bed`, `bathroom`, `square`, `enable_extra_price`, `extra_price`, `discount_by_days`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BINTAN SERVICE APARTEMENT', 'bintan-service-apartement', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p>\r\n<p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 63, 83, 2, 'Arrondissement de Paris', '51.528564', '-0.203010', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '712.00', NULL, 0, 0, 7, 10, 2, 127, NULL, NULL, NULL, 'publish', 1, 1, 1, NULL, '2019-12-02 22:32:35', '2019-12-12 10:51:53'),
(2, 'LUXURY APARTMENT', 'luxury-apartment', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 83, 3, 'Porte de Vanves', '51.519592', '-0.226346', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '900.00', '0.00', 0, 0, 0, 8, 4, 10, 127, NULL, NULL, NULL, 'publish', 1, 1, NULL, '2019-12-12 10:51:20', '2019-12-02 22:32:36', '2019-12-12 10:51:20'),
(3, 'BEAUTIFUL LOFT', 'beautiful-loft', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 65, 83, 3, 'Porte de Vanves', '51.461875', '-0.211246', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '650.00', '0.00', 0, 0, 0, 8, 7, 7, 117, NULL, NULL, NULL, 'publish', 1, 4, NULL, '2019-12-12 10:51:20', '2019-12-02 22:32:36', '2019-12-12 10:51:20'),
(4, 'BEST OF WEST VILLAGE', 'best-of-west-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 66, 85, 4, 'Porte de Vanves', '51.427638', '-0.170752', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '800.00', '0.00', 1, 0, 0, 9, 4, 8, 122, NULL, NULL, NULL, 'publish', 1, 6, NULL, '2019-12-12 10:51:20', '2019-12-02 22:32:36', '2019-12-12 10:51:20'),
(5, 'DUPLEX GREENWICH', 'duplex-greenwich', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 85, 1, 'Porte de Vanves', '51.442192', '-0.043778', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '220.00', '0.00', 0, 0, 0, 7, 9, 4, 127, NULL, NULL, NULL, 'publish', 1, 5, NULL, '2019-12-12 10:51:20', '2019-12-02 22:32:36', '2019-12-12 10:51:20'),
(6, 'THE MEATPACKING SUITES', 'the-meatpacking-suites', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 84, 1, 'Porte de Vanves', '51.475135', '0.003592', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '320.00', '0.00', 0, 0, 0, 5, 5, 5, 127, NULL, NULL, NULL, 'publish', 1, 6, NULL, '2019-12-12 10:51:20', '2019-12-02 22:32:36', '2019-12-12 10:51:20'),
(7, 'EAST VILLAGE', 'east-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 84, 1, 'Porte de Vanves', '51.524292', '-0.022489', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '260.00', 1, 0, 0, 10, 4, 2, 127, NULL, NULL, NULL, 'publish', 1, 6, NULL, '2019-12-12 10:51:20', '2019-12-02 22:32:37', '2019-12-12 10:51:20'),
(8, 'PARIS GREENWICH VILLA', 'paris-greenwich-villa', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 85, 1, 'Porte de Vanves', '51.556749', '-0.091124', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '500.00', '0.00', 0, 0, 0, 6, 6, 1, 127, NULL, NULL, NULL, 'publish', 1, 4, NULL, '2019-12-12 10:51:19', '2019-12-02 22:32:37', '2019-12-12 10:51:19'),
(9, 'LUXURY SINGLE', 'luxury-single', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 84, 1, 'Porte de Vanves', '51.569555', '0.012563', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '400.00', '350.00', 1, 0, 0, 8, 9, 8, 127, NULL, NULL, NULL, 'publish', 1, 5, NULL, '2019-12-12 10:51:19', '2019-12-02 22:32:37', '2019-12-12 10:51:19'),
(10, 'LILY DALE VILLAGE', 'lily-dale-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 84, 1, 'Porte de Vanves', '51.517883', '-0.134314', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '250.00', '0.00', 0, 0, 0, 10, 9, 9, 127, NULL, NULL, NULL, 'publish', 1, 1, NULL, '2019-12-12 10:51:19', '2019-12-02 22:32:37', '2019-12-12 10:51:19'),
(11, 'STAY GREENWICH VILLAGE', 'stay-greenwich-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 84, 1, 'Porte de Vanves', '51.514892', '-0.176181', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '150.00', 1, 0, 0, 6, 5, 7, 127, NULL, NULL, NULL, 'publish', 1, 6, NULL, '2019-12-12 10:51:19', '2019-12-02 22:32:37', '2019-12-12 10:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_dates`
--

CREATE TABLE `bravo_space_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_term`
--

CREATE TABLE `bravo_space_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_space_term`
--

INSERT INTO `bravo_space_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 27, 1, NULL, NULL, '2019-12-02 22:33:12', '2019-12-02 22:33:12'),
(2, 29, 1, NULL, NULL, '2019-12-02 22:33:12', '2019-12-02 22:33:12'),
(3, 30, 1, NULL, NULL, '2019-12-02 22:33:12', '2019-12-02 22:33:12'),
(4, 31, 1, NULL, NULL, '2019-12-02 22:33:12', '2019-12-02 22:33:12'),
(5, 26, 2, NULL, NULL, '2019-12-02 22:33:12', '2019-12-02 22:33:12'),
(6, 28, 2, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(7, 29, 2, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(8, 28, 3, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(9, 31, 3, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(10, 26, 4, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(11, 27, 4, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(12, 28, 4, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(13, 29, 4, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(14, 30, 4, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(15, 31, 4, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(16, 27, 5, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(17, 29, 5, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(18, 30, 5, NULL, NULL, '2019-12-02 22:33:13', '2019-12-02 22:33:13'),
(19, 31, 5, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(20, 26, 6, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(21, 29, 6, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(22, 31, 6, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(23, 26, 7, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(24, 28, 7, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(25, 29, 7, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(26, 31, 7, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(27, 26, 8, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(28, 27, 8, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(29, 29, 8, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(30, 30, 8, NULL, NULL, '2019-12-02 22:33:14', '2019-12-02 22:33:14'),
(31, 26, 9, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(32, 27, 9, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(33, 28, 9, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(34, 31, 9, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(35, 28, 10, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(36, 29, 10, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(37, 31, 10, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(38, 27, 11, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(39, 28, 11, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(40, 29, 11, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(41, 30, 11, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15'),
(42, 31, 11, NULL, NULL, '2019-12-02 22:33:15', '2019-12-02 22:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_translations`
--

CREATE TABLE `bravo_space_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms`
--

CREATE TABLE `bravo_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_terms`
--

INSERT INTO `bravo_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `deleted_at`, `image_id`, `icon`) VALUES
(1, 'Cultural', NULL, 1, 'cultural', NULL, NULL, NULL, NULL, '2019-12-02 22:32:13', '2019-12-02 22:32:13', NULL, NULL, NULL),
(2, 'Nature & Adventure', NULL, 1, 'nature-adventure', NULL, NULL, NULL, NULL, '2019-12-02 22:32:13', '2019-12-02 22:32:13', NULL, NULL, NULL),
(3, 'Marine', NULL, 1, 'marine', NULL, NULL, NULL, NULL, '2019-12-02 22:32:13', '2019-12-02 22:32:13', NULL, NULL, NULL),
(4, 'Independent', NULL, 1, 'independent', NULL, NULL, NULL, NULL, '2019-12-02 22:32:14', '2019-12-02 22:32:14', NULL, NULL, NULL),
(5, 'Activities', NULL, 1, 'activities', NULL, NULL, NULL, NULL, '2019-12-02 22:32:14', '2019-12-02 22:32:14', NULL, NULL, NULL),
(6, 'Festival & Events', NULL, 1, 'festival-events', NULL, NULL, NULL, NULL, '2019-12-02 22:32:14', '2019-12-02 22:32:14', NULL, NULL, NULL),
(7, 'Special Interest', NULL, 1, 'special-interest', NULL, NULL, NULL, NULL, '2019-12-02 22:32:14', '2019-12-02 22:32:14', NULL, NULL, NULL),
(8, 'Wifi', NULL, 2, 'wifi', NULL, NULL, NULL, NULL, '2019-12-02 22:32:24', '2019-12-02 22:32:24', NULL, NULL, NULL),
(9, 'Gymnasium', NULL, 2, 'gymnasium', NULL, NULL, NULL, NULL, '2019-12-02 22:32:24', '2019-12-02 22:32:24', NULL, NULL, NULL),
(10, 'Mountain Bike', NULL, 2, 'mountain-bike', NULL, NULL, NULL, NULL, '2019-12-02 22:32:24', '2019-12-02 22:32:24', NULL, NULL, NULL),
(11, 'Satellite Office', NULL, 2, 'satellite-office', NULL, NULL, NULL, NULL, '2019-12-02 22:32:24', '2019-12-02 22:32:24', NULL, NULL, NULL),
(12, 'Staff Lounge', NULL, 2, 'staff-lounge', NULL, NULL, NULL, NULL, '2019-12-02 22:32:25', '2019-12-02 22:32:25', NULL, NULL, NULL),
(13, 'Golf Cages', NULL, 2, 'golf-cages', NULL, NULL, NULL, NULL, '2019-12-02 22:32:25', '2019-12-02 22:32:25', NULL, NULL, NULL),
(14, 'Aerobics Room', NULL, 2, 'aerobics-room', NULL, NULL, NULL, NULL, '2019-12-02 22:32:25', '2019-12-02 22:32:25', NULL, NULL, NULL),
(15, 'Auditorium', NULL, 3, 'auditorium', NULL, NULL, NULL, NULL, '2019-12-02 22:33:07', '2019-12-02 22:33:07', NULL, NULL, NULL),
(16, 'Bar', NULL, 3, 'bar', NULL, NULL, NULL, NULL, '2019-12-02 22:33:07', '2019-12-02 22:33:07', NULL, NULL, NULL),
(17, 'Cafe', NULL, 3, 'cafe', NULL, NULL, NULL, NULL, '2019-12-02 22:33:07', '2019-12-02 22:33:07', NULL, NULL, NULL),
(18, 'Ballroom', NULL, 3, 'ballroom', NULL, NULL, NULL, NULL, '2019-12-02 22:33:08', '2019-12-02 22:33:08', NULL, NULL, NULL),
(19, 'Dance Studio', NULL, 3, 'dance-studio', NULL, NULL, NULL, NULL, '2019-12-02 22:33:08', '2019-12-02 22:33:08', NULL, NULL, NULL),
(20, 'Office', NULL, 3, 'office', NULL, NULL, NULL, NULL, '2019-12-02 22:33:08', '2019-12-02 22:33:08', NULL, NULL, NULL),
(21, 'Party Hall', NULL, 3, 'party-hall', NULL, NULL, NULL, NULL, '2019-12-02 22:33:09', '2019-12-02 22:33:09', NULL, NULL, NULL),
(22, 'Recording Studio', NULL, 3, 'recording-studio', NULL, NULL, NULL, NULL, '2019-12-02 22:33:09', '2019-12-02 22:33:09', NULL, NULL, NULL),
(23, 'Yoga Studio', NULL, 3, 'yoga-studio', NULL, NULL, NULL, NULL, '2019-12-02 22:33:09', '2019-12-02 22:33:09', NULL, NULL, NULL),
(24, 'Villa', NULL, 3, 'villa', NULL, NULL, NULL, NULL, '2019-12-02 22:33:09', '2019-12-02 22:33:09', NULL, NULL, NULL),
(25, 'Warehouse', NULL, 3, 'warehouse', NULL, NULL, NULL, NULL, '2019-12-02 22:33:10', '2019-12-02 22:33:10', NULL, NULL, NULL),
(26, 'Air Conditioning', NULL, 4, 'air-conditioning', NULL, NULL, NULL, NULL, '2019-12-02 22:33:10', '2019-12-02 22:33:10', NULL, 86, NULL),
(27, 'Breakfast', NULL, 4, 'breakfast', NULL, NULL, NULL, NULL, '2019-12-02 22:33:11', '2019-12-02 22:33:11', NULL, 87, NULL),
(28, 'Kitchen', NULL, 4, 'kitchen', NULL, NULL, NULL, NULL, '2019-12-02 22:33:11', '2019-12-02 22:33:11', NULL, 88, NULL),
(29, 'Parking', NULL, 4, 'parking', NULL, NULL, NULL, NULL, '2019-12-02 22:33:11', '2019-12-02 22:33:11', NULL, 89, NULL),
(30, 'Pool', NULL, 4, 'pool', NULL, NULL, NULL, NULL, '2019-12-02 22:33:11', '2019-12-02 22:33:11', NULL, 90, NULL),
(31, 'Wi-Fi Internet', NULL, 4, 'wi-fi-internet', NULL, NULL, NULL, NULL, '2019-12-02 22:33:11', '2019-12-02 22:33:11', NULL, 91, NULL),
(32, 'Apartments', NULL, 5, 'apartments', NULL, NULL, NULL, NULL, '2019-12-02 22:33:37', '2019-12-02 22:33:37', NULL, NULL, NULL),
(33, 'Hotels', NULL, 5, 'hotels', NULL, NULL, NULL, NULL, '2019-12-02 22:33:37', '2019-12-02 22:33:37', NULL, NULL, NULL),
(34, 'Homestays', NULL, 5, 'homestays', NULL, NULL, NULL, NULL, '2019-12-02 22:33:37', '2019-12-02 22:33:37', NULL, NULL, NULL),
(35, 'Villas', NULL, 5, 'villas', NULL, NULL, NULL, NULL, '2019-12-02 22:33:37', '2019-12-02 22:33:37', NULL, NULL, NULL),
(36, 'Boats', NULL, 5, 'boats', NULL, NULL, NULL, NULL, '2019-12-02 22:33:38', '2019-12-02 22:33:38', NULL, NULL, NULL),
(37, 'Motels', NULL, 5, 'motels', NULL, NULL, NULL, NULL, '2019-12-02 22:33:38', '2019-12-02 22:33:38', NULL, NULL, NULL),
(38, 'Resorts', NULL, 5, 'resorts', NULL, NULL, NULL, NULL, '2019-12-02 22:33:38', '2019-12-02 22:33:38', NULL, NULL, NULL),
(39, 'Lodges', NULL, 5, 'lodges', NULL, NULL, NULL, NULL, '2019-12-02 22:33:38', '2019-12-02 22:33:38', NULL, NULL, NULL),
(40, 'Holiday homes', NULL, 5, 'holiday-homes', NULL, NULL, NULL, NULL, '2019-12-02 22:33:38', '2019-12-02 22:33:38', NULL, NULL, NULL),
(41, 'Cruises', NULL, 5, 'cruises', NULL, NULL, NULL, NULL, '2019-12-02 22:33:39', '2019-12-02 22:33:39', NULL, NULL, NULL),
(42, 'Wake-up call', NULL, 6, 'wake-up-call', NULL, NULL, NULL, NULL, '2019-12-02 22:33:39', '2019-12-02 22:33:39', NULL, NULL, 'icofont-wall-clock'),
(43, 'Car hire', NULL, 6, 'car-hire', NULL, NULL, NULL, NULL, '2019-12-02 22:33:39', '2019-12-02 22:33:39', NULL, NULL, 'icofont-car-alt-3'),
(44, 'Bicycle hire', NULL, 6, 'bicycle-hire', NULL, NULL, NULL, NULL, '2019-12-02 22:33:39', '2019-12-02 22:33:39', NULL, NULL, 'icofont-bicycle-alt-2'),
(45, 'Flat Tv', NULL, 6, 'flat-tv', NULL, NULL, NULL, NULL, '2019-12-02 22:33:39', '2019-12-02 22:33:39', NULL, NULL, 'icofont-imac'),
(46, 'Laundry and dry cleaning', NULL, 6, 'laundry-and-dry-cleaning', NULL, NULL, NULL, NULL, '2019-12-02 22:33:39', '2019-12-02 22:33:39', NULL, NULL, 'icofont-recycle-alt'),
(47, 'Internet – Wifi', NULL, 6, 'internet-wifi', NULL, NULL, NULL, NULL, '2019-12-02 22:33:40', '2019-12-02 22:33:40', NULL, NULL, 'icofont-wifi-alt'),
(48, 'Coffee and tea', NULL, 6, 'coffee-and-tea', NULL, NULL, NULL, NULL, '2019-12-02 22:33:40', '2019-12-02 22:33:40', NULL, NULL, 'icofont-tea'),
(49, 'Havana Lobby bar', NULL, 7, 'havana-lobby-bar', NULL, NULL, NULL, NULL, '2019-12-02 22:33:50', '2019-12-02 22:33:50', NULL, NULL, NULL),
(50, 'Fiesta Restaurant', NULL, 7, 'fiesta-restaurant', NULL, NULL, NULL, NULL, '2019-12-02 22:33:51', '2019-12-02 22:33:51', NULL, NULL, NULL),
(51, 'Hotel transport services', NULL, 7, 'hotel-transport-services', NULL, NULL, NULL, NULL, '2019-12-02 22:33:51', '2019-12-02 22:33:51', NULL, NULL, NULL),
(52, 'Free luggage deposit', NULL, 7, 'free-luggage-deposit', NULL, NULL, NULL, NULL, '2019-12-02 22:33:51', '2019-12-02 22:33:51', NULL, NULL, NULL),
(53, 'Laundry Services', NULL, 7, 'laundry-services', NULL, NULL, NULL, NULL, '2019-12-02 22:33:51', '2019-12-02 22:33:51', NULL, NULL, NULL),
(54, 'Pets welcome', NULL, 7, 'pets-welcome', NULL, NULL, NULL, NULL, '2019-12-02 22:33:51', '2019-12-02 22:33:51', NULL, NULL, NULL),
(55, 'Tickets', NULL, 7, 'tickets', NULL, NULL, NULL, NULL, '2019-12-02 22:33:52', '2019-12-02 22:33:52', NULL, NULL, NULL),
(56, 'Wake-up call', NULL, 8, 'wake-up-call-1', NULL, NULL, NULL, NULL, '2019-12-02 22:34:00', '2019-12-02 22:34:00', NULL, NULL, 'icofont-wall-clock'),
(57, 'Flat Tv', NULL, 8, 'flat-tv-1', NULL, NULL, NULL, NULL, '2019-12-02 22:34:00', '2019-12-02 22:34:00', NULL, NULL, 'icofont-imac'),
(58, 'Laundry and dry cleaning', NULL, 8, 'laundry-and-dry-cleaning-1', NULL, NULL, NULL, NULL, '2019-12-02 22:34:00', '2019-12-02 22:34:00', NULL, NULL, 'icofont-recycle-alt'),
(59, 'Internet – Wifi', NULL, 8, 'internet-wifi-1', NULL, NULL, NULL, NULL, '2019-12-02 22:34:01', '2019-12-02 22:34:01', NULL, NULL, 'icofont-wifi-alt'),
(60, 'Coffee and tea', NULL, 8, 'coffee-and-tea-1', NULL, NULL, NULL, NULL, '2019-12-02 22:34:01', '2019-12-02 22:34:01', NULL, NULL, 'icofont-tea'),
(61, 'Convertibles', NULL, 9, 'convertibles', NULL, NULL, NULL, NULL, '2019-12-02 22:35:01', '2019-12-02 22:35:01', NULL, 123, NULL),
(62, 'Coupes', NULL, 9, 'coupes', NULL, NULL, NULL, NULL, '2019-12-02 22:35:01', '2019-12-02 22:35:01', NULL, 124, NULL),
(63, 'Hatchbacks', NULL, 9, 'hatchbacks', NULL, NULL, NULL, NULL, '2019-12-02 22:35:01', '2019-12-02 22:35:01', NULL, 125, NULL),
(64, 'Minivans', NULL, 9, 'minivans', NULL, NULL, NULL, NULL, '2019-12-02 22:35:01', '2019-12-02 22:35:01', NULL, 126, NULL),
(65, 'Sedan', NULL, 9, 'sedan', NULL, NULL, NULL, NULL, '2019-12-02 22:35:01', '2019-12-02 22:35:01', NULL, 127, NULL),
(66, 'SUVs', NULL, 9, 'suvs', NULL, NULL, NULL, NULL, '2019-12-02 22:35:01', '2019-12-02 22:35:01', NULL, 128, NULL),
(67, 'Trucks', NULL, 9, 'trucks', NULL, NULL, NULL, NULL, '2019-12-02 22:35:02', '2019-12-02 22:35:02', NULL, 129, NULL),
(68, 'Wagons', NULL, 9, 'wagons', NULL, NULL, NULL, NULL, '2019-12-02 22:35:02', '2019-12-02 22:35:02', NULL, 130, NULL),
(69, 'Airbag', NULL, 10, 'airbag', NULL, NULL, NULL, NULL, '2019-12-02 22:35:16', '2019-12-02 22:35:16', NULL, 136, NULL),
(70, 'FM Radio', NULL, 10, 'fm-radio', NULL, NULL, NULL, NULL, '2019-12-02 22:35:16', '2019-12-02 22:35:16', NULL, 137, NULL),
(71, 'Power Windows', NULL, 10, 'power-windows', NULL, NULL, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17', NULL, 141, NULL),
(72, 'Sensor', NULL, 10, 'sensor', NULL, NULL, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17', NULL, 138, NULL),
(73, 'Speed Km', NULL, 10, 'speed-km', NULL, NULL, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17', NULL, 139, NULL),
(74, 'Steering Wheel', NULL, 10, 'steering-wheel', NULL, NULL, NULL, NULL, '2019-12-02 22:35:17', '2019-12-02 22:35:17', NULL, 140, NULL),
(75, 'Hello', NULL, 11, 'hello', 1, NULL, NULL, NULL, '2019-12-04 07:51:29', '2019-12-04 07:51:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms_translations`
--

CREATE TABLE `bravo_terms_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tours`
--

CREATE TABLE `bravo_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tours`
--

INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `tc`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2000.00', '678.00', 6, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:34', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]'),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '900.00', '357.00', 9, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:34', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1500.00', '442.00', 6, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '850.00', '720.00', 6, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1900.00', '1054.00', 5, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(6, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 26, 49, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '983.00', 6, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 27, 50, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '457.00', 6, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:35', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(8, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 28, 51, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '787.00', 6, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(9, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 29, 52, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 4, 'United States', '37.040023', '-95.643144', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '722.00', 8, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(10, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 30, 53, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1684.00', 8, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(11, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 31, 54, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 6, 'New Jersey', '40.035329', '-74.417227', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1305.00', 6, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 6, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(12, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 32, 55, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '374.00', 6, 1, 12, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL);
INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `tc`) VALUES
(13, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 33, 56, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 8, 'Virginia', '37.445688', '-78.673668', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1181.00', 4, 1, 20, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(14, 'San Francisco Express Never Ceases', 'san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 34, 57, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '844.00', 8, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(15, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 35, 58, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1383.00', 5, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, 5, NULL, NULL, NULL, NULL, '2019-12-02 22:31:36', NULL, 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', NULL),
(16, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Visit the Museum of Modern Art in Manhattan</li>\r\n<li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li>\r\n<li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li>\r\n<li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li>\r\n<li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li>\r\n</ul>', 36, 59, '<p>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception</p>', 3, 1, 'Nevada, US', '36.401066', '-88.312292', 12, NULL, '37,38,39,40,41,42,43', NULL, '1.00', '1.00', 8, 1, 20, NULL, 'publish', NULL, 1, 1, NULL, NULL, NULL, '2019-12-02 22:31:36', '2019-12-13 00:49:27', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"},{\"image_id\":null,\"title\":\"Day 5\",\"desc\":\"Jakarta\",\"content\":\"Hello\"}]', NULL),
(17, 'Helo', 'helo', NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1, NULL, NULL, NULL, NULL, '2019-12-04 20:31:50', '2019-12-13 05:11:10', 1, NULL, NULL, NULL, '[{\"title\":\"g\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_category`
--

CREATE TABLE `bravo_tour_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_category`
--

INSERT INTO `bravo_tour_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'City trips', '', 'city-trips', 'publish', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', '2019-12-02 22:31:33'),
(2, 'Ecotourism', '', 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', '2019-12-02 22:31:33'),
(3, 'Escorted tour', '', 'escorted-tour', 'publish', 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', '2019-12-02 22:31:33'),
(4, 'Ligula', '', 'ligula', 'publish', 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:34', '2019-12-02 22:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_category_translations`
--

CREATE TABLE `bravo_tour_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_dates`
--

CREATE TABLE `bravo_tour_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_meta`
--

CREATE TABLE `bravo_tour_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `enable_person_types` tinyint(4) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_people` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_open_hours` tinyint(4) DEFAULT NULL,
  `open_hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_meta`
--

INSERT INTO `bravo_tour_meta` (`id`, `tour_id`, `enable_person_types`, `person_types`, `enable_extra_price`, `extra_price`, `discount_by_people`, `enable_open_hours`, `open_hours`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, 1, 1, NULL, '2019-12-13 00:49:27'),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-12-04 20:31:50', '2019-12-04 20:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_term`
--

CREATE TABLE `bravo_tour_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_term`
--

INSERT INTO `bravo_tour_term` (`id`, `term_id`, `tour_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(2, 2, 1, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(3, 3, 1, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(4, 4, 1, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(5, 1, 2, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(6, 5, 2, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(7, 7, 2, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(8, 2, 3, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(9, 4, 3, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(10, 5, 3, NULL, NULL, '2019-12-02 22:32:15', '2019-12-02 22:32:15'),
(11, 6, 3, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(12, 7, 3, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(13, 1, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(14, 2, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(15, 3, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(16, 4, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(17, 5, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(18, 6, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(19, 7, 4, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(20, 1, 5, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(21, 2, 5, NULL, NULL, '2019-12-02 22:32:16', '2019-12-02 22:32:16'),
(22, 3, 5, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(23, 4, 5, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(24, 5, 5, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(25, 6, 5, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(26, 2, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(27, 3, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(28, 4, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(29, 5, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(30, 6, 6, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(31, 1, 7, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(32, 2, 7, NULL, NULL, '2019-12-02 22:32:17', '2019-12-02 22:32:17'),
(33, 3, 7, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(34, 4, 7, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(35, 6, 7, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(36, 7, 7, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(37, 1, 8, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(38, 3, 8, NULL, NULL, '2019-12-02 22:32:18', '2019-12-02 22:32:18'),
(39, 4, 8, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(40, 5, 8, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(41, 7, 8, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(42, 1, 9, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(43, 2, 9, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(44, 4, 9, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(45, 6, 9, NULL, NULL, '2019-12-02 22:32:19', '2019-12-02 22:32:19'),
(46, 2, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(47, 3, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(48, 4, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(49, 5, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(50, 7, 10, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(51, 2, 11, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(52, 3, 11, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(53, 2, 12, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(54, 3, 12, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(55, 4, 12, NULL, NULL, '2019-12-02 22:32:20', '2019-12-02 22:32:20'),
(56, 5, 12, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(57, 6, 12, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(58, 1, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(59, 2, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(60, 3, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(61, 4, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(62, 5, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(63, 7, 13, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(64, 1, 14, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(65, 3, 14, NULL, NULL, '2019-12-02 22:32:21', '2019-12-02 22:32:21'),
(66, 4, 14, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(67, 5, 14, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(68, 7, 14, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(69, 1, 15, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(70, 2, 15, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(71, 3, 15, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(72, 4, 15, NULL, NULL, '2019-12-02 22:32:22', '2019-12-02 22:32:22'),
(73, 6, 15, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(74, 7, 15, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(75, 1, 16, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(76, 2, 16, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(77, 3, 16, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(78, 5, 16, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(79, 6, 16, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(80, 7, 16, NULL, NULL, '2019-12-02 22:32:23', '2019-12-02 22:32:23'),
(81, 8, 1, NULL, NULL, '2019-12-02 22:32:25', '2019-12-02 22:32:25'),
(82, 11, 1, NULL, NULL, '2019-12-02 22:32:25', '2019-12-02 22:32:25'),
(83, 13, 1, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(84, 8, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(85, 9, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(86, 10, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(87, 11, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(88, 12, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(89, 13, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(90, 14, 2, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(91, 8, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(92, 9, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(93, 10, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(94, 11, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(95, 12, 3, NULL, NULL, '2019-12-02 22:32:26', '2019-12-02 22:32:26'),
(96, 13, 3, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(97, 14, 3, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(98, 8, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(99, 9, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(100, 11, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(101, 12, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(102, 13, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(103, 14, 4, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(104, 8, 5, NULL, NULL, '2019-12-02 22:32:27', '2019-12-02 22:32:27'),
(105, 9, 5, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(106, 11, 5, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(107, 13, 5, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(108, 14, 5, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(109, 8, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(110, 9, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(111, 10, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(112, 11, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(113, 14, 6, NULL, NULL, '2019-12-02 22:32:28', '2019-12-02 22:32:28'),
(114, 8, 7, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(115, 12, 7, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(116, 13, 7, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(117, 14, 7, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(118, 10, 8, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(119, 11, 8, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(120, 13, 8, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(121, 8, 9, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(122, 9, 9, NULL, NULL, '2019-12-02 22:32:29', '2019-12-02 22:32:29'),
(123, 10, 9, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(124, 11, 9, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(125, 12, 9, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(126, 14, 9, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(127, 9, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(128, 10, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(129, 11, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(130, 12, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(131, 13, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(132, 14, 10, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(133, 9, 11, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(134, 10, 11, NULL, NULL, '2019-12-02 22:32:30', '2019-12-02 22:32:30'),
(135, 12, 11, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(136, 13, 11, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(137, 8, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(138, 9, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(139, 10, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(140, 11, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(141, 12, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(142, 14, 12, NULL, NULL, '2019-12-02 22:32:31', '2019-12-02 22:32:31'),
(143, 8, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(144, 10, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(145, 11, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(146, 12, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(147, 13, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(148, 14, 13, NULL, NULL, '2019-12-02 22:32:32', '2019-12-02 22:32:32'),
(149, 8, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(150, 9, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(151, 10, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(152, 11, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(153, 12, 14, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(154, 8, 15, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(155, 10, 15, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(156, 11, 15, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(157, 12, 15, NULL, NULL, '2019-12-02 22:32:33', '2019-12-02 22:32:33'),
(158, 13, 15, NULL, NULL, '2019-12-02 22:32:34', '2019-12-02 22:32:34'),
(159, 14, 15, NULL, NULL, '2019-12-02 22:32:34', '2019-12-02 22:32:34'),
(160, 9, 16, NULL, NULL, '2019-12-02 22:32:34', '2019-12-02 22:32:34'),
(161, 10, 16, NULL, NULL, '2019-12-02 22:32:34', '2019-12-02 22:32:34'),
(162, 11, 16, NULL, NULL, '2019-12-02 22:32:34', '2019-12-02 22:32:34'),
(163, 12, 16, NULL, NULL, '2019-12-02 22:32:35', '2019-12-02 22:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_translations`
--

CREATE TABLE `bravo_tour_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_events`
--

CREATE TABLE `core_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_events`
--

INSERT INTO `core_events` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'publish', 2, 114, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:31', NULL),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'publish', 2, 115, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:31', NULL),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'publish', 3, 116, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:32', NULL),
(4, 'City Spotlight: Philadelphia', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'city-spotlight-philadelphia', 'publish', 4, 117, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:32', NULL),
(5, 'Tiptoe through the Tulips of Washington', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'tiptoe-through-the-tulips-of-washington', 'publish', 4, 118, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:32', NULL),
(6, 'A Seaside Reset in Laguna Beach', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'a-seaside-reset-in-laguna-beach', 'publish', 1, 119, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:32', NULL),
(7, 'America  National Parks with Denver', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'america-national-parks-with-denver', 'publish', 1, 120, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', NULL),
(8, 'Morning in the Northern sea', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'morning-in-the-northern-sea', 'publish', 2, 115, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', NULL),
(9, 'Djakarta Warehouse Project', '<p><span style=\"color: #14171a; font-family: system-ui, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Ubuntu, \'Helvetica Neue\', sans-serif; font-size: 15px; white-space: pre-wrap; background-color: #ffffff;\">Djakarta Warehouse Project 2019 is happening! Explore the latest Tweets, must-see highlights, and the can\'t-miss moments right here. </span></p>', 'httpswwwdjakartawarehousecom', 'publish', NULL, NULL, 1, 1, '2019-12-13 05:25:09', NULL, 'www', '2019-12-13 04:56:58', '2019-12-13 05:25:09'),
(10, 'Djakarta Warehouse Project', '<p><span style=\"color: #14171a; font-family: system-ui, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Ubuntu, \'Helvetica Neue\', sans-serif; font-size: 15px; white-space: pre-wrap; background-color: #ffffff;\">Djakarta Warehouse Project 2019 is happening! Explore the latest Tweets, must-see highlights, and the can\'t-miss moments right here </span></p>', 'djakarta-warehouse-project', 'publish', NULL, 161, 1, NULL, NULL, NULL, 'https://www.djakartawarehouse.com/', '2019-12-13 05:27:11', '2019-12-13 05:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `core_events_category`
--

CREATE TABLE `core_events_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_events_category`
--

INSERT INTO `core_events_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2019-12-02 22:31:29', '2019-12-02 22:31:29', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2019-12-02 22:31:29', '2019-12-02 22:31:29', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2019-12-02 22:31:29', '2019-12-02 22:31:29', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2019-12-02 22:31:29', '2019-12-02 22:31:29', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2019-12-02 22:31:29', '2019-12-02 22:31:29', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2019-12-02 22:31:30', '2019-12-02 22:31:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_events_category_translations`
--

CREATE TABLE `core_events_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_events_tag`
--

CREATE TABLE `core_events_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `events_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_events_translations`
--

CREATE TABLE `core_events_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox`
--

CREATE TABLE `core_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox_messages`
--

CREATE TABLE `core_inbox_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inbox_id` bigint(20) DEFAULT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `is_read` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_languages`
--

CREATE TABLE `core_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_languages`
--

INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'publish', 1, NULL, NULL, NULL, '2019-12-02 22:31:04', '2019-12-02 22:31:04'),
(2, 'ja', 'Japanese', 'jp', 'publish', 1, NULL, NULL, NULL, '2019-12-02 22:31:04', '2019-12-02 22:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `core_menus`
--

CREATE TABLE `core_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menus`
--

INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', '[{\"name\":\"Home\",\"url\":\"/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_a9YyF\",\"_treeNodePropertiesCompleted\":true,\"children\":[{\"name\":\"Home Page\",\"url\":\"/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_LlYxG\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"/page/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_I6mds\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"/page/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_BnH9f\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Home Space\",\"url\":\"/page/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_tpoBK\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Home Car\",\"url\":\"/page/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_7JMg7\",\"_treeNodePropertiesCompleted\":true,\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_QrUn7\",\"_treeNodePropertiesCompleted\":true,\"children\":[{\"name\":\"Hotel List\",\"url\":\"/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_fUKsF\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_0BC3R\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"/hotel/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_0oTsY\",\"_treeNodePropertiesCompleted\":true,\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_ylSl5\",\"_treeNodePropertiesCompleted\":true,\"children\":[{\"name\":\"Tour List\",\"url\":\"/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_dPJKf\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_qcgVm\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"/tour/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_WaRnC\",\"_treeNodePropertiesCompleted\":true,\"children\":[]}]},{\"name\":\"Attraction\",\"url\":\"/attraction\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_MpP1A\",\"_treeNodePropertiesCompleted\":true,\"children\":[{\"name\":\"Tour List\",\"url\":\"/attraction\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\" \",\"innerClass\":\"\",\"_id\":\"tree_2_node_vE0Rn\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"/attraction?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_yGwdU\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"/attraction/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_RrxYk\",\"_treeNodePropertiesCompleted\":true,\"children\":[]}]},{\"name\":\"Space\",\"url\":\"/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_YOcJI\",\"_treeNodePropertiesCompleted\":true,\"children\":[{\"name\":\"Space List\",\"url\":\"/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_HwQKV\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Space Map\",\"url\":\"/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_lWb00\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"/space/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_UXeWS\",\"_treeNodePropertiesCompleted\":true,\"children\":[]}]},{\"name\":\"Car\",\"url\":\"/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_VjCCQ\",\"_treeNodePropertiesCompleted\":true,\"children\":[{\"name\":\"Car List\",\"url\":\"/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_mxpSV\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Car Map\",\"url\":\"/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_r3Vhi\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"/car/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_cFHMk\",\"_treeNodePropertiesCompleted\":true,\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_l7iEd\",\"_treeNodePropertiesCompleted\":true,\"children\":[{\"name\":\"News List\",\"url\":\"/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_zTD2s\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"News Detail\",\"url\":\"/news/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_uOAx2\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"/location/paris\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_flGxb\",\"_treeNodePropertiesCompleted\":true,\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"/page/become-a-vendor\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_yMcxN\",\"_treeNodePropertiesCompleted\":true,\"children\":[]}]},{\"name\":\"Contact\",\"url\":\"/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_id\":\"tree_2_node_CuvKy\",\"_treeNodePropertiesCompleted\":true,\"children\":[]}]', 1, 1, NULL, NULL, '2019-12-02 22:31:20', '2019-12-05 07:24:27'),
(2, 'Main Menu 2', '[{\"name\":\"Home\",\"url\":\"/\",\"item_model\":\"custom\",\"_open\":false,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_treeNodePropertiesCompleted\":true,\"model_name\":\"Custom\",\"is_removed\":true,\"open\":true,\"_id\":\"tree_2_node_hClaQ\",\"children\":[]},{\"name\":\"Tours\",\"url\":\"/tour\",\"item_model\":\"custom\",\"_open\":false,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_treeNodePropertiesCompleted\":true,\"model_name\":\"Custom\",\"is_removed\":true,\"open\":true,\"_id\":\"tree_2_node_8sMYG\",\"children\":[]},{\"name\":\"Bintan Service Apartment\",\"url\":\"/space/bintan-service-apartement\",\"item_model\":\"custom\",\"_open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_treeNodePropertiesCompleted\":true,\"model_name\":\"Custom\",\"is_removed\":true,\"open\":true,\"_id\":\"tree_2_node_JcMuR\",\"children\":[]},{\"name\":\"Attractions\",\"url\":\"/\",\"item_model\":\"custom\",\"_open\":false,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_treeNodePropertiesCompleted\":true,\"model_name\":\"Custom\",\"is_removed\":true,\"open\":true,\"_id\":\"tree_2_node_esbeO\",\"children\":[]},{\"name\":\"Events\",\"url\":\"/\",\"item_model\":\"custom\",\"_open\":false,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_treeNodePropertiesCompleted\":true,\"model_name\":\"Custom\",\"is_removed\":true,\"open\":true,\"_id\":\"tree_2_node_ZDL5C\",\"children\":[]},{\"name\":\"Merchandise\",\"url\":\"/merchandise\",\"item_model\":\"custom\",\"_open\":true,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_treeNodePropertiesCompleted\":true,\"model_name\":\"Custom\",\"is_removed\":true,\"open\":true,\"_id\":\"tree_2_node_Wqh70\",\"children\":[]},{\"name\":\"Blog\",\"url\":\"/news\",\"item_model\":\"custom\",\"_open\":false,\"active\":false,\"class\":\"\",\"innerClass\":\"\",\"_treeNodePropertiesCompleted\":true,\"model_name\":\"Custom\",\"is_removed\":true,\"open\":true,\"_id\":\"tree_2_node_G6rAI\",\"children\":[]}]', 1, 1, NULL, NULL, '2019-12-07 07:53:01', '2019-12-12 10:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `core_menu_translations`
--

CREATE TABLE `core_menu_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menu_translations`
--

INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', '[{\"name\":\"\\u30db\\u30fc\\u30e0\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0 \\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/page\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/page\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30c6\\u30eb\\u4e00\\u89a7\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30c6\\u30eb\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30de\\u30c3\\u30d7\",\"url\":\"\\/ja\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u8a73\\u7d30\",\"url\":\"\\/ja\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30da\\u30fc\\u30b8\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u4e00\\u89a7\",\"url\":\"\\/ja\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u8a73\\u7d30\",\"url\":\"\\/ja\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u5834\\u6240\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30d9\\u30f3\\u30c0\\u30fc\\u306b\\u306a\\u308b\",\"url\":\"\\/ja\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"\\u63a5\\u89e6\",\"url\":\"\\/ja\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2019-12-02 22:31:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_permissions`
--

CREATE TABLE `core_model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_roles`
--

CREATE TABLE `core_model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_model_has_roles`
--

INSERT INTO `core_model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(2, 'App\\User', 3),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(3, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_news`
--

CREATE TABLE `core_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news`
--

INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'publish', 2, 114, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:31', NULL),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'publish', 2, 115, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:31', NULL),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'publish', 3, 116, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:32', NULL),
(4, 'City Spotlight: Philadelphia', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'city-spotlight-philadelphia', 'publish', 4, 117, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:32', NULL),
(5, 'Tiptoe through the Tulips of Washington', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'tiptoe-through-the-tulips-of-washington', 'publish', 4, 118, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:32', NULL),
(6, 'A Seaside Reset in Laguna Beach', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'a-seaside-reset-in-laguna-beach', 'publish', 1, 119, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:32', NULL),
(7, 'America  National Parks with Denver', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'america-national-parks-with-denver', 'publish', 1, 120, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:33', NULL),
(8, 'Morning in the Northern sea Morning in the Northern sea', '<p>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br />From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br />From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception</p>', 'morning-in-the-northern-sea', 'publish', 2, 115, 1, 1, NULL, NULL, NULL, '2019-12-02 22:31:33', '2019-12-13 04:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category`
--

CREATE TABLE `core_news_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news_category`
--

INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, '2019-12-13 04:40:35', '2019-12-02 22:31:29', '2019-12-13 04:40:35', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, '2019-12-13 04:40:36', '2019-12-02 22:31:29', '2019-12-13 04:40:36', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, '2019-12-13 04:40:36', '2019-12-02 22:31:29', '2019-12-13 04:40:36', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, '2019-12-13 04:40:36', '2019-12-02 22:31:29', '2019-12-13 04:40:36', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, '2019-12-13 04:40:36', '2019-12-02 22:31:29', '2019-12-13 04:40:36', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, '2019-12-13 04:40:36', '2019-12-02 22:31:30', '2019-12-13 04:40:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category_translations`
--

CREATE TABLE `core_news_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_tag`
--

CREATE TABLE `core_news_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_translations`
--

CREATE TABLE `core_news_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_notifications`
--

CREATE TABLE `core_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_parent_id` bigint(20) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_pages`
--

CREATE TABLE `core_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_pages`
--

INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home-page', 'Home Page', NULL, NULL, 'publish', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:24', NULL),
(2, 'tour', 'Home Tour', NULL, NULL, 'publish', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:25', NULL),
(3, 'space', 'Home Space', NULL, NULL, 'publish', NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:25', NULL),
(4, 'hotel', 'Home Hotel', NULL, NULL, 'publish', NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:25', NULL),
(5, 'become-a-vendor', 'Become a vendor', NULL, NULL, 'publish', NULL, NULL, 5, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:25', NULL),
(6, 'car', 'Home Car', NULL, NULL, 'publish', NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '2019-12-02 22:31:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_page_translations`
--

CREATE TABLE `core_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_permissions`
--

CREATE TABLE `core_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_permissions`
--

INSERT INTO `core_permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'report_view', 'web', '2019-12-02 22:30:47', '2019-12-02 22:30:47'),
(2, 'contact_manage', 'web', '2019-12-02 22:30:47', '2019-12-02 22:30:47'),
(3, 'newsletter_manage', 'web', '2019-12-02 22:30:47', '2019-12-02 22:30:47'),
(4, 'language_manage', 'web', '2019-12-02 22:30:47', '2019-12-02 22:30:47'),
(5, 'language_translation', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(6, 'booking_view', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(7, 'booking_update', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(8, 'booking_manage_others', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(9, 'template_view', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(10, 'template_create', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(11, 'template_update', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(12, 'template_delete', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(13, 'news_view', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(14, 'news_create', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(15, 'news_update', 'web', '2019-12-02 22:30:48', '2019-12-02 22:30:48'),
(16, 'news_delete', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(17, 'news_manage_others', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(18, 'role_view', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(19, 'role_create', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(20, 'role_update', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(21, 'role_delete', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(22, 'permission_view', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(23, 'permission_create', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(24, 'permission_update', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(25, 'permission_delete', 'web', '2019-12-02 22:30:49', '2019-12-02 22:30:49'),
(26, 'dashboard_access', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(27, 'dashboard_vendor_access', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(28, 'setting_update', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(29, 'menu_view', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(30, 'menu_create', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(31, 'menu_update', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(32, 'menu_delete', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(33, 'user_view', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(34, 'user_create', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(35, 'user_update', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(36, 'user_delete', 'web', '2019-12-02 22:30:50', '2019-12-02 22:30:50'),
(37, 'page_view', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(38, 'page_create', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(39, 'page_update', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(40, 'page_delete', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(41, 'page_manage_others', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(42, 'setting_view', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(43, 'media_upload', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(44, 'media_manage', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(45, 'tour_view', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(46, 'tour_create', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(47, 'tour_update', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(48, 'tour_delete', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(49, 'tour_manage_others', 'web', '2019-12-02 22:30:51', '2019-12-02 22:30:51'),
(50, 'tour_manage_attributes', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(51, 'location_view', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(52, 'location_create', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(53, 'location_update', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(54, 'location_delete', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(55, 'location_manage_others', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(56, 'review_manage_others', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(57, 'system_log_view', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(58, 'space_view', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(59, 'space_create', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(60, 'space_update', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(61, 'space_delete', 'web', '2019-12-02 22:30:52', '2019-12-02 22:30:52'),
(62, 'space_manage_others', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(63, 'space_manage_attributes', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(64, 'hotel_view', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(65, 'hotel_create', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(66, 'hotel_update', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(67, 'hotel_delete', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(68, 'hotel_manage_others', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(69, 'hotel_manage_attributes', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(70, 'car_view', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(71, 'car_create', 'web', '2019-12-02 22:30:53', '2019-12-02 22:30:53'),
(72, 'car_update', 'web', '2019-12-02 22:30:54', '2019-12-02 22:30:54'),
(73, 'car_delete', 'web', '2019-12-02 22:30:54', '2019-12-02 22:30:54'),
(74, 'car_manage_others', 'web', '2019-12-02 22:30:54', '2019-12-02 22:30:54'),
(75, 'car_manage_attributes', 'web', '2019-12-02 22:30:54', '2019-12-02 22:30:54'),
(76, 'plugin_manage', 'web', '2019-12-02 22:30:54', '2019-12-02 22:30:54'),
(77, 'vendor_payout_view', 'web', '2019-12-02 22:30:54', '2019-12-02 22:30:54'),
(78, 'vendor_payout_manage', 'web', '2019-12-02 22:30:54', '2019-12-02 22:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `core_roles`
--

CREATE TABLE `core_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `guard_name`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'web', NULL, NULL, '2019-12-02 22:30:54', '2019-12-02 22:30:54'),
(2, 'customer', 'web', NULL, NULL, '2019-12-02 22:30:56', '2019-12-02 22:30:56'),
(3, 'administrator', 'web', NULL, NULL, '2019-12-02 22:30:56', '2019-12-02 22:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `core_role_has_permissions`
--

CREATE TABLE `core_role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_role_has_permissions`
--

INSERT INTO `core_role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 1),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 1),
(43, 3),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 3),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 3),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

CREATE TABLE `core_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoload` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_settings`
--

INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'site_locale', 'general', 'en', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'site_enable_multi_lang', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'menu_locations', 'general', '{\"primary\":2}', NULL, 1, 1, NULL, NULL, '2019-12-12 09:33:34'),
(4, 'admin_email', 'general', 'contact@bookingcore.com', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'email_from_name', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'email_from_address', 'general', 'contact@bookingcore.com', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'logo_id', 'general', '8', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'site_favicon', 'general', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'topbar_left_text', 'general', '<div class=\"socials\">\r\n    <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\r\n    <a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\r\n    <a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\r\n</div>\r\n<span class=\"line\"></span>\r\n<a href=\"mailto:contact@bookingcore.com\">contact@bookingcore.com</a>', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'footer_text_left', 'general', 'Copyright © 2019 by Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'footer_text_right', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'list_widget_footer', 'general', '[{\"title\":\"NEED HELP?\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Call Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Email for Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Follow Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n               <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"COMPANY\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">About Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Community Blog<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Rewards<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Work with Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Meet the Team<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SUPPORT\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">Account<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Legal<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Contact<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Affiliate Program<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Privacy Policy<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SETTINGS\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">Setting 1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">Setting 2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'list_widget_footer_ja', 'general', '[{\"title\":\"\\u52a9\\u3051\\u304c\\u5fc5\\u8981\\uff1f\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u304a\\u96fb\\u8a71\\u304f\\u3060\\u3055\\u3044\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u90f5\\u4fbf\\u7269\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u30d5\\u30a9\\u30ed\\u30fc\\u3059\\u308b\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"\\u4f1a\\u793e\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u7d04, \\u7565<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30b3\\u30df\\u30e5\\u30cb\\u30c6\\u30a3\\u30d6\\u30ed\\u30b0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u5831\\u916c<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u3068\\u9023\\u643a<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30c1\\u30fc\\u30e0\\u306b\\u4f1a\\u3046<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u30b5\\u30dd\\u30fc\\u30c8\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30ab\\u30a6\\u30f3\\u30c8<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u6cd5\\u7684<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u63a5\\u89e6<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u500b\\u4eba\\u60c5\\u5831\\u4fdd\\u8b77\\u65b9\\u91dd<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u8a2d\\u5b9a\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>Booking Core</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'home_page_id', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'page_contact_title_ja', 'general', 'あなたからの御一報をお待ち', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'page_contact_sub_title_ja', 'general', '私たちにメッセージを送ってください、私たちはできるだ', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>Booking Core</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'currency_main', 'payment', 'usd', NULL, 1, 1, NULL, NULL, '2019-12-13 00:33:04'),
(26, 'currency_format', 'payment', 'left', NULL, 1, 1, NULL, NULL, '2019-12-13 00:33:04'),
(27, 'currency_decimal', 'payment', ',', NULL, 1, 1, NULL, NULL, '2019-12-13 00:33:04'),
(28, 'currency_thousand', 'payment', '.', NULL, 1, 1, NULL, NULL, '2019-12-13 00:33:04'),
(29, 'currency_no_decimal', 'payment', '0', NULL, 1, 1, NULL, NULL, '2019-12-13 00:33:04'),
(30, 'extra_currency', 'payment', '{\"2\":{\"currency_main\":\"idr\",\"currency_format\":\"left_space\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"1\",\"rate\":\"10500\"}}', NULL, 1, 1, NULL, NULL, '2019-12-13 00:46:36'),
(31, 'map_provider', 'advance', 'gmap', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'map_gmap_key', 'advance', '', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'g_offline_payment_enable', 'payment', '1', NULL, 1, 1, NULL, NULL, '2019-12-13 00:33:05'),
(34, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, 1, 1, NULL, NULL, '2019-12-13 00:33:05'),
(35, 'date_format', 'general', 'm/d/Y', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'site_title', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'site_timezone', 'general', 'UTC', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'site_title', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'email_header', 'general', '<h1 class=\"site-title\" style=\"text-align: center\">Booking Core</h1>', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'email_footer', 'general', '<p class=\"\" style=\"text-align: center\">&copy; 2019 Booking Core. All rights reserved</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'user_content_email_registered', 'user', '<h1 style=\"text-align: center\">Welcome!</h1>\r\n						<h3>Hello [first_name] [last_name]</h3>\r\n						<p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\r\n						<p>Regards,</p>\r\n						<p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'admin_enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\r\n						<p>We have new registration</p>\r\n						<p>Full name: [first_name] [last_name]</p>\r\n						<p>Email: [email]</p>\r\n						<p>Regards,</p>\r\n						<p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\r\n						<p>You are receiving this email because we received a password reset request for your account.</p>\r\n						<p style=\"text-align: center\">[button_reset_password]</p>\r\n						<p>This password reset link expire in 60 minutes.</p>\r\n						<p>If you did not request a password reset, no further action is required.\r\n						</p>\r\n						<p>Regards,</p>\r\n						<p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'email_driver', 'email', 'log', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'email_host', 'email', 'smtp.mailgun.org', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'email_port', 'email', '587', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'email_encryption', 'email', 'tls', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'email_username', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'email_password', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'email_mailgun_domain', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'email_mailgun_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'email_postmark_token', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'email_ses_key', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'email_ses_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'email_ses_region', 'email', 'us-east-1', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'email_sparkpost_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'vendor_enable', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'vendor_commission_type', 'vendor', 'percent', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'vendor_commission_amount', 'vendor', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'vendor_role', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'role_verify_fields', 'vendor', '{\"phone\":{\"name\":\"Phone\",\"type\":\"text\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":null,\"order\":null,\"icon\":\"fa fa-phone\"},\"id_card\":{\"name\":\"ID Card\",\"type\":\"file\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-id-card\"},\"trade_license\":{\"name\":\"Trade License\",\"type\":\"multi_files\",\"roles\":[\"1\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-copyright\"}}', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'news_page_list_title', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'news_page_list_banner', 'news', '121', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'news_sidebar', 'news', '[{\"title\":null,\"content\":null,\"type\":\"search_form\"},{\"title\":\"About Us\",\"content\":\"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa\",\"type\":\"content_text\"},{\"title\":\"Recent News\",\"content\":null,\"type\":\"recent_news\"},{\"title\":\"Categories\",\"content\":null,\"type\":\"category\"},{\"title\":\"Tags\",\"content\":null,\"type\":\"tag\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'tour_page_search_title', 'tour', 'Search for tour', NULL, 1, 1, NULL, NULL, '2019-12-04 07:55:33'),
(69, 'tour_page_search_banner', 'tour', '20', NULL, 1, 1, NULL, NULL, '2019-12-04 07:55:33'),
(70, 'tour_layout_search', 'tour', 'normal', NULL, 1, 1, NULL, NULL, '2019-12-04 07:55:33'),
(71, 'tour_enable_review', 'tour', '1', NULL, 1, 1, NULL, NULL, '2019-12-04 07:55:33'),
(72, 'tour_review_approved', 'tour', '', NULL, 1, 1, NULL, NULL, '2019-12-04 07:55:34'),
(73, 'tour_review_stats', 'tour', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, 1, 1, NULL, NULL, '2019-12-04 07:55:34'),
(74, 'tour_booking_buyer_fees', 'tour', '', NULL, 1, 1, NULL, NULL, '2019-12-04 07:55:34'),
(75, 'space_page_search_title', 'space', 'Search for space', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space_page_search_banner', 'space', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space_layout_search', 'space', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space_enable_review', 'space', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space_review_approved', 'space', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space_review_stats', 'space', '[{\"title\":\"Sleep\"},{\"title\":\"Location\"},{\"title\":\"Service\"},{\"title\":\"Clearness\"},{\"title\":\"Rooms\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space_booking_buyer_fees', 'space', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space_map_search_fields', 'space', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"3\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'hotel_page_search_title', 'hotel', 'Search for hotel', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'hotel_page_search_banner', 'hotel', '92', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'hotel_layout_item_search', 'hotel', 'list', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'hotel_attribute_show_in_listing_page', 'hotel', '6', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'hotel_layout_search', 'hotel', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'hotel_enable_review', 'hotel', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'hotel_review_approved', 'hotel', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'hotel_review_stats', 'hotel', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'hotel_booking_buyer_fees', 'hotel', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'hotel_map_search_fields', 'hotel', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"7\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'car_page_search_title', 'car', 'Search for merchandise', NULL, 1, 1, NULL, NULL, '2019-12-12 09:30:59'),
(94, 'car_page_search_banner', 'car', '62', NULL, 1, 1, NULL, NULL, '2019-12-12 09:28:33'),
(95, 'car_layout_search', 'car', 'normal', NULL, 1, 1, NULL, NULL, '2019-12-12 09:28:33'),
(96, 'car_enable_review', 'car', '', NULL, 1, 1, NULL, NULL, '2019-12-12 09:28:33'),
(97, 'car_review_approved', 'car', '', NULL, 1, 1, NULL, NULL, '2019-12-12 09:28:33'),
(98, 'car_review_stats', 'car', '', NULL, 1, 1, NULL, NULL, '2019-12-12 09:30:18'),
(99, 'car_booking_buyer_fees', 'car', '', NULL, 1, 1, NULL, NULL, '2019-12-12 09:28:34'),
(100, 'car_map_search_fields', 'car', '{\"1\":{\"field\":\"attr\",\"attr\":null,\"position\":\"1\"},\"3\":{\"field\":\"price\",\"attr\":null,\"position\":\"2\"}}', NULL, 1, 1, NULL, NULL, '2019-12-12 09:30:18'),
(101, 'tour_disable', 'tour', '', NULL, 1, 1, NULL, '2019-12-04 07:54:45', '2019-12-04 07:55:33'),
(102, 'tour_location_search_style', 'tour', 'normal', NULL, 1, 1, NULL, '2019-12-04 07:54:45', '2019-12-04 07:55:33'),
(103, 'tour_enable_review_after_booking', 'tour', '', NULL, 1, 1, NULL, '2019-12-04 07:54:46', '2019-12-04 07:55:34'),
(104, 'tour_review_number_per_page', 'tour', '5', NULL, 1, 1, NULL, '2019-12-04 07:54:46', '2019-12-04 07:55:34'),
(105, 'tour_page_list_seo_title', 'tour', '', NULL, 1, 1, NULL, '2019-12-04 07:54:46', '2019-12-04 07:55:34'),
(106, 'tour_page_list_seo_desc', 'tour', '', NULL, 1, 1, NULL, '2019-12-04 07:54:46', '2019-12-04 07:55:34'),
(107, 'tour_page_list_seo_image', 'tour', '', NULL, 1, 1, NULL, '2019-12-04 07:54:46', '2019-12-04 07:55:34'),
(108, 'tour_page_list_seo_share', 'tour', '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', NULL, 1, 1, NULL, '2019-12-04 07:54:46', '2019-12-04 07:55:34'),
(109, 'tour_vendor_create_service_must_approved_by_admin', 'tour', '', NULL, 1, 1, NULL, '2019-12-04 07:54:46', '2019-12-04 07:55:34'),
(110, 'tour_allow_vendor_can_change_their_booking_status', 'tour', '', NULL, 1, 1, NULL, '2019-12-04 07:54:46', '2019-12-04 07:55:34'),
(111, 'car_disable', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:07', '2019-12-12 09:28:33'),
(112, 'car_location_search_style', 'merchandise', 'normal', NULL, 1, 1, NULL, '2019-12-12 09:27:07', '2019-12-12 09:28:33'),
(113, 'car_enable_review_after_booking', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:08', '2019-12-12 09:28:33'),
(114, 'car_review_number_per_page', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:08', '2019-12-12 09:30:18'),
(115, 'car_page_list_seo_title', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:08', '2019-12-12 09:28:34'),
(116, 'car_page_list_seo_desc', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:08', '2019-12-12 09:28:34'),
(117, 'car_page_list_seo_image', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:08', '2019-12-12 09:28:34'),
(118, 'car_page_list_seo_share', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:08', '2019-12-12 09:28:34'),
(119, 'car_vendor_create_service_must_approved_by_admin', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:08', '2019-12-12 09:28:34'),
(120, 'car_allow_vendor_can_change_their_booking_status', 'merchandise', '', NULL, 1, 1, NULL, '2019-12-12 09:27:08', '2019-12-12 09:28:34'),
(121, 'attraction_disable', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:07', '2019-12-13 00:12:13'),
(122, 'attraction_page_search_title', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:07', '2019-12-13 00:12:13'),
(123, 'attraction_page_search_banner', 'attraction', '161', NULL, 1, 1, NULL, '2019-12-13 00:08:07', '2019-12-13 00:12:13'),
(124, 'attraction_layout_search', 'attraction', 'normal', NULL, 1, 1, NULL, '2019-12-13 00:08:07', '2019-12-13 00:12:13'),
(125, 'attraction_location_search_style', 'attraction', 'normal', NULL, 1, 1, NULL, '2019-12-13 00:08:07', '2019-12-13 00:12:13'),
(126, 'attraction_enable_review', 'attraction', '1', NULL, 1, 1, NULL, '2019-12-13 00:08:07', '2019-12-13 00:12:22'),
(127, 'attraction_review_approved', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:07', '2019-12-13 00:12:13'),
(128, 'attraction_enable_review_after_booking', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:08', '2019-12-13 00:12:13'),
(129, 'attraction_review_number_per_page', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:08', '2019-12-13 00:12:13'),
(130, 'attraction_review_stats', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:08', '2019-12-13 00:12:14'),
(131, 'attraction_page_list_seo_title', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:08', '2019-12-13 00:12:14'),
(132, 'attraction_page_list_seo_desc', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:08', '2019-12-13 00:12:14'),
(133, 'attraction_page_list_seo_image', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:08', '2019-12-13 00:12:14'),
(134, 'attraction_page_list_seo_share', 'attraction', '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', NULL, 1, 1, NULL, '2019-12-13 00:08:08', '2019-12-13 00:12:14'),
(135, 'attraction_booking_buyer_fees', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:08', '2019-12-13 00:12:14'),
(136, 'attraction_vendor_create_service_must_approved_by_admin', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:09', '2019-12-13 00:12:14'),
(137, 'attraction_allow_vendor_can_change_their_booking_status', 'attraction', '', NULL, 1, 1, NULL, '2019-12-13 00:08:09', '2019-12-13 00:12:14'),
(138, 'g_offline_payment_logo_id', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:22', '2019-12-13 00:33:05'),
(139, 'g_offline_payment_html', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(140, 'g_paypal_enable', 'payment', '1', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(141, 'g_paypal_name', 'payment', 'Paypal', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(142, 'g_paypal_logo_id', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(143, 'g_paypal_html', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(144, 'g_paypal_test', 'payment', '1', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(145, 'g_paypal_convert_to', 'payment', 'sgd', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(146, 'g_paypal_exchange_rate', 'payment', '10500', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(147, 'g_paypal_test_account', 'payment', 'sb-g210j696808_api1.business.example.com', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:05'),
(148, 'g_paypal_test_client_id', 'payment', 'YGPF43G4XU2D4FW7', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:06'),
(149, 'g_paypal_test_client_secret', 'payment', 'ABzETrbgrL.OASBPqJ6oo2Di-dVoA6VsU5JBqTGo-VrczdfVqE4H7MYC', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:06'),
(150, 'g_paypal_account', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:23', '2019-12-13 00:33:06'),
(151, 'g_paypal_client_id', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(152, 'g_paypal_client_secret', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(153, 'g_stripe_enable', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(154, 'g_stripe_name', 'payment', 'Stripe', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(155, 'g_stripe_logo_id', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(156, 'g_stripe_html', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(157, 'g_stripe_stripe_secret_key', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(158, 'g_stripe_stripe_publishable_key', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(159, 'g_stripe_stripe_enable_sandbox', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(160, 'g_stripe_stripe_test_secret_key', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:06'),
(161, 'g_stripe_stripe_test_publishable_key', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:07'),
(162, 'g_two_checkout_gateway_enable', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:33:07'),
(163, 'g_two_checkout_gateway_name', 'payment', 'Two Checkout', NULL, 1, 1, NULL, '2019-12-13 00:32:24', '2019-12-13 00:43:58'),
(164, 'g_two_checkout_gateway_logo_id', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:25', '2019-12-13 00:33:07'),
(165, 'g_two_checkout_gateway_html', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:25', '2019-12-13 00:33:07'),
(166, 'g_two_checkout_gateway_twocheckout_account_number', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:25', '2019-12-13 00:33:07'),
(167, 'g_two_checkout_gateway_twocheckout_secret_word', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:25', '2019-12-13 00:33:07'),
(168, 'g_two_checkout_gateway_twocheckout_enable_sandbox', 'payment', '', NULL, 1, 1, NULL, '2019-12-13 00:32:25', '2019-12-13 00:33:07'),
(169, 'events_page_list_title', 'events', '', NULL, 1, 1, NULL, '2019-12-13 06:41:32', '2019-12-13 06:41:51'),
(170, 'events_page_list_banner', 'events', '161', NULL, 1, 1, NULL, '2019-12-13 06:41:32', '2019-12-13 07:13:26'),
(171, 'events_sidebar', 'events', '', NULL, 1, 1, NULL, '2019-12-13 06:41:32', '2019-12-13 06:41:51'),
(172, 'events_page_list_seo_title', 'events', '', NULL, 1, 1, NULL, '2019-12-13 06:41:32', '2019-12-13 06:41:51'),
(173, 'events_page_list_seo_desc', 'events', '', NULL, 1, 1, NULL, '2019-12-13 06:41:32', '2019-12-13 06:41:51'),
(174, 'events_page_list_seo_image', 'events', '', NULL, 1, 1, NULL, '2019-12-13 06:41:32', '2019-12-13 06:41:51'),
(175, 'events_page_list_seo_share', 'events', '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', NULL, 1, 1, NULL, '2019-12-13 06:41:32', '2019-12-13 07:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `core_subscribers`
--

CREATE TABLE `core_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_tags`
--

CREATE TABLE `core_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_tags`
--

INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'park', 'park', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:30', '2019-12-02 22:31:30'),
(2, 'National park', 'national-park', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:30', '2019-12-02 22:31:30'),
(3, 'Moutain', 'moutain', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:30', '2019-12-02 22:31:30'),
(4, 'Travel', 'travel', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:30', '2019-12-02 22:31:30'),
(5, 'Summer', 'summer', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:30', '2019-12-02 22:31:30'),
(6, 'Walking', 'walking', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:31', '2019-12-02 22:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `core_tag_translations`
--

CREATE TABLE `core_tag_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_templates`
--

CREATE TABLE `core_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_templates`
--

INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\"],\"title\":\"Hi There!\",\"sub_title\":\"Where would you like to go?\",\"bg_image\":16},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Special Offers\",\"desc\":\"Find Your Perfect Hotels Get the best<br>\\nprices on 20,000+ properties<br>\\nthe best prices on\",\"background_image\":17,\"link_title\":\"See Deals\",\"link_more\":\"#\",\"featured_text\":\"HOLIDAY SALE\"},{\"_active\":true,\"title\":\"Newsletters\",\"desc\":\"Join for free and get our <br>\\ntailored newsletters full of <br>\\nhot travel deals.\",\"background_image\":18,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"Travel Tips\",\"desc\":\"Tips from our travel experts to <br>\\nmake your next trip even<br>\\nbetter.\",\"background_image\":19,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Our best promotion tours\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"Most popular destinations\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-12-02 22:31:21', NULL),
(2, 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"Love where you\'re going\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"1,000+ local guides\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":5},{\"_active\":false,\"title\":\"Handcrafted experiences\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":4},{\"_active\":false,\"title\":\"96% happy travelers\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Trending Tours\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"Top Destinations\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Local Experiences You’ll Love\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-12-02 22:31:22', NULL),
(3, 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"Find your next rental\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Recommended Homes\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"Homes highly rated for thoughtful design\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"Find a Home Type\",\"desc\":\"It is a long established fact that a reader\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"Top Destinations\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"It is a long established fact that a reader\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\" Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-12-02 22:31:23', NULL),
(4, 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"Find Your Perfect Hotels\",\"sub_title\":\"Get the best prices on 20,000+ properties\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000+ properties\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"Trust & Safety\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"Best Price Guarantee\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Last Minute Deals\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">Why be a Local Expert</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">Varius massa maecenas et id dictumst mattis</span></div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"Open your network\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"Practice your language\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-12-02 22:31:23', NULL),
(5, 'Become a vendor', '[{\"type\":\"vendor_register_form\",\"name\":\"Vendor Register Form\",\"model\":{\"title\":\"Become a vendor\",\"desc\":\"Join our community to unlock your greatest asset and welcome paying guests into your home.\",\"youtube\":\"https://www.youtube.com/watch?v=AmZ0WrEaf34\",\"bg_image\":11},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>How does it work?</strong></h3>\",\"class\":\"text-center\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Sign up\",\"sub_title\":\"Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":false,\"title\":\" Add your services\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null},{\"_active\":true,\"title\":\"Get bookings\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":null,\"order\":null}],\"style\":\"style2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Share the beauty of your city\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":12},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>Why be a Local Expert</strong></h3>\",\"class\":\"text-center ptb60\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":true,\"title\":\"Open your network\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":true,\"title\":\"Practice your language\",\"sub_title\":\" Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"faqs\",\"name\":\"FAQ List\",\"model\":{\"title\":\"FAQs\",\"list_item\":[{\"_active\":false,\"title\":\"How will I receive my payment?\",\"sub_title\":\" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I upload products?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"},{\"_active\":true,\"title\":\"How do I update or extend my availabilities?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\\n\"},{\"_active\":true,\"title\":\"How do I increase conversion rate?\",\"sub_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-12-02 22:31:24', NULL),
(6, 'Home Car', '[{\"type\":\"form_search_car\",\"name\":\"Car: Form Search\",\"model\":{\"title\":\"Search Rental Car Deals\",\"sub_title\":\"Book better cars from local hosts across the US and around the world.\",\"bg_image\":122},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Free Cancellation\",\"sub_title\":\"Morbi semper fames lobortis ac\",\"icon_image\":103,\"order\":null},{\"_active\":true,\"title\":\"No Hidden Costs\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"24/7 Customer Care\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"car_term_featured_box\",\"name\":\"Car: Term Featured Box\",\"model\":{\"title\":\"Browse by categories\",\"desc\":\"Book incredible things to do around the world.\",\"term_car\":[\"68\",\"67\",\"66\",\"65\",\"64\",\"63\",\"62\",\"61\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Trending used cars\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"how_it_works\",\"name\":\"How It Works\",\"model\":{\"title\":\"How does it work?\",\"list_item\":[{\"_active\":false,\"title\":\"Find The Car\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":132,\"order\":null},{\"_active\":false,\"title\":\"Book It\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":133,\"order\":null},{\"_active\":false,\"title\":\"Grab And Go\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":134,\"order\":null}],\"background_image\":131},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"car\"],\"title\":\"Top destinations\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing\",\"number\":6,\"layout\":\"style_2\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2019-12-02 22:31:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_template_translations`
--

CREATE TABLE `core_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_template_translations`
--

INSERT INTO `core_template_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\"],\"title\":\"こんにちは！\",\"sub_title\":\"どこに行きたい？\",\"bg_image\":16},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"特別オファー\",\"desc\":\"最適なホテルを探す<br>\\n20,000以上の物件の価格<br>\\n上の最高の価格\",\"background_image\":17,\"link_title\":\"取引\",\"link_more\":\"#\",\"featured_text\":\"ホリデーセール\"},{\"_active\":true,\"title\":\"ニュースレター\",\"desc\":\"無料で参加して取得 <br>\\nに合わせたニュースレター<br>\\nホット旅行情報。\",\"background_image\":18,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"旅行のヒント\",\"desc\":\"旅行の専門家からのヒント <br>\\nあなたの次の<br>\\nより良い。\",\"background_image\":19,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"人気の目的地\",\"desc\":\"読者が\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"最高のプロモーションツアー\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"最も人気のある目的地\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"あなたの街を知？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2019-12-02 22:31:21', NULL),
(2, 2, 'ja', 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"どこへ行くのが大好き\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"1,000+ ローカルガイド\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":5},{\"_active\":true,\"title\":\"手作りの体験\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":4},{\"_active\":true,\"title\":\"96% 幸せな旅行者\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"トレンドツアー\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"人気の目的地\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\",\"desc\":\"\",\"layout\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"あなたが好きになるローカル体験\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2019-12-02 22:31:23', NULL),
(3, 3, 'ja', 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"次のレンタルを探す\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"おすすめの家\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"思慮深いデザインで高い評価を受けている家\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"ホームタイプを見つける\",\"desc\":\"これは、読者はその長い既成の事実であります\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"人気の目的地\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"これは、読者はその長い既成の事実であります\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2019-12-02 22:31:23', NULL),
(4, 4, 'ja', 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"最適なホテルを探す\",\"sub_title\":\"20,000以上のプロパティで最高の価格を取得\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000以上のプロパティ\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"信頼と安全性\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":104,\"order\":null},{\"_active\":false,\"title\":\"ベストプライス保証\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"直前予約\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"人気の目的地\",\"desc\":\"それは長い間確立された事実であり、\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">ローカルエキスパートになる理由</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">様々な質量マエケナスとその格言不動産</span></div>\\n<div id=\\\"gtx-trans\\\" style=\\\"position: absolute; left: -118px; top: 55.8125px;\\\">\\n<div class=\\\"gtx-trans-icon\\\">&nbsp;</div>\\n</div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"追加の収入を得る\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"ネットワークを開く\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"あなたの言語を練習する\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2019-12-02 22:31:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_translations`
--

CREATE TABLE `core_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plans`
--

CREATE TABLE `core_vendor_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_commission` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plan_meta`
--

CREATE TABLE `core_vendor_plan_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_plan_id` int(11) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL,
  `maximum_create` int(11) DEFAULT NULL,
  `auto_publish` tinyint(4) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `app_user_id` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`) VALUES
(1, 'avatar', 'demo/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'avatar-2', 'demo/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'avatar-3', 'demo/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ico_adventurous', 'demo/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ico_localguide', 'demo/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ico_maps', 'demo/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ico_paymethod', 'demo/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'logo', 'demo/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'bg_contact', 'demo/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'favicon', 'demo/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'thumb-vendor-register', 'demo/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'bg-video-vendor-register1', 'demo/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ico_chat_1', 'demo/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ico_friendship_1', 'demo/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ico_piggy-bank_1', 'demo/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'home-mix', 'demo/general/home-mix.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'image_home_mix_1', 'demo/general/image_home_mix_1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'image_home_mix_2', 'demo/general/image_home_mix_2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'image_home_mix_3', 'demo/general/image_home_mix_3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'banner-search', 'demo/tour/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'tour-1', 'demo/tour/tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tour-2', 'demo/tour/tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tour-3', 'demo/tour/tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'tour-4', 'demo/tour/tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'tour-5', 'demo/tour/tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'tour-6', 'demo/tour/tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'tour-7', 'demo/tour/tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'tour-8', 'demo/tour/tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'tour-9', 'demo/tour/tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'tour-10', 'demo/tour/tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'tour-11', 'demo/tour/tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'tour-12', 'demo/tour/tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'tour-13', 'demo/tour/tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'tour-14', 'demo/tour/tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'tour-15', 'demo/tour/tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'tour-16', 'demo/tour/tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'gallery-1', 'demo/tour/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'gallery-2', 'demo/tour/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'gallery-3', 'demo/tour/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'gallery-4', 'demo/tour/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'gallery-5', 'demo/tour/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'gallery-6', 'demo/tour/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'gallery-7', 'demo/tour/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'banner-tour-1', 'demo/tour/banner-detail/banner-tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'banner-tour-2', 'demo/tour/banner-detail/banner-tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'banner-tour-3', 'demo/tour/banner-detail/banner-tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'banner-tour-4', 'demo/tour/banner-detail/banner-tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'banner-tour-5', 'demo/tour/banner-detail/banner-tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'banner-tour-6', 'demo/tour/banner-detail/banner-tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'banner-tour-7', 'demo/tour/banner-detail/banner-tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'banner-tour-8', 'demo/tour/banner-detail/banner-tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'banner-tour-9', 'demo/tour/banner-detail/banner-tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'banner-tour-10', 'demo/tour/banner-detail/banner-tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'banner-tour-11', 'demo/tour/banner-detail/banner-tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'banner-tour-12', 'demo/tour/banner-detail/banner-tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'banner-tour-13', 'demo/tour/banner-detail/banner-tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'banner-tour-14', 'demo/tour/banner-detail/banner-tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'banner-tour-15', 'demo/tour/banner-detail/banner-tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'banner-tour-16', 'demo/tour/banner-detail/banner-tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'banner-tour-17', 'demo/tour/banner-detail/banner-tour-17.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'banner-search-space', 'demo/space/banner-search-space.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'banner-search-space-2', 'demo/space/banner-search-space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'space-1', 'demo/space/space-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'space-2', 'demo/space/space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'space-3', 'demo/space/space-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'space-4', 'demo/space/space-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'space-5', 'demo/space/space-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'space-6', 'demo/space/space-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'space-7', 'demo/space/space-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'space-8', 'demo/space/space-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'space-9', 'demo/space/space-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'space-10', 'demo/space/space-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'space-11', 'demo/space/space-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'space-12', 'demo/space/space-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space-13', 'demo/space/space-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space-gallery-1', 'demo/space/gallery/space-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space-gallery-2', 'demo/space/gallery/space-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space-gallery-3', 'demo/space/gallery/space-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space-gallery-4', 'demo/space/gallery/space-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space-gallery-5', 'demo/space/gallery/space-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space-gallery-6', 'demo/space/gallery/space-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space-gallery-7', 'demo/space/gallery/space-gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'space-single-1', 'demo/space/space-single-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'space-single-2', 'demo/space/space-single-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'space-single-3', 'demo/space/space-single-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'icon-space-box-1', 'demo/space/featured-box/icon-space-box-1.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'icon-space-box-2', 'demo/space/featured-box/icon-space-box-2.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'icon-space-box-3', 'demo/space/featured-box/icon-space-box-3.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'icon-space-box-4', 'demo/space/featured-box/icon-space-box-4.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'icon-space-box-5', 'demo/space/featured-box/icon-space-box-5.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'icon-space-box-6', 'demo/space/featured-box/icon-space-box-6.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'banner-search-hotel', 'demo/hotel/banner-search-hotel.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'hotel-featured-1', 'demo/hotel/hotel-featured-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'hotel-featured-2', 'demo/hotel/hotel-featured-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'hotel-featured-3', 'demo/hotel/hotel-featured-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'hotel-featured-4', 'demo/hotel/hotel-featured-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'hotel-gallery-1', 'demo/hotel/gallery/hotel-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'hotel-gallery-2', 'demo/hotel/gallery/hotel-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'hotel-gallery-3', 'demo/hotel/gallery/hotel-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'hotel-gallery-4', 'demo/hotel/gallery/hotel-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'hotel-gallery-5', 'demo/hotel/gallery/hotel-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'hotel-gallery-6', 'demo/hotel/gallery/hotel-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'hotel-icon-1', 'demo/hotel/hotel-icon-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'hotel-icon-2', 'demo/hotel/hotel-icon-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'hotel-icon-3', 'demo/hotel/hotel-icon-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'location-1', 'demo/location/location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'location-2', 'demo/location/location-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'location-3', 'demo/location/location-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'location-4', 'demo/location/location-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'location-5', 'demo/location/location-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'banner-location-1', 'demo/location/banner-detail/banner-location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'trip-idea-1', 'demo/location/trip-idea/trip-idea-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'trip-idea-2', 'demo/location/trip-idea/trip-idea-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'news-1', 'demo/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'news-2', 'demo/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'news-3', 'demo/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'news-4', 'demo/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'news-5', 'demo/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'news-6', 'demo/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'news-7', 'demo/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'banner-search-car', 'demo/car/banner-search-car.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Convertibles', 'demo/car/terms/convertibles.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Coupes', 'demo/car/terms/couple.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Hatchbacks', 'demo/car/terms/hatchback.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Minivans', 'demo/car/terms/minivans.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Sedan', 'demo/car/terms/sedan.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'SUVs', 'demo/car/terms/suv.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Trucks', 'demo/car/terms/trucks.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Wagons', 'demo/car/terms/wagons.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'home-car-bg-1', 'demo/car/home-car-bg-1.png', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'number-1', 'demo/car/number-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'number-2', 'demo/car/number-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'number-3', 'demo/car/number-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'banner-car-single', 'demo/car/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Airbag', 'demo/car/feature/Airbag.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'FM Radio', 'demo/car/feature/Radio.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Sensor', 'demo/car/feature/Sensor.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Speed Km', 'demo/car/feature/Speed.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Steering Wheel', 'demo/car/feature/Steering.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Power Windows', 'demo/car/feature/Windows.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'car-1', 'demo/car/car-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'car-2', 'demo/car/car-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'car-3', 'demo/car/car-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'car-4', 'demo/car/car-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'car-5', 'demo/car/car-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'car-6', 'demo/car/car-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'car-7', 'demo/car/car-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'car-8', 'demo/car/car-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'car-9', 'demo/car/car-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'car-10', 'demo/car/car-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'car-11', 'demo/car/car-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'car-12', 'demo/car/car-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'car-gallery-1', 'demo/car/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'car-gallery-2', 'demo/car/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'car-gallery-3', 'demo/car/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'car-gallery-4', 'demo/car/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'car-gallery-5', 'demo/car/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'car-gallery-6', 'demo/car/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'car-gallery-7', 'demo/car/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '1-soqhzag-tvhsm9vvlchurw', '0000/1/2019/12/05/1-soqhzag-tvhsm9vvlchurw.jpeg', '151828', 'image/jpeg', 'jpeg', 1, NULL, NULL, NULL, NULL, 1200, 675, '2019-12-05 09:24:50', '2019-12-05 09:24:50'),
(162, 'dwp', '0000/1/2019/12/13/dwp.jpg', '5828', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 128, 160, '2019-12-13 04:56:46', '2019-12-13 04:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_13_174533_create_permission_tables', 1),
(4, '2019_03_17_114820_create_table_core_pages', 1),
(5, '2019_03_17_140539_create_media_files_table', 1),
(6, '2019_03_20_072502_create_bravo_tours', 1),
(7, '2019_03_20_081256_create_core_news_category_table', 1),
(8, '2019_03_27_081940_create_core_setting_table', 1),
(9, '2019_03_28_101009_create_bravo_booking_table', 1),
(10, '2019_03_28_165911_create_booking_meta_table', 1),
(11, '2019_03_29_093236_update_bookings_table', 1),
(12, '2019_04_01_045229_create_user_meta_table', 1),
(13, '2019_04_01_150630_create_menu_table', 1),
(14, '2019_04_02_150630_create_core_news_table', 1),
(15, '2019_04_03_073553_bravo_tour_category', 1),
(16, '2019_04_03_080159_bravo_location', 1),
(17, '2019_04_05_143248_create_core_templates_table', 1),
(18, '2019_04_18_152537_create_bravo_tours_meta_table', 1),
(19, '2019_05_07_085430_create_core_languages_table', 1),
(20, '2019_05_07_085442_create_core_translations_table', 1),
(21, '2019_05_17_074008_create_bravo_review', 1),
(22, '2019_05_17_074048_create_bravo_review_meta', 1),
(23, '2019_05_17_113042_create_tour_attrs_table', 1),
(24, '2019_05_21_084235_create_bravo_contact_table', 1),
(25, '2019_05_28_152845_create_core_subscribers_table', 1),
(26, '2019_06_17_142338_bravo_seo', 1),
(27, '2019_07_03_070406_update_from_1_0_to_1_1', 1),
(28, '2019_07_08_075436_create_core_vendor_plans', 1),
(29, '2019_07_08_083733_create_vendors_plan_payments', 1),
(30, '2019_07_11_083501_update_from_110_to_120', 1),
(31, '2019_07_30_072809_create_space_table', 1),
(32, '2019_07_30_072809_create_tour_dates_table', 1),
(33, '2019_08_05_031018_create_core_vendor_plan_meta_table', 1),
(34, '2019_08_09_163909_create_inbox_table', 1),
(35, '2019_08_16_094354_update_from_120_to_130', 1),
(36, '2019_08_20_162106_create_table_user_upgrade_requests', 1),
(37, '2019_09_13_070650_update_from_130_to_140', 1),
(38, '2019_09_20_072809_create_hotel_table', 1),
(39, '2019_10_22_151319_create_car_table', 1),
(40, '2019_11_05_092516_update_from_140_to_150', 1),
(41, '2020_04_02_150631_create_core_tags_table', 1),
(42, '2021_04_02_150632_create_core_tag_new_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `vendor_commission_amount` int(11) DEFAULT NULL,
  `vendor_commission_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_submit_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `address2`, `phone`, `birthday`, `city`, `state`, `country`, `zip_code`, `last_login_at`, `avatar_id`, `bio`, `status`, `create_user`, `update_user`, `vendor_commission_amount`, `vendor_commission_type`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `business_name`, `verify_submit_status`, `is_verified`) VALUES
(1, 'System Admin', 'System', 'Admin', 'admin@dev.com', NULL, '$2y$10$dNwwCkde5TZVEB68Dy1RseHFPDjK6o9qyonfv2xx7bA1fyh/ygLDC', NULL, NULL, '112 666 888', NULL, NULL, NULL, 'ID', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, 'nWTP9IKfpKHcHjLo6l6PPxZhCDGzD3HZlwDbOqmXQWXOnvU0jCxf2Jbj0Ph3', '2019-12-02 22:31:05', '2019-12-12 11:31:44', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'Vendor', '01', 'vendor1@dev.com', NULL, '$2y$10$6LDxux3ZOlaQdrLFF.hLCeECuJXSbrvivJxlTc3bfAZaZym9rdCWe', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Customer 01', 'Customer', '01', 'customer1@dev.com', NULL, '$2y$10$RsfR7peoUJZOW.MauvcBhOXK/eGXXLBBBARKYq14c/CiwW0fpwJ0y', NULL, NULL, '112 666 888', NULL, NULL, NULL, 'BY', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, 'xjHgIfLjzBo9FsIaeAc4NxhjGXjTXMx9wS6JxssVwL9iX822U2qQ5hVSOw0z', '2019-12-02 22:31:05', '2019-12-13 00:41:55', NULL, NULL, NULL, NULL, 'new', 0),
(4, '', 'Elise', 'Aarohi', 'Aarohi@dev.com', NULL, '$2y$10$SC82JMVRzAoKopVBioIGdu9JKURFwPm1uqxrCvCYSNbbE.4Noir4O', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'Kaytlyn', 'Alvapriya', 'Alvapriya@dev.com', NULL, '$2y$10$4L3K7qjk5teQa6fbfZxV8u7QFPHT88EFdbjoPxFCP7G7SX.t.MtrC', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'Lynne', 'Victoria', 'Victoria@dev.com', NULL, '$2y$10$yOxuTbJmbs2EosEdJ4KqNO5qlH5/9qPts3OoDnnfUZPPGw606aVqO', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', 'William', 'Diana', 'Diana@dev.com', NULL, '$2y$10$SbCGSRUy31NCjfGq39UP4um347gAwqt75GqWMGMSHaVym5AZYgnpW', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', 'Sarah', 'Violet', 'Violet@dev.com', NULL, '$2y$10$cF1cQocMouU4S2vTXvDHK.w36J4WAZ45OZnIGb5pqkN1IXQ.kLVZ2', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', 'Paul', 'Amora', 'Amora@dev.com', NULL, '$2y$10$4AnDTNt.3aX0WjYge0CpV.dnGosjrKwlft8i3oh3Z7JTGyw3lFYXm', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', 'Richard', 'Davina', 'Davina@dev.com', NULL, '$2y$10$8rXymFAmWkUx3lKzqVg1Au7ggY2uMGUuPRdeBwBy0CCXTRdXCP7bO', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', 'Shushi', 'Yashashree', 'Yashashree@dev.com', NULL, '$2y$10$qeCTT5XHDq0sLrtz2kuy5.B/Szcz468uVj2.bCBWMdnyLJ.XVNNMi', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', 'Anne', 'Nami', 'Nami@dev.com', NULL, '$2y$10$igfa.NDyl3FGeDILz/Rcx.XF.LOGRz5KBlsYFRgkSepUXqgF4bsCm', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', 'Bush', 'Elise', 'Elise@dev.com', NULL, '$2y$10$OAodIHO4m8ToEtdEklvk0.1dbFPPvZKX7i3CKcAf/WQA9zaOb1IBK', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', 'Elizabeth', 'Norah', 'Norah@dev.com', NULL, '$2y$10$W3HTctdQ0YCt0gpb4hSz0eEaU.HMe62HsC48g7b8WPZ.kYOcxe5wm', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', 'James', 'Alia', 'Alia@dev.com', NULL, '$2y$10$F80KF1tvLZRVc6dsmAHyfuOJxkia4UYcWTz1j00Y9KdipFn3LBbwS', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', 'John', 'Dakshi', 'Dakshi@dev.com', NULL, '$2y$10$yprpeAVHb/J5DTPk0e9UxexQUitjDNlVQ8nX15gyftd9UGdIS/aRe', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-02 22:31:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `user_id`, `name`, `val`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'verify_data_id_card', '{\"path\":\"3/2019/12/13/1-soqhzag-tvhsm9vvlchurw.jpeg\",\"name\":\"1-soqhzag-tvhsm9vvlchurw\",\"size\":151828,\"file_type\":\"image/jpeg\",\"file_extension\":\"jpeg\",\"download\":\"http://127.0.0.1:8000/media/private/view?path=3%2F2019%2F12%2F13%2F1-soqhzag-tvhsm9vvlchurw.jpeg\"}', 3, NULL, NULL, '2019-12-13 00:41:55', NULL),
(2, 3, 'is_verified_id_card', '0', 3, NULL, NULL, '2019-12-13 00:41:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_upgrade_request`
--

CREATE TABLE `user_upgrade_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_request` int(11) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

CREATE TABLE `user_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_plan_payments`
--

CREATE TABLE `vendors_plan_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_trial` int(11) NOT NULL,
  `price_per` enum('onetime','per_time') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `price_unit` enum('day','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bravo_attractions`
--
ALTER TABLE `bravo_attractions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tours_slug_index` (`slug`);

--
-- Indexes for table `bravo_attraction_category`
--
ALTER TABLE `bravo_attraction_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tour_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `bravo_attraction_category_translations`
--
ALTER TABLE `bravo_attraction_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_category_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_attraction_dates`
--
ALTER TABLE `bravo_attraction_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_attraction_meta`
--
ALTER TABLE `bravo_attraction_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_attraction_term`
--
ALTER TABLE `bravo_attraction_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_attraction_translations`
--
ALTER TABLE `bravo_attraction_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `bravo_tour_translations_slug_index` (`slug`);

--
-- Indexes for table `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_cars`
--
ALTER TABLE `bravo_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_cars_slug_index` (`slug`);

--
-- Indexes for table `bravo_car_dates`
--
ALTER TABLE `bravo_car_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_car_term`
--
ALTER TABLE `bravo_car_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_car_translations`
--
ALTER TABLE `bravo_car_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_car_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_contact`
--
ALTER TABLE `bravo_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotels`
--
ALTER TABLE `bravo_hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotels_slug_index` (`slug`);

--
-- Indexes for table `bravo_hotel_rooms`
--
ALTER TABLE `bravo_hotel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_room_bookings`
--
ALTER TABLE `bravo_hotel_room_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_room_dates`
--
ALTER TABLE `bravo_hotel_room_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_room_term`
--
ALTER TABLE `bravo_hotel_room_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_room_translations`
--
ALTER TABLE `bravo_hotel_room_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_room_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_hotel_term`
--
ALTER TABLE `bravo_hotel_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_translations`
--
ALTER TABLE `bravo_hotel_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_locations`
--
ALTER TABLE `bravo_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_location_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_review`
--
ALTER TABLE `bravo_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_seo`
--
ALTER TABLE `bravo_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_spaces`
--
ALTER TABLE `bravo_spaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_spaces_slug_index` (`slug`);

--
-- Indexes for table `bravo_space_dates`
--
ALTER TABLE `bravo_space_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_space_term`
--
ALTER TABLE `bravo_space_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_space_translations`
--
ALTER TABLE `bravo_space_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_space_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_terms`
--
ALTER TABLE `bravo_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_terms_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_tours`
--
ALTER TABLE `bravo_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tours_slug_index` (`slug`);

--
-- Indexes for table `bravo_tour_category`
--
ALTER TABLE `bravo_tour_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tour_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `bravo_tour_category_translations`
--
ALTER TABLE `bravo_tour_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_category_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_tour_dates`
--
ALTER TABLE `bravo_tour_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_tour_meta`
--
ALTER TABLE `bravo_tour_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_tour_term`
--
ALTER TABLE `bravo_tour_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_tour_translations`
--
ALTER TABLE `bravo_tour_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `bravo_tour_translations_slug_index` (`slug`);

--
-- Indexes for table `core_events`
--
ALTER TABLE `core_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_events_category`
--
ALTER TABLE `core_events_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `core_events_category_translations`
--
ALTER TABLE `core_events_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category_translations_locale_index` (`locale`);

--
-- Indexes for table `core_events_tag`
--
ALTER TABLE `core_events_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_events_translations`
--
ALTER TABLE `core_events_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_translations_locale_index` (`locale`);

--
-- Indexes for table `core_inbox`
--
ALTER TABLE `core_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_languages`
--
ALTER TABLE `core_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_menus`
--
ALTER TABLE `core_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_menu_translations_locale_index` (`locale`);

--
-- Indexes for table `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `core_news`
--
ALTER TABLE `core_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_news_category`
--
ALTER TABLE `core_news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category_translations_locale_index` (`locale`);

--
-- Indexes for table `core_news_tag`
--
ALTER TABLE `core_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_news_translations`
--
ALTER TABLE `core_news_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_translations_locale_index` (`locale`);

--
-- Indexes for table `core_notifications`
--
ALTER TABLE `core_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_pages`
--
ALTER TABLE `core_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_pages_slug_index` (`slug`);

--
-- Indexes for table `core_page_translations`
--
ALTER TABLE `core_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `core_page_translations_locale_index` (`locale`);

--
-- Indexes for table `core_permissions`
--
ALTER TABLE `core_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_roles`
--
ALTER TABLE `core_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `core_role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `core_settings`
--
ALTER TABLE `core_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_subscribers`
--
ALTER TABLE `core_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tags`
--
ALTER TABLE `core_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_tag_translations_locale_index` (`locale`);

--
-- Indexes for table `core_templates`
--
ALTER TABLE `core_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_template_translations`
--
ALTER TABLE `core_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_template_translations_locale_index` (`locale`);

--
-- Indexes for table `core_translations`
--
ALTER TABLE `core_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bravo_attractions`
--
ALTER TABLE `bravo_attractions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bravo_attraction_category`
--
ALTER TABLE `bravo_attraction_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bravo_attraction_category_translations`
--
ALTER TABLE `bravo_attraction_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_attraction_dates`
--
ALTER TABLE `bravo_attraction_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_attraction_meta`
--
ALTER TABLE `bravo_attraction_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bravo_attraction_term`
--
ALTER TABLE `bravo_attraction_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `bravo_attraction_translations`
--
ALTER TABLE `bravo_attraction_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_cars`
--
ALTER TABLE `bravo_cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bravo_car_dates`
--
ALTER TABLE `bravo_car_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_car_term`
--
ALTER TABLE `bravo_car_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `bravo_car_translations`
--
ALTER TABLE `bravo_car_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_contact`
--
ALTER TABLE `bravo_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_hotels`
--
ALTER TABLE `bravo_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bravo_hotel_rooms`
--
ALTER TABLE `bravo_hotel_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `bravo_hotel_room_bookings`
--
ALTER TABLE `bravo_hotel_room_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_hotel_room_dates`
--
ALTER TABLE `bravo_hotel_room_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_hotel_room_term`
--
ALTER TABLE `bravo_hotel_room_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `bravo_hotel_room_translations`
--
ALTER TABLE `bravo_hotel_room_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_hotel_term`
--
ALTER TABLE `bravo_hotel_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `bravo_hotel_translations`
--
ALTER TABLE `bravo_hotel_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_locations`
--
ALTER TABLE `bravo_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_review`
--
ALTER TABLE `bravo_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=861;

--
-- AUTO_INCREMENT for table `bravo_seo`
--
ALTER TABLE `bravo_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bravo_spaces`
--
ALTER TABLE `bravo_spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bravo_space_dates`
--
ALTER TABLE `bravo_space_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_space_term`
--
ALTER TABLE `bravo_space_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `bravo_space_translations`
--
ALTER TABLE `bravo_space_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_terms`
--
ALTER TABLE `bravo_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_tours`
--
ALTER TABLE `bravo_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bravo_tour_category`
--
ALTER TABLE `bravo_tour_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bravo_tour_category_translations`
--
ALTER TABLE `bravo_tour_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_tour_dates`
--
ALTER TABLE `bravo_tour_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_tour_meta`
--
ALTER TABLE `bravo_tour_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bravo_tour_term`
--
ALTER TABLE `bravo_tour_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `bravo_tour_translations`
--
ALTER TABLE `bravo_tour_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_events`
--
ALTER TABLE `core_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `core_events_category`
--
ALTER TABLE `core_events_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_events_category_translations`
--
ALTER TABLE `core_events_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_events_tag`
--
ALTER TABLE `core_events_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_events_translations`
--
ALTER TABLE `core_events_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_inbox`
--
ALTER TABLE `core_inbox`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_languages`
--
ALTER TABLE `core_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_menus`
--
ALTER TABLE `core_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_news`
--
ALTER TABLE `core_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core_news_category`
--
ALTER TABLE `core_news_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news_tag`
--
ALTER TABLE `core_news_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news_translations`
--
ALTER TABLE `core_news_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_notifications`
--
ALTER TABLE `core_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_pages`
--
ALTER TABLE `core_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_page_translations`
--
ALTER TABLE `core_page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_permissions`
--
ALTER TABLE `core_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `core_roles`
--
ALTER TABLE `core_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_settings`
--
ALTER TABLE `core_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `core_subscribers`
--
ALTER TABLE `core_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_tags`
--
ALTER TABLE `core_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_templates`
--
ALTER TABLE `core_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_template_translations`
--
ALTER TABLE `core_template_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_translations`
--
ALTER TABLE `core_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD CONSTRAINT `core_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD CONSTRAINT `core_model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD CONSTRAINT `core_role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `core_role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
