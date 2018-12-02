package br.edu.utfpr.math.util;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import lombok.Data;

@MappedSuperclass
@Data
public abstract class EntityApplication implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long id;

    @Column(name = "created_at")
    protected LocalDate createdAt;

    @Column(name = "update_at")
    protected LocalDate updateAt;

    @PrePersist
    private void persistedConfigure() {
        this.createdAt = LocalDate.now();
        this.updateAt = LocalDate.now();
    }

    @PreUpdate
    private void updatedConfigure() {
        this.updateAt = LocalDate.now();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        EntityApplication that = (EntityApplication) o;
        return Objects.equals(id, that.id)
                && Objects.equals(createdAt, that.createdAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, createdAt);
    }
}
