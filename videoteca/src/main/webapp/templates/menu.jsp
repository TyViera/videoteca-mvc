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
                                <li class='has-sub '><a href='#'><span>Estrenos</span></a>
                                    <ul>
                                        <li class='has-sub ' ><a href="#"><span>Sub Menu1</span></a>
                                            <ul>
                                                <li><a href='#'><span>Sub Item1</span></a></li>
                                                <li><a href='#'><span>Sub Item2</span></a></li>
                                            </ul>

                                        </li>
                                        <li class='has-sub '><a href='#'><span>Sub Menu2</span></a>
                                            <ul>
                                                <li><a href='#'><span>Sub Item1</span></a></li>
                                                <li><a href='#'><span>Sub Item2</span></a></li>
                                            </ul>
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