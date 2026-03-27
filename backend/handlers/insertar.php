<?php
//conectamos con bbdd
require_once __DIR__ . '/../config/conexion.php';

// verificamos qu eexistan datos 
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header('Location: ../../frontend/index.html#contact');
    exit;
}

// Recogemos la variables del form 
$nombre  = trim($_POST['nombre'] ?? '');
$email   = trim($_POST['email'] ?? '');
$asunto  = trim($_POST['asunto'] ?? '');
$mensaje = trim($_POST['mensaje'] ?? '');

if (empty($nombre) || empty($email) || empty($asunto) || empty($mensaje)) {
    header('Location: ../../frontend/index.html?estado=error#contact');
    exit;
}

$pdo->beginTransaction();

try {
    $sql = "INSERT INTO mensajes_contacto(nombre, email, asunto, mensaje) VALUES (:nombre, :email, :asunto, :mensaje)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        ':nombre' => $nombre,
        ':email' => $email,
        ':asunto' => $asunto,
        ':mensaje' => $mensaje,
    ]);

    $pdo->commit();
    header('Location: ../../frontend/index.html?estado=enviado#contact');
    exit;

} catch (PDOException $e) {
      if ($pdo->inTransaction()) {
        $pdo->rollBack();
    }

    header('Location: ../../frontend/index.html?estado=error#contact');
    exit;
}
?>
