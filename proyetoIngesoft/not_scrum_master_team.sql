-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2023 a las 20:54:27
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `not_scrum_master_team`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add dispositivos', 7, 'add_dispositivos'),
(26, 'Can change dispositivos', 7, 'change_dispositivos'),
(27, 'Can delete dispositivos', 7, 'delete_dispositivos'),
(28, 'Can view dispositivos', 7, 'view_dispositivos'),
(29, 'Can add firewall', 8, 'add_firewall'),
(30, 'Can change firewall', 8, 'change_firewall'),
(31, 'Can delete firewall', 8, 'delete_firewall'),
(32, 'Can view firewall', 8, 'view_firewall'),
(33, 'Can add interfaces', 9, 'add_interfaces'),
(34, 'Can change interfaces', 9, 'change_interfaces'),
(35, 'Can delete interfaces', 9, 'delete_interfaces'),
(36, 'Can view interfaces', 9, 'view_interfaces'),
(37, 'Can add interfaces router', 10, 'add_interfacesrouter'),
(38, 'Can change interfaces router', 10, 'change_interfacesrouter'),
(39, 'Can delete interfaces router', 10, 'delete_interfacesrouter'),
(40, 'Can view interfaces router', 10, 'view_interfacesrouter'),
(41, 'Can add router', 11, 'add_router'),
(42, 'Can change router', 11, 'change_router'),
(43, 'Can delete router', 11, 'delete_router'),
(44, 'Can view router', 11, 'view_router'),
(45, 'Can add switches', 12, 'add_switches'),
(46, 'Can change switches', 12, 'change_switches'),
(47, 'Can delete switches', 12, 'delete_switches'),
(48, 'Can view switches', 12, 'view_switches'),
(49, 'Can add peticiones', 13, 'add_peticiones'),
(50, 'Can change peticiones', 13, 'change_peticiones'),
(51, 'Can delete peticiones', 13, 'delete_peticiones'),
(52, 'Can view peticiones', 13, 'view_peticiones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$MOUUHa6fxrez1JRmIX2pjx$wMeqi4yxvlRDp6VK5TFdbkG30HN1PhlbivsOdO3pG4g=', '2023-10-23 06:15:15.748012', 1, 'Nacho', '', '', 'ignacio.alvarezp@usm.cl', 1, 1, '2023-10-23 06:14:59.538236');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivos`
--

CREATE TABLE `dispositivos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `IP_Configuration` varchar(255) NOT NULL,
  `IP_UV4_Adress` varchar(255) NOT NULL,
  `SubnetMask` varchar(255) NOT NULL,
  `DefaultGateway` varchar(255) NOT NULL,
  `DNSServer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dispositivos`
--

