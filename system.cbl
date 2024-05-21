IDENTIFICATION DIVISION.
PROGRAM-ID. SISTEMA-BIBLIOTECA.

ENVIRONMENT DIVISION.
... (Definiciones de archivos para usuarios, libros, préstamos, penalizaciones)

DATA DIVISION.
... (Registros para usuarios, libros, préstamos, penalizaciones, informes)
... (Variables para control de menú, opciones, fechas, etc.)

PROCEDURE DIVISION.
    MAIN-MENU.
        DISPLAY "MENÚ PRINCIPAL".
        DISPLAY "1. Usuarios".
        DISPLAY "2. Libros".
        DISPLAY "3. Préstamos".
        DISPLAY "4. Penalizaciones".
        DISPLAY "5. Informes".
        DISPLAY "6. Salir".
        ACCEPT OPCION-MENU.

        EVALUATE OPCION-MENU
            WHEN 1 PERFORM USUARIOS
            WHEN 2 PERFORM LIBROS
            WHEN 3 PERFORM PRESTAMOS
            WHEN 4 PERFORM PENALIZACIONES
            WHEN 5 PERFORM INFORMES
            WHEN 6 STOP RUN
            WHEN OTHER DISPLAY "Opción inválida"
        END-EVALUATE.

        GO TO MAIN-MENU. 

    USUARIOS.
        ... (Lógica para registrar, autenticar, modificar, eliminar usuarios)

    LIBROS.
        ... (Lógica para registrar, consultar, editar, eliminar libros)

    PRESTAMOS.
        ... (Lógica para registrar préstamos, consultar historial)

    PENALIZACIONES.
        ... (Lógica para registrar penalizaciones, consultar por usuario)

    INFORMES.
        ... (Lógica para generar los informes mensuales)
