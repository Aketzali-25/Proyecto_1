<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
    /* Estilos para el diseño */
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        padding: 20px;
    }

    label {
        font-weight: bold;
    }

    select, input[type="text"], button {
        padding: 10px;
        margin-bottom: 10px;
        border: none;
        border-radius: 5px;
    }

    select {
        width: 300px;
    }

    input[type="text"], button {
        width: 200px;
    }

    button {
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }

    input[type="submit"] {
        background-color: #008CBA;
    }

    input[type="submit"]:hover {
        background-color: #007a8c;
    }
</style>
</head>
<body>
    <h1>CINE</h1>
    <table>
        <thead>
            <th><button class="boton-con-imagen" onclick="mostrarModal()">
                    <img src="https://play-lh.googleusercontent.com/BNmEw1TlON8udcnoaxSB0dskIi6IlluHhTFXObj_tXJ2Io28ZinhzMekZMzzxeZsY5zL" width="230" height="300">
                </button>
            </th>
            <th><button class="boton-con-imagen">
                    <img src="https://m.media-amazon.com/images/I/51tQzS5jp1L._AC_UF894,1000_QL80_.jpg" width="230" height="300">
                </button>
            </th>
            <th><button class="boton-con-imagen">
                    <img src="https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg" width="230" height="300">
                </button>
            </th>
            <th><button class="boton-con-imagen">
                    <img src="https://m.media-amazon.com/images/S/pv-target-images/1732d587a81df4b1d604d20f6050a7290b79073b9f707c896d0e259bb3535d03.jpg" width="230" height="300">
                </button>
            </th>
        </thead>
        <tbody>
            <?php foreach($resultado_pelicula as $resultado_pelicula) : ?>
                <tr>
                    <td><?php echo $resultado_pelicula->Pelicula_Id; ?></td>
                    <td><?php echo $resultado_pelicula->Pelicula_Nombre; ?></td>
                    <td><?php echo $resultado_pelicula->Pelicula_Precio; ?></td>
                <tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <select name="Pelicula" id="Pelicula">
        <?php foreach ($list_pelicula as $list_pelicula) : ?>
            <option value="<?php echo $list_pelicula->Pelicula_Id; ?>"><?php echo $list_pelicula->Pelicula_Nombre; ?></option>
        <?php endforeach; ?>
    </select><br>

    <label for="Nombre">Nombre:</label>
    <input type="text" name="Nombre"><br>

    <label for="Entradas">Entradas:</label>
    <input type="text" id="Entradas" name="Entradas"><br>

    <button onclick="calcularTotal()">Calcular Total</button><br>

    <label for="Total">Total a pagar:</label>
    <label id="Total" name="Total"></label><br>

    <label for="Pagar">Pagar con:</label>
    <input type="text" id="Pagar" name="Pagar"><br>

    <button onclick="calcularCambio()">Cambio</button><br>

    <label for="Cambio">El cambio es:</label>
    <label id="Cambio" name="Cmabio"></label><br>

    <input type="submit" value="CONFIRMAR" name="Confirmar">
    <script>
        function calcularTotal() {
            var PeliculaId = document.getElementById("Pelicula").value;
            var entradas = parseInt(document.getElementById("Entradas").value);
            var precioPelicula;
    switch (PeliculaId) {
        case "1":
            precioPelicula = 250;
            break;
        case "2":
            precioPelicula = 300;
            break;
        case "3":
            precioPelicula = 250;
            break;
        case "4":
            precioPelicula = 300;
            break;
        case "5":
            precioPelicula = 67;
            break;
        case "6":
            precioPelicula = 55;
            break;
        case "7":
            precioPelicula = 57;
            break;
        case "8":
            precioPelicula = 72;
            break;
        case "9":
            precioPelicula = 75;
            break;
        case "10":
            precioPelicula = 75;
            break;
        case "11":
            precioPelicula = 78;
            break;
        case "12":
            precioPelicula = 85;
            break;
        default:
            precioPelicula = 0;
    }
    var total = precioPelicula * entradas;
    document.getElementById("Total").textContent = total;
}
function calcularCambio() {
            var Total = parseInt(document.getElementById("Total").textContent);
            var PagarCon = parseInt(document.getElementById("Pagar").value);
            var Cambio;
            if(PagarCon < Total){
                alert("Necesitas mas efectivo.");
            }else{
                Cambio = PagarCon - Total;
                document.getElementById("Cambio").textContent = Cambio;
            }
}
    </script>
</body>
</html>