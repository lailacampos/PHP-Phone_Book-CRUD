<?php

function select_phones_by_user_id($id)
{

    global $db;

    $query = "SELECT numero from vestibulare.telefones JOIN 
                vestibulare.usuarios
                ON usuarios.id=telefones.id_usuario
                where usuarios.id = :id;";

    $statement = $db->prepare($query);
    $statement->bindValue(":id", $id);
    $statement->execute();
    $results = $statement->fetchAll();
    $statement->closeCursor();

    return $results;
}

function select_users_by_name($name)
{

    global $db;

    $query = "SELECT usuarios.id as id,
                nome, 
                numero, 
                COUNT(numero) AS numero_count 
                FROM usuarios 
                JOIN telefones 
                ON usuarios.id=telefones.id_usuario
                WHERE nome LIKE :name
                GROUP BY nome 
                ORDER BY nome;";

    $statement = $db->prepare($query);
    $statement->bindValue(":name", "%" . $name . "%");
    $statement->execute();
    $results = $statement->fetchAll();
    $statement->closeCursor();

    return $results;
}

function list_users_by_number_of_phones()
{

    global $db;

    $query = "SELECT usuarios.id as id,
                nome, 
                numero, 
                COUNT(numero) AS numero_count 
                FROM usuarios 
                JOIN telefones 
                ON usuarios.id=telefones.id_usuario 
                GROUP BY nome 
                ORDER BY nome;";

    $statement = $db->prepare($query);
    $statement->execute();
    $results = $statement->fetchAll();
    $statement->closeCursor();

    return $results;
}

function list_all_users()
{

    global $db;

    $query = "SELECT usuarios.id as id,
                nome, 
                numero, 
                COUNT(numero) AS numero_count 
                FROM usuarios 
                LEFT OUTER JOIN telefones 
                ON usuarios.id=telefones.id_usuario 
                GROUP BY nome 
                ORDER BY nome;";

    $statement = $db->prepare($query);
    $statement->execute();
    $results = $statement->fetchAll();
    $statement->closeCursor();

    return $results;
}
