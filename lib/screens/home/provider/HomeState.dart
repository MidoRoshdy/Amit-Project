import 'package:flutter/material.dart';

import '../../../Data/Models/job_model.dart';
import '../../../core/assets.dart';
import '../../../core/enum.dart';

class HomeState {
  //! jobs
  List<JobModel> suggestedJobs = [
    JobModel(
        name: "Product Designer",
        company: CompanyModel(
            name: "Zoom", location: "United States", image: Assets.ZoomLogo),
        jobTime: "Fulltime",
        jobType: "Remote",
        jobCategory: "Design",
        salary: "12K-15K"),
    JobModel(
        name: "Product Designer",
        company: CompanyModel(
            name: "Stack", location: "United States", image: Assets.SlackLogo),
        jobTime: "Fulltime",
        jobType: "Remote",
        jobCategory: "Design",
        salary: "12K-15K"),
    JobModel(
        name: "Product Designer",
        company: CompanyModel(
            name: "Zoom", location: "United States", image: Assets.ZoomLogo),
        jobTime: "Fulltime",
        jobType: "Remote",
        jobCategory: "Design",
        salary: "12K-15K"),
    JobModel(
        name: "Product Designer",
        company: CompanyModel(
            name: "Stack", location: "United States", image: Assets.SlackLogo),
        jobTime: "Fulltime",
        jobType: "Remote",
        jobCategory: "Design",
        salary: "12K-15K")
  ];
  List<JobModel> recentJobs = [
    JobModel(
        name: "Senior UI Designer",
        company: CompanyModel(
            name: "Twitter", location: "Jakarta", image: Assets.TwitterLogo),
        jobTime: "Fulltime",
        jobType: "Remote",
        jobCategory: "Senior",
        salary: "15K"),
    JobModel(
        name: "Senior UX Designer",
        company: CompanyModel(
            name: "Discord", location: "Jakarta", image: Assets.DiscordLogo),
        jobTime: "Fulltime",
        jobType: "Remote",
        jobCategory: "Senior",
        salary: "15K"),
    JobModel(
        name: "Senior UI Designer",
        company: CompanyModel(
            name: "Twitter", location: "Jakarta", image: Assets.TwitterLogo),
        jobTime: "Fulltime",
        jobType: "Remote",
        jobCategory: "Senior",
        salary: "15K"),
    JobModel(
        name: "Senior UX Designer",
        company: CompanyModel(
            name: "Discord", location: "Jakarta", image: Assets.DiscordLogo),
        jobTime: "Fulltime",
        jobType: "Remote",
        jobCategory: "Senior",
        salary: "15K")
  ];

  //! enum navigation
  ChosenNavigationItem chosenNavigationItem = ChosenNavigationItem.home;

  //! controllers
  final TextEditingController searchController = TextEditingController();
}
