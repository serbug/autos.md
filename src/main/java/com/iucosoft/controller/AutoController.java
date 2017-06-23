package com.iucosoft.controller;

import com.iucosoft.domain.Marca;
import com.iucosoft.domain.Modele;

import com.iucosoft.model.Auto;
import com.iucosoft.model.FileBucket;
import com.iucosoft.model.ImageAuto;
import com.iucosoft.service.AutoService;
import com.iucosoft.service.BrandService;
import com.iucosoft.service.ImageAutoService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.support.PagedListHolder;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class AutoController {

    @Autowired
    private AutoService autoService;
    @Autowired
    private BrandService brandService;
    @Autowired
    ImageAutoService imageAutoService;
    @Autowired
    private ServletContext servletContext;

    private static final Logger logger = Logger.getLogger(AutoController.class.getName());

    @RequestMapping(value = "/cmsauto", method = RequestMethod.GET)
    public ModelAndView listAuto(Model model, HttpServletRequest request, HttpServletResponse response) {

        List<String> cutieAuto = new ArrayList<>();

        cutieAuto.add("AUTOMATA");
        cutieAuto.add("MECANICA");

        model.addAttribute("cutieAuto", cutieAuto);

        List<String> fabricatiaAuto = new ArrayList<>();

        fabricatiaAuto.add("2001");
        fabricatiaAuto.add("2002");
        fabricatiaAuto.add("2003");
        fabricatiaAuto.add("2004");
        fabricatiaAuto.add("2005");
        fabricatiaAuto.add("2006");
        fabricatiaAuto.add("2007");
        fabricatiaAuto.add("2008");
        fabricatiaAuto.add("2009");
        fabricatiaAuto.add("2010");
        fabricatiaAuto.add("2011");
        fabricatiaAuto.add("2012");
        fabricatiaAuto.add("2013");
        fabricatiaAuto.add("2014");
        fabricatiaAuto.add("2015");
        fabricatiaAuto.add("2016");
        fabricatiaAuto.add("2017");

        model.addAttribute("fabricatiaAuto", fabricatiaAuto);

        List<String> combustibilAuto = new ArrayList<>();

        combustibilAuto.add("BENZINA");
        combustibilAuto.add("DIESEL");
        combustibilAuto.add("GAZ/BENZINA");
        combustibilAuto.add("HYBRID/BENZINA");

        model.addAttribute("combustibilAuto", combustibilAuto);

        List<String> caroserieAuto = new ArrayList<>();

        caroserieAuto.add("SEDAN");
        caroserieAuto.add("COMBI");
        caroserieAuto.add("SUV");
        caroserieAuto.add("CROSSOVER");
        caroserieAuto.add("MINIVAN");
        caroserieAuto.add("COUPE");
        caroserieAuto.add("OFF-ROAD");
        caroserieAuto.add("ROADSTER");
        caroserieAuto.add("CABRIOLET");
        caroserieAuto.add("UNIVERSAL");
        caroserieAuto.add("HATCHBACK");
        caroserieAuto.add("MICROVEN");

        model.addAttribute("caroserieAuto", caroserieAuto);

        List<String> tractiuneAuto = new ArrayList<>();

        tractiuneAuto.add("FATA");
        tractiuneAuto.add("SPATE");
        tractiuneAuto.add("INTEGRALA");
        model.addAttribute("tractiuneAuto", tractiuneAuto);

        List<String> culoareAuto = new ArrayList<>();

        culoareAuto.add("ALB");
        culoareAuto.add("NEGRU");
        culoareAuto.add("ORANJ");
        culoareAuto.add("ROSU");
        culoareAuto.add("VERDE");
        culoareAuto.add("VIOLET");
        culoareAuto.add("MARO");
        culoareAuto.add("ALBASTRU");
        culoareAuto.add("ARGINTIU");
        culoareAuto.add("GRI");
        culoareAuto.add("BEJ");
        culoareAuto.add("AURIU");
        culoareAuto.add("BORDO");
        model.addAttribute("culoareAuto", culoareAuto);

        List<String> autoDotari = new ArrayList<>();
        autoDotari.add("Aer conditionat");
        autoDotari.add("Airbaguri laterale");
        autoDotari.add("Clima automata");
        autoDotari.add("Faruri anticeata");
        model.addAttribute("autoDotari", autoDotari);

        List<String> typeAuto = new ArrayList<>();
        typeAuto.add("Noi");
        typeAuto.add("Usate");
        typeAuto.add("Chirie");
        model.addAttribute("typeAuto", typeAuto);

        model.addAttribute("auto", new Auto());

        List searchResults = autoService.getAllAuto();

        PagedListHolder pagedListHolder = new PagedListHolder(searchResults);

        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(4);
        model.addAttribute("pagedListHolder", pagedListHolder);
//        model.addAttribute("autoList", autoService.getAllAuto());
        ModelAndView mav = new ModelAndView("cms/cmsauto");
        model.addAttribute("edit", false);

        return mav;
    }

    @RequestMapping(value = "/models", method = RequestMethod.GET)
    public @ResponseBody
    Set<Modele> modelsForMarca(
            @RequestParam(value = "marcaName", required = true) String marca) {
//		logger.debug("finding cities for state " + marca);
        return this.brandService.findModelsForMarca(marca);
    }

    @RequestMapping(value = "/marcas", method = RequestMethod.GET)
    public @ResponseBody
    Set<Marca> findAllMarcas() {
//        logger.debug("finding all states");
        return this.brandService.findAllMarcas();
    }

    @RequestMapping(value = "/newcars")
    public ModelAndView doAuto(ModelMap model, HttpServletRequest request) {
        Auto auto = new Auto();
        String type = "Noi";
        model.addAttribute("auto", auto);

//        model.addAttribute("autoList", autoService.getAllAutoByType(type));
        List searchResults = autoService.getAllAutoByType(type);

        PagedListHolder pagedListHolder = new PagedListHolder(searchResults);

        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(16);
        model.addAttribute("pagedListHolder", pagedListHolder);
//        model.addAttribute("autoList", autoService.getAllAuto());
        ModelAndView mav = new ModelAndView("client/newcars");

        return mav;
    }

    @RequestMapping(value = "/usedcars")
    public ModelAndView doOldAuto(ModelMap model, HttpServletRequest request) {

        Auto auto = new Auto();
        String type = "Usate";
        model.addAttribute("auto", auto);

        List searchResults = autoService.getAllAutoByType(type);

        PagedListHolder pagedListHolder = new PagedListHolder(searchResults);

        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(16);
        model.addAttribute("pagedListHolder", pagedListHolder);
//        model.addAttribute("autoList", autoService.getAllAuto());
        ModelAndView mav = new ModelAndView("client/usedcars");

        return mav;

    }

    @RequestMapping(value = "/rentcars")
    public ModelAndView doRentAuto(ModelMap model, HttpServletRequest request) {

        Auto auto = new Auto();
        String type = "Chirie";
        model.addAttribute("auto", auto);

        List searchResults = autoService.getAllAutoByType(type);

        PagedListHolder pagedListHolder = new PagedListHolder(searchResults);

        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(16);
        model.addAttribute("pagedListHolder", pagedListHolder);
//        model.addAttribute("autoList", autoService.getAllAuto());
        ModelAndView mav = new ModelAndView("client/rentcars");

        return mav;

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String upload(@ModelAttribute Auto auto, HttpSession session, @RequestParam("file") MultipartFile content, @RequestParam("type") String type) {
//        String location;
        String relativeWebPath;

        switch (type) {
            case "Usate":
                relativeWebPath = "/userfiles/usate";
                break;
            case "Noi":
                relativeWebPath = "/userfiles/noi";
                break;
            case "Chirie":
                relativeWebPath = "/userfiles/chirie";
                break;
            default:
                relativeWebPath = "/userfiles";
                break;
        }

        String filename = content.getOriginalFilename();

        String absoluteFilePath = servletContext.getRealPath(relativeWebPath);

        File uploadedFile = new File(absoluteFilePath);

        logger.log(Level.INFO, "{0} {1}", new Object[]{uploadedFile, filename});

        if (!uploadedFile.exists()) {
            if (uploadedFile.mkdirs()) {
                logger.info("Multiple directories are created!");

            } else {
                logger.info("Failed to create multiple directories!");

            }
        }

        try {
            byte barr[] = content.getBytes();

            try (BufferedOutputStream bout = new BufferedOutputStream(
                    new FileOutputStream(uploadedFile + "/" + filename))) {
                bout.write(barr);
                bout.flush();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            auto.setContent(content.getBytes());
            auto.setFileName(content.getOriginalFilename());
        } catch (IOException ex) {
            Logger.getLogger(AutoController.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (auto.getAutoId() == 0) {

            autoService.addAuto(auto);
        } else {

            autoService.editAuto(auto);
        }

        return "redirect:/cmsauto";
    }

    @RequestMapping("/remove/{autoId}")
    public String removeAuto(@PathVariable("autoId") int autoId) {
        autoService.deleteAuto(autoId);
        return "redirect:/cmsauto";
    }

    @RequestMapping("edit-{autoId}")
    public ModelAndView editAuto(@PathVariable("autoId") int autoId, Model model, HttpServletRequest request) {

        List<String> cutieAuto = new ArrayList<>();

        cutieAuto.add("AUTOMATA");
        cutieAuto.add("MECANICA");

        model.addAttribute("cutieAuto", cutieAuto);

        List<String> fabricatiaAuto = new ArrayList<>();

        fabricatiaAuto.add("2001");
        fabricatiaAuto.add("2002");
        fabricatiaAuto.add("2003");
        fabricatiaAuto.add("2004");
        fabricatiaAuto.add("2005");
        fabricatiaAuto.add("2006");
        fabricatiaAuto.add("2007");
        fabricatiaAuto.add("2008");
        fabricatiaAuto.add("2009");
        fabricatiaAuto.add("2010");
        fabricatiaAuto.add("2011");
        fabricatiaAuto.add("2012");
        fabricatiaAuto.add("2013");
        fabricatiaAuto.add("2014");
        fabricatiaAuto.add("2015");
        fabricatiaAuto.add("2016");
        fabricatiaAuto.add("2017");

        model.addAttribute("fabricatiaAuto", fabricatiaAuto);

        List<String> combustibilAuto = new ArrayList<>();

        combustibilAuto.add("BENZINA");
        combustibilAuto.add("DIESEL");
        combustibilAuto.add("GAZ/BENZINA");
        combustibilAuto.add("HYBRID/BENZINA");

        model.addAttribute("combustibilAuto", combustibilAuto);

        List<String> caroserieAuto = new ArrayList<>();

        caroserieAuto.add("SEDAN");
        caroserieAuto.add("COMBI");
        caroserieAuto.add("SUV");
        caroserieAuto.add("CROSSOVER");
        caroserieAuto.add("MINIVAN");
        caroserieAuto.add("COUPE");
        caroserieAuto.add("OFF-ROAD");
        caroserieAuto.add("ROADSTER");
        caroserieAuto.add("CABRIOLET");
        caroserieAuto.add("UNIVERSAL");
        caroserieAuto.add("HATCHBACK");
        caroserieAuto.add("MICROVEN");

        model.addAttribute("caroserieAuto", caroserieAuto);

        List<String> tractiuneAuto = new ArrayList<>();

        tractiuneAuto.add("FATA");
        tractiuneAuto.add("SPATE");
        tractiuneAuto.add("INTEGRALA");
        model.addAttribute("tractiuneAuto", tractiuneAuto);

        List<String> culoareAuto = new ArrayList<>();

        culoareAuto.add("ALB");
        culoareAuto.add("NEGRU");
        culoareAuto.add("ORANJ");
        culoareAuto.add("ROSU");
        culoareAuto.add("VERDE");
        culoareAuto.add("VIOLET");
        culoareAuto.add("MARO");
        culoareAuto.add("ALBASTRU");
        culoareAuto.add("ARGINTIU");
        culoareAuto.add("GRI");
        culoareAuto.add("BEJ");
        culoareAuto.add("AURIU");
        culoareAuto.add("BORDO");
        model.addAttribute("culoareAuto", culoareAuto);

        List<String> typeAuto = new ArrayList<>();
        typeAuto.add("Noi");
        typeAuto.add("Usate");
        typeAuto.add("Chirie");
        model.addAttribute("typeAuto", typeAuto);

        model.addAttribute("auto", autoService.getAuto(autoId));
        List searchResults = autoService.getAllAuto();

        PagedListHolder pagedListHolder = new PagedListHolder(searchResults);

        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(4);
        model.addAttribute("pagedListHolder", pagedListHolder);
//        model.addAttribute("autoList", autoService.getAllAuto());
        ModelAndView mav = new ModelAndView("cms/cmsauto");

        model.addAttribute("edit", true);

        return mav;
    }

    @RequestMapping("cmsmainpage-{autoId}")
    public String autoInfo(@PathVariable("autoId") int autoId, Model model) {
        Auto auto = autoService.getAuto(autoId);
        model.addAttribute("auto", auto);
        List<ImageAuto> imageList = imageAutoService.findAllByUserId(autoId);
        model.addAttribute("imageList", imageList);
        return "cms/cmsmainpage";
    }

    @RequestMapping(value = "/car-{autoId}")
    public String showImage(@PathVariable("autoId") int autoId, Model model) {
        Auto auto = autoService.getAuto(autoId);
        model.addAttribute("auto", auto);

        List<ImageAuto> imageList = imageAutoService.findAllByUserId(autoId);
        model.addAttribute("imageList", imageList);

        return "client/car";
    }

    @RequestMapping(value = {"/add-image-{autoId}"}, method = RequestMethod.GET)
    public String addImage(@PathVariable int autoId, ModelMap model) {
        Auto auto = autoService.getAuto(autoId);
        model.addAttribute("auto", auto);

        FileBucket fileModel = new FileBucket();
        model.addAttribute("fileBucket", fileModel);

        List<ImageAuto> image = imageAutoService.findAllByUserId(autoId);
        model.addAttribute("image", image);

        return "cms/manageimages";
    }

    @RequestMapping(value = {"/download-image-{autoId}-{imgId}"}, method = RequestMethod.GET)
    public String downloadImage(@PathVariable int autoId, @PathVariable int imgId, HttpServletResponse response) throws IOException {
        ImageAuto image = imageAutoService.findById(imgId);

        response.setContentLength(image.getImages().length);
        response.setHeader("Content-Disposition", "attachment; filename=\"" + image.getFileName() + "\"");

        FileCopyUtils.copy(image.getImages(), response.getOutputStream());

        return "redirect:/add-image-" + autoId;
    }

    @RequestMapping(value = {"/delete-image-{autoId}-{imgId}"}, method = RequestMethod.GET)
    public String deleteImage(@PathVariable int autoId, @PathVariable int imgId) {
        imageAutoService.deleteById(imgId);
        return "redirect:/add-image-" + autoId;
    }

    @RequestMapping(value = {"/add-image-{autoId}"}, method = RequestMethod.POST)
    public String uploadImage(@Valid FileBucket fileBucket, BindingResult result, ModelMap model, @PathVariable int autoId, HttpSession session) throws IOException {

        if (result.hasErrors()) {
            System.out.println("validation errors");
            Auto auto = autoService.getAuto(autoId);
            model.addAttribute("auto", auto);

            List<ImageAuto> image = imageAutoService.findAllByUserId(autoId);
            model.addAttribute("image", image);

            return "cms/manageimages";
        } else {

            System.out.println("Fetching file");

            String path = session.getServletContext().getRealPath("/") + "userfiles/";

            FileCopyUtils.copy(fileBucket.getFile().getBytes(), new File(path + fileBucket.getFile().getOriginalFilename()));
            Auto auto = autoService.getAuto(autoId);
            model.addAttribute("auto", auto);

            saveImage(fileBucket, auto);

            return "redirect:/add-image-" + autoId;
        }
    }

    private void saveImage(FileBucket fileBucket, Auto auto) throws IOException {

        ImageAuto image = new ImageAuto();

        MultipartFile multipartFile = fileBucket.getFile();

        image.setFileName(multipartFile.getOriginalFilename());

        image.setImages(multipartFile.getBytes());
        image.setAuto(auto);
        imageAutoService.saveImage(image);

    }

}
