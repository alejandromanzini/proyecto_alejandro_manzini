-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-06-2022 a las 02:35:01
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cervecería`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(4, 'Ella tiene 77, él 23, y se enamoraron en el funeral del hijo de la mujer: \"Hay sexo excelente\"', 'La pareja rompió las barreras de los prejuicios ajenos. Están casados hace 6 años, celebran su amor y hablan sobre la intimidad del matrimonio.\r\n\r\n', 'Almeda Hardwick tiene 77 años y acaba de celebrar su sexto aniversario con su marido, un muchacho de nombre Gary y de jóvenes 23 años. Más allá de todos los prejuicios que encontraron en su camino a lo largo de sus años de relación, aseguran que su amor avanza a paso firme y que entre ambos \"hay amor y sexo excelente\".\r\n\r\nLa pareja es oriunda de Estados Unidos y se conocieron en 2015 en el funeral de uno de los hijos de Almeda, y el flechazo fue instantáneo: “Él es el indicado”, pensó ella rápidamente. En ese momento, ella tenía 71 y él 17, lo que da la módica suma de 53 años de diferencia pero que nunca significaron una barrera entre ellos, sino todo lo contrario.', NULL),
(2, 'Quiso dejar el colegio para ser influencer, su padre la descubrió y le dio una lección de vida', 'Un hombre se enteró que su hija quería abandonar la escuela para dedicarse a hacer TikToks y no dudó en hacer algo al respecto. En el clip, se ve a la joven en el trabajo de su padre, quien le hizo una contundente pregunta: \"Qué pesa más el cemento o los libros\"', 'Hay varios influencers y otros personajes de las redes sociales que demuestran que su labor principal es realizar contenido para sus miles de seguidores. Es por eso que muchos jóvenes quieren imitar ese estilo de vida. En ese sentido, un hombre en México descubrió que su hija quería abandonar el colegio para ser tiktoker y decidió darle una lección de vida para que entienda el valor del esfuerzo. La grabación se volvió viral y tuvo gran aceptación.\r\n\r\nActualmente hay muchas plataformas en donde los influencer gozan de fama y prestigio. Esa popularidad no logran alcanzarla la gran mayoría de los usuarios por más constancia que le dediquen. Algunos reconocen que es \"suerte\". No obstante, algunos de ellos han asegurado que dedicarse 100% a esa actividad no es para todos y por eso muchos tenían otro trabajo para poder sustentarse.\r\n\r\nEn este caso, un padre se enteró que su hija, menor de edad, se había escapado del colegio para ir a la casa de su novio para hacer TikToks porque quería ser influencer famosa. El hombre, que trabaja en la construcción, se enojó mucho y para demostrale lo que significa el \"esfuerzo\" optó por llevarla a una de sus jornadas laborales. \r\n\r\nEn el clip, se puede ver a Estrella, su hija adolescente. El hombre trataba de mostrale lo que él debe hacer cada día para que a ella no le falte nada. Es por eso que el sujeto la reprende por escaparse del colegio y la mandó a levantar una bolsa de cemento.\r\n\r\nLa joven eventualmente se agachó para cargar la bolsa, pero fracasa en el intento, con lo cual su padre le dice que no puede hacerlo porque ella fue criado con \"comodidades\". Después, a modo de enseñanza, le habla de lo duro que es el mundo real y que hay que esforzarse en el trabajo para ganar dinero.\r\n\r\nEl video fue publicado por el usuario @susyjimenez0 con la descripción: \"Ay estrella tienes que hacerle caso a los padres\". Hasta el momento este clip obtuvo más de 10.4 millones de reproducciones, 862 mil “me gusta”, más de 20 mil comentarios de usuarios que avalaron en su mayoría lo que hizo el progenitor para hacerla entrar en razón a su hija.', NULL),
(7, 'Esta es la primer imagen de prueba', 'Probando imagenes', 'La Scaloneta', 'tercutidgdmhteexvbdk'),
(8, 'Segunda imagen', 'Seguimos probando', 'Pruebo', 'gae0xshusfqurwbkdhcj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'alejandro', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'anibal', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
