<?php
require($_SERVER["DOCUMENT_ROOT"] . "\\app\\controllers\\controller.php");

$search = htmlspecialchars($_GET["searchName"]);

?>

<div class="col-lg-8">

    <table id="myTable" class="table text-justify table-striped">
        <thead class="tableh1">
            <th class="">Name</th>
            <th class="col-3">Nº of Phones</th>
            <th class="">Phone</th>
        </thead>

        <tbody id="tableBody">

            <?php
            if (!$search) {

                $results = list_users_by_number_of_phones();

                foreach ($results as $result) {
                    $id = $result["id"];
                    $name = $result["nome"];
                    // $numero = $result["numero"];
                    $numeros = select_phones_by_user_id($id);

                    if (!$numeros) {
                        $numeros[0] = "None";
                    }

                    $num_count = $result["numero_count"];
            ?>

                    <?php
                    foreach ($numeros as $numero) {
                    ?>
                        <tr>
                            <td><?php echo $name; ?></td>
                            <td><?php echo $num_count; ?></td>
                            <td><?php echo $numero[0]; ?></td>
                        </tr>
                    <?php  }
                    ?>

                <?php }
            } else {

                $results = select_users_by_name($search);

                foreach ($results as $result) {
                    $id = $result["id"];
                    $name = $result["nome"];
                    $numeros = select_phones_by_user_id($id);

                    if (!$numeros) {
                        $numeros[0] = "None";
                    }

                    $num_count = $result["numero_count"];

                ?>

                    <?php
                    foreach ($numeros as $numero) {
                    ?>
                        <tr>
                            <td><?php echo $name; ?></td>
                            <td><?php echo $num_count; ?></td>
                            <td><?php echo $numero[0]; ?></td>
                        </tr>
                    <?php  }
                    ?>
                <?php } ?>

            <?php }  ?>
        </tbody>
    </table>
</div>