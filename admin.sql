-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Fev-2023 às 04:00
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `laravel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '5a2e01e95bb505f98bd95a9340467316c2bd6c08c07d27430e86dba79b440020', '[\"*\"]', NULL, NULL, '2023-02-23 01:11:41', '2023-02-23 01:11:41'),
(2, 'App\\Models\\User', 4, 'API TOKEN', '1dc53dd4496f8d20be767a816dd1a0ffc20e76fc0b6691c507f21cdbcffcc76e', '[\"*\"]', NULL, NULL, '2023-02-23 02:31:38', '2023-02-23 02:31:38'),
(3, 'App\\Models\\User', 9, 'API TOKEN', '375478f24f84721c81765cb606e199e01de1f5897e00602861390819b625da0b', '[\"*\"]', NULL, NULL, '2023-02-23 02:36:19', '2023-02-23 02:36:19'),
(4, 'App\\Models\\User', 1, 'API TOKEN', '7334d032f42a418862a756ac07b69f2832eabfd60a662d06056bd2cbdf2297ec', '[\"*\"]', NULL, NULL, '2023-02-24 03:28:45', '2023-02-24 03:28:45'),
(5, 'App\\Models\\User', 1, 'API TOKEN', 'c94d72f02100cd22ae4b542364995734690344a140a957baa033afad12861c81', '[\"*\"]', NULL, NULL, '2023-02-24 23:52:13', '2023-02-24 23:52:13'),
(6, 'App\\Models\\User', 1, 'API TOKEN', '48fc11a120446f5792fe3155f02db2c040e1e88dbef8b2fd57889308196bbe88', '[\"*\"]', NULL, NULL, '2023-02-24 23:52:14', '2023-02-24 23:52:14'),
(7, 'App\\Models\\User', 1, 'auth_token', '7902624c0bfe422ab06f1845ace4d67503162c5c4e0b6f9406303f3a6f7ca777', '[\"*\"]', NULL, NULL, '2023-02-25 00:08:42', '2023-02-25 00:08:42'),
(8, 'App\\Models\\User', 1, 'auth_token', '94f27afacf60bcf1a0ff3547b6db87475393779d45947ee47f0a9482d1ba8a43', '[\"*\"]', '2023-02-25 00:12:36', NULL, '2023-02-25 00:09:09', '2023-02-25 00:12:36'),
(9, 'App\\Models\\User', 12, 'auth_token', 'f63c5c0fdfbe5a32b3000d223a8d68a59e60e2a5502ef9d3e52cfe7560de3396', '[\"*\"]', NULL, NULL, '2023-02-25 00:16:51', '2023-02-25 00:16:51'),
(10, 'App\\Models\\User', 14, 'auth_token', '6405731b9562fa549f5740e02c6fd5075b462b75d1a2e2f22d697e26d4c66f76', '[\"*\"]', '2023-02-25 00:19:15', NULL, '2023-02-25 00:19:13', '2023-02-25 00:19:15'),
(11, 'App\\Models\\User', 14, 'auth_token', 'ea3d5dbc5952f33e6fd6c4641265157209997f5af091c175c91d263a7a7b07fa', '[\"*\"]', '2023-02-25 03:16:12', NULL, '2023-02-25 00:39:18', '2023-02-25 03:16:12'),
(12, 'App\\Models\\User', 14, 'auth_token', '270cd6aa18a10df9f6e1d48df6812b9d8e5d46465133b30084688e6d08fb9fba', '[\"*\"]', '2023-02-25 03:49:17', NULL, '2023-02-25 03:16:51', '2023-02-25 03:49:17'),
(13, 'App\\Models\\User', 14, 'auth_token', '1e5e178aa47899413cca208785890ab42684899671bb7d210c2db833be726fd9', '[\"*\"]', '2023-02-25 03:51:19', NULL, '2023-02-25 03:50:26', '2023-02-25 03:51:19'),
(14, 'App\\Models\\User', 14, 'auth_token', 'f26e342e257a303c252c851924ab6c510433d7fb236aad9df25b1dbc91366341', '[\"*\"]', '2023-02-25 04:16:09', NULL, '2023-02-25 03:51:18', '2023-02-25 04:16:09'),
(15, 'App\\Models\\User', 14, 'auth_token', 'dde767def8350d30dcf6377cc7ffb08e1ba297d32ae3ece29cea6fe61182f1f2', '[\"*\"]', '2023-02-25 04:23:33', NULL, '2023-02-25 04:18:44', '2023-02-25 04:23:33'),
(16, 'App\\Models\\User', 14, 'auth_token', '642641ceca6f596340d0d4448e5472ae2d92a3f536384d630f6e5860f02f29c8', '[\"*\"]', '2023-02-25 04:29:58', NULL, '2023-02-25 04:27:19', '2023-02-25 04:29:58'),
(17, 'App\\Models\\User', 14, 'auth_token', '128538a167aa68e7ed479751c382a7f50ee8fee65695b7b243cdd77169d7ca0b', '[\"*\"]', '2023-02-25 07:48:50', NULL, '2023-02-25 04:41:54', '2023-02-25 07:48:50'),
(18, 'App\\Models\\User', 14, 'auth_token', 'da518699c242368bdb32b2857d092bb690080ff1b651be247c1b2605c6b2125f', '[\"*\"]', '2023-02-25 07:50:25', NULL, '2023-02-25 07:49:29', '2023-02-25 07:50:25'),
(19, 'App\\Models\\User', 14, 'auth_token', '74014d93e3c1b69ca9af72eb33b7cbf8e88355bfa4dd718af0972cb40766298b', '[\"*\"]', '2023-02-26 05:14:53', NULL, '2023-02-26 00:06:42', '2023-02-26 05:14:53'),
(20, 'App\\Models\\User', 14, 'auth_token', 'c707880c9c4de251195f9be29adcdd419c51496ea093b23f3279c35720f799f3', '[\"*\"]', NULL, NULL, '2023-02-26 00:06:45', '2023-02-26 00:06:45'),
(21, 'App\\Models\\User', 14, 'auth_token', '21b64ac9ddb406048f9a0fdd01fde5a84a92ac2830092bee627f0d4214a5f50c', '[\"*\"]', '2023-02-26 05:57:07', NULL, '2023-02-26 05:56:44', '2023-02-26 05:57:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefa`
--

