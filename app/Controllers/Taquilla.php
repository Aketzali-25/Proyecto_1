<?php

namespace App\Controllers;

class Taquilla extends BaseController
{
    public function index()
    {
        $db = \Config\Database::connect();
        $query = $db->query("SELECT * FROM tbl_cat_pelicula");
        $resultado = $query->getResult();

        $data = ['resultado_pelicula' => $resultado, 'list_pelicula' => $resultado];
        return view('Cartelera/Index', $data);
    }
}