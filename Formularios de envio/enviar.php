<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recibir los datos del formulario
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $mensaje = $_POST['mensaje'];

    // Validar los datos
    if (!empty($nombre) && !empty($email) && !empty($mensaje) && filter_var($email, FILTER_VALIDATE_EMAIL)) {
        // Configurar el correo
        $to = "destinatario@ejemplo.com"; // Cambia esto por el correo del destinatario
        $subject = "Nuevo mensaje de $nombre";
        $body = "Nombre: $nombre\nCorreo: $email\nMensaje:\n$mensaje";
        $headers = "From: $email";

        // Enviar el correo
        if (mail($to, $subject, $body, $headers)) {
            echo "Correo enviado exitosamente.";
        } else {
            echo "Error al enviar el correo.";
        }
    } else {
        echo "Por favor, completa todos los campos correctamente.";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Contacto</title>
</head>
<body>
    <form action="enviar.php" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br><br>
        <label for="email">Correo Electrónico:</label>
        <input type="email" id="email" name="email" required><br><br>
        <label for="mensaje">Mensaje:</label>
        <textarea id="mensaje" name="mensaje" required></textarea><br><br>
        <input type="submit" value="Enviar">
    </form>
</body>
</html>
