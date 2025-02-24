package org.example.jobportal.Service;

import org.example.jobportal.Repo.JobRepository;
import org.example.jobportal.model.JobPost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class JobService {
    @Autowired
    public JobRepository jobRepository;

    public void addJob(JobPost jobPost) {
        jobRepository.addJob(jobPost);

    }

    public List<JobPost> getAllJobs() {
        return jobRepository.getAllJobs();


    }
}
