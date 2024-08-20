package nqt.cv.CVProjectJavaMVC.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "portifolios")
public class Portifolio {
    @Id
    private long id;
    private String name;
    private String image;
    private String link;
    private String detailDesc;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getDetailDesc() {
        return detailDesc;
    }

    public void setDetailDesc(String detailDesc) {
        this.detailDesc = detailDesc;
    }

    public Portifolio() {
    }

    public Portifolio(long id, String name, String image, String link, String detailDesc) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.link = link;
        this.detailDesc = detailDesc;
    }

    @Override
    public String toString() {
        return "Portifolio [id=" + id + ", name=" + name + ", image=" + image + ", link=" + link + ", detailDesc="
                + detailDesc + "]";
    }

}
