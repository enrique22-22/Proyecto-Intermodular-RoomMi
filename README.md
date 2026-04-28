# RoomMi - Gestión de Alquiler de Habitaciones

Este repositorio contiene la documentación técnica y el diseño de la base de datos de **RoomMi**, mi proyecto intermodular para 1º de DAM. La aplicación está enfocada en conectar a propietarios con inquilinos de forma eficiente y segura.

## 📂 Contenido del Repositorio

Además de esta presentación, en el repositorio encontrarás los archivos originales:
* `Diagrama de flujo de Proyecto Intermodular-Enrique`: Archivo fuente para editar en Draw.io.
* `Reto 05-Enrique Soriano`: Detalle de costes de hardware y software.
* `BD Completa Proyecto 1 DAM-Enrique`: Archivo donde se encuentra el script SQL con tablas y datos.

---

## 📐 Diseño de la Base de Datos

El núcleo del proyecto es una base de datos relacional diseñada para soportar todas las funcionalidades del negocio. 

### Relaciones principales:
* **Usuarios e Inmuebles:** Un usuario puede gestionar múltiples habitaciones.
* **Sistema de Reservas:** Relaciona a los usuarios con las habitaciones en fechas concretas.
* **Mensajería interna:** Flujo de mensajes entre emisores y receptores dentro de chats.
* **Valoraciones:** Sistema de feedback vinculado a cada estancia realizada.

---

## 💻 Especificaciones Técnicas

* **Lenguaje de modelado:** Estándar Entidad-Relación.
* **Herramienta de diseño:** Draw.io.
* **Normalización:** El modelo cumple hasta la 3ª Forma Normal (3FN) para evitar duplicidad de datos (ej. separación de direcciones y tipos de habitación).

---

## 🛠️ Próximos Objetivos
1. Creación del script de base de datos en **MySQL**.
2. Desarrollo del backend en **Java**.
3. Interfaz de usuario para la gestión de reservas.

---
**Autor:** Enrique Soriano  
**Curso:** 1º Desarrollo de Aplicaciones Multiplataforma (DAM)
