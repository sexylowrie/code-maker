package xin.sunce.codemaker.template;

import java.util.List;

/**
 * @author lowrie
 * @date 2019-11-20
 */
public class Menu {


    private String url;
    private String name;
    private boolean hasSub;
    private List<Menu> subMenu;


    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isHasSub() {
        return hasSub;
    }

    public void setHasSub(boolean hasSub) {
        this.hasSub = hasSub;
    }

    public List<Menu> getSubMenu() {
        return subMenu;
    }

    public void setSubMenu(List<Menu> subMenu) {
        this.subMenu = subMenu;
    }
}
