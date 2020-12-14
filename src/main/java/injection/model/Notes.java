package injection.model;

import lombok.Data;

@Data
public class Notes {
    private String title;
    private String note;

    public Notes(String title, String note) {
        this.title = title;
        this.note = note;
    }
}
