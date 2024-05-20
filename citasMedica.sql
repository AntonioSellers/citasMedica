-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla citasmedica.appointments: ~248 rows (aproximadamente)
DELETE FROM `appointments`;
INSERT INTO `appointments` (`id`, `scheduled_date`, `scheduled_time`, `type`, `description`, `doctor_id`, `patient_id`, `specialty_id`, `created_at`, `updated_at`, `status`) VALUES
	(1, '2023-05-28', '03:31:51', 'Consulta', 'Vel quam id consequatur neque.', 3, 2, 5, '2024-05-14 10:00:37', '2024-05-14 10:00:37', 'Cancelada'),
	(601, '2024-06-03', '08:30:00', 'Consulta', 'dolor cabeza', 3, 2, 7, '2024-05-14 10:03:56', '2024-05-14 10:23:21', 'Cancelada'),
	(602, '2024-05-30', '16:00:00', 'Consulta', 'dolor', 3, 2, 7, '2024-05-15 06:46:32', '2024-05-18 08:34:19', 'Cancelada'),
	(603, '2024-05-16', '09:00:00', 'Operación', 'apendice', 3, 2, 7, '2024-05-15 06:50:58', '2024-05-15 06:51:20', 'Confirmada'),
	(604, '2024-05-16', '10:00:00', 'Examen', 't43t34t', 3, 2, 7, '2024-05-15 09:22:53', '2024-05-17 08:22:31', 'Cancelada'),
	(605, '2024-05-21', '09:00:00', 'Examen', 'nkhkjhhkb', 3, 2, 7, '2024-05-15 17:34:01', '2024-05-17 08:22:38', 'Cancelada'),
	(606, '2024-06-04', '08:30:00', 'Consulta', 'gdg', 3, 2, 7, '2024-05-16 08:57:22', '2024-05-16 09:19:34', 'Cancelada'),
	(607, '2024-05-28', '08:30:00', 'Consulta', 'dde23e23', 3, 89, 7, '2024-05-16 09:16:45', '2024-05-16 09:19:56', 'Cancelada'),
	(608, '2024-05-28', '09:00:00', 'Consulta', 'fefwef', 3, 2, 7, '2024-05-16 09:17:31', '2024-05-16 10:22:50', 'Cancelada'),
	(611, '2024-05-31', '08:30:00', 'Operación', 'desfesfes', 92, 1, 4, '2024-05-16 10:52:25', '2024-05-18 08:47:29', 'Cancelada'),
	(612, '2024-05-21', '08:30:00', 'Examen', 'nkjbkju', 92, 3, 3, '2024-05-16 10:56:21', '2024-05-17 08:22:43', 'Cancelada'),
	(616, '2024-05-16', '09:30:00', 'Consulta', 'wadawd', 3, 2, 3, '2024-05-16 15:41:38', '2024-05-17 08:22:25', 'Cancelada'),
	(617, '2024-05-17', '08:00:00', 'Consulta', 'vgdfggdz', 92, 3, 2, '2024-05-17 06:56:00', '2024-05-17 08:22:19', 'Cancelada'),
	(618, '2024-05-20', '08:30:00', 'Consulta', 'eq', 3, 1, 2, '2024-05-17 08:23:07', '2024-05-18 08:47:34', 'Cancelada'),
	(619, '2024-05-29', '09:00:00', 'Operación', 'r35r3r3', 3, 1, 3, '2024-05-17 08:29:38', '2024-05-18 08:47:38', 'Cancelada'),
	(620, '2024-05-30', '14:30:00', 'Consulta', 'dolor de cabeza', 92, 2, 3, '2024-05-17 09:07:48', '2024-05-19 18:03:10', 'Cancelada'),
	(625, '2023-08-22', '21:36:04', 'Operacion', 'Exercitationem autem asperiores expedita.', 92, 89, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(626, '2024-02-04', '07:51:37', 'Operacion', 'Et harum odit aliquam sit itaque omnis.', 92, 89, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(628, '2024-02-01', '11:28:42', 'Operacion', 'Magni vero est occaecati vel est.', 3, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(629, '2024-02-05', '04:05:00', 'Consulta', 'Et iste voluptatem perferendis possimus.', 92, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(631, '2023-11-08', '01:49:52', 'Examen', 'Aspernatur consequatur dolor asperiores aut eius.', 92, 89, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(632, '2024-01-02', '06:46:38', 'Consulta', 'Voluptatum sit sit assumenda rerum assumenda aut.', 92, 89, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(635, '2023-12-28', '13:00:13', 'Examen', 'Vel sunt enim similique aut voluptas eaque.', 3, 2, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(638, '2023-06-25', '08:27:21', 'Consulta', 'Et odio aspernatur accusantium sit et.', 3, 89, 4, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(642, '2023-09-04', '23:43:24', 'Consulta', 'Molestias dolores velit autem.', 3, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(643, '2024-01-23', '03:24:46', 'Operacion', 'Iusto reiciendis totam id eveniet quo consequatur.', 92, 2, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(644, '2023-12-22', '10:48:59', 'Consulta', 'Adipisci nemo repellendus iusto incidunt.', 92, 2, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(650, '2023-07-28', '07:07:41', 'Consulta', 'Perferendis ut rerum necessitatibus beatae ullam.', 3, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(653, '2023-05-18', '23:07:36', 'Examen', 'Natus error voluptatem expedita est.', 3, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(654, '2024-03-08', '04:49:24', 'Operacion', 'Ab et sint ut aut.', 92, 89, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(657, '2023-08-23', '01:18:47', 'Consulta', 'Aperiam laboriosam maiores minus.', 92, 2, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(662, '2023-09-19', '17:07:31', 'Consulta', 'Corporis exercitationem veritatis iste laudantium.', 3, 89, 4, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(664, '2023-08-20', '18:07:11', 'Examen', 'Enim ab tempora dolor.', 3, 89, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(672, '2024-05-06', '10:33:29', 'Consulta', 'Ut voluptatum voluptas eum magnam non.', 92, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(673, '2024-04-04', '15:04:24', 'Examen', 'Sit alias maiores aliquam veniam.', 92, 2, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(674, '2023-07-02', '09:40:09', 'Operacion', 'Id tenetur dolores hic consequatur ut reprehenderit.', 92, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(676, '2024-02-15', '10:19:26', 'Operacion', 'Accusamus sunt autem harum ut ut error.', 92, 89, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(678, '2023-11-03', '21:19:32', 'Operacion', 'Reiciendis quas eum laborum voluptas iusto.', 3, 89, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(682, '2024-01-07', '05:59:21', 'Consulta', 'Sit accusamus non iste quis quod.', 3, 2, 2, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(683, '2024-02-18', '13:23:07', 'Operacion', 'Rerum expedita est ut commodi necessitatibus.', 92, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(685, '2024-01-17', '01:07:51', 'Operacion', 'Vel modi sed beatae est optio.', 92, 89, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(688, '2023-06-06', '18:12:32', 'Consulta', 'Nam commodi voluptates est.', 3, 2, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(689, '2023-07-29', '00:06:02', 'Consulta', 'Error ut vel dolor impedit et.', 3, 2, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(695, '2024-04-16', '01:21:25', 'Operacion', 'Sit rerum provident aut.', 3, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(696, '2023-08-13', '00:49:37', 'Operacion', 'At ducimus id et voluptatibus.', 92, 2, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(701, '2023-09-11', '19:21:21', 'Operacion', 'Excepturi et tempora inventore ipsam.', 92, 2, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(704, '2024-02-23', '18:49:27', 'Examen', 'Quasi id voluptatem corporis enim aliquid quaerat.', 92, 2, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(705, '2024-03-27', '13:19:25', 'Examen', 'Aut consequatur ad velit.', 92, 89, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(706, '2023-09-07', '15:17:56', 'Operacion', 'Repudiandae eos rerum deleniti quod.', 3, 2, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(710, '2023-12-10', '07:27:25', 'Consulta', 'Quibusdam beatae nemo maiores similique rerum.', 92, 89, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(711, '2023-12-25', '09:32:19', 'Consulta', 'Voluptas nulla quis tempora debitis vero.', 3, 89, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(712, '2023-10-29', '18:29:27', 'Consulta', 'Voluptate voluptas illum id.', 92, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(716, '2024-01-04', '07:10:27', 'Operacion', 'Est tempora sint tempore.', 92, 89, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(717, '2023-11-03', '10:23:34', 'Operacion', 'Et assumenda omnis et.', 3, 89, 2, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(723, '2023-11-04', '04:49:51', 'Operacion', 'Architecto aut rerum quos.', 3, 89, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(724, '2024-04-04', '08:27:04', 'Consulta', 'Eveniet vel quia dolores aut beatae aut.', 3, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(727, '2024-04-19', '09:15:50', 'Operacion', 'Earum a sed voluptatem itaque nobis.', 92, 89, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(729, '2023-05-30', '03:26:57', 'Examen', 'Dolor et unde et velit enim.', 3, 89, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(730, '2023-12-05', '22:55:47', 'Operacion', 'Dolor magnam unde maxime sint delectus ut.', 92, 89, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(731, '2024-01-29', '20:46:12', 'Operacion', 'Cum dolor rerum voluptas.', 92, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(734, '2024-01-25', '07:31:06', 'Operacion', 'Tempora ab non illo magni.', 3, 89, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(738, '2023-09-21', '21:56:27', 'Operacion', 'Esse voluptas quod magni.', 92, 89, 2, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(739, '2023-06-12', '21:32:59', 'Consulta', 'Et qui nemo eveniet eum.', 92, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(740, '2023-10-10', '20:59:11', 'Examen', 'Pariatur aliquam iste quos et.', 3, 89, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(744, '2023-09-10', '16:24:56', 'Consulta', 'Non ex ipsam voluptatum accusamus ullam.', 92, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(745, '2024-02-09', '06:21:50', 'Operacion', 'Est quia vitae harum qui.', 92, 2, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(746, '2023-11-08', '02:53:52', 'Consulta', 'Vel vel incidunt dolores.', 3, 2, 2, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(756, '2023-05-27', '09:12:49', 'Examen', 'Assumenda doloremque totam quia porro reiciendis.', 3, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(757, '2023-07-22', '13:40:53', 'Examen', 'Dolorem velit amet voluptatibus quos.', 3, 2, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(762, '2023-06-03', '23:11:00', 'Consulta', 'Numquam nulla voluptatem voluptatum consequatur.', 3, 2, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(768, '2024-02-03', '09:14:06', 'Examen', 'Est minima voluptatem accusamus et.', 92, 2, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(769, '2024-02-14', '04:44:10', 'Examen', 'Qui dignissimos iste quia totam.', 3, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(771, '2023-11-12', '21:44:17', 'Operacion', 'Et totam quia alias quas dolores ut.', 3, 89, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(774, '2024-01-25', '21:34:31', 'Consulta', 'Quasi perspiciatis illo commodi omnis aut architecto ad.', 92, 89, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(775, '2024-02-15', '21:14:42', 'Examen', 'Eveniet sit atque necessitatibus nam.', 3, 2, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(784, '2024-04-26', '14:21:22', 'Consulta', 'Assumenda asperiores qui delectus nemo ex aperiam.', 3, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(785, '2023-12-30', '01:06:01', 'Examen', 'Laboriosam at sed tempora error tempora.', 3, 2, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(787, '2023-07-05', '23:52:37', 'Examen', 'Ad architecto atque dolore quasi dignissimos.', 3, 89, 4, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(791, '2023-05-21', '03:08:06', 'Examen', 'Blanditiis exercitationem nihil et rerum dicta eaque.', 3, 2, 4, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(794, '2023-12-08', '09:35:50', 'Examen', 'Harum nisi repellendus delectus beatae mollitia.', 92, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(795, '2024-01-18', '21:09:02', 'Operacion', 'Debitis est nobis placeat.', 3, 89, 2, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(796, '2023-07-02', '04:54:34', 'Consulta', 'Explicabo ipsum placeat nostrum beatae.', 92, 2, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(802, '2023-07-15', '19:53:32', 'Consulta', 'Doloremque enim expedita pariatur cupiditate omnis quaerat.', 92, 89, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(804, '2023-09-08', '00:47:16', 'Consulta', 'Et saepe animi rerum recusandae facere nemo.', 92, 89, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(807, '2023-08-05', '13:48:46', 'Consulta', 'Recusandae praesentium ipsa et.', 3, 89, 7, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(808, '2024-04-13', '05:26:33', 'Operacion', 'Illum sapiente accusantium illo expedita autem cum.', 3, 89, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(812, '2024-01-04', '20:58:12', 'Operacion', 'Libero quis alias aut.', 3, 2, 5, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(815, '2024-01-21', '03:12:33', 'Consulta', 'Porro aperiam animi qui neque maiores unde.', 3, 89, 4, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(822, '2024-03-17', '06:09:24', 'Examen', 'Est dolores doloremque maiores quae perspiciatis aspernatur.', 92, 89, 4, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(826, '2024-01-10', '01:36:51', 'Operacion', 'Nobis natus voluptatem rerum ut consequatur dolores.', 92, 2, 1, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(835, '2024-04-19', '21:33:34', 'Operacion', 'Totam possimus qui saepe distinctio commodi et.', 3, 89, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(836, '2023-09-18', '20:19:13', 'Examen', 'Voluptatibus at accusamus modi.', 92, 89, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Cancelada'),
	(841, '2023-10-13', '22:08:44', 'Examen', 'Delectus in molestiae nulla.', 3, 89, 2, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(843, '2024-01-13', '09:45:24', 'Operacion', 'Reiciendis assumenda repellat molestias cupiditate.', 3, 2, 6, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(848, '2023-10-06', '23:48:59', 'Operacion', 'Consectetur a ab totam.', 92, 2, 3, '2024-05-17 10:59:48', '2024-05-17 10:59:48', 'Atendida'),
	(864, '2024-02-01', '16:12:34', 'Operacion', 'Eius dolorum cumque in sed voluptates.', 92, 89, 1, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(867, '2023-07-13', '05:29:07', 'Operacion', 'Et odio vel eum iste deserunt fuga.', 3, 89, 4, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Cancelada'),
	(868, '2023-12-11', '12:43:35', 'Examen', 'Minima aliquam quae ratione.', 92, 2, 7, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(869, '2023-06-26', '22:35:48', 'Consulta', 'Et nihil officiis perspiciatis.', 92, 2, 2, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(875, '2023-06-16', '12:25:06', 'Consulta', 'Perferendis quod ut debitis.', 92, 89, 5, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(876, '2023-06-29', '15:07:55', 'Operacion', 'Qui iure non autem.', 3, 89, 7, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(879, '2024-01-02', '06:55:18', 'Examen', 'Saepe quidem vel repellendus omnis ea.', 3, 2, 3, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(882, '2024-02-11', '16:01:48', 'Consulta', 'Sed accusamus qui est enim.', 3, 2, 2, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(884, '2023-09-08', '17:21:37', 'Consulta', 'Consequatur fugiat omnis esse ullam ipsum.', 3, 2, 4, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(890, '2023-11-08', '22:56:10', 'Examen', 'Quidem voluptates sit ad eum magni.', 3, 2, 1, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Cancelada'),
	(892, '2023-08-10', '02:46:20', 'Operacion', 'Pariatur autem et maiores praesentium.', 3, 89, 3, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Cancelada'),
	(899, '2024-05-06', '03:18:35', 'Examen', 'Dolor possimus natus qui nesciunt assumenda.', 3, 2, 3, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(900, '2023-12-15', '05:51:51', 'Consulta', 'Quasi voluptas dolores adipisci sed quam commodi.', 92, 89, 5, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(901, '2023-08-24', '12:11:28', 'Operacion', 'Dolorem dolorem occaecati dolorem dolores.', 92, 89, 5, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Cancelada'),
	(906, '2024-03-24', '14:14:54', 'Operacion', 'Qui consectetur provident similique.', 3, 89, 2, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Cancelada'),
	(910, '2024-01-06', '01:50:09', 'Operacion', 'Deserunt sapiente aliquid tempora nemo mollitia.', 92, 89, 3, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Cancelada'),
	(912, '2024-02-20', '10:06:12', 'Examen', 'Alias praesentium consequatur vitae.', 92, 89, 2, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Cancelada'),
	(914, '2023-09-02', '06:38:13', 'Consulta', 'Unde voluptatem voluptas repellendus odio.', 92, 89, 3, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(918, '2023-07-05', '20:14:33', 'Consulta', 'Esse nemo harum ipsa.', 92, 89, 3, '2024-05-17 10:59:49', '2024-05-17 10:59:49', 'Atendida'),
	(921, '2024-05-29', '08:00:00', 'Consulta', 'dwedwe', 92, 1, 3, '2024-05-18 08:34:08', '2024-05-18 08:47:41', 'Cancelada'),
	(922, '2024-05-22', '08:00:00', 'Consulta', '12', 3, 89, 3, '2024-05-18 08:42:45', '2024-05-18 08:47:05', 'Cancelada'),
	(923, '2024-05-29', '10:00:00', 'Consulta', 'dolor de cabeza', 3, 2, 1, '2024-05-19 18:02:46', '2024-05-19 18:03:33', 'Confirmada');

-- Volcando datos para la tabla citasmedica.cancelled_appointments: ~14 rows (aproximadamente)
DELETE FROM `cancelled_appointments`;
INSERT INTO `cancelled_appointments` (`id`, `justification`, `cancelled_by_id`, `appointment_id`, `created_at`, `updated_at`) VALUES
	(1, '777jiun', 2, 601, '2024-05-14 10:23:21', '2024-05-14 10:23:21'),
	(2, 'wfdwf', 1, 607, '2024-05-16 09:19:56', '2024-05-16 09:19:56'),
	(3, 'fwfrwf', 1, 608, '2024-05-16 10:22:50', '2024-05-16 10:22:50'),
	(5, 'gre', 1, 617, '2024-05-17 08:22:19', '2024-05-17 08:22:19'),
	(6, 'gd', 1, 616, '2024-05-17 08:22:25', '2024-05-17 08:22:25'),
	(7, 'wf', 1, 604, '2024-05-17 08:22:31', '2024-05-17 08:22:31'),
	(8, 'de', 1, 605, '2024-05-17 08:22:38', '2024-05-17 08:22:38'),
	(9, 'ewf', 1, 612, '2024-05-17 08:22:43', '2024-05-17 08:22:43'),
	(11, 'fef', 1, 602, '2024-05-18 08:34:19', '2024-05-18 08:34:19'),
	(12, 'XSXS', 1, 922, '2024-05-18 08:47:05', '2024-05-18 08:47:05'),
	(13, 'S', 1, 611, '2024-05-18 08:47:29', '2024-05-18 08:47:29'),
	(14, 'SXAS', 1, 618, '2024-05-18 08:47:34', '2024-05-18 08:47:34'),
	(15, 'SAX', 1, 619, '2024-05-18 08:47:38', '2024-05-18 08:47:38'),
	(16, 'SAXA', 1, 921, '2024-05-18 08:47:41', '2024-05-18 08:47:41'),
	(17, 'no puedo asistir', 2, 620, '2024-05-19 18:03:10', '2024-05-19 18:03:10');

-- Volcando datos para la tabla citasmedica.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;

-- Volcando datos para la tabla citasmedica.horarios: ~14 rows (aproximadamente)
DELETE FROM `horarios`;
INSERT INTO `horarios` (`id`, `day`, `active`, `morning_start`, `morning_end`, `afternoon_start`, `afternoon_end`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 0, 1, '08:00:00', '10:30:00', '14:00:00', '20:30:00', 3, '2024-05-14 10:00:36', '2024-05-19 17:58:03'),
	(2, 1, 1, '08:00:00', '08:00:00', '14:00:00', '20:30:00', 3, '2024-05-14 10:00:36', '2024-05-19 17:58:03'),
	(3, 2, 1, '08:00:00', '11:00:00', '14:00:00', '18:00:00', 3, '2024-05-14 10:00:36', '2024-05-19 17:58:03'),
	(4, 3, 0, '08:00:00', '08:00:00', '14:00:00', '14:00:00', 3, '2024-05-14 10:00:36', '2024-05-19 17:58:03'),
	(5, 4, 1, '08:00:00', '11:30:00', '14:00:00', '14:00:00', 3, '2024-05-14 10:00:36', '2024-05-19 17:58:03'),
	(6, 5, 0, '08:00:00', '08:00:00', '14:00:00', '14:00:00', 3, '2024-05-14 10:00:36', '2024-05-19 17:58:03'),
	(7, 6, 1, '08:00:00', '08:00:00', '14:00:00', '14:00:00', 3, '2024-05-14 10:00:36', '2024-05-19 17:58:03'),
	(8, 0, 1, '08:00:00', '10:00:00', '14:00:00', '21:30:00', 92, '2024-05-16 10:48:34', '2024-05-17 09:08:13'),
	(9, 1, 1, '08:00:00', '10:00:00', '14:00:00', '21:30:00', 92, '2024-05-16 10:48:34', '2024-05-17 09:08:13'),
	(10, 2, 1, '08:00:00', '10:00:00', '14:00:00', '21:30:00', 92, '2024-05-16 10:48:34', '2024-05-17 09:08:13'),
	(11, 3, 1, '08:00:00', '10:00:00', '14:00:00', '17:30:00', 92, '2024-05-16 10:48:34', '2024-05-17 09:08:13'),
	(12, 4, 1, '08:00:00', '10:00:00', '14:00:00', '21:30:00', 92, '2024-05-16 10:48:34', '2024-05-17 09:08:13'),
	(13, 5, 1, '08:00:00', '10:00:00', '14:00:00', '18:30:00', 92, '2024-05-16 10:48:34', '2024-05-17 09:08:13'),
	(14, 6, 1, '08:00:00', '10:00:00', '14:00:00', '21:30:00', 92, '2024-05-16 10:48:34', '2024-05-17 09:08:13');

-- Volcando datos para la tabla citasmedica.migrations: ~12 rows (aproximadamente)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(76, '2014_10_12_000000_create_users_table', 1),
	(77, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(78, '2014_10_12_100000_create_password_resets_table', 1),
	(79, '2019_08_19_000000_create_failed_jobs_table', 1),
	(80, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(81, '2024_05_10_081641_create_specialties_table', 1),
	(82, '2024_05_11_172208_create_horarios_table', 1),
	(83, '2024_05_13_094825_create_specialty_user_table', 1),
	(84, '2024_05_13_123759_create_appointments_table', 1),
	(85, '2024_05_14_072605_add_status_to_appointments', 1),
	(86, '2024_05_14_082140_create_cancelled_appointments_table', 1),
	(87, '2024_05_14_090551_rename_cancelled_by_in_cancelled_appointments_table', 1);

-- Volcando datos para la tabla citasmedica.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;

-- Volcando datos para la tabla citasmedica.password_reset_tokens: ~4 rows (aproximadamente)
DELETE FROM `password_reset_tokens`;
INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
	('antonio.sf2004@gmail.com', '$2y$12$UVWxJjmgjQQmEo70DRzNqOXA9VN/Jt/ANDT58bUnE7uwfZ4Fa/AdC', '2024-05-15 08:16:59'),
	('antonio@gmail.com', '$2y$12$sPJvZnSRqA2KTXkCwCVzf.rclqvClRfpXy/LMBBj3X2cdRpdaXKGa', '2024-05-15 08:15:58'),
	('medico1@gmail.com', '$2y$12$uzeENojJuqsHd1kgDxNdvOlDD/9zuZ/uX11BPwz0s/5tq7mm8b2hm', '2024-05-15 08:17:42'),
	('paciente2@gmail.com', '$2y$12$ja1O1SgsdSPhhOnluhvd1.wxYqi/GoChh2h7K5Fb.wLHhz7lQwzwS', '2024-05-15 08:15:06');

-- Volcando datos para la tabla citasmedica.personal_access_tokens: ~0 rows (aproximadamente)
DELETE FROM `personal_access_tokens`;

-- Volcando datos para la tabla citasmedica.specialties: ~7 rows (aproximadamente)
DELETE FROM `specialties`;
INSERT INTO `specialties` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Neurología', NULL, '2024-05-14 10:00:36', '2024-05-17 10:44:10'),
	(2, 'Quirúrgica', NULL, '2024-05-14 10:00:36', '2024-05-14 10:00:36'),
	(3, 'Pediatría', NULL, '2024-05-14 10:00:36', '2024-05-14 10:00:36'),
	(4, 'Cardiología', NULL, '2024-05-14 10:00:36', '2024-05-14 10:00:36'),
	(5, 'Urología', NULL, '2024-05-14 10:00:36', '2024-05-14 10:00:36'),
	(6, 'Medicina forense', NULL, '2024-05-14 10:00:36', '2024-05-14 10:00:36'),
	(7, 'Dermatología', NULL, '2024-05-14 10:00:36', '2024-05-14 10:00:36');

-- Volcando datos para la tabla citasmedica.specialty_user: ~11 rows (aproximadamente)
DELETE FROM `specialty_user`;
INSERT INTO `specialty_user` (`id`, `user_id`, `specialty_id`, `created_at`, `updated_at`) VALUES
	(29, 3, 7, '2024-05-14 10:00:36', '2024-05-14 10:00:36'),
	(38, 3, 1, '2024-05-16 09:18:40', '2024-05-16 09:18:40'),
	(39, 3, 2, '2024-05-16 09:18:40', '2024-05-16 09:18:40'),
	(40, 3, 3, '2024-05-16 09:18:40', '2024-05-16 09:18:40'),
	(41, 3, 4, '2024-05-16 09:18:40', '2024-05-16 09:18:40'),
	(42, 3, 5, '2024-05-16 09:18:40', '2024-05-16 09:18:40'),
	(43, 3, 6, '2024-05-16 09:18:40', '2024-05-16 09:18:40'),
	(44, 92, 3, '2024-05-16 10:21:26', '2024-05-16 10:21:26'),
	(45, 92, 4, '2024-05-16 10:21:26', '2024-05-16 10:21:26'),
	(46, 92, 2, '2024-05-16 10:49:02', '2024-05-16 10:49:02'),
	(47, 92, 5, '2024-05-16 10:49:02', '2024-05-16 10:49:02');

-- Volcando datos para la tabla citasmedica.users: ~6 rows (aproximadamente)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `cedula`, `address`, `phone`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'antonio', 'antonio@gmail.com', '2024-05-14 10:00:35', '$2y$12$6l7gopw3MXNj0cvb/N/Q8OfNN6mkg7tsyLje2hlZ56L5dWm6AKYIG', '0400000712', 'Av. Universitaria', '0968000009', 'admin', NULL, '2024-05-14 10:00:35', '2024-05-14 10:00:35'),
	(2, 'Paciente1', 'paciente1@gmail.com', '2024-05-14 10:00:35', '$2y$12$MbFhuGos/nK/Nk4yQDKuwerMePCpPoTpVAgb0fn6dIulLiLTUqQ8u', NULL, 'av. alavega', '61478954', 'paciente', NULL, '2024-05-14 10:00:35', '2024-05-14 15:37:32'),
	(3, 'Medico 1', 'medico1@gmail.com', '2024-05-14 10:00:35', '$2y$12$IRnelIcSMz.KRlbFXqLfTuG4Tt7Y/R5oE4O4ghtTEiehWyL8GV/zW', '0000000000', NULL, '61478954', 'doctor', NULL, '2024-05-14 10:00:36', '2024-05-16 08:58:50'),
	(89, 'Paciente2', 'paciente2@gmail.com', NULL, '$2y$12$f00MURc3HZhOzHh8wz4HYeM3KcQDkKlOSU0yicDP.7nD7z0TEI0Yq', '0000000000', '36044 Jaskolski Course Apt. 06', '61478954', 'paciente', NULL, '2024-05-16 09:15:41', '2024-05-16 09:15:41'),
	(92, 'medico2', 'medico2@gmail.com', NULL, '$2y$12$c.95nx/UmTVZhknDzNM9JeBZcnRDycRPKp7cEQyk./7H8X6XHcBwC', '0000000000', '36044 Jaskolski Course Apt. 06', '61478945', 'doctor', NULL, '2024-05-16 10:21:26', '2024-05-16 10:21:26');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
