package xin.sunce.codemaker.template;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateExceptionHandler;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author lowrie
 * @date 2019-11-20
 */
public class Index {


    public static void main(String[] args) throws Exception{
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_22);
        cfg.setDirectoryForTemplateLoading(new File("/Users/sunce/IdeaProjects/code-maker/src/main/resources/templates/html"));
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

        Map root = new HashMap();
        root.put("title", "聚合测试页面");
        root.put("keywords", "聚合支付");
        root.put("description", "业内最大的聚合支付机构");
        root.put("logoUrl", "http://www/baidu.com");
        root.put("name", "聚合");
        List<Menu> menus =new ArrayList<>();
        Menu menu1 =new Menu();
        menu1.setName("主菜单一");
        menu1.setUrl("baidu1");
        menu1.setHasSub(true);
        List<Menu> subMenu1 =new ArrayList<>();
        Menu menu2 =new Menu();
        menu2.setName("子菜单1");
        menu2.setUrl("baidu1");
        menu2.setHasSub(false);
        Menu menu3 =new Menu();
        menu3.setName("子菜单2");
        menu3.setUrl("baidu1");
        menu3.setHasSub(false);
        subMenu1.add(menu2);
        subMenu1.add(menu3);
        menu1.setSubMenu(subMenu1);
        menus.add(menu1);
        menus.add(menu1);
        menus.add(menu1);
        root.put("menus", menus);
        Template temp = cfg.getTemplate("index.ftl");
        Writer out = new OutputStreamWriter(new FileOutputStream("/Users/sunce/Desktop/index.html"));
        temp.process(root, out);
    }
}
