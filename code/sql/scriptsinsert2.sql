﻿-- TODAS LAS MONEDAS
INSERT INTO moneda VALUES ('1','BOLÍVARES' )
INSERT INTO moneda VALUES ('2','DOLARES')
INSERT INTO moneda VALUES ('3','EUROS')
INSERT INTO moneda VALUES ('4','PUNTOS')

--TIPOS DE PAGO
INSERT INTO tipo_pago VALUES ('1','Tarjeta de crédito')
INSERT INTO tipo_pago VALUES ('2','Tarjeta de débito')
INSERT INTO tipo_pago VALUES ('3','Cheque')
INSERT INTO tipo_pago VALUES ('4','Efectivo')
INSERT INTO tipo_pago VALUES ('5','Puntos')

-- COTIZACION
INSERT INTO cotizacion (fk_moneda,ct_fecha,ct_valor) VALUES (2,current_timestamp,1088800)
INSERT INTO cotizacion (fk_moneda,ct_fecha,ct_valor) VALUES (3,current_timestamp,1359000)
INSERT INTO cotizacion (fk_moneda,ct_fecha,ct_valor) VALUES (4,current_timestamp,10000)



UPDATE cotizacion SET ct_expira = current_timestamp WHERE fk_moneda= '2' 

INSERT INTO cotizacion (fk_moneda,ct_fecha,ct_valor) VALUES (2,current_timestamp,1230800)

--HORARIO
--Lunes
INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (1, 'Lunes-Turno mañana', 'LUNES' ,'07:00' ,'12:00'); 

INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (2, 'Lunes-Turno tarde', 'LUNES' ,'07:00' ,'12:00');


--Martes
INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (3, 'Martes-Turno mañana', 'MARTES' ,'07:00' ,'12:00'); 

INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (4, 'Martes-Turno tarde', 'MARTES' ,'01:00' ,'7:00'); 

--Miercoles
INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (5, 'Miercoles-Turno mañana', 'MIERCOLES' ,'07:00' ,'12:00');

INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (6, 'Miercoles-Turno tarde', 'MIERCOLES' ,'01:00' ,'7:00');

--Jueves
INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (7, 'Jueves-Turno mañana', 'JUEVES' ,'07:00' ,'12:00');

INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (8, 'Jueves-Turno tarde', 'JUEVES' ,'01:00' ,'7:00');

--Viernes
INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (9, 'Viernes-Turno mañana', 'VIERNES' ,'07:00' ,'12:00');

INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (10, 'Viernes-Turno tarde', 'VIERNES' ,'01:00' ,'7:00');

--Sabado
INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (11, 'Sabado-Turno mañana', 'SABADO' ,'07:00' ,'12:00');

INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (12, 'Sabado-Turno tarde', 'SABADO' ,'01:00' ,'7:00');

--Domingo
INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (13, 'Domingo-Turno mañana', 'DOMINGO' ,'07:00' ,'12:00');

INSERT INTO horario (ho_codigo, ho_descripcion, ho_dia, ho_hora_entrada, ho_hora_salida) VALUES (14, 'Domingo-Turno tarde', 'DOMINGO' ,'01:00' ,'7:00');


--ROLES

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (1, 'Cliente');

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (2, 'Gerente de tienda');

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (3, 'Coordinador de promoción y Ventas');

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (4, 'Coordinador de despacho');

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (5, 'Jefe de entrega');

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (6, 'Jefe de compras');

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (7, 'Jefe de pasillo');

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (8, 'Cajero');

INSERT INTO rol (ro_codigo, ro_nombre) VALUES (9, 'Coordinador de Talento Humano');


--BENEFICIO


INSERT INTO beneficio (be_codigo, be_nombre) VALUES (1, 'Seguro medico');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (2, 'Jubilaciom');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (3, 'Gastos de transporte');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (4, 'Seguro de vida');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (5, 'Seguro de discapacidad');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (6, 'Reembolso de matriculas');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (7, 'Descuento en gimnasio');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (8, 'Estacionamiento gratuito');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (9, 'Vacaciones');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (10, 'Pensiones');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (11, 'Pago de horas extras');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (12, 'Pago de horas nocturnas');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (13, 'Teletrabajo');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (14, 'Pago de guardería');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (15, 'Extensión de baja maternal/paternal');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (16, 'Formación laboral');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (17, 'Utilidades/Aguinaldos');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (18, 'Fondo de ahorro');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (19, 'Bonos de productividad');

INSERT INTO beneficio (be_codigo, be_nombre) VALUES (20, 'Comedor gratuito');


--Pruebas de 11/01/2021 Marca,Rubros,Producto 18 Proveedores


