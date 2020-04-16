-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Lut 2020, 23:51
-- Wersja serwera: 10.4.6-MariaDB
-- Wersja PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `authservice`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_02_05_221950_adds_api_tooken_to_users_tabel', 2),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(6, '2016_06_01_000004_create_oauth_clients_table', 3),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0ab51ee5f02d3b3b93edb2b344371227d448f710c44b86d705375ae1691fe4ccd7ab4cf673eb8375', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:54:47', '2020-02-05 22:54:47', '2021-02-05 23:54:47'),
('1a3e3a5fd7765deec4bdf047b0251868481a51b654c738e3f733b24a5bc4676e93a5f0b547afeebf', 3, 1, 'Personal Access Token', '[]', 1, '2020-02-10 21:00:12', '2020-02-10 21:00:12', '2021-02-10 22:00:12'),
('1b4bf72e9cb0c39a950c60ba25f362e6d9e02a23cc78b470cf3f1f1065ff6ad0f1e210ed9f2f84e9', 2, 1, 'Personal Access Token', '[]', 1, '2020-02-05 22:46:34', '2020-02-05 22:46:34', '2021-02-05 23:46:34'),
('284ac5dec21d3513f42107161e169ae01f28a3eb966e8ea738d542c05c7cad53aa36c6e9927aeee1', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:27:35', '2020-02-05 22:27:35', '2021-02-05 23:27:35'),
('2efac8561ef2b63978b1bd724121449a8606f1ba3428711d80782c9ebed5a62753a7249c26208c52', 2, 1, 'Personal Access Token', '[]', 1, '2020-02-05 22:31:42', '2020-02-05 22:31:42', '2021-02-05 23:31:42'),
('3e599aafcaa3be34a92fa15930e6967dbfc7380260d82ee11c63f40c191a61429995a3c73e77d878', 2, 1, 'Personal Access Token', '[]', 1, '2020-02-05 22:24:04', '2020-02-05 22:24:04', '2021-02-05 23:24:04'),
('464bfcee9fa934d898d3e5c06c3851404130d3e07df05cc5f7bedfd841257a8a5c5170efe700723d', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:53:47', '2020-02-05 22:53:47', '2021-02-05 23:53:47'),
('4f3832307e55bf0f275e9d69e908c6276644923ad36f6a0eadfac2d4908ccdf94b5f3628b6584210', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:28:21', '2020-02-05 22:28:21', '2021-02-05 23:28:21'),
('7eadd90989f500c5da1e5ea046d7daf8d788f069d19f8d1fa36d23f39804d05224fd7faf1ddc0528', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-10 20:42:09', '2020-02-10 20:42:09', '2021-02-10 21:42:09'),
('88353ca7f085755ef2257aa2aef9398120ff9c8311ca8927005b5b71e37813a477298b051e91db41', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-10 19:38:02', '2020-02-10 19:38:02', '2021-02-10 20:38:02'),
('89800427d74abb7fdcb86eaa0147075effe55317f222eb25d390bef4507ccd2bedba0c095e4db870', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:47:27', '2020-02-05 22:47:27', '2021-02-05 23:47:27'),
('94ab74fa959ea250a2d492b8aecbebf6e3b1e6289a82b94ef36adcb29e38271fc4129a583449cbb1', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-10 19:37:36', '2020-02-10 19:37:36', '2021-02-10 20:37:36'),
('984853be7d894e701063863d8c9b97aece4cc13d0c291569a27e38880785373779c719eb12d37ede', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:40:16', '2020-02-05 22:40:16', '2021-02-05 23:40:16'),
('a4093f35d1f309eeafca55d5d69208d1ffc78d1f0895fbe505a7d266cb5644aaf51f30b52fef6936', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:57:23', '2020-02-05 22:57:23', '2021-02-05 23:57:23'),
('bc1416c96b406272683263e8035b5b40b6c5898ddba9096f5455ec308cb535afc1993f15781e0cb9', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:52:24', '2020-02-05 22:52:24', '2021-02-05 23:52:24'),
('de6dbd9ccd288c662f9ee9244f5582d6850b669d50e6173aaaac92ffaafb9179f20d1c8b813b8e9b', 1, 1, 'Personal Access Token', '[]', 0, '2020-02-10 18:21:10', '2020-02-10 18:21:10', '2021-02-10 19:21:10'),
('e7a11d3ca9d9049086deac8373fee2d5f0294a2bdc75e2684aef70b99e6a6c05a314d5147852378a', 3, 1, 'Personal Access Token', '[]', 0, '2020-02-10 21:39:05', '2020-02-10 21:39:05', '2021-02-10 22:39:05'),
('ed74f0ebdb5c07768f12de77fee5b0d28dcba8703650c685edc036c63fcad71213359b5f809cc576', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:58:12', '2020-02-05 22:58:12', '2021-02-05 23:58:12'),
('f1544c92e3506557b5d6556fd0395d89274b22953415c160b562b20576f0856a96c460a1a845e4f4', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-05 22:27:33', '2020-02-05 22:27:33', '2021-02-05 23:27:33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'E2uUluu3Nhx0NvzFDggQUeTbRTAMeDkLFsCC6X52', 'http://localhost', 1, 0, 0, '2020-02-05 22:11:11', '2020-02-05 22:11:11'),
(2, NULL, 'Laravel Password Grant Client', 'SzK17yixhDb5lqLo7P5ZA4xpFsi3q7dbGF0T3QgC', 'http://localhost', 0, 1, 0, '2020-02-05 22:11:11', '2020-02-05 22:11:11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-05 22:11:11', '2020-02-05 22:11:11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `surname`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cara.schaden@reichel.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Gracie Kertzmann', 'McCullough', NULL, '2020-02-05 21:18:21', '2020-02-05 21:18:21'),
(2, 'murphy.camron@yahoo.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Isobel Dare', 'Powlowski', NULL, '2020-02-05 21:18:22', '2020-02-05 22:02:55'),
(3, 'ratke.orlo@hotmail.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Edd Will', 'Parisian', NULL, '2020-02-05 21:18:22', '2020-02-05 21:18:22'),
(4, 'ilockman@gmail.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Maiya Mraz', 'Wilkinson', NULL, '2020-02-05 21:18:22', '2020-02-05 21:18:22'),
(5, 'jean.bechtelar@hotmail.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Prof. Stefanie Cole', 'Funk', NULL, '2020-02-05 21:18:22', '2020-02-05 21:18:22'),
(6, 'christophe.marquardt@franecki.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Arlene Mante', 'Lakin', NULL, '2020-02-05 21:18:22', '2020-02-05 21:18:22'),
(7, 'rudy.pagac@hotmail.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Prof. Lindsey Fisher PhD', 'Wolff', NULL, '2020-02-05 21:18:22', '2020-02-05 21:18:22'),
(8, 'calista.grimes@braun.org', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Mabelle Mertz', 'Keebler', NULL, '2020-02-05 21:18:22', '2020-02-05 21:18:22'),
(9, 'daugherty.melvina@kuhlman.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Prof. Bryce Eichmann', 'Block', NULL, '2020-02-05 21:18:22', '2020-02-05 21:18:22'),
(10, 'sincere98@yahoo.com', '$2y$10$Bwm.CHVMvm3MW8YQsjfsjO.jLZIx2EimK5G.n5X.pq/xOOyQhviCK', 'Mr. Pietro Quitzon IV', 'Stiedemann', NULL, '2020-02-05 21:18:22', '2020-02-05 21:18:22');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
