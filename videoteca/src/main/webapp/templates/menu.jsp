<%-- 
    Document   : menu
    Created on : 14/07/2015, 05:35:24 AM
    Author     : more-panta
--%>
<table align="center" cellpadding="0px" cellspacing="0px" width="100%" border="0">

    <tr align="center">
        <td align="center">
            <table align="center" valign="center" cellpadding="0px" cellspacing="0px">
                <tr>
                    <td>
                        <div id='cssmenu'>
                            <ul>
                                
                                <li class='active '><a href='${pageContext.servletContext.contextPath}/Home/'><span>Inicio</span></a></li>
                                <li class='active '><a href='${pageContext.servletContext.contextPath}/Estrenos/'><span>Estrenos</span></a></li>
                                <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Pelicula/'><span>Peliculas</span></a>
                                    <ul>
                                        <li class='has-sub ' ><a href="${pageContext.servletContext.contextPath}/Pelicula/?genero=Drama"><span>Drama</span></a>
                                         
                                        </li>
                                        <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Pelicula/?genero=Comedia'><span>Comedia</span></a>
                                           
                                        </li>
                                        <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Pelicula/?genero=Accion'><span>Accion</span></a>
                                            
                                        </li>
                                        <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Pelicula/?genero=Aventura'><span>Aventura</span></a>
                                            
                                        </li>
                                        <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Pelicula/?genero=Terror'><span>Terror</span></a>
                                           
                                        </li>
                                        <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Pelicula/?genero=Ficcion'><span>Ficcion</span></a>
                                            
                                        </li>
                                        <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Pelicula/?genero=Romantico'><span>Romantico</span></a>
                                            
                                        </li>
                                        <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Pelicula/?genero=Fantasia'><span>Fantasia</span></a>
                                            
                                        </li>
                                    </ul>
                                </li>
                                <li class='has-sub '><a href='${pageContext.servletContext.contextPath}/Home/nosotros.htm'><span>Nosotros</span></a>
                                <li class='has-sub '>
                                    <form class="navbar-form navbar-left">
                                        <div class="form-group">
                                            <input type="text" class="form-control">
                                        </div>
                                        <button type="submit" class="btn btn-default">Buscar</button>
                                    </form>
                                </li>
                                <li><a href='${pageContext.servletContext.contextPath}/Cliente/login.htm'><span>Login</span></a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    <tr>
</table>