CREATE TABLE `tarefa` (
  `id_tarefa` int(25) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Estado` varchar(25) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tarefa`
--

INSERT INTO `tarefa` (`id_tarefa`, `Descricao`, `Estado`, `user_id`) VALUES
(23, 'Desenvolver Back', 'A Fazer', 14),
(24, 'Desenvolver Front', 'A Fazer', 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'joseph costa', 'jhowboxer@hotmail.com', NULL, '$2y$10$7flsdDcbvgDJS0.suChrsOqY6Ko8ZapaP61wIkK0jKjcQ2VF61EB6', NULL, '2023-02-25 00:19:03', '2023-02-26 03:34:02'),
(18, 'Bryan', 'bryan@teste.com', NULL, '$2y$10$OeLoRZtdz6tF21zFs2InY.hEb5R7mkGsEt/QMPEvB8jkZI6qOPS1G', NULL, '2023-02-26 03:36:07', '2023-02-26 03:36:07'),
(20, 'Faby', 'Faby@teste.com', NULL, '$2y$10$7ssD85qg8RIrdZMQ1xJOC.tRXbpxl7.WY40/cdTqr4vG9nfaVntwO', NULL, '2023-02-26 05:14:53', '2023-02-26 05:14:53');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `tarefa`
--
ALTER TABLE `tarefa`
  ADD PRIMARY KEY (`id_tarefa`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `tarefa`
--
ALTER TABLE `tarefa`
  MODIFY `id_tarefa` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tarefa`
--
ALTER TABLE `tarefa`
  ADD CONSTRAINT `tarefa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
