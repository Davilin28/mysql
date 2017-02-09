#Insertar Datos de CLIENTES
INSERT INTO CLIENTES (dni,nombre,Primer_Apellido,Segundo_Apellido,Telefono,Email) VALUES ("09070489W","David","Roman","Rey","918808802","david@gmail.com");
INSERT INTO CLIENTES (dni,nombre,Primer_Apellido,Segundo_Apellido,Telefono,Email) VALUES ("12345258W","Pepe","Roman","Rey","918808002","pepe@gmail.com");
INSERT INTO CLIENTES (dni,nombre,Primer_Apellido,Segundo_Apellido,Telefono,Email) VALUES ("22843275W","Armando","Perez","Rey","957553556","perez@gmail.com");
INSERT INTO CLIENTES (dni,nombre,Primer_Apellido,Segundo_Apellido,Telefono,Email) VALUES ("44345525W","luis","Garcia","Rey","988005521","garcia@gmail.com");
INSERT INTO CLIENTES (dni,nombre,Primer_Apellido,Segundo_Apellido,Telefono,Email) VALUES ("12554525W","Diego","Villuela","Rey","665953119","diego@gmail.com");


#Insertar Datos de TIENDAS
INSERT INTO TIENDAS (Nombre,Provincia,Localidad,Direccion,Telefono,DiaApertura,DiaCierre,HoraApertura,HoraCierre) VALUES ("David","Alcala","Madrid","C/Rio pisuerga",918808802,"Lunes","Viernes","09:00","14:00");
INSERT INTO TIENDAS (Nombre,Provincia,Localidad,Direccion,Telefono,DiaApertura,DiaCierre,HoraApertura,HoraCierre) VALUES ("Diego","Madrid","Madrid","C/Alcala",917889523,"Lunes","Sabado","09:00","18:00");
INSERT INTO TIENDAS (Nombre,Provincia,Localidad,Direccion,Telefono,DiaApertura,DiaCierre,HoraApertura,HoraCierre) VALUES ("Pepe","Guadalajara","Guadalajara","C/El soto",928886132,"Lunes","Viernes","09:00","16:00");
INSERT INTO TIENDAS (Nombre,Provincia,Localidad,Direccion,Telefono,DiaApertura,DiaCierre,HoraApertura,HoraCierre) VALUES ("Luis","Alcala","Madrid","C/Jardines",918828812,"Lunes","Jueves","10:00","20:00");
INSERT INTO TIENDAS (Nombre,Provincia,Localidad,Direccion,Telefono,DiaApertura,DiaCierre,HoraApertura,HoraCierre) VALUES ("Jorge","Barcelona","Barcelona","C/caceres",917868212,"Lunes","Viernes","09:00","19:00");


#Insertar Datos de OPERADORAS
INSERT INTO OPERADORAS (Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb) VALUES ("Orange","Naranja","99","4G","http://www.orange.es/");
INSERT INTO OPERADORAS (Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb) VALUES ("Movistar","Azul","99","4G","https://www.movistar.es/");
INSERT INTO OPERADORAS (Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb) VALUES ("Vodafone","Rojo","99","4G","https://www.vodafone.es/particulares/es/");
INSERT INTO OPERADORAS (Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb) VALUES ("Pepephone","Rojo","80","4G","https://www.pepephone.com/");
INSERT INTO OPERADORAS (Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb) VALUES ("Amena","Verde","80","4G","http://www.amena.com/");

#Insertar Datos de TARIFAS
INSERT INTO TARIFAS (Nombre,Nombre_OPERADORAS,TamañoDatos,TipoDatos,MinutosGratis) VALUES ("Orange","Orange","2","GB","300");
INSERT INTO TARIFAS (Nombre,Nombre_OPERADORAS,TamañoDatos,TipoDatos,MinutosGratis) VALUES ("Movistar","Movistar","3","GB","350");
INSERT INTO TARIFAS (Nombre,Nombre_OPERADORAS,TamañoDatos,TipoDatos,MinutosGratis) VALUES ("Vodafone","Vodafone","1,8","GB","250");
INSERT INTO TARIFAS (Nombre,Nombre_OPERADORAS,TamañoDatos,TipoDatos,MinutosGratis) VALUES ("Pepephone","Pepephone","1,5","GB","20");
INSERT INTO TARIFAS (Nombre,Nombre_OPERADORAS,TamañoDatos,TipoDatos,MinutosGratis) VALUES ("Amena","Amena","1.2","GB","100");

#Insertar Datos de MOVILES
INSERT INTO MOVILES (Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMPX) VALUES ("Xiaomi","Redmi Note 4","Movil grande y rapido","MIUI V8 Android 6.0.1 Marshmallow","4GB","5,5","13");
INSERT INTO MOVILES (Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMPX) VALUES ("Samsung","Galaxy S7","Calidad precio","Android 6.0 Marshmallow","4GB","5,1","12");
INSERT INTO MOVILES (Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMPX) VALUES ("LG","G5","Camara buena","Android 6.0.1 Marshmallow ","4GB","5,3","16");
INSERT INTO MOVILES (Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMPX) VALUES ("Huawei","P9","Buena conexion","Android 6.0.1 Marshmallow","3GB","5,2","12");
INSERT INTO MOVILES (Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMPX) VALUES ("Meizu","Pro 6s","Copia de Iphone","FlyMe 5.6 Android 6.0 Marshmallow","4GB","5,2","12");















