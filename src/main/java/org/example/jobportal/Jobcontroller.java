package org.example.jobportal;

import org.example.jobportal.Service.JobService;
import org.example.jobportal.model.JobPost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Jobcontroller {
    @Autowired
    private JobService service;

    @GetMapping({"/","home"})
    public String home()
    {
        return "home";
    }
    @GetMapping("addjob")
    public String addJob()
    {
        return "addjob";
    }
    @PostMapping("handleForm")
    public String HandleForm(JobPost jobPost)
    {
        service.addJob(jobPost);
        return "success";
    }

    @GetMapping("viewalljobs")
    public String viewJobs(Model model)
    {
        List<JobPost>jobs=service.getAllJobs();
        model.addAttribute("jobPosts", jobs);
        return "viewalljobs";
    }

}
