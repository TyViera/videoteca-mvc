<%-- 
    Document   : estrenos
    Created on : 25/07/2015, 10:15:54 AM
    Author     : nazaret
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <tiles:insertDefinition name="cabeza"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Slideshow with jmpress.js" />
        <meta name="keywords" content="jmpress, slideshow, container, plugin, jquery, css3" />
        <meta name="author" content="for Codrops" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slidesShow/demo.css" />" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slidesShow/styleSlide.css"/>"/>
        <%--Javascript--%>
        <!-- jQuery -->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <!-- jmpress plugin -->
        <script type="text/javascript" src="<c:url value="/resources/js/jmpress.min.js"/>"></script>
        <!-- jmslideshow plugin : extends the jmpress plugin -->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery.jmslideshow.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.48780.js"/>"></script>
        <noscript> 
        <style>
            .step {
                width: 100%;
                position: relative;
            }
            .step:not(.active) {
                opacity: 1;
                filter: alpha(opacity=99);
                -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(opacity=99)";
            }
            .step:not(.active) a.jms-link{
                opacity: 1;
                margin-top: 40px;
            }
        </style>
        </noscript>
    </head>
    <body>
        <tiles:insertDefinition name="topSection" />
        <div class="clr"></div>
        <section id="jms-slideshowEstrenos" class="jms-slideshow">
            <div class="step" data-color="color-1">
                <div class="jms-content">
                    <h3>Alicia</h3>
                    <p>Alicia es una gran niña imaginativa que solía inventarse situaciones de fantasía mientras hablaba sola. 
                    Una tarde de verano, se fue a descansar con su hermana a la orilla del río Támesis.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/alicia.jpg"/>" />
            </div>
            <div class="step" data-color="color-2" data-y="500" data-scale="0.4" data-rotate-x="30">
                <div class="jms-content">
                    <h3>Avatar</h3>
                    <p>AVATAR nos lleva a un mundo situado más allá de la imaginación, en donde un recién llegado de la Tierra
                        se embarca en una aventura épica, llegando a luchar, al final, por salvar el extraño mundo al que
                        ha aprendido a llamar su hogar.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/avatar.jpg"/>" />
            </div>
            <div class="step" data-color="color-3" data-x="2000" data-z="3000" data-rotate="170">
                <div class="jms-content">
                    <h3>3 metros sobre el cielo</h3>
                    <p>Es la historia de dos jóvenes que pertenecen a mundos opuestos. 
                    Es la crónica de una relación improbable, casi imposible, pero inevitable, 
                    que terminará arrastrando a la pareja a un frenético viaje iniciático en 
                    donde juntos descubrirán el primer gran amor.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/3msc.jpg"/>" />
            </div>
            <div class="step" data-color="color-4" data-x="3000">
                <div class="jms-content">
                    <h3>Chiquito pero peligroso</h3>
                    <p>Contratados para robar el fabuloso Diamante de la Reina,
                    el pequeño ladrón de joyas, Calvin Simms y su tonto socio, 
                    Percy, esconden la joya en el bolso de Vanessa Edwards, 
                    en el momento que sus planes de huir se complican terriblemente.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/chiquito-peligroso.jpg"/>" />
            </div>
            <div class="step" data-color="color-5" data-x="4500" data-z="1000" data-rotate-y="45">
                <div class="jms-content">
                    <h3>Chucky</h3>
                    <p>El vudú y el terror se apoderan de un muñeco de aspecto 
                        inocente habitado por el alma de un asesino en serie.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/chucky.jpg"/>" />
            </div>
            <div class="step" data-color="color-1">
                <div class="jms-content">
                    <h3>El cisne negro</h3>
                    <p> narra la historia de Nina, una bailarina de una
                        compañía de ballet de la ciudad de Nueva York cuya vida,
                        como la de todos los de su profesión, está completamente
                        absorbida por la danza.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/cisne-negro.jpg"/>" />
            </div>
            <div class="step" data-color="color-2" data-y="500" data-scale="0.4" data-rotate-x="30">
                <div class="jms-content">
                    <h3>Cronicas Narnia</h3>
                    <p>narra las aventuras de cuatro hermanos: Lucy, Edmund, Susan 
                    y Peter, que durante la Segunda Guerra Mundial descubren el mundo de Narnia.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/cronicas-narnia.jpg"/>" />
            </div>
            <div class="step" data-color="color-3" data-x="2000" data-z="3000" data-rotate="170">
                <div class="jms-content">
                    <h3>La huerfana</h3>
                    <p> Es la historia de un matrimonio traumatizado por la pérdida de su hijo nonato, que
                        decide adoptar una niña. La llegada de la chiquilla desatará extraños sucesos 
                        que pondrán al descubierto su reverso tenebroso.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/huerfana.jpg"/>" />
            </div>
            <div class="step" data-color="color-4" data-x="3000">
                <div class="jms-content">
                    <h3>El juego de ender/h3>
                    <p>En el año 2070 la humanidad está en guerra con una raza extraterrestre
                    conocida como los Insectores.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/juego-ender.jpg"/>" />
            </div>
            <div class="step" data-color="color-5" data-x="4500" data-z="1000" data-rotate-y="45">
                <div class="jms-content">
                    <h3>No se aceptan devoluciones</h3>
                    <p>Valentín es un hombre sin raíces ni compromisos. Una olvidada conquista, 
                    Julie lo visita con una noticia de carne y hueso, una bebé de un año llamada Maggie.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/no-se-aceptan-devoluciones.jpg"/>" />
            </div>
            <div class="step" data-color="color-1">
                <div class="jms-content">
                    <h3>Oz el maravilloso</h3>
                    <p>Oscar Diggs, un mago de circo con un dudoso sentido de la ética, 
                    es arrojado desde la polvorienta Kansas hacia la apasionante Tierra de Oz.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/oz.jpg"/>" />
            </div>
            <div class="step" data-color="color-2" data-y="500" data-scale="0.4" data-rotate-x="30">
                <div class="jms-content">
                    <h3>Un paseo para recordar</h3>
                    <p>Landon Carter rememora su último año en el Instituto de Beaufort 
                    y se acuerda de Jamie Sullivan, la chica que cambió su vida.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/paseo-recordar.jpg"/>" />
            </div>
            <div class="step" data-color="color-3" data-x="2000" data-z="3000" data-rotate="170">
                <div class="jms-content">
                    <h3>Rambo</h3>
                    <p>Cuando John Rambo, un veterano boina verde,
                    va a visitar a un viejo compañero de armas, se entera de que ha muerto.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/rambo.jpg"/>" />
            </div>
            <div class="step" data-color="color-4" data-x="3000">
                <div class="jms-content">
                    <h3>Sin salida</h3>
                    <p>Cuando Nathan Harper ve su nombre en una página de personas desaparecidas,
                    sospecha que sus padres pudieron haberlo secuestrarlo siendo un bebé.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/sin-salida.jpg"/>" />
            </div>
            <div class="step" data-color="color-5" data-x="4500" data-z="1000" data-rotate-y="45">
                <div class="jms-content">
                    <h3>Terminator</h3>
                    <p>Los Ángeles, año 2029. Las máquinas dominan el mundo.
                    Los rebeldes que luchan contra ellas tienen como líder a John Connor.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/terminator.jpg"/>" />
            </div>
            <div class="step" data-color="color-1">
                <div class="jms-content">
                    <h3>Una aventura extraordinaria</h3>
                    <p>Pi es un señor indio de la India quien recibe en su casa 
                    a un escritor pelmazo que lo quiere entrevistar para conocer su historia.</p>
                    <a class="jms-link" href="#">Read more</a>
                </div>
                <img src="<c:url value="/resources/images/slides/aventura-extraordinaria.jpg"/>" />
            </div>
        </section>
        <script type="text/javascript">
            $(function () {

                $('#jms-slideshow').jmslideshow();

            });
        </script>
        <tiles:insertDefinition name="botomSection" />
    </body>
</html>