INSERT INTO `dispositivos` (`ID`, `Nombre`, `IP_Configuration`, `IP_UV4_Adress`, `SubnetMask`, `DefaultGateway`, `DNSServer`) VALUES
(1, 'PC-PT_Jefe', 'Static', '172.22.130.2', '255.255.255.0', '172.22.130.1', '172.23.130.162'),
(2, 'PC-PT_Usuario', 'Static', '172.22.130.3', '255.255.255.0', '172.22.130.1', '172.23.130.162'),
(3, 'PC-PT_PC_Test_Server', 'Static', '177.23.130.163', '255.255.255.240', '172.23.130.161', '172.23.130.162'),
(4, 'SERVER-PT_Servidor', 'Static', '172.23.130.162', '255.255.255.240', '172.23.130.161', '172.23.130.162'),
(5, 'PC-PT_Jefe', 'Static', '172.22.130.2', '255.255.255.0', '172.22.130.1', '172.23.130.162'),
(6, 'PC-PT_Usuario', 'Static', '172.22.130.3', '255.255.255.0', '172.22.130.1', '172.23.130.162'),
(7, 'PC-PT_PC_Test_Server', 'Static', '177.23.130.163', '255.255.255.240', '172.23.130.161', '172.23.130.162'),
(8, 'SERVER-PT_Servidor', 'Static', '172.23.130.162', '255.255.255.240', '172.23.130.161', '172.23.130.162'),
(9, 'www.google.com', 'Static', '8.8.8.8', '255.255.0.0', '200.75.19.161', '0.0.0.0'),
(10, 'PC_Test_Internet', 'Static', '172.168.130.2', '255.255.255.0', '200.75.19.161', '200.75.19.166');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-25 02:11:39.069655', '4', 'Peticiones object (4)', 1, '[{\"added\": {}}]', 13, 1),
(2, '2023-10-25 16:55:08.331068', '5', 'Peticiones object (5)', 1, '[{\"added\": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'api', 'dispositivos'),
(8, 'api', 'firewall'),
(9, 'api', 'interfaces'),
(10, 'api', 'interfacesrouter'),
(13, 'api', 'peticiones'),
(11, 'api', 'router'),
(12, 'api', 'switches'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-23 06:12:52.244249'),
(2, 'auth', '0001_initial', '2023-10-23 06:12:52.796910'),
(3, 'admin', '0001_initial', '2023-10-23 06:12:52.920495'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-23 06:12:52.929473'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-23 06:12:52.937437'),
(6, 'api', '0001_initial', '2023-10-23 06:12:52.944414'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-10-23 06:12:53.012190'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-10-23 06:12:53.066010'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-10-23 06:12:53.088934'),
(10, 'auth', '0004_alter_user_username_opts', '2023-10-23 06:12:53.097904'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-10-23 06:12:53.155715'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-10-23 06:12:53.159699'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-10-23 06:12:53.171690'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-10-23 06:12:53.202552'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-10-23 06:12:53.233450'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-10-23 06:12:53.260358'),
(17, 'auth', '0011_update_proxy_permissions', '2023-10-23 06:12:53.271329'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-10-23 06:12:53.294256'),
(19, 'sessions', '0001_initial', '2023-10-23 06:12:53.347587'),
(20, 'api', '0002_peticiones', '2023-10-23 19:58:17.858146');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('49wlwz4x7txw1pj189h2xbj9dlwnqnq0', '.eJxVjMsOwiAQRf-FtSHlDS7d-w1kmAGpGkhKuzL-uzbpQrf3nHNfLMK21riNvMSZ2JkJdvrdEuAjtx3QHdqtc-xtXebEd4UfdPBrp_y8HO7fQYVRv7XEAsKgzM5OyWtMwqO1xnkiAbK4ENSUnNK2IIEyBbJMWgdpgaQyYNn7A-rSN_4:1quoDb:lm4q6-GJLK2_ddSaB3_4-Ikbpz_2zJ9qLymv00PiPVU', '2023-11-06 06:15:15.751008');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `firewall`
--

CREATE TABLE `firewall` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `firewall`
--

INSERT INTO `firewall` (`ID`, `Nombre`) VALUES
(2, 'FW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interfaces`
--

CREATE TABLE `interfaces` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Port Status` tinyint(1) NOT NULL,
  `IPv4 Address` varchar(255) NOT NULL,
  `Subnet Mask` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `interfaces`
--

INSERT INTO `interfaces` (`ID`, `Nombre`, `Port Status`, `IPv4 Address`, `Subnet Mask`) VALUES
(1, 'GigabitEthernet1/1', 1, '172.22.130.1', '255.255.255.0'),
(2, 'GigabitEthernet1/2', 1, '172.23.130.161', '255.255.255.240'),
(3, 'GigabitEthernet1/3', 1, '200.75.19.162', '255.255.255.240');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interfaces_router`
--

CREATE TABLE `interfaces_router` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Port Status` tinyint(1) NOT NULL,
  `IPv4 Adress` varchar(255) NOT NULL,
  `Subnet Mask` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `interfaces_router`
--

INSERT INTO `interfaces_router` (`ID`, `Nombre`, `Port Status`, `IPv4 Adress`, `Subnet Mask`) VALUES
(1, 'FastEthernet0/0\r\n', 1, '200.75.19.161', '255.255.255.240'),
(2, 'FastEthernet1/0\r\n', 1, '172.168.130.1', '255.255.255.0'),
(3, 'FastEthernet6/0\r\n', 1, '8.8.8.1', '255.255.0.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peticiones`
--

CREATE TABLE `peticiones` (
  `ID` int(11) NOT NULL,
  `Peticion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peticiones`
--

INSERT INTO `peticiones` (`ID`, `Peticion`) VALUES
(1, 'Quiero denegar el servicio a la ip xxxxxx'),
(2, 'Quiero denegar el servicio a la ip xxxxxx'),
(3, 'Quiero conectarme al router blablabla'),
(4, 'Denegar todo el trafico entrante del Nodo Jefe a Google'),
(5, 'Quiero guardar esta peticion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `router`
--

CREATE TABLE `router` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `router`
--

INSERT INTO `router` (`ID`, `Nombre`) VALUES
(1, 'Router0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `switches`
--

CREATE TABLE `switches` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `switches`
--

INSERT INTO `switches` (`ID`, `Nombre`) VALUES
(1, 'DMZ'),
(2, 'Switch0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `dispositivos`
--
ALTER TABLE `dispositivos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `firewall`
--
ALTER TABLE `firewall`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `interfaces`
--
ALTER TABLE `interfaces`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `interfaces_router`
--
ALTER TABLE `interfaces_router`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `peticiones`
--
ALTER TABLE `peticiones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `router`
--
ALTER TABLE `router`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `switches`
--
ALTER TABLE `switches`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dispositivos`
--
ALTER TABLE `dispositivos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `firewall`
--
ALTER TABLE `firewall`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `interfaces`
--
ALTER TABLE `interfaces`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `interfaces_router`
--
ALTER TABLE `interfaces_router`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `peticiones`
--
ALTER TABLE `peticiones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `router`
--
ALTER TABLE `router`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `switches`
--
ALTER TABLE `switches`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
