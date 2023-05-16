<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        <html lang="en">
            
            <head>
                <title>Wallapop</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
                      crossorigin="anonymous" />
                <link rel="stylesheet" href="css/style.css" />
                
            </head>
            
            <body>
                <!--PONER NAVBAR Y SELECCIONER B5-NAVBAR-DEFAULT-->
                <nav class="navbar navbar-expand navbar-light p-4 border-bottom">
                    <!--si no ponemos sm ni nada es extra small | border-bottom crea una linea entre la cabecera y el cuerpo-->
                    <div class="container-fluid">
                        <a class="navbar-brand" href="https://es.wallapop.com/"><img src="img/logo.PNG" alt=""/></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarID"
                                aria-controls="navbarID" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="text-end">
                            <h6><a class="nav-link active text-wallapop fw-bold " aria-current="page" href="#">Regístrate o
                                    inicia sesión</a></h6> 
                        </div>
                    </div>
                </nav>
                
                <div class="container">
                    <p class="pt-3 text-secondary"><a href="https://es.wallapop.com/" class="text-decoration-none text-secondary">Inicio</a> / coches</p>
                    <h2 class="pt-3 pb-3">Coches de segunda mano</h2>
                    <nav class="navbar">
                        <div class="container-fluid">
                            <form class="d-flex w-100" role="search">
                                <input class="form-control me-5 rounded-pill" type="search" placeholder="Buscar en coches"
                                       aria-label="Search" />
                                <button class="border-0 rounded-pill bg-wallapop text-white w-50" type="submit">Profundizar búsqueda</button>
                            </form>
                        </div>
                    </nav>
                    
                    <h6 class="pt-4">Sugerencias para tí</h6>
                    
                    <div class="container-fluid">
                        <button class="btn rounded-pill border pt-0 pb-0 ps-3 pe-3 bg-light mt-2 me-1">Furgonetas</button>
                        <button class="btn rounded-pill border pt-0 pb-0 ps-4 pe-4 bg-light mt-2 me-1">4x4</button>
                        <button class="btn rounded-pill border pt-0 pb-0 ps-3 pe-3 bg-light mt-2 me-1">Camiones 3500kg</button>
                        <button class="btn rounded-pill border pt-0 pb-0 ps-3 pe-3 bg-light mt-2 me-1">Nissan Patrol</button>
                    </div>
                    
                    <h6 class="pt-4">Novedades</h6>
                    
                    <div class="mt-4">
                        <xsl:for-each select="wallapop/coches">
                            <div class="col-sm">
                                <div class="card border-0 ">
                                    <a href="#" class="text-decoration-none text-dark">
                                        <div class="row">
                                            <div class="col-4">
                                                <img class="card-img w-100 mb-4" style="height:200px;" src="{foto}" alt=""/> <!-- no todas se ven del todo bien porque tienen tamaños distintos y no sé como solucionarlo -->
                                            </div>
                                            <div class="col">
                                                <div class="card-body">
                                                    <div class="card-title fw-bold"><xsl:value-of select="precio"/></div>
                                                    <div class="card-text"><xsl:value-of select="nombre"/></div>
                                                    <div class="card-text"><xsl:value-of select="caracteristicas"/></div>
                                                    <div class="card-text text-descripcion"><xsl:value-of select="substring(descripcion , 1, 560)" /> </div><!-- Corta el texto a 560 caracteres -->
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            
                        </xsl:for-each>
                    </div>
                    
                </div>
                <footer>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm">
                                <img src="img/logo.PNG" alt=""/>
                                <p class="text-gris pequeño">Copyright © 2023 Wallapop © de sus respectivos propietarios</p>
                            </div>
                            <div class="col">
                                <nav>
                                    <ul>
                                        <li class="text-secondary"><strong> Wallapop</strong></li>
                                        <li><a href="#" class="text-gris">Quiénes somos</a></li>
                                        <li><a href="#" class="text-gris">Cómo funciona</a></li>
                                        <li><a href="#" class="text-gris">Brand Book</a></li>
                                        <li><a href="#" class="text-gris">Prensa</a></li>
                                        <li><a href="#" class="text-gris">Empleo</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col">
                                <nav>
                                    <ul>
                                        <li class="text-secondary"><strong> Soporte</strong></li>
                                        <li><a href="#" class="text-gris">Centro de ayuda</a></li>
                                        <li><a href="#" class="text-gris">Reglas de publicación</a></li>
                                        <li><a href="#" class="text-gris">Consejos de seguridad</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col">
                                <nav>
                                    <ul>
                                        <li class="text-secondary"><strong> Legal</strong></li>
                                        <li><a href="#" class="text-gris">Aviso legal</a></li>
                                        <li><a href="#" class="text-gris">Condiciones de uso</a></li>
                                        <li><a href="#" class="text-gris">Política de privacidad</a></li>
                                        <li><a href="#" class="text-gris">Cookies</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col">
                                <nav>
                                    <ul>
                                        <li class="text-secondary"><strong> Motor</strong></li>
                                        <li><a href="#" class="text-gris">Particulares</a></li>
                                        <li><a href="#" class="text-gris">Profesionales</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col sm-2">
                                <nav>
                                    <ul>
                                        <li class="text-secondary"><strong> Wallapop PRO</strong></li>
                                        <li><a href="#" class="text-gris">Impulsa tu negocio</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="border-top">
                        <div class="container text-center">
                            <div class="row">
                                <div class="col">
                                    <div class="mt-4  text-secondary">
                                        <i class="fa fa-apple me-4" aria-hidden="true"> Apple store</i>
                                        <i class="fa fa-android me-4" aria-hidden="true"> Google Play</i>
                                        <i class="fa fa-huawei me-4" aria-hidden="true"> AppGallery</i>
                                        <!--no he encontrado el símbolo-->
                                    </div>
                                    
                                </div>
                                <div class="row">
                                    <div class="col text-secondary mt-2 mb-2">
                                        <i class="fa fa-facebook me-4" aria-hidden="true"></i> <!-- como se ponen los símbolos en xsl??? -->
                                        <i class="fa fa-twitter me-4" aria-hidden="true"></i>
                                        <i class="fa fa-instagram me-4" aria-hidden="true"></i>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
                        crossorigin="anonymous">
                </script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
                        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
                        crossorigin="anonymous">
                </script>
            </body>
            
        </html>
    </xsl:template>
    
</xsl:stylesheet>