--------PROVEEDORES--------
INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal) 
VALUES ('5','J983245688','Castelo','Castelo.CA','Castelo@gmail.com','32');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('6','J983567688','Polar','Empresas Polar.CA','EmpresasPolar@gmail.com','42');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('7','J983579088','Confort','Confort.CA','Confort@gmail.com','65');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('8','J983234088','Pollos el Corral','Empresas Pollos el Corral','PollosCorral@gmail.com','37');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('9','J983542088','Jannmar','Distribuidora Jannmar.CA','Jannmar@gmail.com','53');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('10','J987742088','Towel','Distribuidora Towel.CA','Towel@gmail.com','56');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_pagina_web,po_correo,fk_lugar_fiscal)
VALUES ('11','J987749088','Daka','Daka.CA','www.Daka.com','Daka@gmail.com','40');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('12','J983253088','Nestle','Nestle.CA','Nestle@gmail.com','40');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('13','J983259938','Del Mar San Carlos','Del Mar San Carlos.CA','Marsancarlos@gmail.com','38');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_pagina_web,po_correo,fk_lugar_fiscal)
VALUES ('14','J001225398','Mundo Papel','Mundo Papel.org','www.mundopapel2001.com','Mundopapel.2001@gmail.com','32');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_pagina_web,po_correo,fk_lugar_fiscal)
VALUES ('15','J000200098','Grupo Koren','Grupo Koren.org','www.grupokoren.com','GrupoKoren.2001@gmail.com','32');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('16','J000100798','Inversiones Mueblen','Inversiones Mueblen.org','Mueblen.2001@gmail.com','32');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_pagina_web,po_correo,fk_lugar_fiscal)
VALUES ('17','J000211298','CauchosYa','CauchosYa.org','www.cauchosya.com','cauchosya@gmail.com','33');

INSERT INTO proveedor (po_id,po_rif,po_den_comercial,po_razon_social,po_correo,fk_lugar_fiscal)
VALUES ('18','J000345298','Insdustrias Vlelmor','Insdustrias Vlelmor.CA','InstriasVlelmor@gmail.com','53');




