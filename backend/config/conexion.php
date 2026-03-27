<?php 
// Configuración de la base de datos
$host    = 'localhost';
$port = "3307";
$dbname   = 'formulario_contacto';
$user    = 'root';
$pass    = ''; 


try {
    $pdo = new PDO(
        "mysql:host=$host;port=$port;dbname=$dbname;charset=utf8mb4",
        $user,
        $pass
    );

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

} catch (PDOException $e) {
    http_response_code(500);
    header("Content-Type: application/json; charset=utf-8");

    echo json_encode([
        "ok" => false,
        "mensaje" => "Error de conexión: " . $e->getMessage()
    ], JSON_UNESCAPED_UNICODE);

    exit;
}
?>