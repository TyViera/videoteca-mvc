package com.springmvc.videoteca.spring.model;
// Generated 19/07/2015 03:21:56 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

/**
 * Pelicula generated by hbm2java
 */
@Entity
@Table(name = "pelicula", schema = "public"
)
public class Pelicula implements java.io.Serializable {

    private int id;
    private String directores;
    private String sinapsis;
    private String nombre;
    private String actores;
    private String genero;
    private String duracion;
    private String restriccion;
    private String nacionalidad;
    private Date fechaestreno;
    private String imagen;
    private String trailerlink;
    private Set<Peliculasala> peliculasalas = new HashSet<Peliculasala>(0);

    private String descripcionCorta;

    @Transient
    public String getDescripcionCorta() {
        int max = 130;
        if (sinapsis != null && sinapsis.length() > max) {
            descripcionCorta = sinapsis.substring(0, max - 1);
        } else {
            descripcionCorta = "" + sinapsis;
        }
        return descripcionCorta;
    }

    public void setDescripcionCorta(String descripcionCorta) {
        this.descripcionCorta = descripcionCorta;
    }

    private MultipartFile imagenPeli; //@RequestParam("imagenPeli")  file,

    @Transient
    public MultipartFile getImagenPeli() {
        return imagenPeli;
    }

    public void setImagenPeli(MultipartFile imagenPeli) {
        this.imagenPeli = imagenPeli;
    }

    
    
    public Pelicula() {
    }

    public Pelicula(int id, String directores, String sinapsis, String nombre, String actores, String duracion, String restriccion, String nacionalidad, Date fechaestreno, String imagen, String trailerlink) {
        this.id = id;
        this.directores = directores;
        this.sinapsis = sinapsis;
        this.nombre = nombre;
        this.actores = actores;
        this.duracion = duracion;
        this.restriccion = restriccion;
        this.nacionalidad = nacionalidad;
        this.fechaestreno = fechaestreno;
        this.imagen = imagen;
        this.trailerlink = trailerlink;
    }

    public Pelicula(int id, String directores, String sinapsis, String nombre, String actores, String duracion, String restriccion, String nacionalidad, Date fechaestreno, String imagen, String trailerlink, Set<Peliculasala> peliculasalas) {
        this.id = id;
        this.directores = directores;
        this.sinapsis = sinapsis;
        this.nombre = nombre;
        this.actores = actores;
        this.duracion = duracion;
        this.restriccion = restriccion;
        this.nacionalidad = nacionalidad;
        this.fechaestreno = fechaestreno;
        this.imagen = imagen;
        this.trailerlink = trailerlink;
        this.peliculasalas = peliculasalas;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "directores", nullable = false, length = 200)
    public String getDirectores() {
        return this.directores;
    }

    public void setDirectores(String directores) {
        this.directores = directores;
    }

    @Column(name = "sinapsis", nullable = false, length = 2000)
    public String getSinapsis() {
        return this.sinapsis;
    }

    public void setSinapsis(String sinapsis) {
        this.sinapsis = sinapsis;
    }

    @Column(name = "nombre", nullable = false, length = 100)
    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Column(name = "actores", nullable = false, length = 200)
    public String getActores() {
        return this.actores;
    }

    public void setActores(String actores) {
        this.actores = actores;
    }

    @Column(name = "duracion", nullable = false, length = 20)
    public String getDuracion() {
        return this.duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    @Column(name = "restriccion", nullable = false, length = 20)
    public String getRestriccion() {
        return this.restriccion;
    }

    public void setRestriccion(String restriccion) {
        this.restriccion = restriccion;
    }

    @Column(name = "nacionalidad", nullable = false, length = 50)
    public String getNacionalidad() {
        return this.nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "fechaestreno", nullable = false, length = 13)
    @DateTimeFormat(pattern = "yyyy-MM-dd")//S-small, M- (medium)   L- (long)  F- (full)
    public Date getFechaestreno() {
        return this.fechaestreno;
    }

    public void setFechaestreno(Date fechaestreno) {
        this.fechaestreno = fechaestreno;
    }

    @Column(name = "imagen", nullable = false, length = 100)
    public String getImagen() {
        return this.imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    @Column(name = "trailerlink", nullable = false, length = 200)
    public String getTrailerlink() {
        return this.trailerlink;
    }

    public void setTrailerlink(String trailerlink) {
        this.trailerlink = trailerlink;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "pelicula")
    public Set<Peliculasala> getPeliculasalas() {
        return this.peliculasalas;
    }

    public void setPeliculasalas(Set<Peliculasala> peliculasalas) {
        this.peliculasalas = peliculasalas;
    }

    @Column(name="genero", nullable = false, length = 20)
    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public boolean esNuevo() {
        return this.id == 0;
    }

    @Override
    public String toString() {
        return "Pelicula{" + "id=" + id + ", directores=" + directores + ", sinapsis=" + sinapsis + ", nombre=" + nombre + ", actores=" + actores + ", genero=" + genero + ", duracion=" + duracion + ", restriccion=" + restriccion + ", nacionalidad=" + nacionalidad + ", fechaestreno=" + fechaestreno + ", imagen=" + imagen + ", trailerlink=" + trailerlink + ", peliculasalas=" + peliculasalas + ", descripcionCorta=" + descripcionCorta + ", imagenPeli=" + imagenPeli + '}';
    }

    
    
}