--Pruebas
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('1', 'Colgate','FALSE')
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('2', 'Ariel','FALSE')
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('3', 'Head & Shoulders','FALSE')
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('4', 'Primor','FALSE');
--Pruebas
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('5', 'Martextil','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('6', 'Tecnomarca','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('7', 'Chocolatieres','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('8', 'FishMarket','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('9', 'AvesMart','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('10', 'DelicatesesMart','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('11', 'Ofis','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('12', 'Mueblesoft','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('13', 'MuebleHogar','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('14', 'CarMarket','TRUE');
INSERT INTO marca (ma_codigo,ma_nombre,ma_ucabmart) VALUES ('15', 'IndustrialMart','TRUE');




o
--Pruebas
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('1','1000000','Crema de Dientes','100','1','1','2');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('2','3500000','Jabon en Polvo','500','2','2','2');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('3','3500000','Jabon en Liquido','500','2','2','2');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('4','3500000','Shampoo','300','1','3','2');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('5','1800000','Arroz','500','3','4','2');
--Pruebas

-----Marcas Propias------
--DelicatesesMart
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('6','2000000','Mortadela de Pavo','1000','3','10','5');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('7','2500000','Mortadela de Pollo','1000','3','10','5');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('8','1500000','Salchicha de Pollo','1000','3','10','5');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('9','2500000','Nuggets de Pollo','1000','3','10','5');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('10','1800000','Salchicha de Pavo','1000','3','10','5');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('11','1400000','Nuggets de Pavo','1000','3','10','5');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('12','3000000','Jamon de Pavo','1000','3','10','5');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('13','3200000','Jamon de Pollo','1000','3','10','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('114','3200000','Chorizo de Pollo','500','3','10','8');

--Martextil
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('14','3200000','Toallas Grandes','0','4','5','10');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('15','3000000','Toallas Pequeñas','0','4','5','10');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('16','4000000','Toallas Maquillaje','0','4','5','10');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('16','5000000','Alfombra para baños','0','4','5','10');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('17','3200000','Alfombra para Entradas','0','4','5','10');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('18','6000000','Alfombra para Salas','0','4','5','10');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('19','6500000','Cojines','0','5','5','7');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('20','6500000','Almohadas','0','5','5','7');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('21','9000000','Cubre Cama','0','6','5','7');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('22','9500000','Cobija','0','6','5','7');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('113','9500000','Sabana','0','6','5','7');



--Tecmarca
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('23','800000000','Televisor Pantalla Plana 32pul','0','7','6','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('24','1000000000','SmarTv','0','7','6','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('25','950000000','Televisor Pantalla Plana 40pul','0','7','6','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('26','800000000','Corneta de Bluetooth','0','7','6','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('27','1000000000','Corneta estero','0','7','6','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('28','30000000','Corneta de Blouetooth estereo','0','7','6','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('29','30000000','Corneta Cajon Bluetooth','0','7','6','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('30','15000000','Control remoto DirecTv','0','7','6','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('111','10000000','Audifonos Inalambrico','0','7','6','11');



--Chocolate
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('31','3000000','Toddy','0','9','7','6');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('32','1000000','Bolitas de Chocolate','25','9','7','12');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('33','1000000','Caramelos de Chocolate','15','9','7','12');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('34','3000000','Chocolate de taza','110','9','7','12');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('35','3100000','Chocolate de Postre','110','9','7','12');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('36','100000','Chocolate Blanco','30','9','7','12');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('37','250000','Bombom de Chocolate','40','9','7','12');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('38','400000','Bastones de Chocolate','50','9','7','12');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('39','300000','Galletas Relleno de Chocolate','30','9','7','12');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('112','15000000','Mani con Chocolate','100','9','7','12');


--FishMarket
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('40','1000000','Calamar','500','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('41','3500000','Atun','200','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('42','6000000','Langosta','200','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('43','7000000','Pulpo','500','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('44','5000000','Ostras','50','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('45','3000000','Mejillones','200','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('46','1000000','Sardina','200','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('47','3000000','Salmon','500','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('48','5000000','Bacalao','200','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('49','6000000','Camarones','200','10','8','13');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('50','4000000','Cangrego','200','10','8','13');

--AverMart
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('51','2000000','Patas de Pollo y Pavo','300','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('52','3000000','Alas de Pollo y Pavo','500','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('53','5000000','Pechuga de Pollo y Pavo','1000','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('54','3000000','Medallones de Pavo','200','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('55','2000000','Pescuezo de Pollo','200','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('56','3000000','Espinaso de Pollo y Pavo','400','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('57','3000000','Pollo Entero','1000','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('58','3100000','Pavo Entero','1000','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('59','3000000','Pollo Esmechado','500','3','9','8');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('60','32000000','Pavo Esmechado','500','3','9','8');

--Ofis
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('61','10000000','Resma de Papel Tamaño Carta','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('62','13000000','Resma de Papel Tamaño Oficio','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('63','10000000','Engrapadora','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('64','1000000','Grapas','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('65','8000000','Marcadores','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('66','50000000','lapices','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('67','60000000','Boligrafo','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('68','60000000','Tinta de impresora','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('69','5000000','Libretas','0','15','11','14');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('70','2000000','Carpetas','0','15','11','14');

--Mueblesoft
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('71','90000000','Silla Ejecutiva','0','16','12','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('72','50000000','Silla Oficina de Sala','0','16','12','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('73','97000000','Silla Escritorio','0','16','12','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('74','14000000','Mesa Escritorio','0','16','12','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('75','20000000','Silla Presidenciales','0','16','12','15');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('76','20000000','Estantes','0','16','12','15');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('77','60000000','Archivadoras','0','16','12','15');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('78','20000000','Lamparas de escrotorio','0','16','12','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('79','20000000','Papeleras','0','16','12','15');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('80','100000000','Lamparas de escrotorio','0','16','12','15');

--MuebleHogar
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('81','2000000','Lamparas Noche','0','17','13','11');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('82','140000000','Muebles Tipo L','0','17','13','16');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('83','150000000','Sofa Cama','0','17','13','16');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('84','130000000','Mesa Para Comedor','0','17','13','16');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('85','140000000','Juegos de Mueble','0','17','13','16');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('86','50000000','Puf Grandes y Pequeños','0','17','13','16');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('87','60000000','Mesas para Niños','0','17','13','16');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('88','100000000','Perchero Ropero','0','17','13','16');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('89','60000000','Sillas de Plastico','0','17','13','16');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('90','70000000','Sillas de Plastico','0','17','13','16');

--CarMarket
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('91','90000000','Cauchos r15','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('92','110000000','Cauchos r16','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('93','125000000','Cauchos r17','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('94','140000000','Cauchos r18','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('95','190000000','Cauchos r20','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('96','5000000','Pegas para Parches','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('97','110000000','Gato Hidraulico','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('98','70000000','Bateria de Carro','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('99','50000000','Cables Auxiliares','0','18','14','17');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('100','10000000','Alfombras de Carros','0','18','14','17');

--IndustriasMart
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('101','5000000','Detergente','1000','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('102','6000000','Cloro','500','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('103','3000000','Jabon Liquido','500','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('104','2000000','Antibacterial Liquido','250','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('105','3000000','Antibacterial Aroma','250','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('106','5000000','Desinfectante','1000','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('107','6000000','Cera Neutral','500','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('108','4000000','Desengrasante','500','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('109','3000000','Lava plato','0','2','15','18');
INSERT INTO producto (pr_id,pr_precio,pr_nombre,pr_peso,fk_rubro,fk_marca,fk_proveedor) VALUES ('110','4000000','Blanqueador','0','2','15','18');



--------RUBROS--------
--Pruebas
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('1','Higiene');
--IndustrialMart
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('2','Limpieza');

INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('3','Alimentos');
--Pruebas
--MarTextil
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('4','Lenceria');

INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('5','Almohadas');

INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('6','Colchones');
--Tecnomarca
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('7','Televisores');

INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('8','Equipo de Sonido');
--Chocolatieres
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('9','Chocolate');
--FishMarket
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('10','Frutos de mar Congelados');

INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('11','Empacados al Vacio');
--AvesMart
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('12','Pollo');

INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('13','Pavo');
--DelicatesesMart
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('14','Embutidos');
--Ofis
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('15','Papeleria');
--Mueblesoft
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('16','Mobiliario de Oficina');
--MuebleHogar 
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('17','Mobiliario de Hogar');
--CarMarket
INSERT INTO rubro (ru_codigo,ru_nombre) VALUES ('18','Cauchos');

