-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2023 a las 15:48:37
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebablume`
--
CREATE DATABASE IF NOT EXISTS `pruebablume` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `pruebablume`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`, `collapsible_stacked_inlines`, `collapsible_stacked_inlines_collapsed`, `collapsible_tabular_inlines`, `collapsible_tabular_inlines_collapsed`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add mensaje', 10, 'add_mensaje'),
(38, 'Can change mensaje', 10, 'change_mensaje'),
(39, 'Can delete mensaje', 10, 'delete_mensaje'),
(40, 'Can view mensaje', 10, 'view_mensaje'),
(41, 'Can add carrito', 11, 'add_carrito'),
(42, 'Can change carrito', 11, 'change_carrito'),
(43, 'Can delete carrito', 11, 'delete_carrito'),
(44, 'Can view carrito', 11, 'view_carrito'),
(45, 'Can add orden', 12, 'add_orden'),
(46, 'Can change orden', 12, 'change_orden'),
(47, 'Can delete orden', 12, 'delete_orden'),
(48, 'Can view orden', 12, 'view_orden');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$WEkHA2yj6N3AhEVgD26Z7P$ocqHgnJCt4m3mS7YmBbYPt6jGeIm3MjR6WfDOB7R+s0=', '2023-06-06 13:24:09.613609', 1, 'admin', '', '', 'ig.cordero@duocuc.cl', 1, 1, '2023-06-06 13:22:15.824314');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carrito`
--

