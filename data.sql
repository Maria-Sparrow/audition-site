CREATE SCHEMA `audition-db`;

-- Tables


-- data
INSERT INTO `audition-db`.`post` (`id`, `text`, `img_link`) VALUES ('1', 'Забезпечення безпеки даних в інформаційній системі аудиторської компанії', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVDCYP4vRI1kTJLGt_Y0lCJPIPVhxmQE14Bw&usqp=CAU');
INSERT INTO `audition-db`.`post` (`id`, `text`, `img_link`) VALUES ('2', 'Як використовувати інформаційну систему для аналізу та звітування результатів аудиту', 'https://i.pinimg.com/474x/5b/c9/2d/5bc92dfc200766bb913023576d270fc4.jpg');
INSERT INTO `audition-db`.`post` (`id`, `text`, `img_link`) VALUES ('3', 'Роль інформаційної системи в аудиторській компанії: переваги та виклики', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5D6D1lBVg7Q5Yy7ckAUCSYTLm5vIffGiCqg&usqp=CAU');


INSERT INTO `audition-db`.`service` (`id`, `name`, `description`) VALUES ('1', 'Аудиторські послуги', 'Надаємо повний спектр аудиторських послуг, що допоможуть Вашому бізнесу розвиватися та ефективно працювати.');
INSERT INTO `audition-db`.`service` (`id`, `name`, `description`) VALUES ('2', 'Податкові консультації', 'Допоможемо Вам з питань оподаткування та податкового планування, a також допоможемо вирішити податкові спори.');
INSERT INTO `audition-db`.`service` (`id`, `name`, `description`) VALUES ('3', 'Консультації з управління', 'Надаємо консультації з управління бізнесом, зокрема з питань стратегічного планування, бізнес-аналізу та оптимізації бізнес-процесів.');


INSERT INTO `audition-db`.`tariff` (`id`, `name`, `description`, `price`) VALUES ('1', 'Базовий', 'Пакет для початківців', '500');
INSERT INTO `audition-db`.`tariff` (`id`, `name`, `description`, `price`) VALUES ('2', 'Стандартний', 'Пакет для невеликих компаній', '1000');
INSERT INTO `audition-db`.`tariff` (`id`, `name`, `description`, `price`) VALUES ('3', 'Преміум', 'Пакет для великих компаній', '2000');


INSERT INTO `audition-db`.`feedback` (`id`, `name`, `content`, `date`) VALUES ('1', 'Іван Іванов', 'Дуже задоволений послугами компанії. Вони надали мені дуже корисні поради та рекомендації, які допомогли моєму бізнесу рости.', '16.04.23');
INSERT INTO `audition-db`.`feedback` (`id`, `name`, `content`, `date`) VALUES ('2', 'Марія Петренко', 'Професіоналізм, який проявляють працівники цієї компанії, дійсно вражає. Вони завжди готові допомогти та відповісти на всі запитання.', '22.03.23');
INSERT INTO `audition-db`.`feedback` (`id`, `name`, `content`, `date`) VALUES ('3', 'Петро Сидоренко', 'Дякую за чудову роботу! Якість послуг на висоті, а співпраця з компанією - це справжнє задоволення.', '1.11.22');
