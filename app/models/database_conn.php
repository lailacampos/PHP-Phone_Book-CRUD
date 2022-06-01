<?php

require($_SERVER["DOCUMENT_ROOT"] . "\\app\\config\\config.php");

try {
    $db = new PDO(DB_DNS, DB_USER, DB_PASSWORD);
} catch (PDOException $e) {
    $error_message = "Database Error: ";
    $error_message .= $e->getMessage();
    include($_SERVER["DOCUMENT_ROOT"] . "\\03_database\\app\\views\\error.php");
    exit();
}