CREATE TABLE `core_carrito` (
  `id` bigint(20) NOT NULL,
  `cantidad_prod` int(11) NOT NULL,
  `id_usuario_id` int(11) NOT NULL,
  `producto_carrito_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_mensaje`
--

CREATE TABLE `core_mensaje` (
  `id` bigint(20) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `creado_en` date NOT NULL,
  `modificado_en` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_orden`
--

CREATE TABLE `core_orden` (
  `id` bigint(20) NOT NULL,
  `cantidad_prod` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_usuario_id` int(11) NOT NULL,
  `producto_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` bigint(20) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `tipo_id` bigint(20) NOT NULL,
  `creado_en` date NOT NULL,
  `modificado_en` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `imagen`, `nombre`, `marca`, `descripcion`, `precio`, `stock`, `tipo_id`, `creado_en`, `modificado_en`) VALUES
(1, 'productos/vaquita.gif', 'Arbusto MySQL', 'Blume', 'Esto es una prueba', 111, 11, 1, '2023-06-06', NULL),
(2, 'productos/arb-nube.jpg', 'Arbusto Nube', 'Blume', 'Arbusto Nube', 2222, 10, 1, '2023-06-06', NULL),
(3, 'productos/arkein.webp', 'Arbusto Arbusto', 'Blume', 'Arbusto Arbusto', 2222, 10, 1, '2023-06-06', NULL),
(4, 'productos/cultivador-jardin.webp', 'Cultivador', 'Blume', 'Cultivador', 5900, 10, 5, '2023-06-06', NULL),
(5, 'productos/flor.jpg', 'Flor Loto', 'Blume', 'Flor Loto', 6666, 10, 2, '2023-06-06', NULL),
(6, 'productos/Flor4.webp', 'Girasoles', 'Blume', 'Girasoles', 990, 15, 2, '2023-06-06', NULL),
(7, 'productos/mac5.jpg', 'Macetero bob patiño', 'Blume', 'Macetero bob patiño', 9990, 10, 4, '2023-06-06', NULL),
(8, 'productos/mac6.jpg', 'Cilindro Cyan', 'Blume', 'Macetero Cilindro Cyan', 9900, 10, 4, '2023-06-06', NULL),
(9, 'productos/tijeras-poda.webp', 'Tijera poda', 'Blume', 'Tijera poda', 6990, 10, 5, '2023-06-06', NULL),
(10, 'productos/th3.jpg', 'Sustrato rejuvenedor', 'Blume', 'Sustrato rejuvenedor', 15990, 5, 3, '2023-06-06', NULL),
(11, 'productos/th3_UZrHTlh.jpg', 'Tierra de Hojas', 'Blume', 'Tierra de Hojas organico', 15990, 10, 3, '2023-06-06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` bigint(20) NOT NULL,
  `nombreTipoProducto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `nombreTipoProducto`) VALUES
(1, 'Arbustos'),
(2, 'Flores'),
(3, 'Sustratos'),
(4, 'Maceteros'),
(5, 'Herramientas');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-06 13:25:21.850033', '1', 'Arbustos', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-06-06 13:25:54.139612', '1', 'Arbusto MySQL', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-06-06 13:35:31.837052', '1', 'Arbusto MySQL', 2, '[{\"changed\": {\"fields\": [\"Precio\", \"Imagen\"]}}]', 9, 1),
(4, '2023-06-06 13:41:10.467324', '2', 'Arbusto Nube', 1, '[{\"added\": {}}]', 9, 1),
(5, '2023-06-06 13:41:40.308959', '3', 'Arbusto Arbusto', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-06-06 13:42:08.427610', '4', 'Cultivador', 1, '[{\"added\": {}}]', 9, 1),
(7, '2023-06-06 13:42:40.492392', '5', 'Flor Loto', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-06-06 13:43:11.635865', '6', 'Girasoles', 1, '[{\"added\": {}}]', 9, 1),
(9, '2023-06-06 13:43:40.530193', '7', 'Macetero bob patiño', 1, '[{\"added\": {}}]', 9, 1),
(10, '2023-06-06 13:44:09.996341', '8', 'Cilindro Cyan', 1, '[{\"added\": {}}]', 9, 1),
(11, '2023-06-06 13:44:38.371063', '9', 'Tijera poda', 1, '[{\"added\": {}}]', 9, 1),
(12, '2023-06-06 13:45:17.163953', '10', 'Sustrato rejuvenedor', 1, '[{\"added\": {}}]', 9, 1),
(13, '2023-06-06 13:45:53.739820', '11', 'Tierra de Hojas', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(11, 'core', 'carrito'),
(10, 'core', 'mensaje'),
(12, 'core', 'orden'),
(9, 'core', 'producto'),
(8, 'core', 'tipoproducto'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-06 13:15:58.048381'),
(2, 'auth', '0001_initial', '2023-06-06 13:15:58.381973'),
(3, 'admin', '0001_initial', '2023-06-06 13:15:58.458925'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-06 13:15:58.464926'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-06 13:15:58.469930'),
(6, 'admin_interface', '0001_initial', '2023-06-06 13:15:58.482934'),
(7, 'admin_interface', '0002_add_related_modal', '2023-06-06 13:15:58.544123'),
(8, 'admin_interface', '0003_add_logo_color', '2023-06-06 13:15:58.563582'),
(9, 'admin_interface', '0004_rename_title_color', '2023-06-06 13:15:58.574518'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-06-06 13:15:58.592457'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-06-06 13:15:58.627716'),
(12, 'admin_interface', '0007_add_favicon', '2023-06-06 13:15:58.646358'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-06-06 13:15:58.676363'),
(14, 'admin_interface', '0009_add_enviroment', '2023-06-06 13:15:58.727714'),
(15, 'admin_interface', '0010_add_localization', '2023-06-06 13:15:58.741940'),
(16, 'admin_interface', '0011_add_environment_options', '2023-06-06 13:15:58.799913'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-06-06 13:15:58.807915'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-06-06 13:15:58.825919'),
(19, 'admin_interface', '0014_name_unique', '2023-06-06 13:15:58.840922'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-06-06 13:15:58.861927'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-06-06 13:15:58.880931'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-06-06 13:15:58.883932'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-06-06 13:15:58.902938'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-06-06 13:15:58.935800'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-06-06 13:15:58.980033'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-06-06 13:15:58.985819'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-06-06 13:15:59.018864'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-06-06 13:15:59.035535'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-06-06 13:15:59.048538'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-06-06 13:15:59.066051'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-06-06 13:15:59.083558'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-06-06 13:15:59.106566'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-06-06 13:15:59.142276'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-06-06 13:15:59.160965'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-06-06 13:15:59.225297'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-06-06 13:15:59.271322'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-06-06 13:15:59.312331'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-06-06 13:15:59.349409'),
(39, 'auth', '0004_alter_user_username_opts', '2023-06-06 13:15:59.356410'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-06-06 13:15:59.383200'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-06-06 13:15:59.385199'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-06-06 13:15:59.391201'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-06-06 13:15:59.404504'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-06-06 13:15:59.418353'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-06-06 13:15:59.459183'),
(46, 'auth', '0011_update_proxy_permissions', '2023-06-06 13:15:59.468346'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-06-06 13:15:59.506355'),
(48, 'core', '0001_initial', '2023-06-06 13:15:59.517369'),
(49, 'core', '0002_rename_descripcion_tipoproducto_nombretipoproducto', '2023-06-06 13:15:59.527371'),
(50, 'core', '0003_productopruebas', '2023-06-06 13:15:59.572724'),
(51, 'core', '0004_productopruebas_imagen', '2023-06-06 13:15:59.581012'),
(52, 'core', '0005_producto_delete_productopruebas', '2023-06-06 13:15:59.632311'),
(53, 'core', '0006_productoespecial', '2023-06-06 13:15:59.678179'),
(54, 'core', '0007_producto_creado_en_producto_modificado_en_and_more', '2023-06-06 13:15:59.714859'),
(55, 'core', '0008_mensaje', '2023-06-06 13:15:59.727749'),
(56, 'core', '0009_carrito', '2023-06-06 13:15:59.837849'),
(57, 'core', '0010_orden', '2023-06-06 13:15:59.921210'),
(58, 'sessions', '0001_initial', '2023-06-06 13:15:59.948216');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1r73ur2f94g7luz9jifiwmyj50y8byjh', '.eJxVjMsOwiAQRf-FtSE8ylBcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3HjmlQiEPiooxyjvWYFwZOXAw1gabMnhEYEvKGADnAYesoajgkJQS7w_tCzeh:1q6WfR:DJK4kjcfg2YpBxeQosyBdioJT4XNAnfBY327CdHMwiY', '2023-06-20 13:24:09.615610');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

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
-- Indices de la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_carrito_id_usuario_id_a8530b01_fk_auth_user_id` (`id_usuario_id`),
  ADD KEY `core_carrito_producto_carrito_id_45e226fd_fk_core_producto_id` (`producto_carrito_id`);

--
-- Indices de la tabla `core_mensaje`
--
ALTER TABLE `core_mensaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_orden`
--
ALTER TABLE `core_orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_orden_id_usuario_id_2ff524b5_fk_auth_user_id` (`id_usuario_id`),
  ADD KEY `core_orden_producto_id_489a3fee_fk_core_producto_id` (`producto_id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
-- AUTO_INCREMENT de la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_mensaje`
--
ALTER TABLE `core_mensaje`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_orden`
--
ALTER TABLE `core_orden`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
-- Filtros para la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  ADD CONSTRAINT `core_carrito_id_usuario_id_a8530b01_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `core_carrito_producto_carrito_id_45e226fd_fk_core_producto_id` FOREIGN KEY (`producto_carrito_id`) REFERENCES `core_producto` (`id`);

--
-- Filtros para la tabla `core_orden`
--
ALTER TABLE `core_orden`
  ADD CONSTRAINT `core_orden_id_usuario_id_2ff524b5_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `core_orden_producto_id_489a3fee_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

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
